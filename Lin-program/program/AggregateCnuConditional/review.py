"""Audit exact row2925 roles and complete regeneration without closing unknowns."""
import hashlib
import json
import subprocess
from pathlib import Path

p = Path(__file__).resolve().parent
root = p.parent
names = ['source.json','event-results.json','Data.lean','Events.lean']
def hashes():
    return {name:hashlib.sha256((p/name).read_bytes()).hexdigest() for name in names}
before = hashes()
subprocess.run(['python3',str(p/'events.py')],check=True)
assert hashes() == before
s = json.loads((p/'source.json').read_text())
old = json.loads((root/'AggregateThreeProductConditional/source.json').read_text())
events = json.loads((p/'event-results.json').read_text())
dag = json.loads((p/'dag.json').read_text())
assert len(events) == 101 and len({x['staircase_id'] for x in events}) == 101
assert sum(x['status']=='finite_nonzero_event' for x in events) == 90
assert sum(x['status']=='unresolved' for x in events) == 11
assert len(s['blocks']) == 335
added = sorted(set(s['blocks'])-set(old['blocks']))
assert added == ['S0:11,137:d3','S0:14,139:d3']
assert s['database_sha256'] == old['database_sha256']
for key,block in old['blocks'].items():
    assert block == s['blocks'][key],key
uses = []
for key,block in s['blocks'].items():
    assert all(pred in s['blocks'] for pred in block['predecessors']),key
    for use in block['uses']:
        if use['kind']=='conditional_cnu_eta':
            assert key in added and use['object']=='S0'
            assert use['source']==[11,137] and use['page']==3
            assert use['row']==[2925,'1,2',None,9000]
            uses.append(dict(block=key,role='outgoing' if key==added[0] else 'incoming',**use))
assert len(uses)==2
assert [x['staircase_id'] for x in events if x['status']=='unresolved'] == [
    2696,2697,2852,3151,3152,3391,3992,6651,7007,7162,7247]
assert not any(u['kind']=='conditional_cnu_eta' for e in events
               for u in e.get('conditional_uses',[]))
detector = {b['tag']:b['wire'] for b in json.loads((root/'Row2925Detector/comparison-source.json').read_text())}
source = s['blocks']['S0:11,137:d2']['wire']
target = s['blocks']['S0:14,139:d2']['wire']
assert target == detector['upperSource']
for field in ['outgoing','incoming']:
    assert source[field] == detector['source'][field]
change = [[1,0],[1,1]]
for i in range(2):
    for j in range(6):
        assert source['projection'][i*6+j] == bool(sum(
            change[i][k]*detector['source']['projection'][k*6+j] for k in range(2)) % 2)
assert [source['inclusion'][i*2] for i in range(6)] == [False,True,True,False,False,False]
assert [source['projection'][i*6+1]^source['projection'][i*6+2] for i in range(2)] == [True,False]
assert s['blocks']['S0:11,137:d3']['wire']['outgoing'] == s['blocks']['S0:14,139:d3']['wire']['incoming']
impact = []
for event in events:
    if event['status'] != 'unresolved':
        continue
    seen = set()
    def visit(key):
        if key in seen:
            return
        seen.add(key)
        for predecessor in dag['blocks'][key]['predecessors']:
            visit(predecessor)
    visit(event['root'])
    hit = sorted(set(added) & seen)
    if hit:
        impact.append(dict(event=event['staircase_id'],newly_checked_predecessors=hit,
                           remaining_failure=event['reason']))
assert [x['event'] for x in impact] == [3151,3152]
(p/'remaining-impact.json').write_text(json.dumps(impact,indent=2)+'\n')
(p/'review.json').write_text(json.dumps(dict(events=101,finite_nonzero_events=90,unresolved=11,
    complete_comparisons=335,added_blocks=added,new_conditional_uses=uses,
    source_basis_change=change,target_basis_change=[[1]],newly_completed_events=[],
    unchanged_previous_blocks=len(old['blocks']),generated_sha256=before,affected_unresolved_events=impact,
    unresolved_reasons=[dict(event=x['staircase_id'],reason=x['reason'])
                        for x in events if x['status']=='unresolved']),indent=2)+'\n')
print('335 complete comparisons; exact row2925 outgoing/incoming; source basis change; still90/11; deterministic')
