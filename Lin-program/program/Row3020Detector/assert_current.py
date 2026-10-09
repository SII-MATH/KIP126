import hashlib
import json
import re
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
record = json.loads((HERE / 'compile-audit.json').read_text())
assert record['module'] == 'Meaning' and record['exit_code'] == 0
for name, digest in record['inputs'].items():
    assert sha(ROOT / name) == digest
assert sha(HERE / 'Meaning.log') == record['log_sha256']
assert sha(ROOT / '.lake/build/lib/lean/Row3020Detector/Meaning.olean') == record['olean_sha256']
text = (HERE / 'Meaning.log').read_text()
assert 'error:' not in text and 'sorryAx' not in text
sets = re.findall(r'depends on axioms: \[([^]]*)\]', text)
assert len(sets) == 4
for values in sets:
    assert {v.strip() for v in values.split(',')} <= {'propext', 'Classical.choice', 'Quot.sound'}
review = json.loads((HERE / 'review.json').read_text())
for name, digest in review['inputs'].items():
    assert sha(ROOT / name) == digest
for name, digest in review['sources'].items():
    assert sha(ROOT / 'upstream/kervaire-49' / name) == digest
print('row3020: current successful Meaning compile; four standard-only axiom sets; exact SQL review current')
