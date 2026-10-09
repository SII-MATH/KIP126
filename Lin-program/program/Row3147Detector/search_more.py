import importlib.util,json,sqlite3
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent
spec=importlib.util.spec_from_file_location('helper',r/'RealMapCertificates/export.py');a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
spec=importlib.util.spec_from_file_location('search',p/'search.py');h=importlib.util.module_from_spec(spec);spec.loader.exec_module(h)
c=h.c
rels=[(i,[a.mono(x) for x in raw.split(';')],s,t) for i,raw,s,t in c.execute('select rowid,rel,s,t from S0_AdamsE2_relations')]
def basis(s,t):return [(i,a.mono(raw)) for i,raw in c.execute('select id,mon from S0_AdamsE2_basis where s=? and t=? order by id',(s,t))]
def product(f,s,t,vec,fs,ft):
 bs=basis(s,t);target=basis(s+fs,t+ft);idx={m:j for j,(_,m) in enumerate(target)};cur=set()
 for j in vec:cur.symmetric_difference_update(a.multiply({f},{bs[j][1]}))
 for _ in range(10000):
  bad=next((m for m in sorted(cur) if m not in idx),None)
  if bad is None:break
  z=next(((rr,a.divide(bad,rr[1][0])) for rr in rels if rr[2]<=s+fs and rr[3]<=t+ft and a.divide(bad,rr[1][0]) is not None),None)
  if z is None:raise ValueError('reduction unavailable')
  rr,mult=z;cur.symmetric_difference_update(a.multiply({mult},rr[1]))
 else:raise ValueError('reduction limit')
 v=[0]*len(target)
 for m in cur:v[idx[m]]=1
 w=h.comparison(s+fs,t+ft);return h.project(w,v)
out=[]
for bid,raw,fs,ft,d2 in c.execute('select id,mon,s,t,d2 from S0_AdamsE2_basis where t<=50 and s<=12 and t>0 order by t,s,id'):
 if d2!='':continue
 f=a.mono(raw)
 try:
  kernel=product(f,19,142,[1,2],fs,ft)
  if any(kernel):
   source=product(f,16,140,[4],fs,ft);out.append(dict(id=bid,mon=raw,s=fs,t=ft,kernel=kernel,source=source));print(out[-1],flush=True)
 except ValueError as e:out.append(dict(id=bid,error=str(e)))
(p/'more-detectors.json').write_text(json.dumps(out,indent=2)+'\n');print('nonzero detectors',sum('kernel' in x for x in out))
