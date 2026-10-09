"""Independent input audit; no selected zero dimension is treated as a theorem."""
import json,sqlite3,hashlib
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent;db=r/'upstream/kervaire-49/S0_AdamsSS_t261.db';d=json.loads((p/'source.json').read_text());assert hashlib.sha256(db.read_bytes()).hexdigest()==d['database_sha256']
count=0
with sqlite3.connect(f'file:{db}?mode=ro',uri=True) as c:
 for tag,b in d['blocks'].items():
  s,t,page=b['center']
  for key,expected in b['raw'].items():
   a,bt=map(int,key.strip('()').split(','))
   actual=c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',(a,bt)).fetchall();assert [list(x) for x in actual]==expected
   e2=c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',(a,bt)).fetchall();assert [list(x) for x in e2]==b['e2'][key]
   if (a,bt) in [(s,t),(s-page,t-page+1)]:
    if page==2:assert all(x[2] is not None for x in e2)
    else:
     selected=[x for x in actual if page<=x[3]<5000 or 5000<=x[3]<=10000-page]
     assert all(x[3]!=9000 and not(x[3]==10000-page and x[2] is None) for x in selected)
  count+=1
print(f'{count} recursive full input blocks verified; no required unknown or sentinel override')
