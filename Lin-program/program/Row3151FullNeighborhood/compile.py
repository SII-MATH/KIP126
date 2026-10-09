"""Serial new-leaf compilation only; run after the parent dependency build settles."""
import hashlib,json,os,subprocess,sys
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
TOOL=Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
env=os.environ.copy()
env.update(ELAN_HOME=str(TOOL.parents[1]),LEAN_SYSROOT=str(TOOL),LAKE_HOME=str(TOOL),LD_PRELOAD='/tmp/lean_proc_shim.so')
env['LEAN_PATH']=':'.join(str(p) for p in [ROOT/'.lake/build/lib/lean',*sorted((ROOT/'../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))])
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
names=sys.argv[1:] or ['Data','Checks','Semantics','Links']
objdir=ROOT/'.lake/build/lib/lean/Row3151FullNeighborhood';objdir.mkdir(exist_ok=True)
for name in names:
 source=HERE/(name+'.lean');log=HERE/(name+'.log');rp=HERE/(name+'-compile.json');obj=objdir/(name+'.olean')
 if rp.exists():
  (HERE/(name+'.prior-'+sha(rp)[:12]+'-compile.json')).write_bytes(rp.read_bytes())
  if log.exists():(HERE/(name+'.prior-'+sha(log)[:12]+'.log')).write_bytes(log.read_bytes())
 inputs=[HERE/'provenance.json'] + sorted(HERE.glob('event*.json')) + sorted(HERE.glob('incomingD*.json')) + sorted(HERE.glob('targetD*.json')) + sorted(HERE.glob('finite[01]*.json')) + sorted(HERE.glob('indexed[01]*.json')) + sorted(HERE.glob('family[01]*.json')) + sorted(HERE.glob('bound[01]*.json'))
 record=dict(source_sha256=sha(source),input_sha256={p.name:sha(p) for p in inputs})
 with log.open('w') as stream:
  run=subprocess.run([str(TOOL/'bin/lean'),'-j1','Row3151FullNeighborhood/'+name+'.lean','-o',str(obj)],cwd=ROOT,env=env,stdout=stream,stderr=subprocess.STDOUT)
 record.update(observed_exit_code=run.returncode,log_sha256=sha(log))
 if run.returncode==0:record['olean_sha256']=sha(obj)
 else:(HERE/(name+'.failed-'+sha(log)[:12]+'.log')).write_bytes(log.read_bytes())
 rp.write_text(json.dumps(record,indent=2)+'\n')
 print(name,run.returncode,flush=True)
 if run.returncode:raise SystemExit(log.read_text())
