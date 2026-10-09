import hashlib,json,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent
files=['Data.lean','Events.lean','source.json','event-results.json'];before={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in files}
subprocess.run(['python3',str(p/'events.py')],check=True)
assert before=={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in files}
s=json.loads((p/'source.json').read_text());old=json.loads((r/'AggregateTwoDetectorConditional/source.json').read_text());ev=json.loads((p/'event-results.json').read_text())
assert len(ev)==101 and sum(x['status']=='finite_nonzero_event' for x in ev)==88
assert set(s['blocks'])-set(old['blocks'])=={'S0:12,138:d4'}
uses=[]
for k,b in s['blocks'].items():
 assert all(x in s['blocks'] for x in b['predecessors'])
 for u in b['uses']:
  if u['kind']=='conditional_d4_module':
   assert k=='S0:12,138:d4' and u['source']==[8,135] and u['page']==4 and u['row']==[2796,'2',None,9000]
   uses.append(dict(block=k,role='incoming',**u))
assert len(uses)==1
resolved=[x['row_ref'] for x in s['candidates'] if x['status']=='complete_event_comparison' and next(y for y in old['candidates'] if y['row_ref']==x['row_ref'])['status']=='unresolved'];assert resolved==['event3254']
report=dict(events=101,finite_nonzero_events=88,unresolved=13,complete_comparisons=len(s['blocks']),added_blocks=['S0:12,138:d4'],newly_completed_events=resolved,new_conditional_uses=uses,unresolved_reasons=[dict(event=x['row_ref'],reason=x['reason']) for x in s['candidates'] if x['status']=='unresolved'])
(p/'review.json').write_text(json.dumps(report,indent=2)+'\n');print('331 comparisons; exact incoming d4 role; event3254 completed; 88/13; deterministic')
