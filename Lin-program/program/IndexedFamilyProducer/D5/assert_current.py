"""Current direct proof artifacts; never reinterpret failed runs as successes."""
import hashlib
import json
import re
from pathlib import Path

p = Path(__file__).resolve().parent
root = p.parents[1]
sha = lambda f: hashlib.sha256(f.read_bytes()).hexdigest()
audit = json.loads((p / 'compile-audit.json').read_text())
assert audit['proof_inputs_sha256'] == sha(p / 'proof-inputs.json')
for name, digest in json.loads((p / 'proof-inputs.json').read_text()).items():
    assert sha(root / name) == digest, name
assert [m['module'] for m in audit['modules']] == [
    'IndexedD5Certificates.' + name for name in ['Extension', 'Family', 'Events']]
for row in audit['modules']:
    assert row['exit_code'] == 0, row['module']
    name = row['module'].split('.')[-1]
    for path, field in [(root / 'IndexedD5Certificates' / (name + '.lean'), 'source_sha256'),
                        (root / '.lake/build/lib/lean/IndexedD5Certificates' / (name + '.olean'), 'olean_sha256'),
                        (p / (name + '.log'), 'log_sha256')]:
        assert sha(path) == row[field], (name, field)
    text = (p / (name + '.log')).read_text()
    assert not re.search(r'\berror(?:\(|:)|sorryAx', text), name
    for used in re.findall(r'depends on axioms: \[([^]]*)\]', text):
        assert {x.strip() for x in used.split(',') if x.strip()} <= {'propext', 'Quot.sound', 'Classical.choice'}
print('PASS: three current successful extension/family/event proofs with exact inputs')
