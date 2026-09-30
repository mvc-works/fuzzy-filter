import assert from 'node:assert/strict';
import { readFileSync, existsSync } from 'node:fs';
import test from 'node:test';
import { resolve } from 'node:path';

const expectedBase = process.env.VITE_BASE_URL;
assert.ok(expectedBase, 'VITE_BASE_URL must be supplied to validate the built frontend');
assert.ok(expectedBase.endsWith('/'), 'CDN base must end with a slash');
assert.equal(new URL(expectedBase).protocol, 'https:');
const html = readFileSync(new URL('../dist/index.html', import.meta.url), 'utf8');
const assets = [...html.matchAll(/<(?:script|link)\b[^>]*>/g)].flatMap(([tag]) => {
  const url = /\b(?:src|href)="([^"]+)"/.exec(tag)?.[1];
  return url && /\/assets\/[^/?#]+\.(?:js|css)(?:[?#].*)?$/.test(url) ? [url] : [];
});

test('built entry JavaScript and CSS use the exact frontend CDN prefix', () => {
  assert.ok(assets.some(url => /\.js$/.test(url)), 'Missing entry JavaScript');
  assert.ok(assets.some(url => /\.css$/.test(url)), 'Missing entry stylesheet');
  for (const url of assets) {
    assert.ok(url.startsWith(`${expectedBase}assets/`), `Incorrect CDN asset: ${url}`);
    assert.ok(existsSync(resolve('dist', url.slice(expectedBase.length))), `Missing built asset: ${url}`);
  }
});

test('original shared font and icon URLs remain unchanged', () => {
  assert.ok(html.includes('https://cdn.tiye.me/favored-fonts/main-fonts.css'));
  assert.ok(html.includes('https://cdn.tiye.me/logo/calcit.png'));
});
