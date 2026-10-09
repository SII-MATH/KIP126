"""Compile the whole-combination homology library serially with exact fingerprints."""
import hashlib,json,os,subprocess,sys
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
T=Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
sha=lambda f:hashlib.sha256(f.read_bytes()).hexdigest()
names=['Basic','Zero','Finite']
if len(sys.argv)>1:names=names[names.index(sys.argv[1]):]
env=os.environ.copy();env.update(ELAN_HOME=str(T.parents[1]),LEAN_SYSROOT=str(T),LD_PRELOAD='/tmp/lean_proc_shim.so')
env['LEAN_PATH']=':'.join(map(str,[R/'.lake/build/lib/lean',*sorted((R/'../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))]))
out=R/'.lake/build/lib/lean/ActualAdamsProductCycleBridge';out.mkdir(exist_ok=True)
inputs=sorted(P.glob('*.lean'))+[R/'ManualInputObligations/Reference/AdamsRules.lean',R/'ManualInputObligations/Reference/AdamsHomology.lean',R/'ActualAdamsSystemBridge/Basic.lean',R/'Fact764ConstrainedE5/Conclusion.lean']
fp={str(f.relative_to(R)):sha(f) for f in inputs}
audit=json.loads((P/'compile-audit.json').read_text()) if (P/'compile-audit.json').exists() else []
audit=[x for x in audit if x['module'] not in names]
for n in names:
 log=P/f'{n}.log'
 with log.open('w') as f:run=subprocess.run([str(T/'bin/lean'),'-j1',f'ActualAdamsProductCycleBridge/{n}.lean','-o',str(out/f'{n}.olean')],cwd=R,env=env,stdout=f,stderr=subprocess.STDOUT)
 row=dict(module=n,exit_code=run.returncode,input_sha256=fp,log_sha256=sha(log))
 if run.returncode==0:row['olean_sha256']=sha(out/f'{n}.olean')
 audit.append(row);(P/'compile-audit.json').write_text(json.dumps(audit,indent=2)+'\n')
 print(n,run.returncode,flush=True)
 if run.returncode:raise SystemExit(log.read_text())
assert fp=={str(f.relative_to(R)):sha(f) for f in inputs}
