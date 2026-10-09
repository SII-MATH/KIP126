import collections,json
from pathlib import Path
p=Path(__file__).resolve().parent;s=json.loads((p/'source.json').read_text());results=json.loads((p/'event-results.json').read_text());inventory=json.loads((p.parent/'AggregateTargetInventory/inventory.json').read_text());by={x['staircase_id']:x for x in inventory['staircase']}
def tag(K):return 'b_'+K.replace(':','_').replace(',','_').replace('-','neg')
lines=['import AggregateCsigmaConditional.StageBasic','namespace AggregateCsigmaConditional.EliminationStage','open LinearCertificates PageTransitionCertificates StageBasic Data Events'];audit=[]
for e in results:
 if e['status']!='finite_nonzero_event':continue
 rid=e['staircase_id'];N=tag(e['root']);w=s['blocks'][e['root']]['wire'];r=e['event_page'];row=by[rid];potential=row['filtration']-2;timing='earlier' if r<potential else 'equal' if r==potential else 'later';nm=f'event{rid}';k,m=w['k'],w['m']
 lines.append(f'theorem {nm}_source_not_kernel : ¬ InKernel (matrixOf {k} {m} {N}.outgoing) {nm}Source := source_not_kernel {nm}_differential {nm}_target_nonzero')
 lines.append(f'theorem {nm}_page_{timing} : {r} '+('<' if timing=='earlier' else '=' if timing=='equal' else '>')+f' {potential} := by decide')
 b=s['blocks'][e['root']];a,t=b['center'];adj=f'S0:{a+r},{t+r-1}:d{r}';has=adj in s['blocks']
 if has:
  W=tag(adj);v=s['blocks'][adj]['wire'];q=v['k'];assert v['incoming']==w['outgoing'];lines.append(f'theorem {nm}_adjacent : (matrixOf {q} {k} {W}.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf {k} {m} {N}.outgoing)) := by\n  have h := {W}_complete.2.1\n  change LinearCertificates.IsComplex (matrixOf {q} {k} {W}.outgoing) (matrixOf {k} {m} {W}.incoming) at h\n  rw [{W}_incoming_link] at h\n  exact h')
  lines.append(f'theorem {nm}_target_zero_next : (Quot.mk _ (⟨{nm}Target,image_cycle {nm}_adjacent {nm}_differential⟩ : Cycle (matrixOf {q} {k} {W}.outgoing)) : Homology (matrixOf {q} {k} {W}.outgoing) (matrixOf {k} {m} {N}.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology {nm}_adjacent {nm}_differential')
 closure=set()
 def gather(K):
  if K in closure:return
  closure.add(K)
  for pred in s['blocks'][K]['predecessors']:gather(pred)
 gather(e['root'])
 if has:gather(adj)
 obligations=[dict(block=K,**u) for K in sorted(closure) for u in s['blocks'][K]['uses'] if u['kind'].startswith('conditional')]
 audit.append(dict(staircase_id=rid,classification=e['classification'],event_page=r,target_filtration=row['filtration'],potential_h6_squared_page=potential,timing=timing,adjacent_comparison=adj,adjacent_complete=has,conditional_uses=obligations))
lines+=['end AggregateCsigmaConditional.EliminationStage'];(p/'EliminationStage.lean').write_text('\n'.join(lines)+'\n');(p/'stage-audit.json').write_text(json.dumps(dict(events=audit,timing_counts=dict(collections.Counter(x['timing'] for x in audit)),adjacent_complete=sum(x['adjacent_complete'] for x in audit)),indent=2)+'\n');print(collections.Counter(x['timing'] for x in audit),'adjacent complete',sum(x['adjacent_complete'] for x in audit))
