"""A valid certificate must be rejected when the requested result differs."""
import copy
import json
import os
from pathlib import Path
import subprocess
import tempfile

p = Path(__file__).resolve().parent
root = p.parents[1]
toolchain = Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
env = os.environ.copy()
env['LEAN_SYSROOT'] = str(toolchain)
env['LD_PRELOAD'] = '/tmp/lean_proc_shim.so'
env['LEAN_PATH'] = ':'.join(map(str, [root / '.lake/build/lib/lean', *sorted(
    (root / '../../KIP126/.lake/packages').glob('*/.lake/build/lib/lean'))]))
base = [str(toolchain / 'bin/lean'), '-j1', '--run', 'IndexedFamilyCertificates/RequestCheckFile.lean']
family = p / 'family-extension.json'
requests = p / 'requests95.jsonl'
run = lambda path: subprocess.run(base + [str(family), str(path)], cwd=root,
                                  env=env, capture_output=True, text=True, timeout=120)
result = run(requests)
assert result.returncode == 0 and '95/95 requested results accepted' in result.stdout, result
rows = requests.read_text().splitlines()
with tempfile.TemporaryDirectory(dir=p) as directory:
    path = Path(directory) / 'requests.jsonl'
    bad = []
    for field in ['key', 'source', 'target']:
        request = copy.deepcopy(json.loads(rows[0]))
        if field == 'key':
            request['key']['object'] = 'WrongObject'
        else:
            request[field][0] = not request[field][0]
        bad.append(json.dumps(request, sort_keys=True, separators=(',', ':')))
    unknown = json.loads(rows[0])
    unknown['unexpected'] = True
    unknown = json.dumps(unknown, sort_keys=True, separators=(',', ':'))
    duplicate = '{"key":{},' + rows[0][1:]
    path.write_text('\n'.join([rows[0], *bad, unknown, duplicate, rows[1]]) + '\n')
    result = run(path)
    assert result.returncode == 1 and '2/7 requested results accepted' in result.stdout, result
    for line, location in [(2, 'result.key'), (3, 'result.source'), (4, 'result.target')]:
        assert f':{line}: {location}:' in result.stderr, result.stderr
    for line in [5, 6]:
        assert f':{line}:' in result.stderr, result.stderr
    path.write_text('')
    result = run(path)
    assert result.returncode == 1 and 'empty request batch' in result.stderr
print('PASS: 95 exact requested results; wrong key/input/output, unknown/duplicate fields and empty batch rejected')
