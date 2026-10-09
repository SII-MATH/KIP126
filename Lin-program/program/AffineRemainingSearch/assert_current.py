"""Check the six actual kernel compiles and every freshly imported wire."""
import hashlib,json,re
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
modules=['Data','Branches','Kernel','Links','Tests','CurrentImports']
rows=json.loads((P/'compile-audit.json').read_text());assert [x['module'] for x in rows]==modules
for row in rows:
 n=row['module'];assert row['exit_code']==0 and row['source_sha256']==sha(P/f'{n}.lean')
 assert row['log_sha256']==sha(P/f'{n}.log') and row['olean_sha256']==sha(R/f'.lake/build/lib/lean/AffineRemainingSearch/{n}.olean')
 for axioms in re.findall(r'depends on axioms: \[([^]]*)\]',(P/f'{n}.log').read_text()):assert set(x.strip() for x in axioms.split(',') if x.strip())<={'propext','Classical.choice','Quot.sound'}
 if n=='CurrentImports':
  assert len(row['imported_sha256'])==10
  for f,h in row['imported_sha256'].items():assert sha(P/f)==h
report=json.loads((P/'review.json').read_text())
for f,h in report['generated_sha256'].items():assert sha(P/f)==h
for f,h in report['scripts_sha256'].items():assert sha(P/f)==h
for f,h in report['input_sha256'].items():assert sha(R/f)==h
assert report['source_sql_sha256']==sha(R/'upstream/kervaire-49/S0_AdamsSS_t261.db')
print('Six actual Lean exits0, ten current import equalities and independent source/branch review verified')
