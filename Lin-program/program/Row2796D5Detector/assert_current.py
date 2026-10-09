"""Require all nine actual successful compiles and independent exact-input review."""
import hashlib,json,re
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
names=['Actual','Comparison','Higher','Target','Source','Matches','MapSemantics','Tests','CurrentImports']
rows=json.loads((P/'compile-audit.json').read_text());assert [r['module'] for r in rows]==names
for row in rows:
 n=row['module'];assert row['exit_code']==0 and row['source_sha256']==sha(P/f'{n}.lean')
 assert row['log_sha256']==sha(P/f'{n}.log') and row['olean_sha256']==sha(R/f'.lake/build/lib/lean/Row2796D5Detector/{n}.olean')
 for ax in re.findall(r'depends on axioms: \[([^]]*)\]',(P/f'{n}.log').read_text()):assert {x.strip() for x in ax.split(',') if x.strip()}<={'propext','Classical.choice','Quot.sound'}
 if n=='CurrentImports':
  assert len(row['imported_sha256'])==24
  assert row['imported_sha256']=={str(f.relative_to(P)):sha(f) for f in sorted((P/'wire').glob('*.json'))}
review=json.loads((P/'review.json').read_text());assert not review['failures']
for f,h in review['inputs_sha256'].items():assert sha(R/f)==h
print('Nine current successful Lean modules;24 current imported wires;30 full comparisons/28 actual squares independently reviewed')
