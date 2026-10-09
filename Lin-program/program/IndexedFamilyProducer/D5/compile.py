"""Compile the distinct 351-block snapshot, recording actual compiler results."""
import hashlib
import json
import os
import subprocess
import time
from pathlib import Path

p = Path(__file__).resolve().parent
root = p.parents[1]
out = root / 'IndexedD5Certificates'
env = os.environ.copy()
toolchain = Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
env['LEAN_SYSROOT'] = str(toolchain)
env['LEAN_PATH'] = ':'.join(map(str, [root / '.lake/build/lib/lean', *sorted(
    (root / '../../KIP126/.lake/packages').glob('*/.lake/build/lib/lean'))]))
if Path('/tmp/lean_proc_shim.so').exists():
    env['LD_PRELOAD'] = '/tmp/lean_proc_shim.so'

names = ['Extension', 'Family', 'Events']
inputs = sorted(out.glob('*.lean')) + sorted(p.glob('*.py'))
inputs += [p / x for x in ['family.json', 'family-extension.json', 'extra.json', 'bound95.jsonl', 'provenance.json']]
inputs += sorted((p / 'events').glob('*.json'))
for directory in ['AggregateD5Conditional', 'IndexedFamilyCertificates', 'IndexedHighD2Certificates']:
    inputs += sorted((root / directory).rglob('*.lean'))
inputs += [root / 'AggregateD5Conditional/source.json']
sha = lambda f: hashlib.sha256(f.read_bytes()).hexdigest()
fingerprints = {str(f.relative_to(root)): sha(f) for f in inputs}
(p / 'proof-inputs.json').write_text(json.dumps(fingerprints, indent=2) + '\n')
records = []
for name in names:
    source = out / (name + '.lean')
    target = root / '.lake/build/lib/lean/IndexedD5Certificates' / (name + '.olean')
    target.parent.mkdir(parents=True, exist_ok=True)
    log = p / (name + '.log')
    start = time.monotonic()
    with log.open('w') as stream:
        run = subprocess.run([str(toolchain / 'bin/lean'), '-j1', str(source.relative_to(root)),
                              '-o', str(target.relative_to(root))], cwd=root, env=env,
                             stdout=stream, stderr=subprocess.STDOUT)
    records.append(dict(module='IndexedD5Certificates.' + name, exit_code=run.returncode,
                        seconds=round(time.monotonic() - start, 3), source_sha256=sha(source),
                        log_sha256=sha(log), olean_sha256=sha(target) if run.returncode == 0 else None))
    (p / 'compile-audit.json').write_text(json.dumps(dict(
        proof_inputs_sha256=sha(p / 'proof-inputs.json'), modules=records), indent=2) + '\n')
    print(name, run.returncode, flush=True)
    if run.returncode:
        raise SystemExit(run.returncode)
assert fingerprints == {str(f.relative_to(root)): sha(f) for f in inputs}, 'inputs changed during compilation'
print('3 modules compiled with exact inputs and actual successful exits')
