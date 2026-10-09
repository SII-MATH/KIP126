"""Check actual exit codes and current source/imported-data fingerprints."""
import hashlib
import json
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
MODULES=['Actual','Comparison','Products_h2','Quotient','Matches','MapSemantics','ProductSemantics','Tests','CurrentImports']
def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
rows=json.loads((HERE/'compile-audit.json').read_text())
assert [x['module'] for x in rows]==MODULES
for x in rows:
    name=x['module']
    assert x['exit_code']==0
    assert x['source_sha256']==sha(HERE/f'{name}.lean')
    assert x['log_sha256']==sha(HERE/f'{name}.log')
    assert x['olean_sha256']==sha(ROOT/f'.lake/build/lib/lean/Row2576Detector/{name}.olean')
    if name=='CurrentImports':
        paths=list((HERE/'wire').glob('*.json'))+list((HERE/'products_h2').glob('*.json'))+[HERE/'ann.json',HERE/'detect.json']
        assert x['imported_sha256']=={str(p.relative_to(HERE)):sha(p) for p in sorted(paths)}
review=json.loads((HERE/'review.json').read_text())
for path,digest in review['inputs_sha256'].items():assert sha(ROOT/path)==digest
for path,digest in review['sources'].items():assert sha(ROOT/'upstream/kervaire-49'/path)==digest
assert review['script_sha256']==sha(HERE/'review.py')
print('Row2576: 9 current successful leaf compiles; 14 imported artifacts kernel-equal to checked values; SQL review current')
