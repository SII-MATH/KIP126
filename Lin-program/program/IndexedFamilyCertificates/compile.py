"""Compile named family-certificate modules with actual exit and input records."""
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys

here = Path(__file__).resolve().parent
root = here.parent
toolchain = Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
env = os.environ.copy()
env['ELAN_HOME'] = str(toolchain.parents[1])
env['LEAN_SYSROOT'] = str(toolchain)
env['LD_PRELOAD'] = '/tmp/lean_proc_shim.so'
env['LEAN_PATH'] = ':'.join(map(str, [root / '.lake/build/lib/lean'] +
    list((root / '../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))))
target = root / '.lake/build/lib/lean/IndexedFamilyCertificates'
target.mkdir(exist_ok=True)
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
for name in sys.argv[1:] or ['Basic', 'Import', 'Tests']:
    source = here / (name + '.lean')
    log = here / (name + '.log')
    output = target / (name + '.olean')
    inputs = {'source': sha(source)}
    with log.open('w') as stream:
        result = subprocess.run([str(toolchain / 'bin/lean'), '-j1',
            str(source.relative_to(root)), '-o', str(output)], cwd=root,
            env=env, stdout=stream, stderr=subprocess.STDOUT)
    record = dict(module=name, inputs=inputs, exit_code=result.returncode,
                  log_sha256=sha(log))
    if result.returncode == 0:
        record['olean_sha256'] = sha(output)
    (here / (name + '.compile.json')).write_text(json.dumps(record, indent=2) + '\n')
    print(name, result.returncode, flush=True)
    if result.returncode:
        print(log.read_text())
        sys.exit(result.returncode)
