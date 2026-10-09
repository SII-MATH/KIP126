import hashlib
import json
import re
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
axioms = 0
for name in ['System', 'Finite', 'AdamsBounds', 'Examples', 'Counterexamples']:
    row = json.loads((HERE / (name + '-compile.json')).read_text())
    assert row['module'] == name and row['exit_code'] == 0
    assert len(row['inputs']) == 7
    for path, digest in row['inputs'].items():
        assert sha(ROOT / path) == digest
    log = HERE / (name + '.log')
    assert sha(log) == row['log_sha256']
    assert sha(ROOT / '.lake/build/lib/lean/PermanentCycleCertificates' / (name + '.olean')) == row['olean_sha256']
    text = log.read_text()
    assert 'sorryAx' not in text and 'error:' not in text and 'error(' not in text
    for values in re.findall(r'depends on axioms: \[([^]]*)\]', text):
        assert {v.strip() for v in values.split(',')} <= {'propext', 'Classical.choice', 'Quot.sound'}
        axioms += 1
assert axioms == 10
review = json.loads((HERE / 'review.json').read_text())
for name, digest in review['inputs'].items():
    assert sha(ROOT / name) == digest
print('five current permanence modules; ten standard-only axiom reports; finite prefix, explicit vanishing and hidden-late counterexample')
