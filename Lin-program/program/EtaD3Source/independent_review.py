"""Independent low-degree oracle for the actual eta d3 implication."""
import hashlib
import itertools
import json
from pathlib import Path
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
sql = sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro', uri=True)
expected = {'h0': (1, 1, '0,1'), 'eta': (1, 2, '1,1'),
            'h0Target': (4, 3, None), 'etaTarget': (4, 4, '0,4'),
            'zeroProductTarget': (2, 3, None), 'detectTarget': (5, 5, '0,5')}
for name, (s, t, monomial) in expected.items():
    rows = list(sql.execute('SELECT mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', (s, t)))
    assert rows == ([] if monomial is None else [(monomial, '')])
    incoming = list(sql.execute('SELECT mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=?', (s-2, t-1)))
    outgoing = list(sql.execute('SELECT mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=?', (s+2, t+1)))
    assert incoming == ([('0,2', '')] if name == 'h0Target' else [])
    assert outgoing == ([('0,3', '')] if name == 'eta' else
                        [('0,4', '')] if name == 'zeroProductTarget' else [])
    w = load(HERE / f'{name}.json')
    dim = int(monomial is not None)
    assert (w['m'], w['n'], w['k'], w['h']) == (dim, len(incoming), len(outgoing), dim)
    assert w['outgoing'] == [False] * (dim * len(outgoing))
    assert w['incoming'] == [False] * (dim * len(incoming))
    assert w['projection'] == w['inclusion'] == ([True] if dim else [])
assert sql.execute('SELECT rel,s,t FROM S0_AdamsE2_relations WHERE rowid=1').fetchone() == ('0,1,1,1', 2, 3)
assert load(HERE / 'zeroProduct.json')['tensor'] == []
assert load(HERE / 'detectProduct.json')['tensor'] == [True]
assert load(HERE / 'detectProduct0.json')['input'] == [[0, 0, 0, 0, 0]]
assert load(HERE / 'detectProduct0.json')['output'] == [[0, 0, 0, 0, 0]]

# Every zero-preserving F2 differential on the one-dimensional eta carrier
# is tested against the actual Leibniz equation with named h0 = 1.
accepted = []
for d_eta in itertools.product((0, 1), repeat=2):
    if d_eta[0] != 0:
        continue
    leibniz = all(0 == (0 ^ (1 & d_eta[b])) for b in (0, 1))
    if leibniz:
        assert d_eta == (0, 0)
        accepted.append(d_eta)
assert accepted == [(0, 0)]
for row in (1, 3):
    assert sql.execute('SELECT diff,level FROM S0_AdamsE2_ss WHERE id=?', (row,)).fetchone() == (None, 9000)
reports = 0
files = []
for name in ['Data', 'Basic', 'Semantics', 'Actual']:
    source, log = HERE / f'{name}.lean', HERE / f'{name}.log'
    record = load(HERE / f'{name}-compile.json')
    assert record['observed_exit_code'] == 0 and record['source_sha256'] == sha(source)
    assert record['log_sha256'] == sha(log) and 'sorryAx' not in log.read_text()
    reports += sum(line.startswith("'EtaD3Source.") for line in log.read_text().splitlines())
    files += [source, log]
assert reports == 14
result = dict(status='pass', findings=[], full_quotients=6, product_columns=2,
              axiom_reports=reports, accepted_differentials=accepted,
              raw_unknowns_retained=[1, 3],
              source_sha256={str(p.relative_to(ROOT)): sha(p) for p in files},
              scope='Conditional on whole actual quotient/product meanings; no topology theorem inferred.')
(HERE / 'independent-review.json').write_text(json.dumps(result, indent=2) + '\n')
print('PASS: six complete quotients, two products, unique zero eta differential, 14 standard reports')
