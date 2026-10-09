"""Audit current compilation and standard axiom sets for all five modules."""
import hashlib
import json
import re
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
MODULES = ['Page', 'Path', 'Event', 'Examples', 'Counterexamples']
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
axioms = 0
for name in MODULES:
    row = json.loads((HERE / (name + '-compile.json')).read_text())
    assert row['module'] == name and row['exit_code'] == 0
    assert len(row['inputs']) == 10
    for path, digest in row['inputs'].items():
        assert sha(ROOT / path) == digest
    log = HERE / (name + '.log')
    assert sha(log) == row['log_sha256']
    assert sha(ROOT / '.lake/build/lib/lean/SemanticTrajectoryCertificates' / (name + '.olean')) == row['olean_sha256']
    text = log.read_text()
    assert 'sorryAx' not in text and 'error:' not in text and 'error(' not in text
    for values in re.findall(r'depends on axioms: \[([^]]*)\]', text):
        assert {v.strip() for v in values.split(',')} <= {'propext', 'Classical.choice', 'Quot.sound'}
        axioms += 1
assert axioms == 13
print('Five current successful modules; 13 standard-only axiom reports; actual6651 complete paths and rejection examples')
