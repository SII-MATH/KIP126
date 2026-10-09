import hashlib,json,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;f=p/'CoordinateLinks.lean';before=hashlib.sha256(f.read_bytes()).hexdigest();subprocess.run(['python3',str(p/'generate_links.py')],check=True);assert before==hashlib.sha256(f.read_bytes()).hexdigest()
t=f.read_text();assert t.count('_source_recursive :')==87 and t.count('_target_recursive :')==87 and t.count('_inventory_basis_column :')==87
s=json.loads((p/'source.json').read_text());stage=json.loads((p/'stage-audit.json').read_text());ev={x['staircase_id']:x for x in json.loads((p/'event-results.json').read_text())}
for x in stage['events']:
 seen=set()
 def collect(K):
  if K in seen:return
  seen.add(K)
  for pred in s['blocks'][K]['predecessors']:collect(pred)
 collect(ev[x['staircase_id']]['root'])
 if x['adjacent_complete']:collect(x['adjacent_comparison'])
 expected=[dict(block=K,**u) for K in sorted(seen) for u in s['blocks'][K]['uses'] if u['kind'].startswith('conditional')]
 assert expected==x['conditional_uses']
print('261 kernel vector links deterministic;stage source+adjacent assumption closures exact')
