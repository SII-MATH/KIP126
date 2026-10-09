"""Regenerate all four families and their common balanced tree byte for byte."""
import hashlib
import json
from pathlib import Path
import subprocess
import sys

HERE=Path(__file__).resolve().parent
files=sorted([*HERE.glob('*-family.json'),*HERE.joinpath('branches').glob('*.json'),
              HERE/'data-audit.json',HERE/'TreeData.lean',HERE/'trees.json'])
snapshot=lambda:{str(p.relative_to(HERE)):hashlib.sha256(p.read_bytes()).hexdigest() for p in files}
before=snapshot();commands=[]
for name in ['generate.py','package_data.py','generate_tree.py','audit.py']:
    result=subprocess.run([sys.executable,str(HERE/name)],check=False,capture_output=True,text=True)
    commands.append(dict(script=name,observed_exit_code=result.returncode))
    if result.returncode:
        print(result.stdout+result.stderr);raise SystemExit(result.returncode)
assert before==snapshot()
(HERE/'reproduction.json').write_text(json.dumps(dict(status='byte_identical',files=len(files),
    sha256=before,commands=commands),indent=2)+'\n')
print('Reproduced',len(files),'files byte identically')
