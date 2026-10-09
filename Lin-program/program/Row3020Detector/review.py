"""Independently identify row3020 and reuse the full already audited C2 maps."""
import hashlib
import importlib.util
import json
import sqlite3
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
spec = importlib.util.spec_from_file_location('independent', ROOT / 'Row3147MapSearch/review.py')
audit = importlib.util.module_from_spec(spec)
spec.loader.exec_module(audit)
c = sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro', uri=True)
row = list(c.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=3020').fetchone())
assert row == [3020, 11, 138, '0', None, 9000]
rows = c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=11 AND t=138 ORDER BY id').fetchall()
assert rows[0] == (3018, '0,1,428,1', '')
data = json.loads((ROOT / 'Row3019Detector/comparison-source.json').read_text())
blocks = {b['tag']: b['wire'] for b in data}
for w in blocks.values():
    audit.check_wire(w)
sw, tw = blocks['source'], blocks['upperSource']
named = [1, 0, 0, 0]
assert audit.matmul(sw['projection'], named, 3, 4, 1) == [1, 0, 0]
assert not any(audit.matmul(sw['outgoing'], named, sw['k'], 4, 1))
source = json.loads((ROOT / 'Row3019Detector/source.json').read_text())
matrices = {tuple(b['source_degree']): b['wire']['algebra'] for b in source['matrices']}
m = matrices[11, 138]
assert not any(audit.matmul(m['entries'], named, m['rows'], 4, 1))
upper = matrices[14, 140]
image = audit.matmul(blocks['upperTarget']['projection'],
    audit.matmul(upper['entries'], tw['inclusion'], upper['rows'], upper['cols'], 2), 4, upper['rows'], 2)
assert image == [0, 0, 1, 0, 0, 0, 0, 1]
for v in [[1, 0], [0, 1], [1, 1]]:
    assert any(audit.matmul(image, v, 4, 2, 1))
reused = json.loads((ROOT / 'Row3019Detector/review.json').read_text())
assert not reused['failures']
for name, digest in reused['input_sha256'].items():
    assert sha(ROOT / name) == digest
result = dict(status='exact_named_source_and_reused_full_C2_detector_review_passed', raw=row,
              source_basis_id=3018, source_local_index=0, source_E3=[1, 0, 0],
              target_dimension=2, target_matrix=image, reused_matrices=6, new_matrices=0,
              sources=source['sources'], failures=[],
              inputs={str(p.relative_to(ROOT)): sha(p) for p in [HERE / 'Meaning.lean', Path(__file__),
                  ROOT / 'Row3019Detector/source.json', ROOT / 'Row3019Detector/comparison-source.json',
                  ROOT / 'Row3019Detector/review.json', ROOT / 'Row3019Detector/Naturality.lean',
                  ROOT / 'Row3019Detector/Matches.lean']})
(HERE / 'review.json').write_text(json.dumps(result, indent=2, sort_keys=True) + '\n')
print('row3020=E2basis3018/local0; full targetdim2; six existing C2 matrices reused; raw NULL unchanged')
