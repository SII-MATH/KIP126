import hashlib,json,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent
subprocess.run(['python3',str(p/'review.py')],check=True)
files=['Bases.lean','Aggregate.lean'];old={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in files}
subprocess.run(['python3',str(p/'generate_lean.py')],check=True)
assert old=={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in files}
x=json.loads((p/'inventory.json').read_text());text=(p/'Bases.lean').read_text()
assert text.count('_basis : IsBasis')==45 and text.count('_coordinates :')==105
for row in x['staircase']:assert f'theorem row{row["staircase_id"]}_coordinates' in text
print('45 complete basis certificates/105 exact columns reviewed; deterministic Lean source')
