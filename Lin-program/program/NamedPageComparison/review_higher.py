"""Read-only audit of the blocked higher-page candidate; never accepts sentinel zero."""
import sqlite3,json,hashlib
from pathlib import Path
p=Path(__file__).resolve().parent;db=p.parent/'upstream/kervaire-49/S0_AdamsSS_t261.db'
data=json.loads((p/'higher-source.json').read_text())
assert hashlib.sha256(db.read_bytes()).hexdigest()==data['database_sha256']
blocked=[]
with sqlite3.connect(f'file:{db}?mode=ro',uri=True) as c:
 for tag,block in data['blocks'].items():
  s,t,r=block['center']
  for key,expected in block['raw'].items():
   a,b=map(int,key.strip('()').split(','))
   actual=c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',(a,b)).fetchall()
   assert [list(x) for x in actual]==expected
   erows=c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',(a,b)).fetchall()
   assert [list(x) for x in erows]==block['e2'][key]
   if r>2 and (a,b) in [(s,t),(s-r,t-r+1)]:
    for row in actual:
     if row[3]==9000 or (row[3]==10000-r and row[2] is None):
      blocked.append({'block':tag,'degree':[a,b],'page':r,'row':list(row)})
print(json.dumps({'status':'blocked','checked_blocks':len(data['blocks']),'unknown_required_rows':blocked},indent=2))
assert blocked,'Expected sentinel blocker disappeared: re-audit before changing claims'
