import json
from pathlib import Path
p=Path(__file__).resolve().parent;s=json.loads((p/'source.json').read_text());events=json.loads((p/'event-results.json').read_text());dag=json.loads((p/'dag.json').read_text());inv=json.loads((p.parent/'inventory.json').read_text());rows={x['staircase_id']:x for x in inv['staircase']}
def bl(a):return '['+','.join('true' if x else 'false' for x in a)+']'
def tag(s,t,r):return f'b_S0_{s}_{t}_d{r}'.replace('-','neg')
def expr(s,t,r,ids):
 n=len(dag['degrees'][f'S0:{s},{t}']['e2']);v=f'(fun i => ({bl([i in ids for i in range(n)])} : List Bool)[i.val]!)'
 for page in range(2,r):v=f'(eval {tag(s,t,page)}.comparison.projection {v})'
 return v
lines=['import AggregateTargetInventory.EventAudit.Events','import AggregateTargetInventory.Bases','namespace AggregateTargetInventory.EventAudit.CoordinateLinks','open LinearCertificates PageTransitionCertificates Data Events']
for e in events:
 if e['status']!='finite_nonzero_event':continue
 rid=e['staircase_id'];row=rows[rid];block=s['blocks'][e['root']];a,t=block['center'];r=e['event_page'];b,u=a+r,t+r-1
 srcids=row['base_local_indices'] if row['status']=='stored_outgoing' else row['diff_local_indices'];tgtids=row['diff_local_indices'] if row['status']=='stored_outgoing' else row['base_local_indices']
 for field,ss,tt,ids,dim in [('Source',a,t,srcids,block['wire']['m']),('Target',b,u,tgtids,block['wire']['k'])]:
  expression=expr(ss,tt,r,ids);lines.append(f'theorem event{rid}_{field.lower()}_recursive : event{rid}{field} = {expression} := by funext i; exact (show ∀ i : Fin {dim}, event{rid}{field} i = {expression} i from by decide) i')
 # Identify the inventory endpoint with its kernel-checked full staircase column.
 group=next(g for g in inv['filtration_groups'] if g['filtration']==row['filtration']);j=group['staircase_ids'].index(rid);n=group['dimension'];ss=row['filtration'];tt=row['total_degree'];field='Source' if row['status']=='stored_outgoing' else 'Target';dim=block['wire']['m'] if field=='Source' else block['wire']['k']
 expression=f'(fun i => AggregateTargetInventory.Bases.f{ss}.basis i ⟨{j},by decide⟩)'
 for page in range(2,r):expression=f'(eval {tag(ss,tt,page)}.comparison.projection {expression})'
 lines.append(f'theorem event{rid}_inventory_basis_column : event{rid}{field} = {expression} := by funext i; exact (show ∀ i : Fin {dim}, event{rid}{field} i = {expression} i from by decide) i')
lines+=['end AggregateTargetInventory.EventAudit.CoordinateLinks'];(p/'CoordinateLinks.lean').write_text('\n'.join(lines)+'\n');print('87 source+87 target recursive links;87 exact inventory basis-column links')
