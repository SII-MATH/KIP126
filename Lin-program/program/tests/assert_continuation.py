from pathlib import Path
import json
r=Path(__file__).resolve().parents[1]
for directory,n,log,marker in [('page-transition-release/batches',51,'transition-kernel.log','PASS all 2512'),('staircase-release/batches',61,'staircase-kernel.log','PASS all 6003')]:
 files=sorted((r/directory).glob('*.lean'));assert len(files)==n
 for f in files:assert f.with_suffix('.olean').exists() and f.with_suffix('.olean').stat().st_mtime>=f.stat().st_mtime,f
 assert marker in (r/'tests'/log).read_text()
assert '258345 staircase bases match SQL' in (r/'tests/staircase-source-test.log').read_text()
assert 'Build completed successfully' in (r/'tests/continuation-build.log').read_text()
assert 'PropagationCertificates.MatrixNaturality.check_sound' in (r/'tests/continuation-sequential.log').read_text()
assert 'Checking ProofAudit' in (r/'tests/continuation-sequential.log').read_text()
assert 'error:' not in (r/'tests/continuation-sequential.log').read_text()
assert 'unexpected EOF' not in (r/'tests/continuation-sequential.log').read_text()
assert len(json.loads((r/'StaircaseCertificates/named_coordinates.json').read_text()))==14
print('PASS: 8515 additional real-data kernel theorems,112 batches,14 named expressions,full build and source consistency')
