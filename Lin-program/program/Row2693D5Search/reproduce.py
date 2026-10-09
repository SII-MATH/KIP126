"""Check byte-identical local certificate regeneration."""
import hashlib
import json
from pathlib import Path
import subprocess
import sys

HERE=Path(__file__).resolve().parent
paths=sorted([*HERE.joinpath('wire').glob('*.json'),HERE/'Data.lean',HERE/'source-products.json'])
snapshot=lambda:{str(p.relative_to(HERE)):hashlib.sha256(p.read_bytes()).hexdigest() for p in paths}
before=snapshot();commands=[]
for name in ['generate.py','audit.py']:
 run=subprocess.run([sys.executable,str(HERE/name)])
 commands.append(dict(script=name,observed_exit_code=run.returncode))
 if run.returncode:raise SystemExit(run.returncode)
after=snapshot();assert before==after
(HERE/'reproduction.json').write_text(json.dumps(dict(status='byte_identical',files=len(paths),
 sha256=after,commands=commands),indent=2)+'\n')
print('Reproduced',len(paths),'files byte identically')
