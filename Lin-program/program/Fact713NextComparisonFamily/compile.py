"""Compile only this directory's leaves; retain every observed attempt."""
import datetime
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
TOOL = Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
BUILD = ROOT / '.lake/build/lib/lean'
sha = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
env = os.environ.copy()
env.update(ELAN_HOME=str(TOOL.parents[1]), LEAN_SYSROOT=str(TOOL),
           LAKE_HOME=str(TOOL), LD_PRELOAD='/tmp/lean_proc_shim.so')
env['LEAN_PATH'] = ':'.join(str(p) for p in [BUILD,
    *sorted((ROOT / '../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))])
output = BUILD / HERE.name
output.mkdir(exist_ok=True)
evidence = HERE / 'evidence'
evidence.mkdir(exist_ok=True)
for name in sys.argv[1:] or ['Extra', 'Cross', 'Coherence', 'Coverage']:
    source = HERE / (name + '.lean')
    deps = [BUILD / (line.split()[1].replace('.', '/') + '.olean')
            for line in source.read_text().splitlines() if line.startswith('import ')]
    dep_hashes = {str(p.relative_to(ROOT)): sha(p) for p in deps}
    stamp = datetime.datetime.now(datetime.timezone.utc).strftime('%Y%m%dT%H%M%S%fZ')
    attempt = evidence / (name + '-' + stamp)
    log = attempt.with_suffix('.log')
    record = dict(source_sha256=sha(source), dependencies_sha256=dep_hashes,
                  command=[str(TOOL / 'bin/lean'), '-j1',
                           f'{HERE.name}/{name}.lean', '-o', str(output / (name + '.olean'))],
                  log=str(log.relative_to(HERE)))
    with log.open('w') as stream:
        run = subprocess.run(record['command'], cwd=ROOT, env=env,
                             stdout=stream, stderr=subprocess.STDOUT)
    record.update(observed_exit_code=run.returncode, log_sha256=sha(log))
    record['inputs_stable'] = (record['source_sha256'] == sha(source) and
                              dep_hashes == {str(p.relative_to(ROOT)): sha(p) for p in deps})
    if run.returncode == 0:
        record['olean_sha256'] = sha(output / (name + '.olean'))
    encoded = json.dumps(record, indent=2) + '\n'
    attempt.with_suffix('.json').write_text(encoded)
    (HERE / (name + '-compile.json')).write_text(encoded)
    print(name, run.returncode, flush=True)
    if run.returncode or not record['inputs_stable']:
        raise SystemExit(log.read_text() or 'A direct input changed during compilation')
