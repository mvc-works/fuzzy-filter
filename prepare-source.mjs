import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {mkdirSync,readFileSync,writeFileSync} from 'node:fs';
const run=(...args)=>execFileSync(process.env.FUZZY_QUERY_CLI||'calcit',args,{encoding:'utf8',maxBuffer:20*1024*1024,stdio:['ignore','pipe','ignore']});
const q=(...args)=>JSON.parse(run('query',...args,'--format','json')).data;
mkdirSync('acceptance',{recursive:true});
function inventory(){
  const defs=[];
  for(const ns of q('ns').namespaces){
    const names=run('query','defs',ns).split('\n').filter(l=>/^  \S/.test(l)).map(l=>l.trim().split(' ')[0]);
    assert.equal(names.length,q('ns',ns).definition_count);
    for(const name of names)defs.push(q('def',`${ns}/${name}`));
  }
  assert.equal(q('ns').namespaces.length,8);
  assert.equal(defs.reduce((n,d)=>n+d.tests.length,0),3);
  return defs;
}
if(process.argv[2]==='inventory'){
  const defs=inventory();writeFileSync('acceptance/reviewed.json',JSON.stringify(defs,null,2));
  console.log(JSON.stringify({definitions:defs.length,tests:3,namespaces:8}));process.exit(0);
}
assert.equal(run('-v').trim(),'0.30.1');run('docs','agents','--contract');
const before=inventory(),config=q('config');
assert.deepEqual(before,JSON.parse(readFileSync('acceptance/reviewed.json','utf8')));
const expected=structuredClone(before),counts={option:0,merge:0,len:0,hints:0};
const listDynamic=['::',"'List","'Dynamic"];
const hint=(args,result)=>['hint-fn',['{}',[':args',['[]',...args]],[':return',result]]];
function walk(node,id){
  if(!Array.isArray(node))return node;
  const n=node.map(child=>walk(child,id));
  if(['option:unwrap','option:unwrap-or'].includes(n[0])){n[0]=n[0].replace('option:','.');counts.option++;}
  if(n[0]==='merge'){assert.ok(id.startsWith('fuzzy-filter.comp.'));n[0]='.merge';counts.merge++;}
  if(n[0]==='count'){assert.equal(id,'fuzzy-filter.core/parse-by-word-iter');assert.deepEqual(n,['count','y0']);n[0]='.len';counts.len++;}
  if(n[0]==='fn'){
    let h;
    if(id==='fuzzy-filter.comp.visual/comp-visual'){
      assert.deepEqual(n[1],['idx','chunk']);h=hint(["'Number",listDynamic],listDynamic);
    }else if(['fuzzy-filter.core/parse-by-letter','fuzzy-filter.core/parse-by-word'].includes(id)){
      assert.deepEqual(n[1],['x']);
      h=hint([n[2][0]==='not'?"'String":listDynamic],"'Bool");
    }
    if(h){assert.notEqual(n[2]?.[0],'hint-fn');n.splice(2,0,h);counts.hints++;}
  }
  return n;
}
for(const d of expected)d.code=walk(d.code,d.id);
assert.deepEqual(counts,{option:18,merge:3,len:2,hints:4});
const main=expected.find(d=>d.id==='fuzzy-filter.main/main!').code;
assert.equal(main[8][0],'js-ffi.browser/add-event-listener!');
assert.equal(main[9][0],'js-ffi.browser/set-interval!');
assert.equal(main[10][0],'match');assert.equal(main[10][1][0],'js-ffi.browser/storage-get');
const [restore]=main.splice(10,1);main.splice(8,0,restore);
const changed=expected.filter((d,i)=>JSON.stringify(d.code)!==JSON.stringify(before[i].code));assert.equal(changed.length,9);
const operations=changed.map(d=>['edit','def',d.id,'--overwrite','--input-format','json-ast','--code',JSON.stringify(d.code)]);
writeFileSync('acceptance/before.json',JSON.stringify(before,null,2));
writeFileSync('acceptance/operations.json',JSON.stringify(operations,null,2));
const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];
const preview=JSON.parse(run(...args,'--dry-run'));assert.ok(preview.scoped_revision);
writeFileSync('acceptance/preview.json',JSON.stringify(preview,null,2));
writeFileSync('acceptance/applied.json',run(...args,'--expect-revision',preview.scoped_revision));
assert.deepEqual(inventory(),expected,'Full views preserve every schema/test/tag/FFI/doc and all source except reviewed call heads/four callbacks');
assert.deepEqual(q('config'),config);
writeFileSync('acceptance/after.json',JSON.stringify(expected,null,2));
writeFileSync('acceptance/snapshot-blob.txt',execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}));
console.log(JSON.stringify({definitions:expected.length,changed:changed.length,counts,tests:3}));
