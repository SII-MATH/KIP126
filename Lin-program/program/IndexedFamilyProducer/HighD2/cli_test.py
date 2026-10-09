"""Exercise the actual full-family checker and line-specific batch failures."""
import json
import os
from pathlib import Path
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[1]
toolchain = Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
env = os.environ.copy()
env['LEAN_SYSROOT'] = str(toolchain)
env['LD_PRELOAD'] = '/tmp/lean_proc_shim.so'
env['LEAN_PATH'] = ':'.join(map(str, [root / '.lake/build/lib/lean'] +
    list((root / '../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))))
base = [str(toolchain / 'bin/lean'), '-j1', '--run',
        'IndexedFamilyCertificates/CheckFile.lean']
family = root / 'IndexedFamilyProducer/HighD2/family.json'
events = root / 'IndexedFamilyProducer/HighD2/bound94.jsonl'
def run(f, e):
    return subprocess.run(base + [str(f), str(e)], cwd=root, env=env,
                          capture_output=True, text=True, timeout=120)

result = run(family, events)
assert result.returncode == 0, result.stderr
assert '351 coherent finite blocks; 94/94 bound events accepted' in result.stdout
with tempfile.TemporaryDirectory(dir=here) as directory:
    path = Path(directory) / 'events.jsonl'
    rows = events.read_text().splitlines()
    bad = json.loads(rows[0])
    bad['object'] = 'NoSuchObject'
    path.write_text(rows[0] + '\n' + json.dumps(bad, sort_keys=True,
        separators=(',', ':')) + '\n{}\n' + rows[1] + '\n')
    result = run(family, path)
    assert result.returncode == 1, result.stderr
    assert ':2:' in result.stderr and ':3:' in result.stderr, result.stderr
    assert '2/4 bound events accepted' in result.stdout, result.stdout
    path.write_text('')
    result = run(family, path)
    assert result.returncode == 1 and 'empty certificate batch' in result.stderr
    bad_family = json.loads(family.read_text())
    bad_family['entries'][0]['wire']['version'] = 2
    family_path = Path(directory) / 'bad-family.json'
    family_path.write_text(json.dumps(bad_family, sort_keys=True, separators=(',', ':')))
    result = run(family_path, events)
    assert result.returncode == 1 and 'wire: complete comparison rejected' in result.stderr
print('PASS: 94 actual events; mixed-record recovery, empty batch and invalid family rejected')
