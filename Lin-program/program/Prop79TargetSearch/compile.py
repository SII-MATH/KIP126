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
for name in sys.argv[1:] or ['Maps','Comparison','Naturality','Actual','ActualIncoming','Finite','NoHit',
                            'Constructed','Trace','Tactic','MapSemantics','ZeroSpaces','DerivedStep','Assembly']:
    source = HERE / (name + '.lean')
    deps = []
    for line in source.read_text().splitlines():
        if line.startswith('import '):
            relative = line.split()[1].replace('.', '/') + '.olean'
            candidate = BUILD / relative
            deps.append(candidate if candidate.exists() else TOOL / 'lib/lean' / relative)
    dep_key = lambda p: str(p.relative_to(ROOT)) if p.is_relative_to(ROOT) else str(p)
    dep_hashes = {dep_key(p): sha(p) for p in deps}
    stamp = datetime.datetime.now(datetime.timezone.utc).strftime('%Y%m%dT%H%M%S%fZ')
    attempt = evidence / (name + '-' + stamp)
    log = attempt.with_suffix('.log')
    record = dict(source_sha256=sha(source), dependencies_sha256=dep_hashes,
                  command=[str(TOOL / 'bin/lean'), '-j1',
                           f'{HERE.name}/{name}.lean', '-o', str(output / (name + '.olean'))],
                  log=str(log.relative_to(HERE)))
    inputs = ([HERE / 'bottom-wire' / (tag + '.json') for tag in
               ['s12t138','s14t139','s16t140','s15t140','s17t141','s19t142']]
              if name == 'Maps' else [HERE / 'bottom-wire' / filename for filename in
               ['S0_17_141_d2.json','Cnu_14_139_d2.json','Cnu_17_141_d2.json']]
              if name == 'Comparison' else [HERE / 'wires' / filename for filename in
               ['Cnu_14_139_d3.json','Cnu_14_139_d4.json']]
              if name == 'Finite' else [])
    record['external_input_sha256'] = {str(p.relative_to(ROOT)): sha(p) for p in inputs}
    with log.open('w') as stream:
        run = subprocess.run(record['command'], cwd=ROOT, env=env,
                             stdout=stream, stderr=subprocess.STDOUT)
    record.update(observed_exit_code=run.returncode, log_sha256=sha(log))
    record['inputs_stable'] = (record['source_sha256'] == sha(source) and
                              dep_hashes == {dep_key(p): sha(p) for p in deps} and
                              record['external_input_sha256'] ==
                              {str(p.relative_to(ROOT)): sha(p) for p in inputs})
    if run.returncode == 0:
        record['olean_sha256'] = sha(output / (name + '.olean'))
    encoded = json.dumps(record, indent=2) + '\n'
    attempt.with_suffix('.json').write_text(encoded)
    (HERE / (name + '-compile.json')).write_text(encoded)
    print(name, run.returncode, flush=True)
    if run.returncode or not record['inputs_stable']:
        reason = (f'Lean returned {run.returncode}; see retained attempt record.'
                  if run.returncode else 'A direct input changed during compilation')
        raise SystemExit(log.read_text() or reason)
