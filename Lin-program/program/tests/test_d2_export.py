"""Independent SQLite/JSON coordinate comparison across all 49 configured spectra."""
import json,sqlite3
from collections import defaultdict
from pathlib import Path
root=Path(__file__).resolve().parents[1]
category=json.loads((root/'upstream/kervaire-49/ss.json').read_text())
blocks=0
for obj in category['rings']+category['modules']:
 name=obj['name'];db=root/'upstream/kervaire-49'/obj['path'];table=name+'_AdamsE2_basis'
 c=sqlite3.connect('file:'+str(db)+'?mode=ro',uri=True)
 fields=[r[1] for r in c.execute(f'pragma table_info("{table}")')]
 groups=defaultdict(list)
 for s,t,d in c.execute(f'SELECT s,t,{"d2" if "d2" in fields else "NULL"} FROM "{table}" ORDER BY id'):
  groups[s,t].append(d)
 rows=[json.loads(s) for s in (root/'release-certificates'/f'{name}-d2.jsonl').read_text().splitlines()]
 assert len(rows)==len(groups)
 for row in rows:
  s,t=row['s'],row['t'];values=groups[s,t];m=len(groups.get((s+2,t+1),[]))
  assert (row['rows'],row['cols'])==(m,len(values))
  assert (row['status']=='finite_input')==all(v is not None for v in values)
  for v,out in zip(values,row['columns']):
   if v is None:assert out is None
   else:
    indices=[] if v=='' else list(map(int,v.split(',')))
    assert all(0<=i<m for i in indices)
    assert out==[indices.count(i)%2==1 for i in range(m)]
  blocks+=1
 c.close()
print(f'PASS: all {blocks} degree blocks match exact source SQL values and coordinates')
