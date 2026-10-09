"""Independent exact append, vector quotient, and pair consistency review."""
import hashlib
import itertools
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()


def entries(path):
    data = load(path)
    return data['entries'] if isinstance(data, dict) else data


def key(e):
    k = e['key']
    return k['object'], k['page'], k['s'], k['t']


def vectors(n):
    return list(itertools.product((False, True), repeat=n))


def matrix(bits, rows, cols, v):
    assert len(bits) == rows * cols and len(v) == cols
    return tuple(sum(bits[i * cols + j] and v[j] for j in range(cols)) % 2 == 1
                 for i in range(rows))


base = entries(ROOT / 'Fact713DC2h6ComparisonFamily/family.json')
whole = entries(HERE / 'family.json')
extra = entries(HERE / 'extra.json')
assert whole == base + extra and len(whole) == 1284 and len(extra) == 12
assert len({key(e) for e in whole}) == len(whole)
checked_vectors = quotient_pairs = 0
for e in extra:
    w = e['wire']
    assert w['version'] == 1
    k, m, n, h = (w[a] for a in ['k', 'm', 'n', 'h'])
    out = lambda x: matrix(w['outgoing'], k, m, x)
    inc = lambda x: matrix(w['incoming'], m, n, x)
    proj = lambda x: matrix(w['projection'], h, m, x)
    incl = lambda x: matrix(w['inclusion'], m, h, x)
    image = {inc(v) for v in vectors(n)}
    cycles = [v for v in vectors(m) if not any(out(v))]
    assert all(not any(out(v)) for v in image)
    for v in vectors(h):
        assert not any(out(incl(v))) and proj(incl(v)) == v
    for x in cycles:
        assert (x in image) == (not any(proj(x)))
        for y in cycles:
            assert (proj(x) == proj(y)) == (tuple(a != b for a, b in zip(x, y)) in image)
            quotient_pairs += 1
    checked_vectors += len(cycles) + len(vectors(h)) + len(image)
    object_, r, s, t = key(e)
    assert object_ == 'S0'
    wire_path = HERE / f'wire/b_S0_{s}_{t}_d{r}.json'
    assert load(wire_path) == w

adjacent = consecutive = 0
for a in whole:
    ao, ar, a_s, at = key(a)
    for b in whole:
        bo, br, bs, bt = key(b)
        if ao == bo and br == ar and bs == a_s + ar and bt == at + ar - 1:
            assert a['wire']['k'] == b['wire']['m']
            assert a['wire']['m'] == b['wire']['n']
            assert a['wire']['outgoing'] == b['wire']['incoming']
            adjacent += 1
        if ao == bo and br == ar + 1 and bs == a_s and bt == at:
            assert a['wire']['h'] == b['wire']['m']
            consecutive += 1
assert (adjacent, consecutive) == (977, 784)
keys = {key(e) for e in whole}
assert all(('S0', r, 9, 132) in keys for r in range(2, 8))
assert ('S0', 8, 9, 132) not in keys
source = next(e['wire'] for e in extra if key(e) == ('S0', 3, 17, 138))
zero_source = load(HERE / 'wire/zero_source_d3.json')
assert source['outgoing'] == [True, False] and source['h'] == 0
assert zero_source['outgoing'] == [False, False] and zero_source['h'] == 1
snapshot = load(HERE / 'residual-snapshot.json')
for block in snapshot['new_comparisons'].values():
    assert 'S0:20,140:d3' not in block['predecessors']
    assert all(not (u['source'] == [20, 140] and u['page'] >= 4) for u in block['uses'])
state = (True, True)
for page in range(2, 8):
    w = next(e['wire'] for e in whole if key(e) == ('S0', page, 9, 132))
    assert not any(matrix(w['outgoing'], w['k'], w['m'], state))
    boundaries = {matrix(w['incoming'], w['m'], w['n'], x) for x in vectors(w['n'])}
    assert state not in boundaries
    state = matrix(w['projection'], w['h'], w['m'], state)
assert state == (True,)
inputs = [HERE / 'family.json', HERE / 'extra.json',
          ROOT / 'Fact713DC2h6ComparisonFamily/family.json', *sorted(HERE.glob('*.lean'))]
report = dict(status='pass', findings=[], complete_entries=1284, extra_entries=12,
              independent_vectors=checked_vectors, quotient_pairs=quotient_pairs,
              adjacent=adjacent, consecutive=consecutive,
              directed_pairs=len(whole)**2, named_pages=list(range(2, 8)), missing_named_page=8,
              input_sha256={str(p.relative_to(ROOT)): sha(p) for p in inputs},
              scope='Residual branch finite E8 only; zero branch retains E7 and another d4 obligation.',
              target_later_selection_unused=True, residual_next_coordinate=list(state))
(HERE / 'independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({k: v for k, v in report.items() if k != 'input_sha256'}))
