import json,sqlite3,subprocess,itertools
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent;c=sqlite3.connect(f'file:{r}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
def comparison(s,t):
 rs=[c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',d).fetchall() for d in [(s-2,t-1),(s,t),(s+2,t+1)]];n,m,k=map(len,rs)
 if any(x[2] is None for group in rs[:2] for x in group):raise ValueError('unknown d2')
 def mat(rs,n):return ''.join('1' if i in [int(j) for j in raw.split(',') if j] else '0' for i in range(n) for _,_,raw in rs) or '-'
 return json.loads(subprocess.check_output([str(r/'PageTransitionCertificates/page-transition-export'),str(k),str(m),str(n),mat(rs[1],k),mat(rs[0],m)]))
def ev(a,m,n,v):return [sum(a[i*n+j]*v[j] for j in range(n))%2 for i in range(m)]
T=comparison(11,137);ans=[]
for f in ['h0','h1','h2','h3','g']:
 pro=json.loads((p/f'products-{f}-provenance.json').read_text());entry={'factor':f}
 for s,t,key in [(8,135,'source'),(11,137,'target')]:
  cols=[x for x in pro if x['source_degree']==[s,t]];deg=cols[0]['target_degree'];w=comparison(*deg);n=len(cols);m=len(cols[0]['target_basis_ids']);M=[int(i in x['target_coordinates']) for i in range(m) for x in cols]
  if key=='source':entry[key]=ev(w['projection'],w['h'],w['m'],ev(M,m,n,[int(i==2) for i in range(n)]))
  else:
   maps=[]
   for j in range(T['h']):
    v=[int(i==j) for i in range(T['h'])];maps.append(ev(w['projection'],w['h'],w['m'],ev(M,m,n,ev(T['inclusion'],T['m'],T['h'],v))))
   entry[key]=maps
 ans.append(entry)
ann=[x for x in ans if not any(x['source'])];kernel=[]
for v in itertools.product([0,1],repeat=T['h']):
 if all(not any(sum(v[j]*col[i] for j,col in enumerate(x['target']))%2 for i in range(len(x['target'][0]))) for x in ann):kernel.append(v)
(p/'result.json').write_text(json.dumps(dict(target_comparison=T,factors=ans,joint_annihilator_kernel=kernel),indent=2)+'\n');print(ans);print('joint kernel',kernel)
