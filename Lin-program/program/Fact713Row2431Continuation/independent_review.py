"""Independent bitset quotient and complete family review; no producer reuse."""
import hashlib
import itertools
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda path: json.loads(path.read_text())
sha = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()


def columns(wire, field, rows, cols):
    bits = wire[field]
    assert len(bits) == rows * cols
    return [sum(int(bits[i * cols + j]) << i for i in range(rows)) for j in range(cols)]


def apply(cols, x):
    result = 0
    for j, column in enumerate(cols):
        if x & (1 << j):
            result ^= column
    return result


def quotient(wire):
    k, m, n, h = [wire[key] for key in ['k', 'm', 'n', 'h']]
    a = columns(wire, 'outgoing', k, m)
    b = columns(wire, 'incoming', m, n)
    inc = columns(wire, 'inclusion', m, h)
    proj = columns(wire, 'projection', h, m)
    up = columns(wire, 'up', n, m)
    down = columns(wire, 'down', m, k)
    boundaries = {apply(b, x) for x in range(1 << n)}
    cycles = [x for x in range(1 << m) if not apply(a, x)]
    assert boundaries <= set(cycles)
    assert all(not apply(a, apply(inc, x)) and apply(proj, apply(inc, x)) == x
               for x in range(1 << h))
    for x in range(1 << m):
        assert apply(inc, apply(proj, x)) ^ apply(b, apply(up, x)) ^ apply(down, apply(a, x)) == x
    for x, y in itertools.product(cycles, repeat=2):
        assert (apply(proj, x) == apply(proj, y)) == ((x ^ y) in boundaries)
    return len(cycles) ** 2


frozen = load(HERE / 'frozen-source.json')
for filename, expected in frozen['files'].items():
    assert sha(ROOT / filename) == expected, filename
axioms = 0
for record in frozen['modules']:
    assert record['observed_exit_code'] == 0
    stem = record['module'].replace('.', '/')
    assert sha(ROOT / (stem + '.lean')) == record['source_sha256']
    axioms += record['axiom_reports']
results = []
key = lambda entry: tuple(entry['key'][k] for k in ['object', 'page', 's', 't'])
for filename in ['zero-family.json', 'residual-family.json']:
    old = load(ROOT / 'Fact713NextD3Continuation' / filename)['entries']
    new = load(HERE / filename)['entries']
    assert new[:len(old)] == old
    by_key = {key(entry): entry['wire'] for entry in new}
    assert len(by_key) == len(new)
    pairs = sum(quotient(entry['wire']) for entry in new)
    adjacent = consecutive = 0
    for entry in new:
        obj, page, s, t = key(entry)
        w = entry['wire']
        nxt = by_key.get((obj, page, s + page, t + page - 1))
        if nxt is not None:
            assert (w['k'], w['m'], w['outgoing']) == (nxt['m'], nxt['n'], nxt['incoming'])
            adjacent += 1
        nxt = by_key.get((obj, page + 1, s, t))
        if nxt is not None:
            assert w['h'] == nxt['m']
            consecutive += 1
    value = 3
    for page in range(2, 9):
        w = by_key[('S0', page, 9, 132)]
        assert not apply(columns(w, 'outgoing', w['k'], w['m']), value)
        assert value not in {apply(columns(w, 'incoming', w['m'], w['n']), x)
                             for x in range(1 << w['n'])}
        value = apply(columns(w, 'projection', w['h'], w['m']), value)
    assert value == 1
    assert ('S0', 9, 9, 132) not in by_key and ('S0', 3, 13, 137) in by_key
    assert ('S0', 3, 20, 140) not in by_key
    assert by_key[('S0',3,9,130)]['outgoing'] == [False,False,False]
    assert by_key[('S0', 3, 13, 137)]['outgoing'] == [False,False,True]
    assert by_key[('S0', 4, 11, 133)]['outgoing'] == [False, False]
    results.append(dict(file=filename, old=len(old), total=len(new), quotient_pairs=pairs,
                        adjacent=adjacent, consecutive=consecutive, same_input_finite_E9=True))
old_signature = load(ROOT / 'Fact713NextD3Continuation/conditional_signature.json')
signature = load(HERE / 'conditional_signature.json')
for field in ['requirements', 'named_actual_E3_cycle_representatives']:
    assert signature[field] == old_signature[field]
result = dict(status='passed', modules=len(frozen['modules']), standard_axiom_reports=axioms,
              branches=results, actual_whole_map_review='Named row2916 via complete descent; named row3135 only, no whole d3 claim',
              inputs={str(path.relative_to(ROOT)): sha(path) for path in
                      [Path(__file__), HERE / 'frozen-source.json', HERE / 'ActualRule.lean']})
(HERE / 'independent-review.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps(result, indent=2))
