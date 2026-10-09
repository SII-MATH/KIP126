"""Reproduce both complete d2 comparisons and the recorded nonzero d3 input."""
import hashlib
import importlib.util
import json
from pathlib import Path
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
spec = importlib.util.spec_from_file_location('helper', ROOT / 'Row3147MapSearch/search_lifted.py')
helper = importlib.util.module_from_spec(spec)
spec.loader.exec_module(helper)
db = ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
c = sqlite3.connect('file:' + str(db) + '?mode=ro', uri=True)
metadata = helper.metadata(c)
blocks = {}
for name, s, t in [('source2', 13, 137), ('target2', 16, 139)]:
    block = helper.comparison(c, 'S0', s, t, metadata)
    assert block['wire'] == json.loads((HERE / 'wire' / (name + '.json')).read_text())
    blocks[name] = block
rows = list(c.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss '
                      'WHERE s=13 AND t=137 ORDER BY id'))
assert rows == [(2914, '3', '4', 2), (2915, '0', '0', 3),
                (2916, '1', None, 9000), (2917, '2', '0', 9997)]
raw = list(c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis '
                     'WHERE s=13 AND t=137 ORDER BY id'))
assert raw[2] == (2916, '7,1,275,1', '')
out = dict(database_sha256=hashlib.sha256(db.read_bytes()).hexdigest(),
           complete_comparisons=blocks, staircase_source_rows=rows,
           raw_source_basis=raw,
           recorded_event=dict(staircase_id=2917, raw_basis_id=2916,
                               source_local=2, target_local=0, page=3),
           scope='Complete finite d2 comparisons and stored nonzero d3 provenance. '
                 'Actual E2 and differential interpretations remain explicit Lean premises; '
                 'unknown source rows remain unknown.')
(HERE / 'source.json').write_text(json.dumps(out, indent=2) + '\n')
print('PASS: complete source and target d2 comparisons; row2917 binds raw basis2916/local2')
