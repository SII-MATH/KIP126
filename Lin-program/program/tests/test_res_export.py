import json
from pathlib import Path
import sqlite3
import subprocess
import tempfile
r=Path(__file__).resolve().parents[1]
f=r/'ExtComplexCertificates'
exe=f/'res-export'
p=subprocess.run([str(exe),str(f/'actual-s0/S0_Adams_res.db')],capture_output=True,text=True)
assert p.returncode==0,p.stderr
assert p.stdout==(f/'actual-s0/resolution.jsonl').read_text()
assert p.stdout==subprocess.check_output([str(exe),str(f/'actual-s0/S0_Adams_res.db')],text=True)
assert len(p.stdout.splitlines())==16
with tempfile.TemporaryDirectory(dir=r/'tests/output') as temp:
 for name,value in [('null',None),('size',b'bad')]:
  path=Path(temp)/(name+'.db')
  with sqlite3.connect(path) as c:
   c.execute('create table S0_Adams_res_generators(id integer,s integer,t integer,diff blob)')
   c.execute('insert into S0_Adams_res_generators values (0,0,0,?)',(value,))
  bad=subprocess.run([str(exe),str(path)],capture_output=True,text=True)
  assert bad.returncode!=0 and not bad.stdout,name
print('PASS raw resolution export deterministic,16 records,NULL and malformed BLOB rejected')
