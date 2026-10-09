import json,os,subprocess
from pathlib import Path
r=Path(__file__).resolve().parents[1];t=Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
e=os.environ.copy();e.update(LEAN_SYSROOT=str(t),LEAN_PATH=str(r/'.lake/build/lib/lean'),LD_PRELOAD='/tmp/lean_proc_shim.so')
w=next(json.loads(s) for s in (r/'staircase-release/appendix.jsonl').read_text().splitlines() if json.loads(s)['dimension']>1)
for name,change in [('bad-inverse',lambda x:x['inverse'].__setitem__(0,not x['inverse'][0])),('missing-field',lambda x:x.pop('unknown')),('bad-version',lambda x:x.update(version=2)),('extra-field',lambda x:x.update(extra=True))]:
 x=json.loads(json.dumps(w));change(x);p=r/'tests/output'/('staircase-'+name+'.json');p.write_text(json.dumps(x,sort_keys=True,separators=(',',':'))+'\n')
 result=subprocess.run([str(t/'bin/lean'),'-j1','--run','StaircaseCertificates/CheckMain.lean',str(p)],cwd=r,env=e,text=True,capture_output=True)
 assert result.returncode!=0,(name,result.stdout,result.stderr)
 print(name,'rejected',result.stderr.strip())
