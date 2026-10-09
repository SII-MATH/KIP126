import hashlib,json,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;names=['TrajectoryNonboundary.lean','trajectory-nonboundary.json'];before={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
subprocess.run(['python3',str(p/'generate_nonboundary.py')],check=True)
assert before=={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
a=json.loads((p/'trajectory-nonboundary.json').read_text());cycles=json.loads((p/'trajectory-cycles.json').read_text());lookup={(x['staircase_id'],y['endpoint']):y for x in cycles for y in x['endpoints']};blocks=json.loads((p/'source.json').read_text())['blocks']
assert len(a)==174 and all(x['verified'] for x in a)
for x in a:
 old=lookup[x['staircase_id'],x['endpoint']];assert len(x['steps'])==len(old['prior_stages'])
 for n,step in enumerate(x['steps']):
  prev=old['prior_stages'][n];assert step['page']==prev['page'];w=blocks[step['comparison']]['wire'];v=prev['coordinates'];image=[sum(w['projection'][i*w['m']+j]*v[j] for j in range(w['m']))%2 for i in range(w['h'])];assert image==step['projected'] and any(image)
assert sum(len(x['steps']) for x in a)==78
print('174 endpoint traces/78 nonboundary stages:full prior-page coverage and nonzero projections verified')
