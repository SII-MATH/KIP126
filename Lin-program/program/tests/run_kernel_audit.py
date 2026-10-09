"""Run every generated axiom query sequentially and record real process exits."""
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

root = Path(__file__).resolve().parents[1]
directory = root / 'tests/kernel-audit'
groups = json.loads((directory / 'groups.json').read_text())
registered = set()
for kind, name in re.findall(r'\.(andSubmodules|one)\s+`([A-Za-z0-9_.]+)',
                             (root / 'lakefile.lean').read_text()):
    path = root.joinpath(*name.split('.'))
    if path.with_suffix('.lean').is_file():
        registered.add(name)
    if kind == 'andSubmodules':
        registered.update('.'.join(p.relative_to(root).with_suffix('').parts)
                          for p in path.rglob('*.lean'))
scheduled = [m for group in groups for m in group['modules']]
assert len(scheduled) == len(set(scheduled)) and set(scheduled) == registered, (
    'Stale axiom audit module list: run tests/generate_kernel_audit.py after registration')
toolchain = Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
env = os.environ.copy()
env['LEAN_SYSROOT'] = str(toolchain)
env['LD_PRELOAD'] = '/tmp/lean_proc_shim.so'
env['LEAN_PATH'] = ':'.join(map(str, [root / '.lake/build/lib/lean', *sorted(
    (root / '../../KIP126/.lake/packages').glob('*/.lake/build/lib/lean'))]))
sha = lambda f: hashlib.sha256(f.read_bytes()).hexdigest()
records, declarations, modules = [], [], []
for group in groups:
    source = root / group['source']
    output = root / group['output']
    log = source.with_suffix('.log')
    inputs = {m: dict(source_sha256=sha(root / (m.replace('.', '/') + '.lean')),
                      olean_sha256=sha(root / '.lake/build/lib/lean' /
                                       (m.replace('.', '/') + '.olean')))
              for m in group['modules']}
    with log.open('w') as stream:
        run = subprocess.run([str(toolchain / 'bin/lean'), '-j1', group['source']],
                             cwd=root, env=env, stdout=stream, stderr=subprocess.STDOUT)
    record = dict(source=group['source'], source_sha256=sha(source),
                  log_sha256=sha(log), observed_exit_code=run.returncode, inputs=inputs)
    records.append(record)
    (directory / 'compile-audit.json').write_text(json.dumps(records, indent=2) + '\n')
    print(source.stem, run.returncode, flush=True)
    if run.returncode:
        print(log.read_text())
        raise SystemExit(run.returncode)
    data = json.loads(output.read_text())
    assert data['modules'] == group['modules']
    assert inputs == {m: dict(source_sha256=sha(root / (m.replace('.', '/') + '.lean')),
                             olean_sha256=sha(root / '.lake/build/lib/lean' /
                                              (m.replace('.', '/') + '.olean')))
                     for m in group['modules']}, 'files changed during axiom query'
    declarations.extend(data['declarations'])
    modules.extend(data['modules'])
assert sorted(modules) == json.loads((root / 'tests/kernel-audit-modules.json').read_text())
assert len(set(modules)) == len(modules)
for item in declarations:
    assert set(item['axioms']) <= {'propext', 'Quot.sound', 'Classical.choice'}, item
report = dict(modules=sorted(modules), declarations=declarations, groups=records)
(root / 'tests/kernel-declaration-axioms.json').write_text(json.dumps(report, indent=2) + '\n')
print(f'PASS: {len(declarations)} declarations across all {len(modules)} registered modules')
