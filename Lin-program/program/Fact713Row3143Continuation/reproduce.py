"""Reproduce generated package inputs without changing accepted content."""
import hashlib
import json
from pathlib import Path
import subprocess
import sys

HERE=Path(__file__).resolve().parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
paths=[HERE/'branches'/n for n in ['zero.json','residual_rebased.json','summary.json']]
paths += sorted((HERE/'wire').glob('*.json'))
paths += [HERE/n for n in ['Data.lean','ZeroExtra.lean','ZeroCross.lean','ZeroCoherence.lean',
    'ResidualExtra.lean','ResidualCross.lean','ResidualCoherence.lean',
    'zero-extra.json','zero-family.json','residual-extra.json','residual-family.json','source-d3.json']]
before={str(p.relative_to(HERE)):sha(p) for p in paths}
for script in ['generate.py','package.py']:
    with (HERE/(script.removesuffix('.py')+'-reproduction.log')).open('w') as log:
        subprocess.run([sys.executable,str(HERE/script)],check=True,stdout=log,stderr=subprocess.STDOUT)
after={str(p.relative_to(HERE)):sha(p) for p in paths}
assert before==after
result=dict(status='byte_identical',generated_files=len(paths),sha256=after)
(HERE/'reproduction.json').write_text(json.dumps(result,indent=2)+'\n')
print(len(paths),'generated files byte-identical')
