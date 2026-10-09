import json,sqlite3,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent;c=sqlite3.connect(f'file:{r}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
def comparison(s,t):
 rs=[c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',d).fetchall() for d in [(s-2,t-1),(s,t),(s+2,t+1)]];n,m,k=map(len,rs)
 if any(raw is None for group in rs[:2] for _,_,raw in group):raise ValueError("unknown d2")
 def mat(rs,n):return ''.join('1' if i in [int(j) for j in raw.split(',') if j] else '0' for i in range(n) for _,_,raw in rs) or '-'
 return json.loads(subprocess.check_output([str(r/'PageTransitionCertificates/page-transition-export'),str(k),str(m),str(n),mat(rs[1],k),mat(rs[0],m)]))
def project(w,v):return [sum(w['projection'][i*w['m']+j]*v[j] for j in range(w['m']))%2 for i in range(w['h'])]
results=[]
for f in ['h0','h1','h3','g']:
 prov=json.loads((p/f'products-{f}-provenance.json').read_text());result={'factor':f}
 for s,t,vec,label in [(16,140,[4],'source'),(19,142,[1,2],'kernel')]:
  rows=[x for x in prov if x['source_degree']==[s,t]];degree=rows[0]['target_degree'];w=comparison(*degree);v=[0]*w['m']
  for j in vec:
   for i in rows[j]['target_coordinates']:v[i]^=1
  result[label]={'degree':degree,'representative':v,'quotient':project(w,v),'wire':w}
 results.append(result)
(p/'detector-search.json').write_text(json.dumps(results,indent=2)+'\n')
for x in results:print(x['factor'],'source',x['source']['quotient'],'kernel',x['kernel']['quotient'])
