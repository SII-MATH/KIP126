"""Check the actual compiler and runtime regression evidence for prefix import."""
import hashlib
import json
import re
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
axioms = 0
for name in ['Import', 'ImportExamples', 'CheckFile']:
    row = json.loads((HERE / (name + '-compile.json')).read_text())
    assert row['module'] == name and row['exit_code'] == 0
    assert len(row['inputs']) == 8
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
assert axioms == 4
regression = json.loads((HERE / 'import-regression.json').read_text())
assert len(regression['rejected_cases']) == 15
for path, digest in regression['inputs'].items():
    assert sha(ROOT / path) == digest
print('three current import modules; four standard-only axiom reports; C++ generation and Lean malformed/batch/diagnostic regression current')
