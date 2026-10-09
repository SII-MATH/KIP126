"""Regenerate only owned finite inputs and prove exact byte reproducibility."""
import hashlib
import importlib.util
import json
from pathlib import Path
import sqlite3
import subprocess

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
files=[HERE/'search.json',HERE/'source-d2.json',HERE/'products.json',HERE/'Data.lean',
       HERE/'Semantics.lean',HERE/'D2Links.lean',*sorted((HERE/'wire').glob('*.json'))]
before={str(p.relative_to(HERE)):sha(p) for p in files}
spec=importlib.util.spec_from_file_location('helper',ROOT/'Row3147MapSearch/search_lifted.py')
helper=importlib.util.module_from_spec(spec);spec.loader.exec_module(helper)
sql=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
b=helper.comparison(sql,'S0',16,137,helper.metadata(sql))
(HERE/'source-d2.json').write_text(json.dumps(b,indent=2)+'\n')
for script in ['search.py','products.py','package_semantics.py']:
    with (HERE/(script+'.reproduction.log')).open('w') as stream:
        subprocess.run(['python3',str(HERE/script)],check=True,stdout=stream,stderr=subprocess.STDOUT)
assert before=={str(p.relative_to(HERE)):sha(p) for p in files}
(HERE/'reproduction.json').write_text(json.dumps(dict(status='byte_identical',files=before),indent=2)+'\n')
print(f'PASS:{len(files)}generatedfiles byte-identical')
