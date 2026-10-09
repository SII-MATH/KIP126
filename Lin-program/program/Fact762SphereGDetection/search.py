"""Inspect exact sphere g products and strict complete d2-d4 predecessor graph."""
import hashlib, json, sqlite3, subprocess
from pathlib import Path
HERE=Path(__file__).resolve().parent; ROOT=HERE.parent
SCRIPT=ROOT/'AggregateD5Conditional/generate.py'
ns={'__file__':str(SCRIPT)}
exec(compile(SCRIPT.read_text().split('\ncandidates=[]')[0],str(SCRIPT),'exec'),ns)
ns['dag']=dict(degrees={},blocks={});ns['cache'].clear();ns['failures'].clear();ns['attempted'].clear()
DB=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db';c=sqlite3.connect(f'file:{DB}?mode=ro',uri=True)
meta=dict(c.execute('select name,value from version'))
def degree(s,t):
 k=f'S0:{s},{t}'
 if k in ns['dag']['degrees']:return
 if t>meta['t_max']:raise ValueError('outside E2 window')
 ns['dag']['degrees'][k]=dict(object='S0',degree=[s,t],e2=c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall(),staircase=c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',(s,t)).fetchall())
def graph(s,t,r):
 k=ns['key']('S0',s,t,r)
 if k in ns['dag']['blocks']:return
 pred=[]
 for a,b in [(s-r,t-r+1),(s,t),(s+r,t+r-1)]:
  degree(a,b)
  if r>2:graph(a,b,r-1);pred.append(ns['key']('S0',a,b,r-1))
 ns['dag']['blocks'][k]=dict(object='S0',center=[s,t],page=r,predecessors=pred)
original=ns['matrix']
def matrix(o,s,t,r,uses):
 if r==2:return original(o,s,t,r,uses)
 k=ns['dim'](o,s+r,t+r-1,r); out=[]
 for row in ns['selected'](o,s,t,r):
  rid,base,diff,level=row
  if level==10000-r and diff is not None:v=ns['project'](o,s+r,t+r-1,r,ns['bits'](diff,len(ns['e2'](o,s+r,t+r-1))));kind='stored_event'
  elif 2<=level<5000 or 9000<level<10000-r:v=[0]*k;kind='finite_cycle_prefix'
  elif k==0:v=[];kind='complete_zero_codomain'
  else:raise ValueError(f'unknown {ns["key"](o,s,t,r)}:row{rid}; target dimension {k}')
  out.append(v);uses.append(dict(source=[s,t],page=r,row=row,kind=kind))
 return ns['rows'](out,k)
ns['matrix']=matrix
roots=[(s,t,4) for s,t in [(4,24),(9,28),(14,139),(19,143),(18,163),(23,167)]]
for s,t,r in roots:graph(s,t,r)
results={}
for key,node in sorted(ns['dag']['blocks'].items(),key=lambda p:(p[1]['page'],p[0])):
 try:
  b=ns['build']('S0',*node['center'],node['page']);results[key]=dict(status='complete',dimensions={k:b['wire'][k] for k in ['k','m','n','h']})
 except (ValueError,AssertionError) as e:results[key]=dict(status='unresolved',reason=str(e))
import importlib.util
spec=importlib.util.spec_from_file_location('alg',ROOT/'RealMapCertificates/export.py');alg=importlib.util.module_from_spec(spec);spec.loader.exec_module(alg)
rels=[(rid,raw,s,t,[alg.mono(x) for x in raw.split(';')]) for rid,raw,s,t in c.execute('select rowid,rel,s,t from S0_AdamsE2_relations order by rowid')]
products=[]
for left,right in [(72,3080),(86,3080),(72,3389),(72,3390)]:
 rows=[c.execute('select id,mon,s,t from S0_AdamsE2_basis where id=?',(i,)).fetchone() for i in [left,right]]
 s,t=[sum(row[i] for row in rows) for i in [2,3]];target=c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall();lookup={alg.mono(row[1]):i for i,row in enumerate(target)}
 initial=alg.multiply(*[{alg.mono(row[1])} for row in rows]);current=set(initial);trace=[]
 for _ in range(10000):
  bad=next((m for m in sorted(current) if m not in lookup),None)
  if bad is None:break
  rel,mult=next(( (r,alg.divide(bad,r[4][0])) for r in rels if r[2]<=s and r[3]<=t and r[4] and alg.divide(bad,r[4][0]) is not None))
  current.symmetric_difference_update(alg.multiply({mult},rel[4]));trace.append(dict(rowid=rel[0],raw=rel[1],degree=rel[2:4],polynomial=rel[4],multiplier=mult))
 else:raise ValueError('reduction limit')
 item=dict(left=rows[0],right=rows[1],target_degree=[s,t],target=target,input=sorted(initial),output=sorted(current),trace=trace,coordinates=sorted(lookup[m] for m in current));products.append(item);print('PRODUCT',left,right,item['coordinates'],'basisids',[target[i][0] for i in item['coordinates']],flush=True)
report=dict(metadata=meta,source_sha256=hashlib.sha256(DB.read_bytes()).hexdigest(),roots=[ns['key']('S0',*x) for x in roots],products=products,graph=ns['dag'],comparisons=ns['cache'],results=results)
(HERE/'search.json').write_text(json.dumps(report,indent=2)+'\n')
for k in report['roots']:print(k,results[k])
print('direct unknowns')
for k,b in results.items():
 if b['status']=='unresolved' and b['reason'].startswith('unknown '+k):print(k,b['reason'])
