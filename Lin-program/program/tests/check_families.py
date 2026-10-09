"""Run independent Lean import CLIs and require corrupt certificates to fail."""
import json,os,subprocess
from pathlib import Path
root=Path(__file__).resolve().parents[1]
t=Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
env=os.environ.copy();env.update(LEAN_SYSROOT=str(t),LD_PRELOAD='/tmp/lean_proc_shim.so')
paths=[root/'.lake/build/lib/lean']+list((root/'../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))
env['LEAN_PATH']=':'.join(map(str,paths))
for module,sample in [('LinearCertificates/CheckMain.lean','LinearCertificates/sample.jsonl'),('MilnorCertificates/CheckFile.lean','MilnorCertificates/example.json'),('ResolutionCertificates/CheckFile.lean','ResolutionCertificates/sample.json'),('PropagationCertificates/Main.lean','PropagationCertificates/example.jsonl'),('PageCertificates/CheckMain.lean','PageCertificates/example.jsonl')]:
 if not (root/module).exists() and 'Resolution' in module:module='ResolutionCertificates/CheckMain.lean'
 p=subprocess.run([str(t/'bin/lean'),'-j1','--run',module,sample],cwd=root,env=env,text=True,capture_output=True)
 assert p.returncode==0,(module,p.stdout,p.stderr)
 print(module,p.stdout.strip())
 records=[json.loads(x) for x in (root/sample).read_text().splitlines()]
 records[0]['unexpected']=True
 bad=root/'tests/output'/('bad-'+module.split('/')[0]+'.jsonl')
 bad.write_text('\n'.join(json.dumps(x,sort_keys=True,separators=(',',':')) for x in records)+'\n')
 p=subprocess.run([str(t/'bin/lean'),'-j1','--run',module,str(bad)],cwd=root,env=env,text=True,capture_output=True)
 assert p.returncode!=0,(module,'accepted unknown field')
 print('Rejected unknown field:',module)
