import hashlib
import json
import re
from pathlib import Path

p = Path(__file__).resolve().parent
r = p.parent
sha = lambda f: hashlib.sha256(f.read_bytes()).hexdigest()
rows = json.loads((p/'compile-audit.json').read_text())
assert len(rows) == 3 and {row['module'] for row in rows} == {'Imports','Checks','Semantics'}
count = 0
for row in rows:
    name = row['module']
    assert row['exit_code'] == 0
    assert row['source_sha256'] == sha(p/f'{name}.lean')
    assert row['log_sha256'] == sha(p/f'{name}.log')
    assert row['olean_sha256'] == sha(r/f'.lake/build/lib/lean/Row3992BranchCertificates/{name}.olean')
    log = (p/f'{name}.log').read_text()
    assert 'error:' not in log
    axioms = re.findall(r'depends on axioms: \[([^]]*)\]', log)
    assert len(axioms) == (0 if name=='Imports' else 2)
    assert all({v.strip() for v in a.split(',')} <= {'propext','Classical.choice','Quot.sound'} for a in axioms)
    count += len(axioms)
for name,digest in json.loads((p/'review.json').read_text())['inputs_sha256'].items():
    assert sha(r/name) == digest, name
print(f'Three current modules; {count} standard-only axiom reports; exhaustive eight-branch review current')
