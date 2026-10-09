"""Replay the same raw input through relabelled actual finite carriers."""
import hashlib
import itertools
import json
from pathlib import Path
P=Path(__file__).resolve().parent
s=json.loads((P/'search.json').read_text())
counts=dict(models=0,same_raw_steps=0,incoming_vectors=0)
permutations=list(itertools.permutations(range(4)))
def ev(bits,m,n,v):
 return sum((sum(int(bits[i*n+j])*(v>>j&1) for j in range(n))%2)<<i for i in range(m))
for shift in range(16):
 for p3,p4,p5 in itertools.product(permutations,repeat=3):
  labels={2:tuple(i^shift for i in range(16)),3:p3,4:p4,5:p5}
  inverse={r:{v:i for i,v in enumerate(vals)} for r,vals in labels.items()}
  raw=inverse[2][4];x=raw
  for r in range(2,5):
   w=s['comparisons'][f'Cnu:14,139:d{r}']['wire'];v=labels[r][x]
   assert ev(w['outgoing'],w['k'],w['m'],v)==0
   result=ev(w['projection'],w['h'],w['m'],v)
   x=inverse[r+1][result]
   assert labels[r+1][x]==1
   counts['same_raw_steps']+=1
  assert x!=inverse[5][0]
  counts['models']+=1
for record in s['incoming_checks']:
 for v in range(1<<record['source_dimension']):
  output=[sum(row[j]*(v>>j&1) for j in range(record['source_dimension']))%2 for row in record['incoming_matrix']]
  assert output!=record['target_coordinates'];counts['incoming_vectors']+=1
report=dict(status='pass',counts=counts,scope='Independent finite relabelled same-raw trace oracle; actual meanings still supplied.',
 script_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),input_sha256=hashlib.sha256((P/'search.json').read_bytes()).hexdigest())
(P/'trace-models.json').write_text(json.dumps(report,indent=2)+'\n')
print(counts)
