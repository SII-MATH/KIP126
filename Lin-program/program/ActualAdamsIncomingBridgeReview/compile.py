"""Compile an independent counterproof against the frozen source checkpoint."""
import hashlib, json, os, subprocess
from pathlib import Path
P=Path(__file__).resolve().parent; R=P.parent
T=Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
env=os.environ.copy()
env.update(ELAN_HOME=str(T.parents[1]),LEAN_SYSROOT=str(T),LD_PRELOAD='/tmp/lean_proc_shim.so')
env['LEAN_PATH']=':'.join(map(str,[R/'.lake/build/lib/lean',*sorted((R/'../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))]))
inputs=[P/'Vacuity.lean',R/'ActualAdamsIncomingBridge/Basic.lean',
        R/'Fact762AssemblyCertificates/Routes.lean',R/'Fact762Source4Certificates/KernelBranch.lean']
fp={str(p.relative_to(R)):sha(p) for p in inputs}
out=R/'.lake/build/lib/lean/ActualAdamsIncomingBridgeReview';out.mkdir(exist_ok=True)
log=P/'Vacuity.log'
with log.open('w') as f:
    run=subprocess.run([str(T/'bin/lean'),'-j1','ActualAdamsIncomingBridgeReview/Vacuity.lean',
        '-o',str(out/'Vacuity.olean')],cwd=R,env=env,stdout=f,stderr=subprocess.STDOUT)
report=dict(exit_code=run.returncode,input_sha256=fp,log_sha256=sha(log))
if run.returncode==0:report['olean_sha256']=sha(out/'Vacuity.olean')
(P/'compile-audit.json').write_text(json.dumps(report,indent=2)+'\n')
assert fp=={str(p.relative_to(R)):sha(p) for p in inputs}
print('Vacuity',run.returncode)
if run.returncode:raise SystemExit(log.read_text())
