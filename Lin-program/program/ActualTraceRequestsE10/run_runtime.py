"""Run only the independent leaf; do not change any compiled dependency."""
import hashlib
import json
import os
from pathlib import Path
import subprocess

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
TOOL = Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
env = os.environ.copy()
env.update(ELAN_HOME=str(TOOL.parents[1]), LEAN_SYSROOT=str(TOOL),
           LAKE_HOME=str(TOOL), LD_PRELOAD='/tmp/lean_proc_shim.so')
env['LEAN_PATH'] = ':'.join(map(str, [ROOT / '.lake/build/lib/lean',
    *sorted((ROOT / '../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))]))
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
source, log = HERE / 'Runtime.lean', HERE / 'runtime.log'
if log.exists():
    (HERE / ('runtime.prior-' + sha(log)[:12] + '.log')).write_bytes(log.read_bytes())
with log.open('w') as stream:
    run = subprocess.run([str(TOOL / 'bin/lean'), '-j1', '--run',
        'ActualTraceRequestsE10/Runtime.lean'], cwd=ROOT, env=env,
        stdout=stream, stderr=subprocess.STDOUT)
record = {'observed_exit_code': run.returncode, 'source_sha256': sha(source),
          'log_sha256': sha(log)}
(HERE / 'runtime.json').write_text(json.dumps(record, indent=2) + '\n')
print(log.read_text(), end='')
raise SystemExit(run.returncode)
