import collections,json
from pathlib import Path
p=Path(__file__).resolve().parent;s=json.loads((p/'source.json').read_text());events=json.loads((p/'event-results.json').read_text());dag=json.loads((p/'dag.json').read_text());inv=json.loads((p.parent/'inventory.json').read_text());rows={x['staircase_id']:x for x in inv['staircase']}
def bl(v):return '['+','.join('true' if x else 'false' for x in v)+']'
def tag(K):return 'b_'+K.replace(':','_').replace(',','_').replace('-','neg')
def evalmat(bits,m,n,v):return [sum(bits[i*n+j]*v[j] for j in range(n))%2 for i in range(m)]
lines=['import AggregateTargetInventory.EventAudit.SemanticLinks','import AggregateTargetInventory.EventAudit.EliminationStage','namespace AggregateTargetInventory.EventAudit.TrajectoryCycles','open LinearCertificates PageTransitionCertificates Data Events'];audit=[]
for e in events:
 if e['status']!='finite_nonzero_event':continue
 row=rows[e['staircase_id']];a,t=s['blocks'][e['root']]['center'];r=e['event_page'];endpoints=[]
 for label,ss,tt,ids in [('source',a,t,row['base_local_indices'] if row['status']=='stored_outgoing' else row['diff_local_indices']),('target',a+r,t+r-1,row['diff_local_indices'] if row['status']=='stored_outgoing' else row['base_local_indices'])]:
  n=len(dag['degrees'][f'S0:{ss},{tt}']['e2']);v=[int(i in ids) for i in range(n)];expression=f'(fun i => ({bl(v)} : List Bool)[i.val]!)';steps=[];prefix_ok=True
  for page in range(2,r):
   K=f'S0:{ss},{tt}:d{page}';b=s['blocks'].get(K)
   if b is None:steps.append(dict(page=page,status='missing_comparison'));prefix_ok=False;break
   w=b['wire'];value=evalmat(w['outgoing'],w['k'],w['m'],v);ok=not any(value);steps.append(dict(page=page,comparison=K,coordinates=v,outgoing_value=value,status='cycle' if ok else 'noncycle'))
   if not ok:prefix_ok=False;break
   N=tag(K);nm=f'event{e["staircase_id"]}_{label}_cycle_d{page}';lines.append(f'theorem {nm} : InKernel (matrixOf {w["k"]} {w["m"]} {N}.outgoing) {expression} := by funext i; exact (show ∀ i : Fin {w["k"]}, eval (matrixOf {w["k"]} {w["m"]} {N}.outgoing) {expression} i = false from by decide) i')
   expression=f'(eval {N}.comparison.projection {expression})';v=evalmat(w['projection'],w['h'],w['m'],v)
  endpoints.append(dict(endpoint=label,degree=[ss,tt],raw_local_indices=ids,prior_stages=steps,prior_cycles_verified=prefix_ok,final_coordinates=v))
 if endpoints[1]['prior_cycles_verified']:
  K=f'S0:{a+r},{t+r-1}:d{r}'
  if K in s['blocks']:
   N=tag(K);w=s['blocks'][K]['wire'];lines.append(f'theorem event{e["staircase_id"]}_target_cycle_at_event : InKernel (matrixOf {w["k"]} {w["m"]} {N}.outgoing) event{e["staircase_id"]}Target := StageBasic.image_cycle EliminationStage.event{e["staircase_id"]}_adjacent event{e["staircase_id"]}_differential')
 audit.append(dict(staircase_id=e['staircase_id'],event_page=r,endpoints=endpoints,all_prior_cycles=all(x['prior_cycles_verified'] for x in endpoints)))
lines+=['end AggregateTargetInventory.EventAudit.TrajectoryCycles'];(p/'TrajectoryCycles.lean').write_text('\n'.join(lines)+'\n');(p/'trajectory-cycles.json').write_text(json.dumps(audit,indent=2)+'\n');print('events',len(audit),'both prefixes verified',sum(x['all_prior_cycles'] for x in audit),'cycle steps',sum(z['status']=='cycle' for x in audit for y in x['endpoints'] for z in y['prior_stages']));print('failed',[(x['staircase_id'],y['endpoint'],y['prior_stages'][-1]) for x in audit for y in x['endpoints'] if not y['prior_cycles_verified']])
