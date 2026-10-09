"""Independent finite carrier oracle for derived coordinates and exact input binding."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
source = load(ROOT / 'Fact719TrajectoryCertificates/source.json')
database = ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
assert sha(database) == source['database_sha256']
sql = sqlite3.connect(f'file:{database}?mode=ro', uri=True)
row = list(sql.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2433').fetchone())
basis = list(sql.execute('SELECT id,mon,s,t,d2 FROM S0_AdamsE2_basis WHERE id=2433').fetchone())
assert row == [2433, 8, 130, '0', None, 9994]
assert basis == [2433, '1,1,323,1', 8, 130, '']
wires = {r: source['blocks'][f'b8_130_{r}']['wire'] for r in range(2, 6)}

def ev(bits, m, n, x):
    assert len(bits) == m*n
    return sum((sum(bool(bits[i*n+j]) and bool(x & (1 << j))
                    for j in range(n)) % 2) << i for i in range(m))

for r, w in wires.items():
    assert w['m'] == w['h'] == 1 and w['n'] == 0
    assert w['k'] == (0 if r == 3 else 1)
    assert not any(w['outgoing']) and w['projection'] == w['inclusion'] == [True]
    for v in range(2):
        assert ev(w['outgoing'], w['k'], 1, v) == 0
        assert ev(w['projection'], 1, 1, v) == v

counts = Counter()
# Allow the actual zero to have either carrier label; coordinates recover it.
for names in itertools.product(list(itertools.permutations(range(2))), repeat=5):
    labels = dict(zip(range(2, 7), names))
    inverse = {r: {v: i for i, v in enumerate(p)} for r, p in labels.items()}
    actual_zero = {r: inverse[r][0] for r in range(2, 7)}
    add = lambda r, x, y: inverse[r][labels[r][x] ^ labels[r][y]]
    coordinates = dict(enumerate(labels[2]))
    raw = inverse[2][1]
    endpoint = raw
    for r, w in wires.items():
        outgoing = lambda x: ev(w['outgoing'], w['k'], 1, coordinates[x])
        incoming = {inverse[r][ev(w['incoming'], 1, 0, 0)]}
        cycles = [x for x in coordinates if outgoing(x) == 0]
        quotient = lambda x: inverse[r+1][ev(w['projection'], 1, 1, coordinates[x])]
        following = {}
        for x in cycles:
            nxt, finite = quotient(x), ev(w['projection'], 1, 1, coordinates[x])
            assert nxt not in following or following[nxt] == finite
            following[nxt] = finite
            counts['derived_coordinates'] += 1
        assert set(following) == {0, 1} and set(following.values()) == {0, 1}
        assert following[actual_zero[r+1]] == 0
        for x, y in itertools.product(cycles, repeat=2):
            assert (quotient(x) == quotient(y)) == (add(r, x, y) in incoming)
            assert quotient(add(r, x, y)) == add(r+1, quotient(x), quotient(y))
            counts['quotient_pairs'] += 1
        for x, y in itertools.product(following, repeat=2):
            assert following[add(r+1, x, y)] == following[x] ^ following[y]
            counts['derived_addition_pairs'] += 1
        assert coordinates[endpoint] == 1 and endpoint in cycles and endpoint not in incoming
        endpoint = quotient(endpoint)
        assert endpoint != actual_zero[r+1] and following[endpoint] == 1
        coordinates = following
        counts['same_raw_steps'] += 1
    assert labels[2][raw] == 1 and endpoint != actual_zero[6]
    assert labels[2][actual_zero[2]] != 1
    counts['wrong_zero_inputs_rejected'] += 1
    counts['models'] += 1
assert counts['models'] == 32 and counts['same_raw_steps'] == 128
compiled = {}
reports = 0
for name in ['Basic', 'Trace', 'Tactic']:
    rec = load(HERE / (name + '-compile.json'))
    src, log = HERE / (name + '.lean'), HERE / (name + '.log')
    assert rec['observed_exit_code'] == 0 and rec['source_sha256'] == sha(src)
    assert rec['log_sha256'] == sha(log)
    axioms = re.findall(r"'[^']+' depends on axioms: \[([^\]]*)\]", log.read_text())
    for a in axioms:
        assert set(filter(None, map(str.strip, a.split(',')))) <= {'propext', 'Classical.choice', 'Quot.sound'}
    reports += len(axioms) + len(re.findall(r"'[^']+' does not depend on any axioms", log.read_text()))
    assert not re.search(r'\b(sorry|admit|axiom|native_decide|unsafe)\b', src.read_text())
    compiled[name] = rec
result = dict(status='passed', counts=dict(counts), raw_row=row, raw_basis=basis,
              supplied_tracked_coordinates=['E2'], constructed_coordinates=['E3', 'E4', 'E5', 'E6'],
              compiled=compiled, axiom_reports=reports,
              scope='Actual finite model oracle; actual sphere E2 and differential comparisons remain caller proofs.')
(HERE / 'model-check.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps({k: v for k, v in result.items() if k != 'compiled'}, indent=2))
