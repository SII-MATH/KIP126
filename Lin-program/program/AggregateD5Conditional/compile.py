"""Serial aggregate compilation; run after root Lake builds stop."""
import hashlib,json,os,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;root=p.parent
tool=Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
env=os.environ.copy();env['ELAN_HOME']=str(tool.parents[1]);env['LEAN_SYSROOT']=str(tool);env['LD_PRELOAD']='/tmp/lean_proc_shim.so'
env['LEAN_PATH']=':'.join(map(str,[root/'.lake/build/lib/lean',*sorted((root/'../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))]))
sha=lambda f:hashlib.sha256(f.read_bytes()).hexdigest()
modules=['Basic','Data','Events','Matches'];inputs=[p/(n+'.lean') for n in modules]+[p/n for n in ['source.json','dag.json','event-results.json']]+[root/'Row2576D4Detector/ImportedBoundary.lean',root/'Row2929Detector/Matches.lean',root/'HighFiltrationD2Certificates/Data.lean',root/'HighFiltrationD2Audit/report.json',root/'Row2861D4Detector/ImportedMeaning.lean',root/'Row2695Detector/Matches.lean',root/'Row3019Detector/Matches.lean',root/'Row3019Detector/review.json',root/'Row3020Detector/Meaning.lean',root/'Row3020Detector/review.json']
inputs += [root/'Row2796D5Detector/Source.lean',root/'Row2796D5Detector/Matches.lean',root/'Row2796D5Detector/review.json']
fingerprints={str(f.relative_to(root)):sha(f) for f in inputs};records=[]
output=root/'.lake/build/lib/lean/AggregateD5Conditional';output.mkdir(exist_ok=True)
for name in modules:
 log=p/(name+'.log');olean=output/(name+'.olean')
 with log.open('w') as stream:
  run=subprocess.run([str(tool/'bin/lean'),'-j1',str((p/(name+'.lean')).relative_to(root)),'-o',str(olean)],cwd=root,env=env,stdout=stream,stderr=subprocess.STDOUT)
 row=dict(module=name,exit_code=run.returncode,input_sha256=fingerprints,log_sha256=sha(log))
 if run.returncode==0:row['olean_sha256']=sha(olean)
 records.append(row);(p/'compile-audit.json').write_text(json.dumps(records,indent=2)+'\n');print(name,run.returncode,flush=True)
 if run.returncode:raise SystemExit(log.read_text())
assert fingerprints=={str(f.relative_to(root)):sha(f) for f in inputs}
