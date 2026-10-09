"""Count only successful kernel compilations matching current transitive inputs."""
import importlib.util,json,pathlib
HERE=pathlib.Path(__file__).resolve().parent;ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('derived_compiler',HERE/'compile.py');c=importlib.util.module_from_spec(spec);spec.loader.exec_module(c)
records=json.loads((HERE/'compile_audit.json').read_text()) if (HERE/'compile_audit.json').exists() else [];latest={x['file']:x for x in records};files=[HERE/(x+'.lean') for x in ['Basic','Tests','CheckFile','Counterexamples','Transport','TransportExample']]+sorted((ROOT/'CofiberE2Batches').glob('Batch*.lean'));fresh=[];missing=[]
for f in files:
 key=str(f.relative_to(ROOT));record=latest.get(key);out=ROOT/'.lake/build/lib/lean'/f.relative_to(ROOT).with_suffix('.olean')
 (fresh if record and record['exit_code']==0 and record['digest']==c.digest(f) and out.exists() else missing).append(key)
source=json.loads((HERE/'source_audit.json').read_text());import hashlib
stale_sources=[p for p,h in source['source_sha256'].items() if hashlib.sha256((ROOT/'upstream/kervaire-49'/p).read_bytes()).hexdigest()!=h]
stale_certificates=[p for p,h in source['certificate_sha256'].items() if hashlib.sha256((ROOT/p).read_bytes()).hexdigest()!=h]
witness=json.loads((HERE/'verification.json').read_text())
if hashlib.sha256((HERE/'audit.json').read_bytes()).hexdigest()!=source['generation_sha256']:raise RuntimeError('source audit snapshot is stale')
if hashlib.sha256((HERE/'audit.json').read_bytes()).hexdigest()!=witness['audit_sha256']:raise RuntimeError('matrix audit snapshot is stale')
stale_witnesses=[p for p,h in {**witness['exact_certificate_sha256'],**witness['cofiber_source_sha256']}.items() if hashlib.sha256((ROOT/p).read_bytes()).hexdigest()!=h]
r=dict(stale_witnesses=stale_witnesses,fresh=len(fresh),remaining=len(missing),remaining_files=missing,stale_sources=stale_sources,stale_certificates=stale_certificates,scope='Kernel compilation of supplied matrices and algebra; database identity remains audited input')
(HERE/'current_verification.json').write_text(json.dumps(r,indent=2)+'\n');print(r);raise SystemExit(bool(missing or stale_sources or stale_certificates or stale_witnesses))
