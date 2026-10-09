"""Build explicit column-space queries for all known d2 blocks in the appendix stems.
Unknown blocks remain unresolved; no no-hit assertion is generated from them.
"""
import json
from pathlib import Path
import subprocess
root=Path(__file__).resolve().parents[1]
queries=[];metadata=[];skipped=[]
for file in sorted((root/'release-certificates').glob('*-d2.jsonl')):
 for line in file.read_text().splitlines():
  r=json.loads(line)
  if not (122 <= r['t']-r['s']-1 <= 127 and r['s']+2 <= 25):continue
  if r['status']!='finite_input':skipped.append({k:r[k] for k in ['object','s','t','status']});continue
  m,n=r['rows'],r['cols']
  if m*n > 65536 or m>256 or n>256:
   skipped.append(dict(object=r['object'],s=r['s'],t=r['t'],status='size_limit'));continue
  flat=[int(r['columns'][j][i]) for i in range(m) for j in range(n)]
  for target in range(m):
   y=[int(i==target) for i in range(m)]
   queries.append(' '.join(map(str,[m,n,*flat,*y])))
   metadata.append(dict(object=r['object'],source_s=r['s'],source_t=r['t'],target_index=target))
producer=root/'LinearCertificates/linear_export'
text='\n'.join(queries)+'\n' if queries else ''
p=subprocess.run([str(producer)],input=text,text=True,capture_output=True,check=True)
(root/'release-certificates/appendix-d2-linear.jsonl').write_text(p.stdout)
(root/'release-certificates/appendix-d2-queries.json').write_text(json.dumps(dict(queries=metadata,unresolved=skipped),indent=2)+'\n')
print(len(queries),'appendix-range actual matrix membership/nonmembership certificates;',len(skipped),'unresolved degree blocks')
