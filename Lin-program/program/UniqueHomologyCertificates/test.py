"""Check the C++ producer against Lean, including whole-space uniqueness failures."""
import copy
import json
import os
from pathlib import Path
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parent
tool = Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
env = os.environ.copy()
env['LEAN_SYSROOT'] = str(tool)
env['LD_PRELOAD'] = '/tmp/lean_proc_shim.so'
env['LEAN_PATH'] = ':'.join(map(str, [root / '.lake/build/lib/lean', *sorted(
    (root / '../../KIP126/.lake/packages').glob('*/.lake/build/lib/lean'))]))

def produce(*args):
    return subprocess.run([str(here / 'unique-export'), *args], capture_output=True, text=True)

def check(path):
    return subprocess.run([str(tool / 'bin/lean'), '-j1', '--run',
        'UniqueHomologyCertificates/CheckFile.lean', str(path)], cwd=root,
        env=env, capture_output=True, text=True, timeout=120)

good = produce('1', '4', '2', '1100', '01010110', '0010')
assert good.returncode == 0, good.stderr
assert good.stdout == produce('1', '4', '2', '1100', '01010110', '0010').stdout
assert good.stdout == (here / 'sample.json').read_text()
canonical = lambda x: json.dumps(x, sort_keys=True, separators=(',', ':'))
base = json.loads(good.stdout)
bad = []
for field, value in [('version', 2), ('named', [False]*4), ('named', [False]*3),
                     ('named', [False, False, False, True])]:
    row = copy.deepcopy(base)
    row[field] = value
    bad.append(canonical(row))
row = copy.deepcopy(base)
row['unknown'] = None
bad.append(canonical(row))
bad.append(good.stdout.strip()[:-1] + ',"version":1}')
row = copy.deepcopy(base)
row['comparison']['projection'] = [False]*4
bad.append(canonical(row))
too_many = produce('0', '2', '0', '-', '-', '10')
assert too_many.returncode == 0
bad.append(too_many.stdout.strip())
with tempfile.TemporaryDirectory(dir=here) as temporary:
    directory = Path(temporary)
    data = directory / 'certificates.jsonl'
    data.write_text(good.stdout + '\n'.join(bad) + '\n' + good.stdout)
    result = check(data)
    assert result.returncode == 1, result
    assert f'2/{len(bad)+2}' in result.stdout, result.stdout
    for i in range(2, len(bad)+2):
        assert f'{data}:{i}:' in result.stderr, result.stderr
    assert 'entire homology must have dimension 1' in result.stderr
    data.write_text(good.stdout*2)
    result = check(data)
    assert result.returncode == 0 and '2/2' in result.stdout, result
    requests = directory / 'requests.txt'
    requests.write_text('1 4 2 1100 01010110 0010\nwrong\n1 4 2 1100 01010110 0010\n')
    batch = produce('--batch', str(requests))
    assert batch.returncode == 1 and batch.stdout == good.stdout*2
    assert f'{requests}:2:' in batch.stderr
    requests.write_text('')
    assert produce('--batch', str(requests)).returncode == 1
    data.write_text('')
    assert check(data).returncode == 1
    with open('/dev/full', 'w') as stream:
        result = subprocess.run([str(here / 'unique-export'), '1', '4', '2',
            '1100', '01010110', '0010'], stdout=stream, stderr=subprocess.PIPE, text=True)
    assert result.returncode == 1 and 'write failed' in result.stderr
print('PASS: deterministic C++ whole-homology witness; two valid and eight invalid records; batch recovery and write failures')
