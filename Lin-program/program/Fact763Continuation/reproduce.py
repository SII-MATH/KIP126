"""Regenerate owned finite files and require byte-for-byte reproducibility."""
import hashlib
import json
from pathlib import Path
import subprocess
import sys

HERE=Path(__file__).resolve().parent
paths=[HERE/'Data.lean',HERE/'source.json',*sorted((HERE/'wire').glob('*.json'))]
snapshot=lambda:{str(p.relative_to(HERE)):hashlib.sha256(p.read_bytes()).hexdigest() for p in paths}
before=snapshot()
commands=[]
for name in ['generate.py','audit.py']:
    run=subprocess.run([sys.executable,str(HERE/name)])
    commands.append(dict(script=name,exit_code=run.returncode))
    assert run.returncode==0
assert before==snapshot()
(HERE/'reproduction.json').write_text(json.dumps(dict(status='byte_identical',files=before,
    commands=commands),indent=2)+'\n')
print(len(before),'files byte-identical')
