"""Check actual exit codes and current source/imported-data fingerprints."""
import hashlib
import json
import re
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
MODULES=['Actual','Comparison','Naturality','Matches','MapSemantics','Tests','CurrentImports']
def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
rows=json.loads((HERE/'compile-audit.json').read_text())
assert [x['module'] for x in rows]==MODULES
for x in rows:
    name=x['module']
    assert x['exit_code']==0
    assert x['source_sha256']==sha(HERE/f'{name}.lean')
    assert x['log_sha256']==sha(HERE/f'{name}.log')
    assert x['olean_sha256']==sha(ROOT/f'.lake/build/lib/lean/Row3019Detector/{name}.olean')
    if name=='CurrentImports':
        paths=list((HERE/'wire').glob('*.json'))
        assert len(paths)==6
        assert x['imported_sha256']=={str(p.relative_to(HERE)):sha(p) for p in sorted(paths)}
review=json.loads((HERE/'review.json').read_text())
for path,digest in review['input_sha256'].items():assert sha(ROOT/path)==digest
for path,digest in review['sources'].items():assert sha(ROOT/'upstream/kervaire-49'/path)==digest
assert review['script_sha256']==sha(HERE/'review.py')
axiom_sets=[]
for name in MODULES:
    text=(HERE/f'{name}.log').read_text()
    assert not any(x in text for x in ['uses \'sorry\'','error:','error('])
    axiom_sets.extend(re.findall(r'depends on axioms: \[([^]]*)\]',text))
assert len(axiom_sets)==6
for group in axiom_sets:
    assert {x.strip() for x in group.split(',')} <= {'propext','Classical.choice','Quot.sound'}
regeneration=json.loads((HERE/'regeneration-review.json').read_text())
assert regeneration['deterministic']
for path,digest in {**regeneration['artifacts'],**regeneration['scripts']}.items():
    assert sha(HERE/path)==digest
print('Row3019: 7 current successful leaf compiles; 6 exact fresh imports; 6 standard-only axiom sets; SQL review current')
