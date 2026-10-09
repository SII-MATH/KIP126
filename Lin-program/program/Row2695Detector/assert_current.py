"""Check actual exits, source/wire/provenance hashes, and permitted axioms."""
import hashlib
import json
from pathlib import Path
import re

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
MODULES=['Actual','Comparison','Naturality','Matches','MapSemantics','Tests','CurrentImports']


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


rows=json.loads((HERE/'compile-audit.json').read_text())
assert [x['module'] for x in rows]==MODULES
for row in rows:
    name=row['module']
    assert row['exit_code']==0
    assert row['source_sha256']==sha(HERE/f'{name}.lean')
    assert row['log_sha256']==sha(HERE/f'{name}.log')
    assert row['olean_sha256']==sha(ROOT/f'.lake/build/lib/lean/Row2695Detector/{name}.olean')
    for path,digest in row['inputs_sha256'].items():
        assert sha(HERE/path)==digest, f'compile provenance changed: {path}'
    source=(HERE/f'{name}.lean').read_text()
    assert not re.search(r'\b(sorry|axiom|native_decide)\b',source)
    log=(HERE/f'{name}.log').read_text()
    assert 'sorryAx' not in log and 'error:' not in log
    for values in re.findall(r'depends on axioms: \[([^]]*)\]',log):
        assert set(filter(None,map(str.strip,values.split(',')))) <= {'propext','Classical.choice','Quot.sound'}
    if name=='CurrentImports':
        paths=sorted((HERE/'wire').glob('*.json'))
        assert len(paths)==6 and row['imported_sha256']=={str(p.relative_to(HERE)):sha(p) for p in paths}
review=json.loads((HERE/'review.json').read_text())
for path,digest in review['input_sha256'].items():
    assert sha(ROOT/path)==digest, f'independent audit changed: {path}'
for path,digest in review['sources'].items():
    assert sha(ROOT/'upstream/kervaire-49'/path)==digest
assert review['script_sha256']==sha(HERE/'review.py')
assert review['unknown_retained']==[2695,9,134,'2',None,9000]
assert review['source_basis_id']==2697 and review['distinct_same_id_E2_basis_is_noncycle']
print('Row2695: 7 current successful leaf compiles; 6 exact imports; SQL provenance and allowed axioms current')
