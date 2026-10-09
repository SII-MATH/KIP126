import json
from pathlib import Path
import subprocess
import tempfile

root = Path(__file__).resolve().parent
exe = root / 'trajectory-export'
source = root / 'trajectory_input.txt'
def run(page, path):
    return subprocess.run([str(exe), page, str(path)], text=True, capture_output=True)

good = run('2', source)
assert good.returncode == 0, good.stderr
assert good.stdout == run('2', source).stdout
assert json.loads(good.stdout) == json.loads((root / 'trajectory_generated.json').read_text())
assert good.stdout.strip() == json.dumps(json.loads(good.stdout), sort_keys=True, separators=(',', ':'))
for page in ['0', '1', '-2', 'two']:
    assert run(page, source).returncode != 0
with tempfile.TemporaryDirectory(dir=root) as tmp:
    path = Path(tmp) / 'stages.txt'
    for data in ['', '\n', '1 4 1 0100 1000\n', '1 1 1 1 1 1\n', '1 4 1 0100 1000 01\n']:
        path.write_text(data)
        result = run('2', path)
        assert result.returncode != 0 and not result.stdout
print('PASS trajectory producer: canonical deterministic output, page/shape/complex/empty rejection')
