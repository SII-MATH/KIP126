"""Run the real Lean family and requested-result CLIs on the399 extension."""
import copy
import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
TOOL = Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
env = os.environ.copy()
env.update(LEAN_SYSROOT=str(TOOL), LD_PRELOAD='/tmp/lean_proc_shim.so')
env['LEAN_PATH'] = ':'.join(map(str, [ROOT / '.lake/build/lib/lean', *sorted(
    (ROOT / '../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))]))
family = HERE / 'family399.json'
encode = lambda obj: json.dumps(obj, sort_keys=True, separators=(',', ':'))
runs = []


def run(module, path):
    result = subprocess.run([str(TOOL / 'bin/lean'), '-j1', '--run', module,
                             str(family), str(path)], cwd=ROOT, env=env,
                            capture_output=True, text=True, timeout=180)
    runs.append(dict(module=module, input=path.name, exit_code=result.returncode,
                     stdout=result.stdout, stderr=result.stderr))
    return result


events = run('IndexedFamilyCertificates/CheckFile.lean', HERE / 'bound95.jsonl')
assert events.returncode == 0 and '399 coherent finite blocks; 95/95 bound events accepted' in events.stdout, events
requests = run('IndexedFamilyCertificates/RequestCheckFile.lean', HERE / 'requests95.jsonl')
assert requests.returncode == 0 and '399 coherent finite blocks; 95/95 requested results accepted' in requests.stdout, requests
rows = (HERE / 'requests95.jsonl').read_text().splitlines()
with tempfile.TemporaryDirectory(dir=HERE) as directory:
    bad = []
    for field in ['key', 'source', 'target']:
        request = copy.deepcopy(json.loads(rows[0]))
        if field == 'key':
            request['key']['object'] = 'WrongObject'
        else:
            request[field][0] = not request[field][0]
        bad.append(encode(request))
    unknown = json.loads(rows[0])
    unknown['unexpected'] = True
    path = Path(directory) / 'mixed-requests.jsonl'
    path.write_text('\n'.join([rows[0], *bad, encode(unknown), rows[1]]) + '\n')
    result = run('IndexedFamilyCertificates/RequestCheckFile.lean', path)
    assert result.returncode == 1 and '2/6 requested results accepted' in result.stdout
    for line, field in [(2, 'key'), (3, 'source'), (4, 'target')]:
        assert f':{line}: result.{field}:' in result.stderr, result.stderr
    assert ':5:' in result.stderr
sha = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
report = dict(status='actual_family399_cli_and_requested_results_passed', runs=runs,
    preserved_events=95, preserved_requested_results=95,
    negative_result_cases=['wrong key', 'wrong input', 'wrong output', 'unknown field'],
    input_sha256={str(path.relative_to(ROOT)): sha(path) for path in [
        family, HERE / 'bound95.jsonl', HERE / 'requests95.jsonl', Path(__file__),
        ROOT / 'IndexedFamilyCertificates/CheckFile.lean', ROOT / 'IndexedFamilyCertificates/RequestCheckFile.lean']})
(HERE / 'cli-audit.json').write_text(json.dumps(report, indent=2) + '\n')
print('Lean CLI399 coherent;95/95 bound;95/95 requested;wrong input/result recovery passes')
