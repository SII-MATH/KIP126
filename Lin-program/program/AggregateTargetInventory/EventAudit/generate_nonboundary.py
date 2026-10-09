import json
from pathlib import Path
p=Path(__file__).resolve().parent;traces=json.loads((p/'trajectory-cycles.json').read_text());s=json.loads((p/'source.json').read_text());lines=['import AggregateTargetInventory.EventAudit.NonboundaryBasic','namespace AggregateTargetInventory.EventAudit.TrajectoryNonboundary','open LinearCertificates PageTransitionCertificates Data TrajectoryCycles NonboundaryBasic'];audit=[]
def bl(v):return '['+','.join('true' if x else 'false' for x in v)+']'
def tag(k):return 'b_'+k.replace(':','_').replace(',','_').replace('-','neg')
for e in traces:
 for endpoint in e['endpoints']:
  steps=[];expression=None
  for step in endpoint['prior_stages']:
   w=s['blocks'][step['comparison']]['wire'];N=tag(step['comparison']);v=step['coordinates'];proj=[sum(w['projection'][i*w['m']+j]*v[j] for j in range(w['m']))%2 for i in range(w['h'])]
   if expression is None:expression=f'(fun i => ({bl(v)} : List Bool)[i.val]!)'
   nm=f'event{e["staircase_id"]}_{endpoint["endpoint"]}_d{step["page"]}';row=dict(staircase_id=e['staircase_id'],endpoint=endpoint['endpoint'],page=step['page'],comparison=step['comparison'],projected=proj)
   if not any(proj):row['status']='zero_projection';steps.append(row);break
   i=next(j for j,b in enumerate(proj) if b);row['status']='nonboundary';steps.append(row)
   lines += [f'theorem {nm}_projection_nonzero : eval {N}.comparison.projection {expression} ≠ zero := by intro h; have hh := congrFun h ⟨{i},by decide⟩; contradiction',f'theorem {nm}_not_boundary : ¬ InImage (matrixOf {w["m"]} {w["n"]} {N}.incoming) {expression} := nonzero_projection_not_boundary {N}.comparison {N}_complete.2 event{e["staircase_id"]}_{endpoint["endpoint"]}_cycle_d{step["page"]} {nm}_projection_nonzero']
   expression=f'(eval {N}.comparison.projection {expression})'
  audit.append(dict(staircase_id=e['staircase_id'],endpoint=endpoint['endpoint'],steps=steps,verified=all(x['status']=='nonboundary' for x in steps)))
lines+=['end AggregateTargetInventory.EventAudit.TrajectoryNonboundary'];(p/'TrajectoryNonboundary.lean').write_text('\n'.join(lines)+'\n');(p/'trajectory-nonboundary.json').write_text(json.dumps(audit,indent=2)+'\n');print('endpoint traces',len(audit),'verified',sum(x['verified'] for x in audit),'nonboundary stages',sum(len(x['steps']) for x in audit));print('failures',[x for x in audit if not x['verified']])
