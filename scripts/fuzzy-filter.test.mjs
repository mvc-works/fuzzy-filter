import assert from "node:assert/strict";
import test from "node:test";

import { format_cirru_edn } from "../js-out/calcit.core.mjs";
import { parse_by_letter } from "../js-out/fuzzy-filter.core.mjs";

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
