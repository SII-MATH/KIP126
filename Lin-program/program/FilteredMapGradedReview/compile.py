"""Compile only the independent review leaf, preserving interrupted/failed records."""
import hashlib
import json
import os
from pathlib import Path
import subprocess

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
TOOL = Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
env = os.environ.copy()
env.update(ELAN_HOME=str(TOOL.parents[1]), LEAN_SYSROOT=str(TOOL), LAKE_HOME=str(TOOL),
           LD_PRELOAD='/tmp/lean_proc_shim.so')
env['LEAN_PATH'] = ':'.join(str(p) for p in [ROOT / '.lake/build/lib/lean',
    *sorted((ROOT / '../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))])
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
source, log, record_path = [HERE / ('Examples' + suffix) for suffix in ['.lean', '.log', '-compile.json']]
obj = ROOT / '.lake/build/lib/lean/FilteredMapGradedReview/Examples.olean'
obj.parent.mkdir(exist_ok=True)
if record_path.exists():
    archive = HERE / ('Examples-prior-' + sha(record_path)[:12] + '-compile.json')
    if not archive.exists():
        archive.write_bytes(record_path.read_bytes())
    if log.exists():
        old_log = HERE / ('Examples-prior-' + sha(log)[:12] + '.log')
        if not old_log.exists():
            old_log.write_bytes(log.read_bytes())
dependencies = [ROOT / '.lake/build/lib/lean/FilteredMapGradedComparison' / (name + '.olean')
                for name in ['Basic', 'Event', 'Recurrence', 'AllTargets']]
record = dict(source_sha256=sha(source), dependency_objects={str(p.relative_to(ROOT)): sha(p) for p in dependencies})
with log.open('w') as stream:
    run = subprocess.run([str(TOOL / 'bin/lean'), '-j1',
        'FilteredMapGradedReview/Examples.lean', '-o', str(obj)],
        cwd=ROOT, env=env, stdout=stream, stderr=subprocess.STDOUT)
record.update(observed_exit_code=run.returncode, log_sha256=sha(log),
              dependency_objects_unchanged=all(sha(p) == record['dependency_objects'][str(p.relative_to(ROOT))] for p in dependencies))
if run.returncode == 0:
    record['olean_sha256'] = sha(obj)
else:
    (HERE / ('Examples.failed-' + sha(log)[:12] + '.log')).write_bytes(log.read_bytes())
record_path.write_text(json.dumps(record, indent=2) + '\n')
print(json.dumps(record, indent=2))
print(log.read_text())
raise SystemExit(run.returncode)
