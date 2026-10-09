"""Reproduce the screen and independently replay all map and quotient data."""
import importlib.util
import json
from pathlib import Path
import sqlite3
import subprocess
import sys

here = Path(__file__).resolve().parent
root = here.parent
before = (here / 'lifted-search.json').read_bytes()
subprocess.run([sys.executable, str(here / 'search.py')], check=True)
assert before == (here / 'lifted-search.json').read_bytes()
spec = importlib.util.spec_from_file_location('independent', root / 'Row3147MapSearch/review.py')
audit = importlib.util.module_from_spec(spec)
spec.loader.exec_module(audit)
audit.HERE = here
result = audit.run(rerun=False)
report = json.loads(before)
assert report['wrapper_sha256'] == audit.sha(here / 'search.py')
connection = sqlite3.connect(f'file:{root}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro', uri=True)
assert list(connection.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2695').fetchone()) == report['row']
for field, center in [('source_comparison', (9, 134)), ('target_comparison', (12, 136))]:
    saved = report[field]
    s, t = center
    groups = [[dict(id=i, mon=mon, d2=d2) for i, mon, d2 in connection.execute(
        'SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', degree)]
        for degree in [(s - 2, t - 1), (s, t), (s + 2, t + 1)]]
    assert groups == saved['rows']
    wire = saved['wire']
    assert [len(g) for g in groups] == [wire['n'], wire['m'], wire['k']]
    for matrix, rows, dimension in [('incoming', groups[0], wire['m']), ('outgoing', groups[1], wire['k'])]:
        columns = []
        for row in rows:
            assert row['d2'] is not None
            indices = list(map(int, row['d2'].split(','))) if row['d2'] else []
            assert indices == sorted(set(indices)) and all(0 <= i < dimension for i in indices)
            columns.append(indices)
        assert wire[matrix] == [i in column for i in range(dimension) for column in columns]
    audit.check_wire(wire)
assert report['target_comparison']['wire']['h'] == 1
result.update(deterministic_rerun=True, wrapper_sha256=audit.sha(here / 'search.py'),
              review_wrapper_sha256=audit.sha(Path(__file__)), exact_source=report['row'],
              recommendation='S0__DC2h6 has shift zero, zero source quotient and detects the full one-dimensional target; full actual map proof is still required.')
(here / 'review.json').write_text(json.dumps(result, indent=2, sort_keys=True) + '\n')
