"""Compile new leaves serially; preserve evidence of failures separately."""
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
env['LEAN_PATH'] = ':'.join(str(p) for p in [ROOT / '.lake/build/lib/lean',
    *sorted((ROOT / '../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))])
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
import sys
names = sys.argv[1:] or ['Basic','Trace']
output = ROOT / '.lake/build/lib/lean/Fact713ConstructedNamed'
output.mkdir(exist_ok=True)
for name in names:
    source = HERE / (name + '.lean')
    log = HERE / (name + '.log')
    inputs = sorted(HERE.glob('*.jsonl')) + sorted(HERE.glob('case_*.json')) if name == 'Examples' else []
    record = {'source_sha256': sha(source),
              'external_input_sha256': {str(p.relative_to(ROOT)): sha(p) for p in inputs}}
    with log.open('w') as stream:
        run = subprocess.run([str(TOOL / 'bin/lean'), '-j1',
            f'Fact713ConstructedNamed/{name}.lean', '-o', str(output / (name + '.olean'))],
            cwd=ROOT, env=env, stdout=stream, stderr=subprocess.STDOUT)
    record.update(observed_exit_code=run.returncode, log_sha256=sha(log))
    if run.returncode == 0:
        record['olean_sha256'] = sha(output / (name + '.olean'))
    else:
        failed = HERE / (name + '.failed-' + sha(log)[:12] + '.log')
        failed.write_bytes(log.read_bytes())
    (HERE / (name + '-compile.json')).write_text(json.dumps(record, indent=2) + '\n')
    assert record['source_sha256'] == sha(source)
    assert record['external_input_sha256'] == {str(p.relative_to(ROOT)): sha(p) for p in inputs}
    print(name, run.returncode, flush=True)
    if run.returncode:
        raise SystemExit(log.read_text())
