import importlib.util,json,sqlite3
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parents[1]
spec=importlib.util.spec_from_file_location('helper',r/'RealMapCertificates/export.py');a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
import types
h=types.SimpleNamespace()
helper=(r/'Row2796Search/search.py').read_text().split('T=comparison')[0].replace('p=Path(__file__).resolve().parent;r=p.parent;', 'p=Path(__file__).resolve().parent;r=p.parents[1];')
ns={'__file__':__file__};exec(helper,ns);h.comparison=ns['comparison'];h.ev=ns['ev'];h.c=ns['c']
h.project=lambda w,v:h.ev(w['projection'],w['h'],w['m'],v)
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
for fs,ft in [(1,1),(1,2),(1,4),(1,8),(1,16),(1,32),(4,24)]:
 for bid,f in basis(fs,ft):
  try:
   source=product(f,6,132,[0],fs,ft)
   columns=[product(f,9,134,[i],fs,ft) for i in [1,2,3]]
   rows=c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=?',(6+fs,132+ft)).fetchall()
   entry=dict(factor_id=bid,degree=[fs,ft],source=source,target_columns=columns,source_staircase=rows)
  except ValueError as e:entry=dict(factor_id=bid,degree=[fs,ft],error=str(e))
  out.append(entry);print(entry,flush=True)
(p/'search.json').write_text(json.dumps(out,indent=2)+'\n')
