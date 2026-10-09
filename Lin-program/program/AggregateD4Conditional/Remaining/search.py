"""Ordinary E3 product detector screen on three exact unknown rows."""
import collections,importlib.util,itertools,json,sqlite3,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parents[1];c=sqlite3.connect(f'file:{r}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
spec=importlib.util.spec_from_file_location('alg',r/'RealMapCertificates/export.py');a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
rels=[(i,[a.mono(x) for x in raw.split(';')],s,t) for i,raw,s,t in c.execute('select rowid,rel,s,t from S0_AdamsE2_relations order by rowid')]
def basis(s,t):return list(c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',(s,t)))
cache={}
def comparison(s,t):
 if (s,t) in cache:return cache[s,t]
 groups=[basis(*d) for d in [(s-2,t-1),(s,t),(s+2,t+1)]];n,m,k=map(len,groups)
 if any(x[2] is None for g in groups[:2] for x in g):raise ValueError(f'unknown d2 at {s},{t}')
 def mat(rs,dim):return ''.join(str(int(i in [int(j) for j in x[2].split(',') if j])) for i in range(dim) for x in rs) or '-'
 proc=subprocess.run([str(r/'PageTransitionCertificates/page-transition-export'),str(k),str(m),str(n),mat(groups[1],k),mat(groups[0],m)],capture_output=True,text=True)
 if proc.returncode:raise ValueError(proc.stderr)
 cache[s,t]=json.loads(proc.stdout);return cache[s,t]
def ev(a,m,n,v):return [sum(a[i*n+j]*v[j] for j in range(n))%2 for i in range(m)]
def product(f,s,t,v,fs,ft):
 bs=basis(s,t);target=basis(s+fs,t+ft);idx={a.mono(raw):j for j,(_,raw,_) in enumerate(target)};cur=set()
 for j,x in enumerate(v):
  if x:cur.symmetric_difference_update(a.multiply({f},{a.mono(bs[j][1])}))
 seen=set();used=[]
 for _ in range(10000):
  bad=next((m for m in sorted(cur) if m not in idx),None)
  if bad is None:return [int(any(idx[m]==i for m in cur)) for i in range(len(target))]
  state=tuple(sorted(cur))
  if state in seen:raise ValueError('reduction cycle')
  seen.add(state);z=next(((rr,a.divide(bad,rr[1][0])) for rr in rels if rr[2]<=s+fs and rr[3]<=t+ft and a.divide(bad,rr[1][0]) is not None),None)
  if z is None:raise ValueError('reduction unavailable')
  rr,q=z;cur.symmetric_difference_update(a.multiply({q},rr[1]))
 raise ValueError('reduction limit')
out=[]
for rid in [2576,2925,4306]:
 _,s,t,base,diff,level=c.execute('select id,s,t,base,diff,level from S0_AdamsE2_ss where id=?',(rid,)).fetchone();src=comparison(s,t);T=comparison(s+3,t+2);sv=[int(i in list(map(int,base.split(',')))) for i in range(src['m'])];factors=[]
 for bid,raw,fs,ft,d2 in c.execute('select id,mon,s,t,d2 from S0_AdamsE2_basis where 0<t and t<=30 order by t,s,id'):
  entry=dict(id=bid,mon=raw,degree=[fs,ft])
  if d2 is None:entry['status']='factor_d2_unknown';factors.append(entry);continue
  if d2!='':entry['status']='factor_not_d2_cycle';factors.append(entry);continue
  try:
   A=comparison(s+fs,t+ft);B=comparison(s+3+fs,t+2+ft);a0=product(a.mono(raw),s,t,sv,fs,ft);source=ev(A['projection'],A['h'],A['m'],a0);entry['source_image']=source
   images=[]
   for j in range(T['h']):
    tv=ev(T['inclusion'],T['m'],T['h'],[int(i==j) for i in range(T['h'])]);rawout=product(a.mono(raw),s+3,t+2,tv,fs,ft);images.append(ev(B['projection'],B['h'],B['m'],rawout))
   entry['target_images']=images;entry['status']='source_nonzero' if any(source) else 'candidate' if any(any(x) for x in images) else 'target_zero'
  except ValueError as e:entry.update(status='unknown',reason=str(e))
  factors.append(entry)
 candidates=[x for x in factors if x['status']=='candidate'];kernel=[]
 for v in itertools.product([0,1],repeat=T['h']):
  if all(not any(sum(v[j]*col[i] for j,col in enumerate(x['target_images']))%2 for i in range(len(x['target_images'][0]))) for x in candidates):kernel.append(v)
 out.append(dict(row=[rid,s,t,base,diff,level],target_dimension=T['h'],counts=dict(collections.Counter(x['status'] for x in factors)),joint_kernel=kernel,factors=factors))
 print(rid,out[-1]['counts'],'kernel',kernel,flush=True)
(p/'products.json').write_text(json.dumps(out,indent=2)+'\n')
