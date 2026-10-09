"""Root review: exhaustive unknown-column constraint and complete quotients."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
frozen = load(HERE / 'frozen-source.json')
for path, digest in frozen['files'].items():
    assert sha(ROOT / path) == digest
count = Counter()


def cols(bits, rows, columns):
    assert len(bits) == rows * columns
    return [sum(int(bits[i*columns+j]) << i for i in range(rows)) for j in range(columns)]


def ev(columns, value):
    assert value < 1 << len(columns)
    result = 0
    for j, column in enumerate(columns):
        if value >> j & 1:
            result ^= column
    return result


def comparison(w):
    k, m, n, h = [w[f] for f in ['k', 'm', 'n', 'h']]
    a, b, i, p, u, d = [cols(w[f], r, c) for f, r, c in [
        ('outgoing', k, m), ('incoming', m, n), ('inclusion', m, h),
        ('projection', h, m), ('up', n, m), ('down', m, k)]]
    cycles = {x for x in range(1 << m) if ev(a, x) == 0}
    boundaries = {ev(b, x) for x in range(1 << n)}
    assert boundaries <= cycles
    assert {ev(p, x) for x in cycles} == set(range(1 << h))
    for x in range(1 << h):
        assert ev(i, x) in cycles and ev(p, ev(i, x)) == x
    for j in range(m):
        assert ev(i, p[j]) ^ ev(b, u[j]) ^ ev(d, a[j]) == 1 << j
    for x, y in itertools.product(cycles, repeat=2):
        assert (ev(p, x) == ev(p, y)) == (x ^ y in boundaries)
        count['quotient_pairs'] += 1
    count['comparisons'] += 1
    return a, b, i, p


conn = sqlite3.connect('file:' + str(ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db') + '?mode=ro', uri=True)
assert conn.execute('SELECT mon,s,t FROM S0_AdamsE2_basis WHERE id=2573').fetchone() == ('368,1', 6,132)
assert conn.execute('SELECT base,diff,level FROM S0_AdamsE2_ss WHERE id=2574').fetchone() == ('0', None,9997)
assert conn.execute('SELECT base,diff,level FROM S0_AdamsE2_ss WHERE id=2866').fetchone() == ('0','3',9997)
initial = load(ROOT / 'Fact715Source2574/source.json')
blocks = [(tuple(x['degree']), x['wire']) for x in initial['comparisons'].values()]
blocks += [((3,130), load(HERE / 'wire/sourceIncoming2.json')),
           ((9,134), load(HERE / 'wire/current2.json')),
           ((12,136), load(HERE / 'wire/upper2.json')),
           ((9,134), load(ROOT / 'Row2574Detector/target.json'))]
for (s, t), w in blocks:
    a, b, _, _ = comparison(w)
    rows = [conn.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',
                         degree).fetchall() for degree in [(s-2,t-1),(s,t),(s+2,t+1)]]
    assert [len(x) for x in rows] == [w['n'],w['m'],w['k']]
    for columns, values in [(a,rows[1]),(b,rows[0])]:
        assert all(row[2] is not None for row in values)
        assert columns == [sum(1 << int(x) for x in row[2].split(',') if x) for row in values]
        count['SQL_d2_columns'] += len(columns)
    count['complete_SQL_degrees'] += 3

current2 = load(HERE / 'wire/current2.json')
old2 = load(ROOT / 'Row2574Detector/target.json')
newp = cols(current2['projection'], 3, 5)
oldi = cols(old2['inclusion'], 5, 3)
oldp = cols(old2['projection'], 3, 5)
newi = cols(current2['inclusion'], 5, 3)
change = [ev(newp, x) for x in oldi]
assert change == [4,1,2]
for x in range(8):
    assert ev(oldp, ev(newi, ev(change, x))) == x
assert ev(newp, 4) == 1

provenance = load(ROOT / 'Row2574Detector/products-h2-provenance.json')
product = [sum(1 << x for x in r['target_coordinates']) for r in provenance if 2695 <= r['source_id'] < 2700]
assert len(product) == 5
target = initial['comparisons']['target']['wire']
project = cols(target['projection'], target['h'],target['m'])
tensor = [ev(project,ev(product,x)) for x in newi]
assert tensor == [0,2,0]
candidates = [x for x in range(8) if ev(tensor,x) == 2]
assert candidates == [2,3,6,7]
complete = [x for x in candidates if ev([0,0,1],x) == 0]
assert complete == [2,3]
for branch in [0,1]:
    source = load(HERE / 'wire' / f'source3_{branch}.json')
    target = load(HERE / 'wire' / f'current3_{branch}.json')
    sa,sb,si,sp = comparison(source)
    ta,tb,ti,tp = comparison(target)
    assert sa == tb == [2+branch] and sb == [0] and ta == [0,0,1]
    assert source['h'] == 0 and target['h'] == 1
    assert ti == [1] and tp == [1,branch,0]
    assert ev(ta,1) == 0 and ev(tp,1) == 1
    for permutation in itertools.permutations(range(8)):
        zero = permutation.index(0)
        named = permutation.index(1)
        boundary = permutation.index(2+branch)
        assert named not in [zero,boundary]
        assert ev(tp,permutation[named]) != ev(tp,permutation[zero])
        count['full_E3_relabelled_models'] += 1
result = dict(status='passed', findings=[], counts=dict(count),
    modules=len(frozen['modules']), frozen_files=len(frozen['files']),
    h2_allowed_columns=candidates, squared_zero_allowed_columns=complete,
    scope='Actual branch is a coordinate of the actual differential, not an assumed value. '
          'Whole source and target meanings use complete incoming/outgoing spaces. '
          'Same original target raw2 has nonzero E4 in both branches. '
          'Known record2866, full E2/product meanings and target d3 meanings remain explicit.')
(HERE / 'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
