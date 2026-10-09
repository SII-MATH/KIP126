import hashlib,json,sqlite3,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent;db=r/'upstream/kervaire-49/S0_AdamsSS_t261.db';c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
def comparison(s,t):
 rows=[c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',d).fetchall() for d in [(s-2,t-1),(s,t),(s+2,t+1)]];n,m,k=map(len,rows)
 if any(x[2] is None for rs in rows[:2] for x in rs):raise ValueError('unknown d2')
 def mat(rs,dim):return ''.join(str(int(i in [int(j) for j in raw.split(',') if j])) for i in range(dim) for _,_,raw in rs) or '-'
 return json.loads(subprocess.check_output([str(r/'PageTransitionCertificates/page-transition-export'),str(k),str(m),str(n),mat(rows[1],k),mat(rows[0],m)]))
for tag,fs,ft in [('h1',1,2),('g8',4,18),('g13',4,24)]:
 for name,s,t in [('factor'+tag,fs,ft),('source',15,142),('target',18,144),('source'+tag,15+fs,142+ft),('target'+tag,18+fs,144+ft)]:
  (p/f'{name}.json').write_text(json.dumps(comparison(s,t),sort_keys=True,separators=(',',':'))+'\n')
 pro=json.loads((p/f'products-{tag}-provenance.json').read_text());batch=[]
 for s,t,name in [(15,142,'ann'),(18,144,'detect')]:
  cs=[x for x in pro if x['source_degree']==[s,t]];m=len(cs[0]['target_basis_ids']);bits=''.join(str(int(i in x['target_coordinates'])) for i in range(m) for x in cs);middle='source' if name=='ann' else 'target'
  batch.append(f'{p}/factor{tag}.json {p}/{middle}.json {p}/{middle}{tag}.json {bits or "-"}')
 fn=p/f'batch-{tag}.txt';fn.write_text('\n'.join(batch)+'\n');out=subprocess.check_output([str(r/'PageProductCertificates/page-product-export'),'--batch',str(fn)],text=True)
 for name,line in zip(['ann','detect'],out.splitlines()):(p/f'{name}{tag}.json').write_text(line+'\n')
(p/'provenance.json').write_text(json.dumps(dict(database_sha256=hashlib.sha256(db.read_bytes()).hexdigest(),row=c.execute('select id,s,t,base,diff,level from S0_AdamsE2_ss where id=3325').fetchone(),factors=[dict(id=bid,mon=mon,s=s,t=t) for bid,mon,s,t in c.execute('select id,mon,s,t from S0_AdamsE2_basis where id in (3,42,72) order by id')]),indent=2)+'\n')
print('six full bilinear E3 quotient certificates')
