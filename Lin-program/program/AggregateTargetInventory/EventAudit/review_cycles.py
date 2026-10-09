import hashlib,json,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;names=['TrajectoryCycles.lean','trajectory-cycles.json'];before={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
subprocess.run(['python3',str(p/'generate_cycles.py')],check=True)
assert before=={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
a=json.loads((p/'trajectory-cycles.json').read_text());events={x['staircase_id']:x for x in json.loads((p/'event-results.json').read_text())};s=json.loads((p/'source.json').read_text())
assert len(a)==87
for e in a:
 for ep in e['endpoints']:
  assert [z['page'] for z in ep['prior_stages']]==list(range(2,e['event_page']))
  assert ep['prior_cycles_verified'] and all(z['status']=='cycle' and not any(z['outgoing_value']) for z in ep['prior_stages'])
  assert ep['final_coordinates']==events[e['staircase_id']][ep['endpoint']+'_coordinates']
  for step in ep['prior_stages']:
   w=s['blocks'][step['comparison']]['wire'];v=step['coordinates'];assert step['outgoing_value']==[sum(w['outgoing'][i*w['m']+j]*v[j] for j in range(w['m']))%2 for i in range(w['k'])]
t=(p/'TrajectoryCycles.lean').read_text();assert t.count('_cycle_d')==78 and t.count('_target_cycle_at_event')==57
print('87 two-endpoint prior-stage traces complete;78 cycle checks;57 event-target cycles; no failures')
