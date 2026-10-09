"""Check actual exit codes and current source/imported-data fingerprints."""
import hashlib
import json
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
MODULES=['Actual','Comparison','Target','Source','Matches','MapSemantics','ImportedBoundary','Tests','CurrentImports']
def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
rows=json.loads((HERE/'compile-audit.json').read_text())
assert [x['module'] for x in rows]==MODULES
lake=json.loads((HERE/'lake-build-audit.json').read_text()) if (HERE/'lake-build-audit.json').exists() else None
if lake:
    assert lake['exit_code']==0
    log=ROOT/lake['log']
    assert sha(log)==lake['log_sha256']
    assert 'Build completed successfully (2285 jobs).' in log.read_text()
    assert list(lake['modules'])==MODULES
for x in rows:
    name=x['module']
    assert x['exit_code']==0
    assert x['source_sha256']==sha(HERE/f'{name}.lean')
    assert x['log_sha256']==sha(HERE/f'{name}.log')
    current_olean=sha(ROOT/f'.lake/build/lib/lean/Row2576D4Detector/{name}.olean')
    if lake:
        entry=lake['modules'][name]
        assert entry['source_sha256']==x['source_sha256']
        assert entry['olean_sha256']==current_olean
        assert entry['build_record'] in log.read_text()
        assert f'Built Row2576D4Detector.{name} (' in entry['build_record']
    else:
        assert x['olean_sha256']==current_olean
    if name=='CurrentImports':
        paths=list((HERE/'wire').glob('*.json'))
        assert len(paths)==12
        assert x['imported_sha256']=={str(p.relative_to(HERE)):sha(p) for p in sorted(paths)}
        if lake: assert lake['imported_sha256']==x['imported_sha256']
review=json.loads((HERE/'review.json').read_text())
for path,digest in review['input_sha256'].items():assert sha(ROOT/path)==digest
for path,digest in review['sources'].items():assert sha(ROOT/'upstream/kervaire-49'/path)==digest
assert review['script_sha256']==sha(HERE/'review.py')
print('Row2576D4: 9 verified modules; 12 imported artifacts kernel-equal to checked values; SQL review current; current build = '+('Lake2285' if lake else 'direct'))
