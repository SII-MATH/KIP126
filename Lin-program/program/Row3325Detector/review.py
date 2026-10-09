import hashlib,json,sqlite3,importlib.util
spec=None
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent;db=r/'upstream/kervaire-49/S0_AdamsSS_t261.db';c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
spec=importlib.util.spec_from_file_location('alg',r/'RealMapCertificates/export.py');a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
counts={}
for tag,bid,deg in [('h1',3,(1,2)),('g8',42,(4,18)),('g13',72,(4,24))]:
 rows=json.loads((p/f'products-{tag}-provenance.json').read_text());counts[tag]=len(rows)
 assert c.execute('select s,t from S0_AdamsE2_basis where id=?',(bid,)).fetchone()==deg
 for row in rows:
  assert row['factor_id']==bid
  s,t=row['source_degree'];assert row['target_degree']==[s+deg[0],t+deg[1]]
  assert row['target_basis_ids']==[i for i, in c.execute('select id from S0_AdamsE2_basis where s=? and t=? order by id',row['target_degree'])]
  bundle=json.loads((p/f'products_{tag}/basis{row["source_id"]}.json').read_text());assert len(row['relation_rowids'])==len(bundle['relations'])
  for rel,rid in zip(bundle['relations'],row['relation_rowids']):
   raw=c.execute('select rel from S0_AdamsE2_relations where rowid=?',(rid,)).fetchone()[0];assert rel==[list(a.mono(x)) for x in raw.split(';')]
  if [s,t]==[15,142] and row['source_local']==2:assert not row['target_coordinates'] and not bundle['output']
 assert [x['source_local'] for x in rows if x['source_degree']==[15,142]]==list(range(c.execute('select count(*) from S0_AdamsE2_basis where s=15 and t=142').fetchone()[0]))
report=dict(row=c.execute('select id,s,t,base,diff,level from S0_AdamsE2_ss where id=3325').fetchone(),product_columns=counts,full_bilinear_certificates=6,source_products='literal_zero_all_three',database_sha256=hashlib.sha256(db.read_bytes()).hexdigest())
(p/'review.json').write_text(json.dumps(report,indent=2)+'\n');print(report)
