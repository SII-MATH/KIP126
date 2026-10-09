"""Generate quotient comparison certificates for complete adjacent d2 matrices."""
import json,subprocess
from pathlib import Path
root=Path(__file__).resolve().parents[1]
out=root/'page-transition-release';out.mkdir(exist_ok=True)
queries=[];metadata=[]
for file in sorted((root/'release-certificates').glob('*-d2.jsonl')):
 rows=[json.loads(s) for s in file.read_text().splitlines()];groups={(r['s'],r['t']):r for r in rows}
 for r in rows:
  if not (122<=r['t']-r['s']<=127 and r['s']<=25 and r['status']=='finite_input'):continue
  q=groups.get((r['s']+2,r['t']+1))
  if q is None or q['status']!='finite_input':continue
  k,m,n=q['rows'],r['rows'],r['cols']
  if max(k,m,n)>256:continue
  assert q['cols']==m
  a=''.join('1' if q['columns'][j][i] else '0' for i in range(k) for j in range(m)) or '-'
  b=''.join('1' if r['columns'][j][i] else '0' for i in range(m) for j in range(n)) or '-'
  queries.append(f'{k} {m} {n} {a} {b}')
  metadata.append(dict(object=r['object'],s=r['s']+2,t=r['t']+1))
(out/'queries.txt').write_text('\n'.join(queries)+'\n')
with (out/'certificates.jsonl').open('w') as f:subprocess.run([str(root/'PageTransitionCertificates/page-transition-export'),'--batch',str(out/'queries.txt')],stdout=f,check=True)
(out/'metadata.json').write_text(json.dumps(metadata,indent=2)+'\n')
print(len(queries),'actual complete d2 homology quotient comparison certificates')
