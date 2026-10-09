import hashlib,importlib.util,json,pathlib
HERE=pathlib.Path(__file__).resolve().parent;ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('t8compiler',HERE/'compile.py');c=importlib.util.module_from_spec(spec);spec.loader.exec_module(c)
records=json.loads((HERE/'compile_audit.json').read_text()) if (HERE/'compile_audit.json').exists() else [];latest={r['file']:r for r in records};missing=[];files=[HERE/'Sliced/DataOnly.lean']+[HERE/f'Sliced/Source{i:02d}.lean' for i in range(16)]+[HERE/'Sliced/Verified.lean',HERE/'Data.lean']+[HERE/f'Batch{i:02d}.lean' for i in range(9)]
assert len(files)==28 and all(f.exists() for f in files), 'missing expected source or component proof file'
for f in files:
 name=str(f.relative_to(ROOT));r=latest.get(name);out=ROOT/'.lake/build/lib/lean'/f.relative_to(ROOT).with_suffix('.olean')
 if not r or r['exit_code']!=0 or r['digest']!=c.digest(f) or not out.exists():missing.append(name)
source=json.loads((ROOT/'GenericFreeComplexProducer/source_t8_audit.json').read_text())
assert hashlib.sha256((ROOT/'ExtComplexCertificates/actual-s0/resolution.jsonl').read_bytes()).hexdigest()==source['source_sha256']
assert hashlib.sha256((ROOT/'GenericFreeComplexProducer/actual_t8.json').read_bytes()).hexdigest()==source['certificate_sha256']
components=[json.loads(x) for x in (ROOT/'GenericFreeComplexProducer/actual_t8_components.jsonl').read_text().splitlines()];assert {(r['s'],r['t']) for r in components}=={(s,t) for s in range(9) for t in range(9)}
audit=json.loads((ROOT/'GenericFreeComplexProducer/component_t8_audit.json').read_text());assert audit['components']==81 and audit['exact']==80
assert hashlib.sha256((ROOT/'GenericFreeComplexProducer/actual_t8_components.jsonl').read_bytes()).hexdigest()==audit['output_sha256']
result=dict(fresh=len(files)-len(missing),remaining=len(missing),remaining_files=missing,components=81,triangular=45,above_diagonal=36,expected_exact=80)
(HERE/'current_verification.json').write_text(json.dumps(result,indent=2)+'\n');print(result);raise SystemExit(bool(missing))
