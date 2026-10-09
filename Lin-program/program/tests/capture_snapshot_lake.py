"""Record Lake replacements only when they match a successful direct snapshot."""
import argparse
import hashlib
import json
from pathlib import Path

root = Path(__file__).resolve().parents[1]
parser = argparse.ArgumentParser()
parser.add_argument('snapshot', help='Directory relative to program/')
parser.add_argument('checkpoint', help='Observed successful checkpoint relative to program/')
args = parser.parse_args()
snapshot = root / args.snapshot
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
output = snapshot / 'lake-compile-audit.json'
assert not output.exists(), 'preserve existing Lake evidence'
direct_path = snapshot / 'compile-audit.json'
inputs_path = snapshot / 'proof-inputs.json'
direct = json.loads(direct_path.read_text())
assert sha(inputs_path) == direct['proof_inputs_sha256']
for name, digest in json.loads(inputs_path.read_text()).items():
    assert sha(root / name) == digest, name
checkpoint_path = root / args.checkpoint
checkpoint = json.loads(checkpoint_path.read_text())
assert checkpoint['observed_exit_code'] == 0
assert sha(root / checkpoint['build_log']) == checkpoint['build_log_sha256']
by_name = {m['module']: m for m in checkpoint['modules']}
modules = []
for item in direct['modules']:
    assert item['exit_code'] == 0, item['module']
    row = by_name[item['module']]
    assert row['source_sha256'] == item['source_sha256'], item['module']
    source = root / (item['module'].replace('.', '/') + '.lean')
    obj = root / '.lake/build/lib/lean' / (item['module'].replace('.', '/') + '.olean')
    for path, field in [(source, 'source_sha256'), (obj, 'olean_sha256'),
                        (obj.with_suffix('.trace'), 'trace_sha256')]:
        assert sha(path) == row[field], (item['module'], field)
    modules.append(row)
output.write_text(json.dumps(dict(checkpoint=args.checkpoint,
    checkpoint_sha256=sha(checkpoint_path), session_id=checkpoint['session_id'],
    exit_code=0, direct_compile_audit_sha256=sha(direct_path),
    proof_inputs_sha256=sha(inputs_path), modules=modules), indent=2) + '\n')
print(f'Recorded {len(modules)} current Lake modules; direct snapshot preserved')
