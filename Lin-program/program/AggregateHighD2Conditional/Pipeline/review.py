"""Independent raw endpoint, full trajectory and exact conditional-data audit."""
import hashlib
import json
import sqlite3
import subprocess
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parents[1];producer=R/'FiniteEventProducer/HighD2'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
ids=[6651,7007,7162,7247]
files=[P/f'{prefix}{rid}.lean' for rid in ids for prefix in ['Trace','Executable']]+[P/'trajectory-cycles.json']
before={p.name:sha(p) for p in files}
subprocess.run(['python3',str(P/'generate.py')],check=True)
assert before=={p.name:sha(p) for p in files}
blocks=json.loads((P.parent/'source.json').read_text())['blocks'];dag=json.loads((P.parent/'dag.json').read_text())
traces=json.loads((P/'trajectory-cycles.json').read_text());assert [t['staircase_id'] for t in traces]==ids
inventory={x['staircase_id']:x for x in json.loads((R/'AggregateTargetInventory/inventory.json').read_text())['staircase']}
c=sqlite3.connect(f'file:{R}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
expected={6651:([52,177],[56,180],4,[6651],[7006]),7007:([55,180],[57,181],2,[7007],[7161]),7162:([56,181],[58,182],2,[7162],[7246]),7247:([54,180],[57,182],3,[7008],[7247])}
raw_links=[];count=0
for trace in traces:
 rid=trace['staircase_id'];row=inventory[rid];sd,td,page,sg,tg=expected[rid]
 assert list(c.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?',(rid,)).fetchone())==[rid,row['filtration'],row['total_degree'],row['base'],row['diff'],row['level']]
 finite=json.loads((producer/f'event{rid}.json').read_text());indexed=json.loads((producer/f'indexed-event{rid}.json').read_text())
 assert indexed['finite']==finite and indexed['eventPage']==trace['event_page']==page
 assert indexed['sourceDegree']==dict(zip(('s','t'),sd)) and indexed['targetDegree']==dict(zip(('s','t'),td))
 root=f'S0:{sd[0]},{sd[1]}:d{page}';assert finite['event']==blocks[root]['wire']
 assert {u['kind'] for u in trace['conditional_uses']}=={'conditional_d2_staircase'}
 seen=set()
 def visit(k):
  if k in seen:return
  seen.add(k)
  for pred in blocks[k]['predecessors']:visit(pred)
 visit(root)
 for endpoint,deg,gids in zip(trace['endpoints'],[sd,td],[sg,tg],strict=True):
  name=endpoint['endpoint'];rows=c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',deg).fetchall()
  assert dag['degrees'][f'S0:{deg[0]},{deg[1]}']['e2']==[list(x) for x in rows]
  assert finite['raw'+name.title()]==list(map(bool,endpoint['raw_vector']))
  assert [bid for (bid,_,_),x in zip(rows,endpoint['raw_vector'],strict=True) if x]==gids
  assert endpoint['raw_local_indices']==[0]
  assert len(endpoint['prior_stages'])==len(finite[name+'Stages'])==page-2
  assert finite[name+'Stages']==[dict(wire=blocks[s['comparison']]['wire'],representative=list(map(bool,s['coordinates']))) for s in endpoint['prior_stages']]
  vector=endpoint['raw_vector']
  for q,stage in enumerate(endpoint['prior_stages'],2):
   assert stage['page']==q and stage['comparison']==f'S0:{deg[0]},{deg[1]}:d{q}'
   w=blocks[stage['comparison']]['wire'];assert stage['coordinates']==vector
   outgoing=[sum(w['outgoing'][i*w['m']+j]*vector[j] for j in range(w['m']))%2 for i in range(w['k'])]
   projection=[sum(w['projection'][i*w['m']+j]*vector[j] for j in range(w['m']))%2 for i in range(w['h'])]
   assert outgoing==stage['outgoing_value'] and not any(outgoing) and projection==stage['projection'] and any(projection)
   vector=projection;count+=1;visit(stage['comparison'])
  assert finite[name]==list(map(bool,endpoint['final_coordinates']))==list(map(bool,vector))
  raw_links.append(dict(event=rid,endpoint=name,degree=deg,basis_ids=gids,basis_rows=[list(x) for x in rows],prior_stages=page-2))
 uses=[dict(block=k,**u) for k in sorted(seen) for u in blocks[k]['uses'] if u['kind'].startswith('conditional')]
 assert uses==trace['conditional_uses']
 for u in uses:
  s,t=u['source'];bid,mon,d2=u['row'];assert d2 is None
  assert c.execute('SELECT mon,d2 FROM S0_AdamsE2_basis WHERE id=? AND s=? AND t=?',(bid,s,t)).fetchone()==(mon,None)
  for ev in u['staircase_basis_evidence']:
   assert list(c.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE id=? AND s=? AND t=?',(ev['row'][0],s,t)).fetchone())==ev['row']
assert count==6
report=dict(events=ids,prior_cycle_steps=6,prior_nonboundary_steps=6,raw_projection_links=8,raw_sql_endpoint_links=raw_links,
 generated_sha256=before,producer_wires_match=True,
 producer_sha256={p.name:sha(p) for p in sorted(producer.glob('*event*.json'))},
 input_sha256={str(p.relative_to(R)):sha(p) for p in [P.parent/'source.json',P.parent/'dag.json',R/'AggregateTargetInventory/inventory.json',R/'upstream/kervaire-49/S0_AdamsSS_t261.db']},
 limitations='Conditional staircase-derived d2 value semantics remain explicit, including database NULL columns and beyond d2_t_max coverage. No raw missing d2 value is asserted independently.',script_sha256=sha(Path(__file__)))
(P/'review.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print('Four exact raw SQL events, 6 complete cycle/nonboundary steps, 8 raw projections and all conditional basis-value evidence linked')
