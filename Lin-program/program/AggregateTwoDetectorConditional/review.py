import hashlib,json,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent;names=['Data.lean','Events.lean','source.json','event-results.json'];before={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names};subprocess.run(['python3',str(p/'events.py')],check=True);assert before=={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
s=json.loads((p/'source.json').read_text());old=json.loads((r/'AggregateCsigmaConditional/source.json').read_text());events=json.loads((p/'event-results.json').read_text());assert len(events)==101 and sum(x['status']=='finite_nonzero_event' for x in events)==87
assert set(s['blocks'])-set(old['blocks'])=={'S0:8,135:d3'}
uses=[]
for K,b in s['blocks'].items():
 assert all(pred in s['blocks'] for pred in b['predecessors'])
 for u in b['uses']:
  if u['kind']=='conditional_h3_d0':assert u['row']==[2796,'2',None,9000] and K=='S0:8,135:d3';uses.append(dict(block=K,**u))
assert len(uses)==1
report=dict(events=101,finite_nonzero_events=87,unresolved=14,complete_comparisons=len(s['blocks']),added_blocks=['S0:8,135:d3'],new_conditional_uses=uses,unresolved_reasons=[dict(event=x['row_ref'],reason=x['reason']) for x in s['candidates'] if x['status']=='unresolved'])
(p/'review.json').write_text(json.dumps(report,indent=2)+'\n');print('330 comparisons;row2796 exact conditional role;87/14 retained;deterministic')
