"""Assert the promised finite algebra verification artifacts really exist."""
from pathlib import Path
import json
r=Path(__file__).resolve().parents[1]
queries=(r/'release-certificates/appendix-d2-linear.jsonl').read_text().splitlines()
assert len(queries)==9740
for folder,expected in [('lean-batches',98),('complex-batches',26)]:
 sources=sorted((r/'release-certificates'/folder).glob('*.lean'))
 assert len(sources)==expected
 for s in sources:
  o=s.with_suffix('.olean')
  assert o.exists() and o.stat().st_mtime>=s.stat().st_mtime, str(s)
assert 'PASS all 9740' in (r/'tests/appendix-kernel.log').read_text()
assert 'PASS all 2512' in (r/'tests/complex-kernel.log').read_text()
assert 'Build completed successfully' in (r/'tests/full-build.log').read_text()
assert 'all 258345' in (r/'tests/d2-source-test.log').read_text()
assert not json.loads((r/'release-certificates/complex-audit.json').read_text())['failed_products']
print('PASS: 12252 real finite matrix theorems, 124 kernel batches, build and source consistency')
