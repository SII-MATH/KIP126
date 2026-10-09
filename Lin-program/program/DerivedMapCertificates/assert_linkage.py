import importlib.util,json,pathlib
HERE=pathlib.Path(__file__).resolve().parent;ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('derived_linkage_compiler',HERE/'compile_linkage.py');c=importlib.util.module_from_spec(spec);spec.loader.exec_module(c)
a=json.loads((HERE/'generation_audit.json').read_text());g=json.loads((HERE/'linkage_generation.json').read_text());expected={e['path'] for e in a['files'] if e['kind'] in ('composition','commutativity')};actual={e['path'] for e in g['records']};assert expected==actual and len(actual)==len(g['records']);by={e['path']:e for e in a['files']}
for e in g['records']:
 origin=by[e['path']]['origin'];assert e['first']==origin['first'] and e['second']==origin['second'] and e['rhs']==origin.get('rhs')
original_compositions=[r for r in a['records'] if any(by[b['path']]['kind']=='composition' for b in r['blocks'])]
assert all(b['path'] in actual for r in original_compositions for b in r['blocks'])
latest={r['file']:r for r in json.loads((HERE/'linkage_compile_audit.json').read_text())};files=[HERE/'Linkage.lean']+sorted((ROOT/'DerivedLinkageBatches').glob('Batch*.lean'));missing=[]
for f in files:
 name=str(f.relative_to(ROOT));r=latest.get(name);out=ROOT/'.lake/build/lib/lean'/f.relative_to(ROOT).with_suffix('.olean')
 if not r or r['exit_code']!=0 or r['digest']!=c.digest(f) or not out.exists():missing.append(name)
assert len(files)==g['batches']+1
result=dict(original_composition_records=len(original_compositions),fresh=len(files)-len(missing),remaining=len(missing),remaining_files=missing,composition_links=sum(e['kind']=='composition' for e in g['records']),commutativity_links=sum(e['kind']=='commutativity' for e in g['records']))
(HERE/'linkage_current.json').write_text(json.dumps(result,indent=2)+'\n');print(result);raise SystemExit(bool(missing))
