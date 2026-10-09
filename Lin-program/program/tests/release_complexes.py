"""Generate d2-square-zero kernel checks for complete adjacent appendix blocks."""
import json
from pathlib import Path
root=Path(__file__).resolve().parents[1]
checks=[];fail=[]
def bits(xs):return '['+', '.join('true' if x else 'false' for x in xs)+']'
for file in sorted((root/'release-certificates').glob('*-d2.jsonl')):
 records=[json.loads(s) for s in file.read_text().splitlines()]
 groups={(r['s'],r['t']):r for r in records}
 for r in records:
  if not (122<=r['t']-r['s']<=127 and r['s']<=25 and r['status']=='finite_input'):continue
  q=groups.get((r['s']+2,r['t']+1))
  if q is None or q['status']!='finite_input':continue
  k,m,n=q['rows'],r['rows'],r['cols']
  assert q['cols']==m
  a=[q['columns'][j][i] for i in range(k) for j in range(m)]
  b=[r['columns'][j][i] for i in range(m) for j in range(n)]
  if any(sum(a[i*m+l]*b[l*n+j] for l in range(m))%2 for i in range(k) for j in range(n)):
   fail.append(dict(object=r['object'],s=r['s'],t=r['t']));continue
  checks.append((r,k,m,n,a,b))
out=root/'release-certificates/complex-batches';out.mkdir(exist_ok=True)
for start in range(0,len(checks),100):
 lines=['import LinearCertificates.Checker',f'namespace ReleaseComplex{start//100}','open LinearCertificates LinProgramCertificates']
 for i,(r,k,m,n,a,b) in enumerate(checks[start:start+100],start):
  lines += [f'-- {r["object"]} s={r["s"]} t={r["t"]}',f'def outgoing{i} : Matrix {k} {m} := fun i j => ({bits(a)} : List Bool)[i.val * {m} + j.val]!',f'def incoming{i} : Matrix {m} {n} := fun i j => ({bits(b)} : List Bool)[i.val * {n} + j.val]!',f'theorem complex{i} : IsComplex outgoing{i} incoming{i} := by lin_cert using ()']
 lines.append(f'end ReleaseComplex{start//100}')
 (out/f'Batch{start//100:03d}.lean').write_text('\n'.join(lines)+'\n')
(root/'release-certificates/complex-audit.json').write_text(json.dumps(dict(checks=len(checks),failed_products=fail),indent=2)+'\n')
print(len(checks),'actual d2 square-zero checks;',len(fail),'failures')
