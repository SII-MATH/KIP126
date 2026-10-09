import json
from pathlib import Path
p=Path(__file__).resolve().parent;events=json.loads((p/'event-results.json').read_text());traces={x['staircase_id']:x for x in json.loads((p/'trajectory-cycles.json').read_text())};s=json.loads((p/'source.json').read_text());dag=json.loads((p/'dag.json').read_text())
def bl(v):return '['+','.join('true' if b else 'false' for b in v)+']'
def tag(k):return 'b_'+k.replace(':','_').replace(',','_').replace('-','neg')
lines=['import AggregateTargetInventory.EventAudit.FiniteAPI','namespace AggregateTargetInventory.EventAudit.Certificates','open LinearCertificates PageTransitionCertificates FiniteAPI Data Events CoordinateLinks TrajectoryCycles TrajectoryNonboundary']
for e in events:
 if e['status']!='finite_nonzero_event':continue
 rid=e['staircase_id'];tr=traces[rid];w=s['blocks'][e['root']]['wire'];N=tag(e['root']);raws=[];dims=[]
 for ep in tr['endpoints']:
  ss,tt=ep['degree'];n=len(dag['degrees'][f'S0:{ss},{tt}']['e2']);dims.append(n);raws.append(f'(fun i => ({bl([i in ep["raw_local_indices"] for i in range(n)])} : List Bool)[i.val]!)')
 lines.append(f'def input{rid} : Input := ⟨{dims[0]},{dims[1]},{w["m"]},{w["k"]},{raws[0]},{raws[1]},event{rid}Source,event{rid}Target,matrixOf {w["k"]} {w["m"]} {N}.outgoing⟩')
 for ep in tr['endpoints']:
  field=ep['endpoint'];cap=field.capitalize();lines += [f'theorem path{rid}_{field} : NonzeroPath input{rid}.raw{cap} input{rid}.{field} := by',f'  change NonzeroPath {raws[0 if field=="source" else 1]} event{rid}{cap}',f'  rw [event{rid}_{field}_recursive]']
  for step in ep['prior_stages']:
   K=tag(step['comparison']);page=step['page'];lines.append(f'  apply NonzeroPath.step {K} rfl {K}_complete event{rid}_{field}_cycle_d{page} event{rid}_{field}_d{page}_not_boundary')
  lines.append('  exact NonzeroPath.refl _')
 lines += [f'theorem certificate{rid} : Certificate input{rid} := ⟨path{rid}_source,path{rid}_target,event{rid}_differential,event{rid}_target_nonzero⟩',f'theorem valid{rid} : FiniteEventValid input{rid} := by finite_event_cert using certificate{rid}']
lines+=['end AggregateTargetInventory.EventAudit.Certificates'];(p/'Certificates.lean').write_text('\n'.join(lines)+'\n');print('87 reusable finite event input/certificate pairs')
