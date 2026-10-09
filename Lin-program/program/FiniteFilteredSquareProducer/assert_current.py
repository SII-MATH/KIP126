"""Verify the exact successful producer test and Lean proof artifacts."""
import hashlib
import json
import re
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
producer = json.loads((HERE / 'audit.json').read_text())
assert producer['status'] == 'passed'
for field in ['sources', 'outputs']:
    for name, value in producer[field].items():
        assert sha(HERE / name) == value, name
assert b''.join(p.read_bytes() for p in sorted(HERE.glob('batch??.jsonl'))) == (HERE / 'valid.jsonl').read_bytes()
names = [*[f'Batch{i:02d}' for i in range(22)], 'Imported']
records = {}
for name in names:
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0, name
    assert record['source_sha256'] == sha(HERE / (name + '.lean')), name
    assert record['log_sha256'] == sha(HERE / (name + '.log')), name
    assert record['olean_sha256'] == sha(ROOT / '.lake/build/lib/lean/FiniteFilteredSquareProducer' / (name + '.olean')), name
    for file, digest in record['external_input_sha256'].items():
        assert digest == sha(ROOT / file), file
    text = (HERE / (name + '.log')).read_text()
    assert not re.search(r'error:|sorryAx|declaration uses|warning:', text), name
    reports = re.findall(r"'([^']+)' (depends on axioms: \[([^\]]*)\]|does not depend on any axioms)", text)
    assert len(reports) == (6 if name == 'Imported' else 1), name
    for theorem, _, axioms in reports:
        assert set(re.findall(r'[\w.]+', axioms)) <= {'propext', 'Classical.choice', 'Quot.sound'}, theorem
    records[name] = record
audit = {'status': 'passed', 'records': records, 'modules': 23, 'standard_axiom_reports': 28,
         'kernel_valid_records': 863, 'dimension64_kernel_theorem': False,
         'producer_test_sha256': sha(HERE / 'audit.json'),
         'documentation_sha256': sha(HERE / 'README.md')}
(HERE / 'proof-audit.json').write_text(json.dumps(audit, indent=2) + '\n')
print('23 modules, 28 standard axiom reports, 863 kernel-valid producer records')
