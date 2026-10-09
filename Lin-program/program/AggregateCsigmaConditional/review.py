import hashlib,json,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent
names=['Data.lean','Events.lean','source.json','event-results.json','EliminationStage.lean','stage-audit.json']
before={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
subprocess.run(['python3',str(p/'events.py')],check=True);subprocess.run(['python3',str(p/'generate_stage.py')],check=True)
assert before=={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
s=json.loads((p/'source.json').read_text());res=json.loads((p/'event-results.json').read_text())
old=json.loads((p.parent/'AggregateTargetInventory/EventAudit/source.json').read_text())
assert len(s['blocks'])==329 and len(res)==101
assert sum(e['status']=='unresolved' for e in res)==14
uses=[(k,u) for k,b in s['blocks'].items() for u in b['uses'] if u['kind']=='conditional_csigma']
assert {k for k,u in uses}=={'S0:9,136:d3','S0:12,138:d3'}
for k,u in uses:assert (u['object'],u['source'],u['page'],u['row'])==('S0',[9,136],3,[2861,'1',None,9000])
for k,b in s['blocks'].items():assert all(x in s['blocks'] for x in b['predecessors'])
report=dict(comparisons=329,new_comparisons=sorted(set(s['blocks'])-set(old['blocks'])),events=101,finite_nonzero_events=87,remaining=14,reduction=0,csigma_roles=[k for k,u in uses],sha256=before)
(p/'review.json').write_text(json.dumps(report,indent=2)+'\n');print(report)
