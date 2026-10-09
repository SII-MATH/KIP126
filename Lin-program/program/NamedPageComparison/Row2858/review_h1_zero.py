"""Verify all neighboring d2 source data; a successful audit is not Leibniz."""
import json,sqlite3,hashlib
from pathlib import Path
p=Path(__file__).resolve().parent;db=p.parents[1]/'upstream/kervaire-49/S0_AdamsSS_t261.db'
a=json.loads((p/'h1-zero-source.json').read_text());assert hashlib.sha256(db.read_bytes()).hexdigest()==a['sha256']
with sqlite3.connect(f'file:{db}?mode=ro',uri=True) as c:
 for b in a['blocks']:
  s,t=b['center']
  for deg,expected in zip([(s-2,t-1),(s,t),(s+2,t+1)],b['rows']):
   actual=c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',deg).fetchall()
   assert [list(x) for x in actual]==expected
  w=b['wire']
  for rs,dim,key in [(b['rows'][0],w['m'],'incoming'),(b['rows'][1],w['k'],'outgoing')]:
   cs=[]
   for _,_,raw in rs:
    assert raw is not None
    inds=list(map(int,raw.split(','))) if raw else [];cs.append([i in inds for i in range(dim)])
   assert [v[i] for i in range(dim) for v in cs]==w[key]
print('5 complete d2 input triples match database; h0 d3 target (4,3) dimension0')
