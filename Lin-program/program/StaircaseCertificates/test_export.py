"""Cross-check every staircase basis against SQLite and both inverse products."""
import json,sqlite3
from pathlib import Path
root=Path(__file__).resolve().parents[1];count=0
category=json.loads((root/'upstream/kervaire-49/ss.json').read_text())
for obj in category['rings']+category['modules']:
 name=obj['name'];db=root/'upstream/kervaire-49'/obj['path'];c=sqlite3.connect('file:'+str(db)+'?mode=ro',uri=True)
 groups={}
 for s,t,b,l,unknown in c.execute(f'SELECT s,t,base,level,diff IS NULL FROM "{name}_AdamsE2_ss" ORDER BY id'):groups.setdefault((s,t),[]).append((b,l,bool(unknown)))
 for line in (root/'staircase-release'/f'{name}.jsonl').open():
  w=json.loads(line);n=w['dimension'];rows=groups.pop((w['s'],w['t']))
  assert len(rows)==n and w['levels']==[r[1] for r in rows] and w['unknown']==[r[2] for r in rows]
  for j,row in enumerate(rows):
   indices=[] if row[0]=='' else list(map(int,row[0].split(',')))
   assert all(0<=i<n for i in indices)
   assert [w['basis'][i*n+j] for i in range(n)]==[indices.count(i)%2==1 for i in range(n)]
  for a,b in [(w['basis'],w['inverse']),(w['inverse'],w['basis'])]:
   assert all(sum(a[i*n+k]*b[k*n+j] for k in range(n))%2==(i==j) for i in range(n) for j in range(n))
  count+=1
 assert not groups;c.close()
print(count,'staircase bases match SQL and both inverse identities')
