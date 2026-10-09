import json,runpy
from pathlib import Path
p=Path(__file__).resolve().parent;g=runpy.run_path(str(p/'generate.py'));s=json.loads((p/'source.json').read_text());dag=json.loads((p/'dag.json').read_text());bl=g['bl'];tag=g['tag'];expr=g['expr'];project=g['project'];bits=g['bits'];out=[]
lines=['import AggregateC2Row3019Conditional.Data','namespace AggregateC2Row3019Conditional.Events','open LinearCertificates PageTransitionCertificates Data']
def checked_project(o,a,t,page,vector):
 for q in range(2,page):
  w=s['blocks'][f'{o}:{a},{t}:d{q}']['wire']
  if any(sum(w['outgoing'][i*w['m']+j]*vector[j] for j in range(w['m']))%2 for i in range(w['k'])):
   raise ValueError(f'noncycle endpoint at {o}:{a},{t}:d{q}')
  vector=[sum(w['projection'][i*w['m']+j]*vector[j] for j in range(w['m']))%2 for i in range(w['h'])]
  if not any(vector):raise ValueError(f'zero endpoint projection at {o}:{a},{t}:d{q}')
 return vector
for item in s['candidates']:
 e=item['raw']['event'];row=e['inventory_row'];entry=dict(staircase_id=row['staircase_id'],classification=row['status'],event_page=e['event_page'],root=e['comparison'])
 if item['status']!='complete_event_comparison':entry.update(status='unresolved',reason=item['reason']);out.append(entry);continue
 K=e['comparison'];b=s['blocks'][K];w=b['wire'];a,t=e['event_source'];r=e['event_page'];target=(a+r,t+r-1);N=tag(K);rid=row['staircase_id'];name=f'event{rid}'
 try:
  source_raw=row['base'] if row['status']=='stored_outgoing' else row['diff'];target_raw=row['diff'] if row['status']=='stored_outgoing' else row['base']
  sv=checked_project('S0',a,t,r,bits(source_raw,len(g['e2']('S0',a,t))));tv=checked_project('S0',*target,r,bits(target_raw,len(g['e2']('S0',*target))))
  actual=[sum(w['outgoing'][i*w['m']+j]*sv[j] for j in range(w['m']))%2 for i in range(w['k'])]
  if actual!=tv:raise ValueError('stored row differential does not agree with complete projected matrix')
  if not any(tv):raise ValueError('event target is zero after complete predecessor projection')
  v=lambda a:'(fun i => ('+bl(a)+' : List Bool)[i.val]!)'
  lines += [f'def {name}Source : Vec {w["m"]} := {v(sv)}',f'def {name}Target : Vec {w["k"]} := {v(tv)}',f'theorem {name}_differential : eval (matrixOf {w["k"]} {w["m"]} {N}.outgoing) {name}Source = {name}Target := by funext i; exact (show ∀ i, eval (matrixOf {w["k"]} {w["m"]} {N}.outgoing) {name}Source i = {name}Target i from by decide) i',f'theorem {name}_target_nonzero : {name}Target ≠ zero := by intro h; have hh := congrFun h ⟨{next(i for i,x in enumerate(tv) if x)},by decide⟩; contradiction',f'theorem {name}_target_in_image : InImage (matrixOf {w["k"]} {w["m"]} {N}.outgoing) {name}Target := ⟨{name}Source,{name}_differential⟩']
  if rid in [3254,3391]:
   src_expr=expr('S0',a,t,r,bits(source_raw,len(g['e2']('S0',a,t))))
   tgt_expr=expr('S0',*target,r,bits(target_raw,len(g['e2']('S0',*target))))
   lines += [f'theorem {name}_raw_source : {name}Source = {src_expr} := by decide',f'theorem {name}_raw_target : {name}Target = {tgt_expr} := by decide']
  seen=set()
  def visit(k):
   if k in seen:return
   seen.add(k)
   for pred in s['blocks'][k]['predecessors']:visit(pred)
  visit(K);uses=[dict(block=k,**u) for k in sorted(seen) for u in s['blocks'][k]['uses'] if u['kind'].startswith('conditional')]
  entry.update(status='finite_nonzero_event',source_coordinates=sv,target_coordinates=tv,conditional_uses=uses)
 except ValueError as err:entry.update(status='event_semantics_rejected',reason=str(err))
 out.append(entry)
lines+=['end AggregateC2Row3019Conditional.Events'];(p/'Events.lean').write_text('\n'.join(lines)+'\n');(p/'event-results.json').write_text(json.dumps(out,indent=2)+'\n')
from collections import Counter
print(Counter(x['status'] for x in out))
