"""Reproduce exactly the exported matrices, quotients and generated Lean leaves."""
import hashlib
import json
from pathlib import Path
import subprocess
import sys

HERE=Path(__file__).resolve().parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
paths=sorted((HERE/'wire').glob('*.json'))+sorted((HERE/'quotient').glob('*.json'))
paths += [HERE/n for n in ['Maps.lean','Comparison.lean','map-provenance.json']]
before={str(p.relative_to(HERE)):sha(p) for p in paths}
for script in ['generate_maps.py','generate_comparison.py']:
    with (HERE/(script.removesuffix('.py')+'-reproduction.log')).open('w') as stream:
        subprocess.run([sys.executable,str(HERE/script)],check=True,stdout=stream,stderr=subprocess.STDOUT)
after={str(p.relative_to(HERE)):sha(p) for p in paths}
assert before==after
out=dict(status='byte_identical',files=len(paths),sha256=after)
(HERE/'reproduction.json').write_text(json.dumps(out,indent=2)+'\n')
print(len(paths),'generated files byte-identical')
