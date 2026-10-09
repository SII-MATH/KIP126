import json,sqlite3,hashlib
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent;db=r/'upstream/kervaire-49/S0_AdamsSS_t261.db'
with sqlite3.connect(f'file:{db}?mode=ro',uri=True) as c:
 for f,s,t in [('g',4,24),('h1',1,2),('h3',1,8)]:
  item=next(x for x in json.loads((p/'row2858-source.json').read_text()) if x['factor']==f)
  for deg,expected in zip([(s-2,t-1),(s,t),(s+2,t+1)],item['rows']):
   assert [list(x) for x in c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',deg)]==expected
  for prefix,degree in [('row2858',(13,138)),('ann',(10,136))]:
   w=json.loads((p/f'{prefix}-{f}.json').read_text());pro=json.loads((r/f'NamedPageComparison/Row2858/products-{f}-provenance.json').read_text());cols=[x for x in pro if tuple(x['source_degree'])==degree]
   assert w['tensor']==[i in col['target_coordinates'] for i in range(w['target']['m']) for col in cols]
(p/'row2858-review.json').write_text(json.dumps({'sha256':hashlib.sha256(db.read_bytes()).hexdigest(),'checked_factor_triples':3,'checked_product_tensors':6,'status':'finite_input_review_pass'},indent=2)+'\n')
print('3 complete factor input triples and 6 product tensors verified')
