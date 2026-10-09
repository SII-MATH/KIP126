"""Validate actual successful Lake artifacts while preserving the direct audit."""
import hashlib
import json
import re
from pathlib import Path

p = Path(__file__).resolve().parent
root = p.parents[1]
sha = lambda f: hashlib.sha256(f.read_bytes()).hexdigest()
manifest = json.loads((p / 'lake-compile-audit.json').read_text())
assert manifest['exit_code'] == 0 and manifest['session_id'] == 71782
assert sha(p / 'compile-audit.json') == manifest['direct_compile_audit_sha256']
assert sha(p / 'proof-inputs.json') == manifest['proof_inputs_sha256']
for name, digest in json.loads((p / 'proof-inputs.json').read_text()).items():
    assert sha(root / name) == digest, name
checkpoint = root / manifest['checkpoint']
assert sha(checkpoint) == manifest['checkpoint_sha256']
data = json.loads(checkpoint.read_text())
assert data['observed_exit_code'] == 0 and data['session_id'] == 71782
log = root / data['build_log']
assert sha(log) == data['build_log_sha256']
text = log.read_text()
assert 'Build completed successfully (2404 jobs).' in text
assert not re.search(r'\berror(?:\(|:)|sorryAx|Build failed', text)
evidence = ''
for name, digest in data['individual_module_logs'].items():
    path = root / name
    assert sha(path) == digest, name
    evidence += path.read_text()
expected = {'Family', 'GeneratedAll', 'GeneratedEntries', 'GeneratedCoherence', 'Example'}
expected.update(f'GeneratedBatch{i}' for i in range(10))
expected.update(f'GeneratedPairs{i:02d}' for i in range(15))
assert len(manifest['modules']) == 30
assert {r['module'].split('.')[-1] for r in manifest['modules']} == expected
for row in manifest['modules']:
    name = row['module']
    stem = name.replace('.', '/')
    assert re.search(r'Built ' + re.escape(name) + r' \(', evidence), name
    source = root / (stem + '.lean')
    obj = root / '.lake/build/lib/lean' / (stem + '.olean')
    trace = obj.with_suffix('.trace')
    for path, field in [(source, 'source_sha256'), (obj, 'olean_sha256'), (trace, 'trace_sha256')]:
        assert sha(path) == row[field], (name, field)
    details = json.loads(trace.read_text())
    assert details['synthetic'] is False and details['outputs'].get('o'), name
    assert str(source.resolve()) in {x[0] for x in details['inputs']}, name
    assert not any(x.get('severity') == 'error' for x in details['log']), name
print('PASS: 30 current Lake modules, complete inputs and preserved original direct audit')
