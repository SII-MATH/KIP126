"""Verify deterministic regeneration without touching registered dependencies."""
import hashlib
import json
from pathlib import Path
import subprocess
import sys

HERE = Path(__file__).resolve().parent
paths = sorted([*HERE.glob('*-family.json'),
                *[HERE / (scope + '.lean') for scope in ['Data','Extra','ZeroB0','ZeroB1']],
                *HERE.joinpath('branches').glob('*.json'), *HERE.joinpath('wire').glob('*.json'), HERE / 'extra.json'])
snapshot = lambda: {str(p.relative_to(HERE)): hashlib.sha256(p.read_bytes()).hexdigest() for p in paths}
before = snapshot()
commands = []
for filename in ['generate.py', 'package.py', 'audit.py']:
    run = subprocess.run([sys.executable, str(HERE / filename)], check=False)
    commands.append(dict(script=filename, observed_exit_code=run.returncode))
    if run.returncode:
        raise SystemExit(run.returncode)
after = snapshot()
assert before == after
result = dict(status='byte_identical', files=len(before), sha256=after, commands=commands)
(HERE / 'reproduction.json').write_text(json.dumps(result, indent=2) + '\n')
print('Reproduced', len(before), 'files byte identically')
