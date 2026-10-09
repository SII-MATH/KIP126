import copy
import json
import os
from pathlib import Path
import subprocess

root = Path(__file__).resolve().parents[1]
output = root / 'tests/output'
output.mkdir(exist_ok=True)
env = os.environ.copy()
toolchain = Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
env.update(LEAN_SYSROOT=str(toolchain), LEAN_PATH=str(root / '.lake/build/lib/lean'))
if Path('/tmp/lean_proc_shim.so').exists():
    env['LD_PRELOAD'] = '/tmp/lean_proc_shim.so'
sample = json.loads((root / 'examples/finite_sample.json').read_text())


def run(name, value, accepted=False):
    path = output / (name + '.jsonl')
    path.write_text(value if isinstance(value, str) else
                    json.dumps(value, sort_keys=True, separators=(',', ':')) + '\n')
    p = subprocess.run([str(toolchain / 'bin/lean'), '-j1', '--run',
                        'CheckFile.lean', str(path)], cwd=root, env=env,
                       text=True, capture_output=True)
    assert (p.returncode == 0) == accepted, (name, p.stdout, p.stderr)
    if not accepted:
        assert ':1:' in p.stderr, p.stderr
    print(name, p.stdout.strip() or p.stderr.strip())


run('valid', sample, True)
for status in ['unknown', 'external_input', 'inventory_only']:
    v = copy.deepcopy(sample)
    v['status'] = status
    run(status, v)
v = copy.deepcopy(sample)
v['unexpected'] = 1
run('unknown-field', v)
run('duplicate-field', (root / 'examples/finite_sample.json').read_text().replace(
    '"status":"finite_input"', '"status":"finite_input","status":"finite_input"'))
for name, mutate in [
    ('missing-class', lambda b: b['data'].update(classes=[])),
    ('bad-degree', lambda b: b['data']['classes'][0]['degree'].update(internal=100)),
    ('bad-version', lambda b: b.update(formatVersion=2)),
    ('wrong-object', lambda b: b['certificates'][0].update(object='other')),
    ('omitted-hit', lambda b: b['certificates'][0]['claim']['notHit'].update(classId=7)),
]:
    v = copy.deepcopy(sample)
    mutate(v['bundle'])
    run(name, v)
run('malformed', '{')
print('Importer rejection tests passed')
