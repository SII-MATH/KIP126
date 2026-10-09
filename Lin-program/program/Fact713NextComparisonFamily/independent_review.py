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


base = entries(ROOT / 'Fact713Row2773ComparisonFamily/family.json')
whole = entries(HERE / 'family.json')
extra = entries(HERE / 'extra.json')
assert whole == base + extra and len(whole) == 1257 and len(extra) == 8
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
    wire_path = ROOT / f'Fact713NextSourceSearch/wires/b_S0_{s}_{t}_d{r}.json'
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
assert (adjacent, consecutive) == (954, 757)
keys = {key(e) for e in whole}
assert all(('S0', r, 9, 132) in keys for r in range(2, 7))
assert ('S0', 7, 9, 132) not in keys
inputs = [HERE / 'family.json', HERE / 'extra.json',
          ROOT / 'Fact713Row2773ComparisonFamily/family.json', *sorted(HERE.glob('*.lean'))]
report = dict(status='pass', findings=[], complete_entries=1257, extra_entries=8,
              independent_vectors=checked_vectors, quotient_pairs=quotient_pairs,
              adjacent=adjacent, consecutive=consecutive,
              directed_pairs=len(whole)**2, named_pages=list(range(2, 7)), missing_named_page=7,
              input_sha256={str(p.relative_to(ROOT)): sha(p) for p in inputs},
              scope='Independent finite algebra oracle and exact source binding; not topology evidence.')
(HERE / 'independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({k: v for k, v in report.items() if k != 'input_sha256'}))
