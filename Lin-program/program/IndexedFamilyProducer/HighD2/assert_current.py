"""Require unchanged sources, inputs, logs and actual successful Lean outputs."""
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
expected = {'Family', 'GeneratedAll', 'GeneratedEntries', 'GeneratedCoherence'}
expected.update(f'GeneratedBatch{i}' for i in range(10))
expected.update(f'GeneratedPairs{i:02d}' for i in range(15))
assert len(audit['modules']) == len(expected) == 29
assert {x['module'].split('.')[-1] for x in audit['modules']} == expected
for item in audit['modules']:
    name = item['module'].split('.')[-1]
    assert item['exit_code'] == 0, name
    for path, field in [
        (root / 'IndexedHighD2Certificates' / (name + '.lean'), 'source_sha256'),
        (root / '.lake/build/lib/lean/IndexedHighD2Certificates' / (name + '.olean'), 'olean_sha256'),
        (p / (name + '.log'), 'log_sha256'),
    ]:
        assert sha(path) == item[field], (name, field)
    text = (p / (name + '.log')).read_text()
    assert not re.search(r'\berror(?:\(|:)|sorryAx|uncaught exception', text), name
    for used in re.findall(r'depends on axioms:\s*\[([^]]*)\]', text):
        assert {x.strip() for x in used.split(',')} <= {'propext', 'Quot.sound', 'Classical.choice'}
for name in ['GeneratedAll', 'GeneratedCoherence']:
    assert 'depends on axioms: [propext, Quot.sound]' in (p / (name + '.log')).read_text()
print('PASS: 29 actual successful modules with exact current proof inputs and artifacts')
