"""Validate exact direct-build evidence for complete actual-page semantics."""
import hashlib
import json
from pathlib import Path
import re

here = Path(__file__).resolve().parent
root = here.parent
sha = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
audit = json.loads((here / 'meaning-compile-audit.json').read_text())
assert [row['module'] for row in audit] == ['Meaning', 'MeaningExamples', 'MeaningCounterexamples']
reports = 0
for row in audit:
    assert row['exit_code'] == 0
    for name, digest in row['input_sha256'].items():
        assert sha(root / name) == digest, name
    log = here / (row['module'] + '.log')
    assert sha(log) == row['log_sha256']
    assert sha(root / '.lake/build/lib/lean/Stem125HomologyCertificates' /
        (row['module'] + '.olean')) == row['olean_sha256']
    text = log.read_text()
    assert 'sorryAx' not in text and 'error:' not in text and 'error(' not in text
    values = re.findall(r'depends on axioms: \[([^]]*)\]', text)
    assert all({part.strip() for part in value.split(',')} <=
        {'propext', 'Classical.choice', 'Quot.sound'} for value in values)
    assert len(values) == row['standard_axiom_reports']
    reports += len(values)
assert reports == 19
print('PASS: three actual-page semantic leaves; 19 standard-only axiom reports; exact direct-build fingerprints')
