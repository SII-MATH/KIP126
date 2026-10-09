"""Review complete predecessor coverage and deterministic generation."""
import hashlib,json,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent
names=['Data.lean','source.json'];before={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
subprocess.run(['python3',str(p/'generate.py')],check=True)
assert before=={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
s=json.loads((p/'source.json').read_text());dag=json.loads((r/'AllClaimTrajectoryAudit/shared-dag.json').read_text());claims=json.loads((r/'AllClaimTrajectoryAudit/claims.json').read_text())['claims']
assert s['database_sha256']==dag['summary']['database_sha256']
assert {x['row_ref'] for x in s['candidates']}=={k for k,v in dag['rows'].items() if v['zero_target_candidate']}
for x in s['candidates']:
 assert x['raw']==dag['rows'][x['row_ref']]
 if x['status']=='complete_zero_target':assert s['blocks'][x['target_predecessor']]['wire']['h']==0
 else:assert x['reason']
for K,b in s['blocks'].items():
 assert all(pred in s['blocks'] for pred in b['predecessors'])
 for u in b['uses']:
  if u['kind']=='checked_zero_codomain':assert s['blocks'][u['target_predecessor']]['wire']['h']==0
summary=[]
for c in claims:
 items=[x for x in s['candidates'] if x['row_ref'] in c['zero_target_candidate_refs']]
 summary.append(dict(claim=c['claim'],certified=[x['row_ref'] for x in items if x['status']=='complete_zero_target'],unresolved=[x['row_ref'] for x in items if x['status']=='unresolved']))
(p/'claim-results.json').write_text(json.dumps(summary,indent=2)+'\n')
print('All31 covered; complete predecessor DAGs reviewed; generation deterministic')
