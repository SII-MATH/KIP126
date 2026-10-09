"""Replay exact paper-class identities and the stated incoming bounds."""
import hashlib
import json
import sqlite3
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
report = json.loads((HERE / 'fact-boundary-audit.json').read_text())
database = ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
assert sha(database) == report['database_sha256']
c = sqlite3.connect(f'file:{database}?mode=ro', uri=True)
assert len(report['records']) == 4
for row in report['records']:
    s, t = row['degree']
    raw = list(c.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?',
                         (row['raw'][0],)).fetchone())
    assert raw == row['raw'] and raw[4:] == [None, 9000]
    assert raw[1:3] == [s, t] and int(raw[3]) == row['local']
    basis = c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', (s, t)).fetchall()
    assert basis[row['local']][:2] == (row['E2_basis_id'], row['monomial'])
    assert row['incoming_possible_pages'] == list(range(2, s + 1))
    assert row['first_forced_absent_incoming_page'] == s + 1
    assert row['outgoing_target_stem'] == t - s - 1
    manifest_path = ROOT / row['source_manifest']
    assert sha(manifest_path) == row['manifest_sha256']
    manifest = json.loads(manifest_path.read_text())
    assert manifest['sha256'] == report['database_sha256']
    for degree, rows in manifest['rows'].items():
        ds, dt = map(int, degree.strip('()').split(','))
        expected = [list(x) for x in c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', (ds, dt))]
        assert rows == expected
result = dict(status='exact_four_class_boundary_review_passed', failures=[],
              inputs={str(p.relative_to(ROOT)): sha(p) for p in [HERE / 'fact-boundary-audit.json',
                       Path(__file__), *[ROOT / r['source_manifest'] for r in report['records']]]},
              database_sha256=sha(database),
              limitation='No negative-filtration, outgoing all-page vanishing, later prefix, or Adams realization instance has been supplied for these four classes.')
(HERE / 'review.json').write_text(json.dumps(result, indent=2) + '\n')
print('four exact classes; raw NULL9000 preserved; incoming bounds14/10/11/12; no unproved permanence instance')
