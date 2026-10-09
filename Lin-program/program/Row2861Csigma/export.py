import collections,importlib.util,json,sqlite3
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent;db=r/'upstream/kervaire-49';sc=sqlite3.connect(f'file:{db}/S0_AdamsSS_t261.db?mode=ro',uri=True);tc=sqlite3.connect(f'file:{db}/Csigma_AdamsSS_t200.db?mode=ro',uri=True)
spec=importlib.util.spec_from_file_location('alg',r/'RealMapCertificates/export.py');a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
def mon(raw):
 xs=raw.split(',');return a.mono(','.join(xs[:-1])),int(xs[-1])
def poly(raw):return [mon(x) for x in raw.split(';')] if raw else []
def div(x,y):return a.divide(x[0],y[0]) if x[1]==y[1] else None
rels=[(i,poly(raw),s,t) for i,raw,s,t in tc.execute('select rowid,rel,s,t from Csigma_AdamsE2_relations')]
lines=['import ModuleToModuleCertificates.Import','set_option maxRecDepth 8192','set_option maxHeartbeats 4000000','namespace Row2861Csigma.Actual','open ModuleToModuleCertificates LinProgramCertificates'];audit=[];(p/'wire').mkdir(exist_ok=True)
for s,t in [(7,135),(9,136),(11,137),(10,137),(12,138),(14,139)]:
 source=sc.execute('select id,mon from S0_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall();target=[(i,mon(raw)) for i,raw in tc.execute('select id,mon from Csigma_AdamsE2_basis where s=? and t=? order by id',(s,t))];lookup={m:i for i,m in target};outs=[];used=[];terms=[]
 for bid,raw in source:
  cur={(a.mono(raw),0)};trace=[]
  for step in range(10000):
   bad=next((m for m in sorted(cur) if m not in lookup),None)
   if bad is None:break
   choice=next(((rid,rel,div(bad,rel[0])) for rid,rel,rs,rt in rels if rs<=s and rt<=t and rel and div(bad,rel[0]) is not None),None)
   if choice is None:raise ValueError(f'no module reduction {bid} {bad}')
   rid,rel,q=choice;trace.append(dict(relation=len(used),multiplier=[q]));used.append(rel);cur.symmetric_difference_update((tuple(sorted(q+x)),g) for x,g in rel)
  else:raise ValueError('limit')
  outs.append(cur);terms.append(trace)
 b=1+max([g for rel in used for _,g in rel]+[g for _,(_,g) in target]+[0])
 def ex(ts,n):
  x=[[] for _ in range(n)]
  for co,g in ts:x[g].append(list(co))
  return x
 w=dict(version=1,sourceS=s,sourceT=t,targetS=s,targetT=t,sourceGenerators=1,targetGenerators=b,rows=len(target),cols=len(source),images=[ex([((),0)],b)],source=[ex([(a.mono(raw),0)],1) for _,raw in source],target=[ex([m],b) for _,m in target],relations=[ex(rel,b) for rel in used],entries=[m in o for _,m in target for o in outs],terms=terms)
 fn=f'wire/s{s}t{t}.json';(p/fn).write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n');lines += [f'def m{s}_{t} : Wire := module_to_module% "Row2861Csigma/{fn}"',f'theorem m{s}_{t}_valid : m{s}_{t}.Valid := by lin_cert using ()'];audit.append(dict(s=s,t=t,source=source,target=[(i,[list(m[0]),m[1]]) for i,m in target],wire=w))
lines+=['end Row2861Csigma.Actual'];(p/'Actual.lean').write_text('\n'.join(lines)+'\n');(p/'source.json').write_text(json.dumps(audit,indent=2)+'\n');print('six actual bottom-cell matrices',sum(len(x['source']) for x in audit),'columns')
