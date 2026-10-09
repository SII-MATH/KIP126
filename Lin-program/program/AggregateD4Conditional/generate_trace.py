import json
from pathlib import Path
p=Path(__file__).resolve().parent;s=json.loads((p/'source.json').read_text());dag=json.loads((p/'dag.json').read_text())
def bl(v):return '['+','.join('true' if x else 'false' for x in v)+']'
def tag(k):return 'b_'+k.replace(':','_').replace(',','_')
def ev(a,m,n,v):return [sum(a[i*n+j]*v[j] for j in range(n))%2 for i in range(m)]
lines=['import AggregateD4Conditional.Matches','import AggregateTargetInventory.EventAudit.NonboundaryBasic','namespace AggregateD4Conditional.Trace','open LinearCertificates PageTransitionCertificates Data Events','open AggregateTargetInventory.EventAudit.NonboundaryBasic'];endpoints=[]
for label,ss,tt,idx in [('source',12,138,3),('target',16,141,1)]:
 n=len(dag['degrees'][f'S0:{ss},{tt}']['e2']);v=[int(i==idx) for i in range(n)];raw=v[:];expr=f'(fun i => ({bl(v)} : List Bool)[i.val]!)';steps=[]
 for page in [2,3]:
  k=f'S0:{ss},{tt}:d{page}';w=s['blocks'][k]['wire'];N=tag(k);name=f'{label}_d{page}';value=ev(w['outgoing'],w['k'],w['m'],v);assert not any(value);proj=ev(w['projection'],w['h'],w['m'],v);assert any(proj)
  lines.append(f'theorem {name}_cycle : InKernel (matrixOf {w["k"]} {w["m"]} {N}.outgoing) {expr} := by funext i; exact (show ∀ i : Fin {w["k"]}, eval (matrixOf {w["k"]} {w["m"]} {N}.outgoing) {expr} i = false from by decide) i')
  lines.append(f'theorem {name}_nonzero_projection : eval {N}.comparison.projection {expr} ≠ zero := by intro h; have hi := congrFun h ⟨{next(i for i,x in enumerate(proj) if x)},by decide⟩; contradiction')
  lines.append(f'theorem {name}_not_boundary : ¬ InImage (matrixOf {w["m"]} {w["n"]} {N}.incoming) {expr} := nonzero_projection_not_boundary {N}.comparison {N}_complete.2 {name}_cycle {name}_nonzero_projection')
  steps.append(dict(page=page,comparison=k,coordinates=v,outgoing_value=value,status='cycle',projection=proj));expr=f'(eval {N}.comparison.projection {expr})';v=proj
 lines.append(f'theorem {label}_full_projection : {expr} = event3254{label.capitalize()} := by decide')
 endpoints.append(dict(endpoint=label,degree=[ss,tt],raw_local_indices=[idx],raw_vector=raw,prior_stages=steps,prior_cycles_verified=True,final_coordinates=v))
lines.append('end AggregateD4Conditional.Trace');(p/'Trace.lean').write_text('\n'.join(lines)+'\n');(p/'trajectory-cycles.json').write_text(json.dumps([dict(staircase_id=3254,event_page=4,endpoints=endpoints,all_prior_cycles=True)],indent=2)+'\n');print('event3254:fourcycle+nonboundary steps,2fullprojections')
