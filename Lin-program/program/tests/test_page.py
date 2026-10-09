import json,os,subprocess
from pathlib import Path
root=Path(__file__).resolve().parents[1]
t=Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
env=os.environ.copy();env.update(LEAN_SYSROOT=str(t),LEAN_PATH=str(root/'.lake/build/lib/lean'),LD_PRELOAD='/tmp/lean_proc_shim.so')
base=json.loads((root/'PageCertificates/example.jsonl').read_text())
for name,modify in [('outgoing-hit',lambda w:w['outgoing'].update(entries=[False,False,True])),('bad-complex',lambda w:w['outgoing'].update(entries=[True,False,False])),('boundary',lambda w:w.update(representative=[True,True,False])),('wrong-separator',lambda w:w.update(separator=[False]*3)),('bad-dimension',lambda w:w['incoming'].update(rows=4))]:
 w=json.loads(json.dumps(base));modify(w)
 p=root/'tests/output'/('page-'+name+'.jsonl');p.write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n')
 r=subprocess.run([str(t/'bin/lean'),'-j1','--run','PageCertificates/CheckMain.lean',str(p)],cwd=root,env=env,text=True,capture_output=True)
 assert r.returncode!=0,(name,r.stdout,r.stderr)
 print(name,'rejected:',r.stderr.strip())
