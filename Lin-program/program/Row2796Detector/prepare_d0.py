import json,sqlite3,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent;c=sqlite3.connect(f'file:{r}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
def comparison(s,t):
 rs=[c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',d).fetchall() for d in [(s-2,t-1),(s,t),(s+2,t+1)]];n,m,k=map(len,rs)
 if any(x[2] is None for rows in rs[:2] for x in rows):raise ValueError('unknown d2')
 def mat(rows,dim):return ''.join('1' if i in [int(j) for j in raw.split(',') if j] else '0' for i in range(dim) for _,_,raw in rows) or '-'
 return json.loads(subprocess.check_output([str(r/'PageTransitionCertificates/page-transition-export'),str(k),str(m),str(n),mat(rs[1],k),mat(rs[0],m)]))
for tag,s,t in [('factord0',4,18),('source',8,135),('target',11,137),('productSourced0',12,153),('productTargetd0',15,155)]:
 w=comparison(s,t);(p/f'{tag}.json').write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n')
pro=json.loads((p/'products-d0-provenance.json').read_text());batch=[]
for s,t,tag,left,right in [(8,135,'annd0','source','productSourced0'),(11,137,'detectd0','target','productTargetd0')]:
 cols=[x for x in pro if x['source_degree']==[s,t]];m=len(cols[0]['target_basis_ids']);tensor=''.join('1' if i in x['target_coordinates'] else '0' for i in range(m) for x in cols)
 batch.append(f'{p}/factord0.json {p}/{left}.json {p}/{right}.json {tensor or "-"}')
(p/'batch.txt').write_text('\n'.join(batch)+'\n');out=subprocess.check_output([str(r/'PageProductCertificates/page-product-export'),'--batch',str(p/'batch.txt')],text=True)
for tag,line in zip(['annd0','detectd0'],out.splitlines()):(p/f'{tag}.json').write_text(line+'\n')
print('two full bilinear quotient product certificates')
