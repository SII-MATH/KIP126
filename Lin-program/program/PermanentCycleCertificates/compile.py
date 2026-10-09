"""Serial direct compilation with current-source and dependency fingerprints."""
import hashlib
import json
import os
import subprocess
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
TOOL = Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
env = os.environ.copy()
env.update(ELAN_HOME=str(TOOL.parents[1]), LEAN_SYSROOT=str(TOOL), LD_PRELOAD='/tmp/lean_proc_shim.so')
env['LEAN_PATH'] = ':'.join(str(p) for p in [ROOT / '.lake/build/lib/lean',
    *sorted((ROOT / '../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))])
MODULES = ['System', 'Finite', 'AdamsBounds', 'Examples', 'Counterexamples']
if len(sys.argv) == 1:
    for name in MODULES:
        subprocess.run([sys.executable, str(Path(__file__)), name], check=True)
    raise SystemExit(0)
name = sys.argv[1]
assert name in MODULES
inputs = [HERE / (n + '.lean') for n in MODULES] + [ROOT / 'SemanticTrajectoryCertificates/Page.lean', ROOT / 'PageTransitionCertificates/Trajectory.lean']
fingerprints = {str(p.relative_to(ROOT)): sha(p) for p in inputs}
output = ROOT / '.lake/build/lib/lean/PermanentCycleCertificates'
output.mkdir(exist_ok=True)
log = HERE / (name + '.log')
with log.open('w') as stream:
    result = subprocess.run([str(TOOL / 'bin/lean'), '-j1', f'PermanentCycleCertificates/{name}.lean',
                             '-o', str(output / (name + '.olean'))], cwd=ROOT, env=env,
                            stdout=stream, stderr=subprocess.STDOUT)
record = dict(module=name, exit_code=result.returncode, inputs=fingerprints, log_sha256=sha(log))
if result.returncode == 0:
    record['olean_sha256'] = sha(output / (name + '.olean'))
(HERE / (name + '-compile.json')).write_text(json.dumps(record, indent=2) + '\n')
assert fingerprints == {str(p.relative_to(ROOT)): sha(p) for p in inputs}
print(name, result.returncode)
if result.returncode:
    raise SystemExit(log.read_text())
