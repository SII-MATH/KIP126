"""Independent read-only checks of stored complete boundary inputs and products."""
import json,sqlite3,hashlib
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parents[1];db=r/'upstream/kervaire-49/S0_AdamsSS_t261.db'
a=json.loads((p/'boundaries-source.json').read_text());assert hashlib.sha256(db.read_bytes()).hexdigest()==a['sha256']
with sqlite3.connect(f'file:{db}?mode=ro',uri=True) as c:
 for b in a['blocks']:
  s,t=b['center']
  for degree,old in zip([(s-2,t-1),(s,t),(s+2,t+1)],b['rows']):
   now=c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',degree).fetchall()
   assert [list(x) for x in now]==old
  w=b['wire']
  for old,dim,key in [(b['rows'][0],w['m'],'incoming'),(b['rows'][1],w['k'],'outgoing')]:
   cols=[]
   for _,_,value in old:
    assert value is not None
    ids=list(map(int,value.split(','))) if value else []
    cols.append([i in ids for i in range(dim)])
   assert [x[i] for i in range(dim) for x in cols]==w[key]
 for factor in ['g','h1','h3']:
  for row in json.loads((p/f'products-{factor}-provenance.json').read_text()):
   target=c.execute('select id from S0_AdamsE2_basis where s=? and t=? order by id',row['target_degree']).fetchall()
   assert [x[0] for x in target]==row['target_basis_ids']
print('4 complete d2 inputs and 30 product target bases match pinned database')
