"""Check current recursive fingerprints of all kernel matrix links."""
import importlib.util,json,pathlib
HERE=pathlib.Path(__file__).resolve().parent;ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('linkage_compiler',HERE/'compile_linkage.py');c=importlib.util.module_from_spec(spec);spec.loader.exec_module(c)
audit=json.loads((HERE/'audit.json').read_text());generation=json.loads((HERE/'linkage_generation.json').read_text());expected={(r['ordinal'],p['position'],b['s'],b['t']) for r in audit['records'] for p in r['positions'] for b in p['blocks']};actual={(r['cofiber'],r['position'],r['s'],r['t']) for r in generation['records']};assert expected==actual and len(expected)==len(generation['records'])
latest={r['file']:r for r in json.loads((HERE/'linkage_compile_audit.json').read_text())};files=[HERE/'Linkage.lean']+sorted((ROOT/'CofiberLinkageBatches').glob('Batch*.lean'));missing=[]
for f in files:
 name=str(f.relative_to(ROOT));r=latest.get(name);out=ROOT/'.lake/build/lib/lean'/f.relative_to(ROOT).with_suffix('.olean')
 if not r or r['exit_code']!=0 or r['digest']!=c.digest(f) or not out.exists():missing.append(name)
assert len(files)==generation['batches']+1
result=dict(covered_positions=len(actual),equality_theorems=generation['equality_theorems'],linked_exact=generation['linked_exact'],linked_nonzero=generation['linked_nonzero'],fresh=len(files)-len(missing),remaining=len(missing),remaining_files=missing)
(HERE/'linkage_current.json').write_text(json.dumps(result,indent=2)+'\n');print(result);raise SystemExit(bool(missing))
