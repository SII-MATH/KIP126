"""Validate current Lake files against observed compilation and direct inputs."""
import argparse
import hashlib
import json
import re
from pathlib import Path

root = Path(__file__).resolve().parents[1]
parser = argparse.ArgumentParser()
parser.add_argument('snapshot', help='Directory relative to program/')
args = parser.parse_args()
snapshot = root / args.snapshot
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
manifest = json.loads((snapshot / 'lake-compile-audit.json').read_text())
assert manifest['exit_code'] == 0
assert sha(snapshot / 'compile-audit.json') == manifest['direct_compile_audit_sha256']
assert sha(snapshot / 'proof-inputs.json') == manifest['proof_inputs_sha256']
for name, digest in json.loads((snapshot / 'proof-inputs.json').read_text()).items():
    assert sha(root / name) == digest, name
checkpoint_path = root / manifest['checkpoint']
assert sha(checkpoint_path) == manifest['checkpoint_sha256']
checkpoint = json.loads(checkpoint_path.read_text())
assert checkpoint['observed_exit_code'] == 0
assert checkpoint['session_id'] == manifest['session_id']
log = root / checkpoint['build_log']
assert sha(log) == checkpoint['build_log_sha256']
assert f"Build completed successfully ({checkpoint['jobs']} jobs)." in log.read_text()
assert not re.search(r'\berror(?:\(|:)|sorryAx|Build failed', log.read_text())
evidence = ''
for name, digest in checkpoint['individual_module_logs'].items():
    assert sha(root / name) == digest, name
    evidence += (root / name).read_text()
direct = json.loads((snapshot / 'compile-audit.json').read_text())
assert {m['module'] for m in manifest['modules']} == {m['module'] for m in direct['modules']}
for row in manifest['modules']:
    name = row['module']
    assert re.search(r'Built ' + re.escape(name) + r' \(', evidence), name
    source = root / (name.replace('.', '/') + '.lean')
    obj = root / '.lake/build/lib/lean' / (name.replace('.', '/') + '.olean')
    trace = obj.with_suffix('.trace')
    for path, field in [(source, 'source_sha256'), (obj, 'olean_sha256'),
                        (trace, 'trace_sha256')]:
        assert sha(path) == row[field], (name, field)
    details = json.loads(trace.read_text())
    assert details['synthetic'] is False and details['outputs'].get('o'), name
    assert str(source.resolve()) in {x[0] for x in details['inputs']}, name
    assert not any(x.get('severity') == 'error' for x in details['log']), name
print(f"PASS: {len(manifest['modules'])} current Lake modules, complete inputs, preserved direct audit")
