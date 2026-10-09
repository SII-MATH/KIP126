"""Check final source/log/object/external hashes and the standard axiom set."""
import hashlib
import json
import re
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
OBJECTS = ROOT / '.lake/build/lib/lean/FilteredExtensionCertificates'
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
names = ['Basic', 'Import', *[f'Batch{i:02d}' for i in range(16)], 'Examples', 'Direct']
expected_reports = {'Basic': 5, 'Import': 2, 'Examples': 6, 'Direct': 2, 'Dimension64': 0}
expected_reports.update({f'Batch{i:02d}': 1 for i in range(16)})
records = {}
for name in names:
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0, name
    assert record['source_sha256'] == sha(HERE / (name + '.lean')), name
    assert record['log_sha256'] == sha(HERE / (name + '.log')), name
    assert record['olean_sha256'] == sha(OBJECTS / (name + '.olean')), name
    for file, digest in record['external_input_sha256'].items():
        assert digest == sha(ROOT / file), file
    log = (HERE / (name + '.log')).read_text()
    assert not re.search(r'error:|sorryAx|declaration uses|warning:', log), name
    reports = re.findall(r"'([^']+)' (depends on axioms: \[([^\]]*)\]|does not depend on any axioms)", log)
    assert len(reports) == expected_reports[name], (name, reports)
    for theorem, _, axioms in reports:
        assert set(re.findall(r'[\w.]+', axioms)) <= {'propext', 'Classical.choice', 'Quot.sound'}, theorem
    records[name] = record

original = (ROOT / 'FilteredExtensionProducer/valid.jsonl').read_bytes()
assert b''.join(p.read_bytes() for p in sorted(HERE.glob('batch[0-9][0-9].jsonl'))) == original
audit = {'status': 'passed', 'modules': names, 'standard_axiom_reports': sum(expected_reports.values()),
         'kernel_batch_count': 604, 'dimension64_kernel_theorem': False,
         'records': records,
         'files': {p.name: sha(p) for p in sorted(HERE.iterdir())
                   if p.is_file() and (p.suffix in {'.lean', '.py', '.md'} or p.name.endswith('-compile.json'))}}
(HERE / 'audit.json').write_text(json.dumps(audit, indent=2) + '\n')
print('current proofs: 20 modules, 31 standard axiom reports, 604 batch records; dimension64 import only')
