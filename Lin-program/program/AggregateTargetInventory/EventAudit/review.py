import hashlib,json,subprocess,collections
from pathlib import Path
p=Path(__file__).resolve().parent
names=['dag.json','Data.lean','Events.lean','source.json','event-results.json'];before={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
subprocess.run(['python3',str(p/'prepare_dag.py')],check=True);subprocess.run(['python3',str(p/'events.py')],check=True)
assert before=={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
s=json.loads((p/'source.json').read_text());res=json.loads((p/'event-results.json').read_text());assert len(res)==101
for k,b in s['blocks'].items():assert all(pred in s['blocks'] for pred in b['predecessors'])
for x in res:
 if x['status']=='finite_nonzero_event':assert any(x['target_coordinates'])
 else:assert x['reason']
assert sum(x['status']=='finite_nonzero_event' for x in res)==87
assert sum(bool(x.get('conditional_uses')) for x in res)==6
print('101 events retained:87 finite nonzero events(56 outgoing/31 incoming),14 unresolved;6 roots conditional')
