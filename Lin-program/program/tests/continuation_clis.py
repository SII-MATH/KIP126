import os,subprocess
from pathlib import Path
root=Path(__file__).resolve().parents[1]
t=Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
env=os.environ.copy();env.update(LEAN_SYSROOT=str(t),LD_PRELOAD='/tmp/lean_proc_shim.so')
env['LEAN_PATH']=':'.join(map(str,[root/'.lake/build/lib/lean']+list((root/'../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))))
for module,path in [('PageTransitionCertificates/CheckFile.lean','page-transition-release/certificates.jsonl'),('StaircaseCertificates/CheckMain.lean','staircase-release/appendix.jsonl')]:
 p=subprocess.run([str(t/'bin/lean'),'-j1','--run',module,path],cwd=root,env=env,text=True,capture_output=True)
 assert p.returncode==0,(module,p.stdout,p.stderr)
 print(module,p.stdout.strip())
