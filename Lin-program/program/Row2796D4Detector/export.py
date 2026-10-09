import collections,importlib.util,json,sqlite3
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent;db=r/'upstream/kervaire-49';sc=sqlite3.connect(f'file:{db}/S0_AdamsSS_t261.db?mode=ro',uri=True);tc=sqlite3.connect(f'file:{db}/CW_nu_eta_AdamsSS_t200.db?mode=ro',uri=True)
spec=importlib.util.spec_from_file_location('alg',r/'RealMapCertificates/export.py');a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
def mon(raw):
 xs=raw.split(',');return a.mono(','.join(xs[:-1])),int(xs[-1])
def poly(raw):return [mon(x) for x in raw.split(';')] if raw else []
def div(x,y):return a.divide(x[0],y[0]) if x[1]==y[1] else None
rels=[(i,poly(raw),s,t) for i,raw,s,t in tc.execute('select rowid,rel,s,t from CW_nu_eta_AdamsE2_relations')]
ringrels=[(i,[a.mono(x) for x in raw.split(';')],s,t) for i,raw,s,t in sc.execute('select rowid,rel,s,t from S0_AdamsE2_relations')]
modulegens=tc.execute('select id,s,t from CW_nu_eta_AdamsE2_generators').fetchall()
for g,gs,gt in modulegens:
 for rid,rel,rs,rt in ringrels:
  if rs+gs>18 or rt+gt>150:continue
  rels.append((-rid,[(co,g) for co in rel],rs+gs,rt+gt))
factor=mon(tc.execute('select mon from CW_nu_eta_AdamsE2_basis where s=1 and t=7 order by id').fetchone()[0])
lines=['import Row2796D4Detector.Shifted','set_option maxRecDepth 8192','set_option maxHeartbeats 4000000','namespace Row2796D4Detector.Actual','open Row2796D4Detector.Shifted LinProgramCertificates'];audit=[];(p/'wire').mkdir(exist_ok=True)
for s,t in [(7,135),(9,136),(11,137),(10,137),(12,138),(14,139),(13,139),(15,140),(17,141),(6,134),(8,135),(10,136)]:
 source=sc.execute('select id,mon from S0_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall();target=[(i,mon(raw)) for i,raw in tc.execute('select id,mon from CW_nu_eta_AdamsE2_basis where s=? and t=? order by id',(s+1,t+7))];lookup={m:i for i,m in target};outs=[];used=[];usedids=[];terms=[]
 for bid,raw in source:
  cur={(tuple(sorted(a.mono(raw)+factor[0])),factor[1])};trace=[]
  for step in range(10000):
   bad=next((m for m in sorted(cur) if m not in lookup),None)
   if bad is None:break
   choice=next(((rid,rel,div(bad,rel[0])) for rid,rel,rs,rt in rels if rs<=s+1 and rt<=t+7 and rel and div(bad,rel[0]) is not None),None)
   if choice is None:raise ValueError(f'no module reduction {bid} {bad}')
   rid,rel,q=choice;trace.append(dict(relation=len(used),multiplier=[q]));used.append(rel);usedids.append(rid);cur.symmetric_difference_update((tuple(sorted(q+x)),g) for x,g in rel)
  else:raise ValueError('limit')
  outs.append(cur);terms.append(trace)
 b=1+max([g for rel in used for _,g in rel]+[g for _,(_,g) in target]+[0])
 def ex(ts,n):
  x=[[] for _ in range(n)]
  for co,g in ts:x[g].append(list(co))
  return x
 w=dict(version=1,sourceS=s,sourceT=t,targetS=s+1,targetT=t+7,sourceGenerators=1,targetGenerators=b,rows=len(target),cols=len(source),images=[ex([factor],b)],source=[ex([(a.mono(raw),0)],1) for _,raw in source],target=[ex([m],b) for _,m in target],relations=[ex(rel,b) for rel in used],entries=[m in o for _,m in target for o in outs],terms=terms)
 fn=f'wire/s{s}t{t}.json';(p/fn).write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n');lines += [f'def m{s}_{t} : Wire := row2796_shifted% "Row2796D4Detector/{fn}"',f'theorem m{s}_{t}_valid : m{s}_{t}.Valid := by lin_cert using ()'];audit.append(dict(s=s,t=t,source=source,target=[(i,[list(m[0]),m[1]]) for i,m in target],wire=w,relation_sources=usedids))
lines+=['end Row2796D4Detector.Actual'];(p/'Actual.lean').write_text('\n'.join(lines)+'\n');(p/'source.json').write_text(json.dumps(audit,indent=2)+'\n');print('twelve actual shifted module coefficient matrices',sum(len(x['source']) for x in audit),'columns')
