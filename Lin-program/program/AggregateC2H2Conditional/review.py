"""Exact row2576 outgoing role, target coordinate swap, and preserved unknowns."""
import hashlib
import json
import subprocess
from pathlib import Path

p=Path(__file__).resolve().parent
root=p.parent
names=['source.json','event-results.json','Data.lean','Events.lean']
def hashes():
    return {name:hashlib.sha256((p/name).read_bytes()).hexdigest() for name in names}
before=hashes()
subprocess.run(['python3',str(p/'events.py')],check=True)
assert hashes()==before
s=json.loads((p/'source.json').read_text())
old=json.loads((root/'AggregateCnuConditional/source.json').read_text())
events=json.loads((p/'event-results.json').read_text())
dag=json.loads((p/'dag.json').read_text())
assert len(events)==101 and len({e['staircase_id'] for e in events})==101
assert sum(e['status']=='finite_nonzero_event' for e in events)==90
assert sum(e['status']=='unresolved' for e in events)==11
previous_events=json.loads((root/'AggregateCnuConditional/event-results.json').read_text())
changed=[e['staircase_id'] for e,old_event in zip(events,previous_events) if e!=old_event]
assert changed==[3391]
new3391=next(e for e in events if e['staircase_id']==3391)
assert new3391['status']=='unresolved' and new3391['reason']=='unknown S0:4,132:d4:row2576; target dimension 2'
assert len(s['blocks'])==336
assert set(s['blocks'])-set(old['blocks'])=={'S0:4,132:d3'}
assert s['database_sha256']==old['database_sha256']
for key,block in old['blocks'].items():
    assert block==s['blocks'][key],key
uses=[]
for key,block in s['blocks'].items():
    assert all(pred in s['blocks'] for pred in block['predecessors'])
    for use in block['uses']:
        if use['kind']=='conditional_c2_h2':
            assert key=='S0:4,132:d3' and use['object']=='S0'
            assert use['source']==[4,132] and use['page']==3
            assert use['row']==[2576,'0',None,9000]
            uses.append(dict(block=key,role='outgoing',**use))
assert len(uses)==1
assert 'S0:7,134:d3' not in s['blocks']
assert 'row2708' in s['failures']['S0:7,134:d3']
assert not any(u['row'][0]==2708 for block in s['blocks'].values()
               for u in block['uses'] if u['kind'].startswith('conditional'))
detector={b['tag']:b['wire'] for b in json.loads((root/'Row2576Detector/comparison-source.json').read_text())}
src=s['blocks']['S0:4,132:d2']['wire'];target=s['blocks']['S0:7,134:d2']['wire']
assert src==detector['source']
for field in ['outgoing','incoming']:
    assert target[field]==detector['upperSource'][field]
change=[[0,1],[1,0]]
for i in range(2):
    for j in range(5):
        assert target['projection'][i*5+j]==bool(sum(change[i][k]*detector['upperSource']['projection'][k*5+j] for k in range(2))%2)
impact=[]
for event in events:
    if event['status']!='unresolved':
        continue
    seen=set()
    def visit(key):
        if key in seen:return
        seen.add(key)
        for pred in dag['blocks'][key]['predecessors']:visit(pred)
    visit(event['root'])
    if 'S0:4,132:d3' in seen:
        impact.append(dict(event=event['staircase_id'],remaining_failure=event['reason']))
(p/'review.json').write_text(json.dumps(dict(complete_comparisons=336,finite_nonzero_events=90,unresolved=11,
    added_blocks=['S0:4,132:d3'],new_conditional_uses=uses,target_basis_change=change,
    incoming_comparison_complete=False,row2708_retained_unknown=True,affected_unresolved_events=impact,
    changed_failure_event=3391,changed_failure_page=4,generated_sha256=before),indent=2)+'\n')
print('336 comparisons; one exact outgoing row2576 role; target swap; row2708 remains unknown; 90/11; deterministic')
