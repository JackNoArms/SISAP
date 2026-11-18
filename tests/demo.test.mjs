import test from 'node:test';
import assert from 'node:assert/strict';
import {readFileSync} from 'node:fs';
import {processes,collections,statusOrder,normalize,filterProcesses,countsBy} from '../demo/data.mjs';

test('all demo records are fictional and internally consistent',()=>{
  assert.equal(processes.length,12);
  assert.equal(new Set(processes.map(x=>x.id)).size,processes.length);
  assert.equal(new Set(processes.map(x=>x.number)).size,processes.length);
  for(const item of processes){
    assert.match(item.id,/^DEMO-\d{3}$/);
    assert.match(item.number,/^DEMO-202[456]-\d{3}$/);
    assert.match(item.unit,/fictícia/);
    assert.ok(collections.includes(item.collection));
    assert.ok(statusOrder.includes(item.status));
    assert.ok(item.year>=2024&&item.year<=2026);
    assert.match(item.updated,/^\d{4}-\d{2}-\d{2}$/);
  }
});

test('accent insensitive search works for process and theme',()=>{
  assert.equal(normalize(' ReCURSOS HÍDRICOS '),'recursos hidricos');
  const rows=filterProcesses(processes,{search:'hidricos'});
  assert.equal(rows.length,1);
  assert.equal(rows[0].id,'DEMO-001');
  assert.equal(filterProcesses(processes,{search:'DEMO-2025-006'}).length,1);
});

test('filters combine collection, status and year without mutation',()=>{
  const original=processes.length;
  const rows=filterProcesses(processes,{collection:'Ambiental',status:'Em análise',year:'2026'});
  assert.equal(rows.length,1);
  assert.equal(rows[0].id,'DEMO-001');
  assert.equal(processes.length,original);
  assert.equal(filterProcesses(processes,{year:'1900'}).length,0);
});

test('grouped totals match the record set',()=>{
  const statuses=countsBy(processes,'status');
  const years=countsBy(processes,'year');
  assert.equal(Object.values(statuses).reduce((a,b)=>a+b,0),processes.length);
  assert.equal(Object.values(years).reduce((a,b)=>a+b,0),processes.length);
  assert.equal(statuses['Concluído'],4);
});

test('demo markup identifies the data as fictional and offers accessible controls',()=>{
  const html=readFileSync(new URL('../demo/index.html',import.meta.url),'utf8');
  assert.match(html,/dados fictícios/i);
  assert.match(html,/id="search"/);
  assert.match(html,/id="detail" aria-labelledby/);
  assert.match(html,/type="module" src="\.\/app\.mjs"/);
});

test('demo scripts use DOM text rather than HTML injection',()=>{
  const source=readFileSync(new URL('../demo/app.mjs',import.meta.url),'utf8');
  assert.match(source,/textContent/);
  assert.doesNotMatch(source,/innerHTML\s*=/);
});
