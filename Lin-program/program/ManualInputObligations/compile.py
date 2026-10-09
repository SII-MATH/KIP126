"""Build isolated Reference copies and typed manual-input obligations serially."""
import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parent
tool = Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
sha = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
names = ['Reference/' + name for name in ['Foundations', 'AlgebraTopology',
    'CohomologySteenrod', 'SteenrodAdams', 'AdamsHomology', 'AdamsRules']] + ['Typed']
env = os.environ.copy()
env.update(LEAN_SYSROOT=str(tool), LD_PRELOAD='/tmp/lean_proc_shim.so')
env['LEAN_PATH'] = ':'.join(map(str, [root / '.lake/build/lib/lean', *sorted(
    (root / '../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))]))
fingerprints = {name: sha(here / (name + '.lean')) for name in names}
audit = []
for name in names:
    module = 'ManualInputObligations/' + name
    output = root / '.lake/build/lib/lean' / (module + '.olean')
    output.parent.mkdir(parents=True, exist_ok=True)
    log = here / (name.replace('/', '-') + '.log')
    with log.open('w') as stream:
        run = subprocess.run([str(tool / 'bin/lean'), '-j1', module + '.lean',
            '-o', str(output)], cwd=root, env=env, stdout=stream, stderr=subprocess.STDOUT)
    row = {'module': module.replace('/', '.'), 'exit_code': run.returncode,
           'source_sha256': fingerprints[name], 'log_sha256': sha(log)}
    if run.returncode == 0:
        row['olean_sha256'] = sha(output)
    audit.append(row)
    (here / 'isolated-compile-audit.json').write_text(json.dumps(audit, indent=2) + '\n')
    print(name, run.returncode, flush=True)
    if run.returncode:
        raise SystemExit(log.read_text())
assert fingerprints == {name: sha(here / (name + '.lean')) for name in names}
