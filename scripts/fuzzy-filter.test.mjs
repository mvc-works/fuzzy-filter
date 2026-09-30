import assert from "node:assert/strict";
import test from "node:test";
import * as c from "../js-out/calcit.core.mjs";
import { comp_container } from "../js-out/fuzzy-filter.comp.container.mjs";
import { store } from "../js-out/fuzzy-filter.schema.mjs";
import { updater } from "../js-out/fuzzy-filter.updater.mjs";
import { RespoEvent } from "../js-out/respo.schema.mjs";
import {
  component_$q_, component_tree, element_$q_, element_children,
  element_name, element_event, element_attrs,
} from "../js-out/respo.util.detect.mjs";

import { format_cirru_edn, option_$o_unwrap_or } from "../js-out/calcit.core.mjs";
import { parse_by_letter } from "../js-out/fuzzy-filter.core.mjs";
import {
  add_event_listener_$x_,
  query_selector,
  set_interval_$x_,
  storage_get,
  storage_set_$x_,
} from "../js-out/js-ffi.browser.mjs";

const formatResult = (text, query) => format_cirru_edn(parse_by_letter(text, query));
const tags = c.init_tags(['store', 'input', 'value', 'type', 'content', 'query']);
const read = (value, key) => c.option_$o_unwrap(c.get(value, key));
const render = (value) => comp_container(c._$n__$M_(tags.store, value));
const inputs = (component) => {
  const found = [];
  const walk = (node) => {
    if (component_$q_(node)) return walk(c.option_$o_unwrap(component_tree(node)));
    if (!element_$q_(node)) return;
    if (element_name(node) === tags.input) found.push(node);
    const children = element_children(node);
    for (let index = 0; index < c.count(children); index++) {
      const entry = c.option_$o_unwrap(c.nth(children, index));
      walk(c.option_$o_unwrap(c.nth(entry, 1)));
    }
  };
  walk(component);
  return found;
};

for (const [index, key, value] of [[0, tags.content, 'abc'], [1, tags.query, 'ac']]) {
  test(`actual ${key.value} input accepts two arguments and dispatches a single Enum`, () => {
    const fields = RespoEvent.fields.flatMap(field => [field,
      field === tags.value ? value : field === tags.type ? tags.input : null]);
    const event = c._$n__PCT__$M_(RespoEvent, ...fields);
    const rendered = inputs(render(store));
    assert.equal(rendered.length, 2);
    const handler = read(element_event(rendered[index]), tags.input);
    let updated = store;
    handler(event, (...args) => {
      assert.equal(args.length, 1);
      assert.ok(c.enum_$q_(args[0]));
      updated = updater(store, args[0], 'test-op', 0);
    });
    assert.equal(read(updated, key), value);
    const rerendered = inputs(render(updated));
    const attrs = element_attrs(rerendered[index]);
    let renderedValue;
    for (let i = 0; i < c.count(attrs); i++) {
      const pair = c.option_$o_unwrap(c.nth(attrs, i));
      const attrName = c.option_$o_unwrap(c.nth(pair, 0));
      if (attrName === tags.value || attrName === 'value') renderedValue = c.option_$o_unwrap(c.nth(pair, 1));
    }
    assert.equal(renderedValue, value);
    assert.equal(read(store, key), index === 0 ? 'this and that to search' : 'that search');
  });
}

test("keeps unmatched suffix when the query finishes first", () => {
  const result = formatResult("abc", "a");
  assert.match(result, /\(:matches\? true\)/);
  assert.match(result, /\(\[\] :rest \|bc\)/);
});

test("matches a non-contiguous subsequence", () => {
  const result = formatResult("abc", "ac");
  assert.match(result, /\(\[\] :hit \|a\)/);
  assert.match(result, /\(\[\] :rest \|b\)/);
  assert.match(result, /\(\[\] :hit \|c\)/);
});

test("reports the unmatched query suffix", () => {
  const result = formatResult("abc", "abcd");
  assert.match(result, /\(:matches\? false\)/);
  assert.match(result, /\(\[\] :missed \|d\)/);
});

test("typed browser lookup and storage preserve missing values", () => {
  const previousDocument = Object.getOwnPropertyDescriptor(globalThis, "document");
  const previousWindow = Object.getOwnPropertyDescriptor(globalThis, "window");
  const previousStorage = Object.getOwnPropertyDescriptor(globalThis, "localStorage");
  const element = {};
  const values = new Map();
  const storage = {
    getItem: (key) => values.get(key) ?? null,
    setItem: (key, value) => values.set(key, value),
  };
  try {
    globalThis.document = { querySelector: (selector) => selector === ".app" ? element : null };
    globalThis.window = { localStorage: storage };
    globalThis.localStorage = storage;

    assert.equal(option_$o_unwrap_or(query_selector(".app"), null), element);
    assert.equal(option_$o_unwrap_or(query_selector(".missing"), null), null);
    assert.equal(option_$o_unwrap_or(storage_get("fuzzy-filter"), "fallback"), "fallback");
    assert.equal(storage_set_$x_("fuzzy-filter", "saved"), undefined);
    assert.equal(option_$o_unwrap_or(storage_get("fuzzy-filter"), "fallback"), "saved");
  } finally {
    if (previousDocument) Object.defineProperty(globalThis, "document", previousDocument);
    else Reflect.deleteProperty(globalThis, "document");
    if (previousWindow) Object.defineProperty(globalThis, "window", previousWindow);
    else Reflect.deleteProperty(globalThis, "window");
    if (previousStorage) Object.defineProperty(globalThis, "localStorage", previousStorage);
    else Reflect.deleteProperty(globalThis, "localStorage");
  }
});

test("typed browser scheduling registers the expected callback", () => {
  const previousWindow = Object.getOwnPropertyDescriptor(globalThis, "window");
  const previousInterval = Object.getOwnPropertyDescriptor(globalThis, "setInterval");
  const calls = [];
  let intervalCallback;
  try {
    globalThis.window = {
      addEventListener(name, callback) {
        calls.push(name);
        callback({ type: name });
      },
    };
    globalThis.setInterval = (callback, delay) => {
      intervalCallback = callback;
      calls.push(delay);
      return 42;
    };

    const persist = () => calls.push("persist");
    assert.equal(add_event_listener_$x_("beforeunload", persist), undefined);
    assert.equal(set_interval_$x_(persist, 60000), 42);
    intervalCallback();
    assert.deepEqual(calls, ["beforeunload", "persist", 60000, "persist"]);
  } finally {
    if (previousWindow) Object.defineProperty(globalThis, "window", previousWindow);
    else Reflect.deleteProperty(globalThis, "window");
    if (previousInterval) Object.defineProperty(globalThis, "setInterval", previousInterval);
    else Reflect.deleteProperty(globalThis, "setInterval");
  }
});
