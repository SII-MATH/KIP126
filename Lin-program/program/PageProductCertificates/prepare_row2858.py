import json,sqlite3,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent;c=sqlite3.connect(f'file:{r}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
bound=json.loads((r/'NamedPageComparison/Row2858/boundaries-source.json').read_text())
for b in bound['blocks']:(p/('row-'+b['label']+'.json')).write_text(json.dumps(b['wire'],sort_keys=True,separators=(',',':'))+'\n')
lines=[];audit=[]
for f,s,t,label in [('g',4,24,'G'),('h1',1,2,'H1'),('h3',1,8,'H3')]:
 rs=[c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',d).fetchall() for d in [(s-2,t-1),(s,t),(s+2,t+1)]];n,m,k=map(len,rs)
 def mat(rows,dim):
  cs=[]
  for _,_,raw in rows:
   assert raw is not None;ids=list(map(int,raw.split(','))) if raw else [];cs.append([i in ids for i in range(dim)])
  return ''.join('1' if v[i] else '0' for i in range(dim) for v in cs) or '-'
 wire=json.loads(subprocess.check_output([str(r/'PageTransitionCertificates/page-transition-export'),str(k),str(m),str(n),mat(rs[1],k),mat(rs[0],m)],text=True));assert m==1
 (p/('factor-'+f+'.json')).write_text(json.dumps(wire,sort_keys=True,separators=(',',':'))+'\n')
 pro=json.loads((r/f'NamedPageComparison/Row2858/products-{f}-provenance.json').read_text());cols=[x for x in pro if x['source_degree']==[13,138]];dim=len(cols[0]['target_basis_ids']);tensor=''.join('1' if i in x['target_coordinates'] else '0' for i in range(dim) for x in cols)
 lines.append(f'{p}/factor-{f}.json {p}/row-Target.json {p}/row-{label}.json {tensor}')
 audit.append(dict(factor=f,rows=rs,comparison=wire,products=cols))
(p/'row2858.batch').write_text('\n'.join(lines)+'\n');out=subprocess.check_output([str(p/'page-product-export'),'--batch',str(p/'row2858.batch')],text=True)
(p/'row2858.jsonl').write_text(out)
for f,line in zip(['g','h1','h3'],out.splitlines()):(p/('row2858-'+f+'.json')).write_text(line+'\n')
(p/'row2858-source.json').write_text(json.dumps(audit,indent=2)+'\n')
# Source multiplication complexes for the three annihilator products.
source_records=[]
for f,fs,ft,label in [('g',4,24,'G'),('h1',1,2,'H1'),('h3',1,8,'H3')]:
 for tag,s,t in [('source',10,136),('product-'+f,10+fs,136+ft)]:
  rs=[c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',d).fetchall() for d in [(s-2,t-1),(s,t),(s+2,t+1)]]
  n,m,k=map(len,rs)
  wire=json.loads(subprocess.check_output([str(r/'PageTransitionCertificates/page-transition-export'),str(k),str(m),str(n),mat(rs[1],k),mat(rs[0],m)],text=True))
  (p/('ann-'+tag+'.json')).write_text(json.dumps(wire,sort_keys=True,separators=(',',':'))+'\n')
  source_records.append(dict(tag=tag,rows=rs,wire=wire))
 pro=json.loads((r/f'NamedPageComparison/Row2858/products-{f}-provenance.json').read_text());cols=[x for x in pro if x['source_degree']==[10,136]];dim=len(cols[0]['target_basis_ids'])
 tensor=''.join('1' if i in x['target_coordinates'] else '0' for i in range(dim) for x in cols)
 batch=f'{p}/factor-{f}.json {p}/ann-source.json {p}/ann-product-{f}.json {tensor or "-"}\n'
 (p/'ann.batch').write_text(batch)
 out=subprocess.check_output([str(p/'page-product-export'),'--batch',str(p/'ann.batch')],text=True)
 (p/('ann-'+f+'.json')).write_text(out)
(p/'ann-source-data.json').write_text(json.dumps(source_records,indent=2)+'\n')
print('six actual tensors descended')
