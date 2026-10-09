"""Compile only the new actual-meaning leaf; retain the frozen four-leaf audit."""
import hashlib,json,os,subprocess
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
T=Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
inputs=[*sorted(P.glob('*.lean')),P/'certificate0.json',P/'certificate1.json',
    R/'ActualUniqueHomologyCertificates/Basic.lean',R/'Stem125HomologyCertificates/Meaning.lean']
hashes={str(p.relative_to(R)):sha(p) for p in inputs}
env=os.environ.copy();env.update(ELAN_HOME=str(T.parents[1]),LEAN_SYSROOT=str(T),LD_PRELOAD='/tmp/lean_proc_shim.so')
env['LEAN_PATH']=':'.join(map(str,[R/'.lake/build/lib/lean',
    *sorted((R/'../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))]))
out=R/'.lake/build/lib/lean/Fact764ConstrainedE5/Actual.olean'
log=P/'Actual.log'
with log.open('w') as f:
    run=subprocess.run([str(T/'bin/lean'),'-j1','Fact764ConstrainedE5/Actual.lean','-o',str(out)],
        cwd=R,env=env,stdout=f,stderr=subprocess.STDOUT)
audit={'exit_code':run.returncode,'input_sha256':hashes,'log_sha256':sha(log)}
if run.returncode==0:audit['olean_sha256']=sha(out)
(P/'Actual-compile.json').write_text(json.dumps(audit,indent=2,sort_keys=True)+'\n')
assert hashes=={str(p.relative_to(R)):sha(p) for p in inputs}
print('Actual',run.returncode)
if run.returncode:raise SystemExit(log.read_text())
