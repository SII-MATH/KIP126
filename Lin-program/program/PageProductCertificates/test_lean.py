"""Executable parser/checker rejection tests; separate Generated.lean proves sound use."""
import json,os,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent
s=(p/'actual2.json').read_text().strip();w=json.loads(s)
fixtures={'unknown':s[:-1]+',"unknown":1}','duplicate':s[:-1]+',"version":1}','nested-unknown':s.replace('"left":{','"left":{"unknown":1,',1),'blank':'','empty':None}
bad=dict(w);bad['version']=2;fixtures['version']=json.dumps(bad,separators=(',',':'),sort_keys=True)
lean=os.environ['LEAN_SYSROOT']+'/bin/lean'
cmd=[lean,'-j1','--run','PageProductCertificates/CheckFile.lean']
for name,text in fixtures.items():
 f=p/('reject-'+name+'.jsonl');f.write_text('' if text is None else text+'\n')
 z=subprocess.run(cmd+[str(f)],cwd=r,text=True,capture_output=True)
 assert z.returncode==1,(name,z.stdout,z.stderr)
for name in ['bad-projector.json','bad-shape.json']:
 z=subprocess.run(cmd+[str(p/name)],cwd=r,text=True,capture_output=True);assert z.returncode==1,z.stderr
 if name=='bad-projector.json':assert 'left.projector[0,0]' in z.stderr,z.stderr
z=subprocess.run(cmd+[str(p/'actual.jsonl')],cwd=r,text=True,capture_output=True);assert z.returncode==0,z.stderr
print('Lean accepts 2 records; rejects 8 malformed/corrupted batches; indexed diagnostic verified')
