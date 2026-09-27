import assert from "node:assert/strict";
import test from "node:test";

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
