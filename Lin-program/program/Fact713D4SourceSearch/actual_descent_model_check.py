"""Exercise complete actual map descent on relabeled finite carriers.

The actual carrier's zero is transported, so it need not have numeric label 0.
All next maps are built through quotient classes rather than the claimed
coordinate formula. This is supplementary to the Lean kernel proof.
"""
import collections
import hashlib
import itertools
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
data = json.loads((HERE/'parameters.json').read_text())
maps = json.loads((HERE/'c2h5-e4-candidates.json').read_text())['coordinate_maps']
counts = collections.Counter()

def columns(bits, rows, cols):
    assert len(bits) == rows*cols
    return [sum(int(bits[i*cols+j]) << i for i in range(rows)) for j in range(cols)]

def apply(cs, x):
    z = 0
    for j, c in enumerate(cs):
        if (x >> j) & 1:
            z ^= c
    return z

def model(w, current_shift, next_shift):
    n, m, k, h = (w[key] for key in ['n', 'm', 'k', 'h'])
    d = columns(w['outgoing'], k, m)
    inc = columns(w['incoming'], m, n)
    proj = columns(w['projection'], h, m)
    incl = columns(w['inclusion'], m, h)
    current_shift %= 1 << m
    next_shift %= 1 << h
    # Relabeling is deliberately nonlinear when m >= 3; addition is
    # transported through the complete coordinate bijection.
    perm = list(range(1 << m))
    if m >= 3:
        perm[1], perm[2] = perm[2], perm[1]
    current = {x: perm[x] ^ current_shift for x in range(1 << m)}
    inverse = {v: x for x, v in current.items()}
    zero = inverse[0]
    plus = lambda x, y: inverse[current[x] ^ current[y]]
    actual_cycles = [x for x in current if apply(d, current[x]) == 0]
    actual_boundaries = {inverse[apply(inc, x)] for x in range(1 << n)}
    q = lambda x: min(plus(x, b) for b in actual_boundaries)
    classes = {q(x) for x in actual_cycles}
    finite_coord = {z: apply(proj, current[z]) for z in classes}
    assert len(set(finite_coord.values())) == len(classes) == 1 << h
    next_labels = {z: finite_coord[z] ^ next_shift for z in classes}
    from_next = {v: z for z, v in next_labels.items()}
    next_coord = lambda x: apply(proj, current[from_next[x]])
    next_zero = next_labels[q(zero)]
    assert next_coord(next_zero) == 0
    counts['models_with_nonzero_zero_label'] += int(zero != 0 or next_zero != 0)
    return dict(w=w, d=d, p=proj, i=incl, current=current, inverse=inverse, zero=zero,
        cycles=actual_cycles, q=q, next_labels=next_labels, from_next=from_next,
        next_coord=next_coord, next_zero=next_zero)

for abc in itertools.product((0, 1), repeat=3):
    for uv in itertools.product((0, 1), repeat=2):
        for mode in ['source', 'target']:
            ws = data[mode+'S']
            suffix = ''.join(map(str, abc if mode == 'source' else uv))
            wt = data[mode+'D'+suffix]
            fbits = maps['(12, 134)' if mode == 'source' else '(16, 137)']
            f = columns(fbits, wt['m'], ws['m'])
            for shift in range(4):
                a = model(ws, shift, shift)
                b = model(wt, shift+1, shift+1)
                current_map = {x: b['inverse'][apply(f, a['current'][x])] for x in a['current']}
                next_map = {}
                for x in a['cycles']:
                    y = current_map[x]
                    assert y in b['cycles']
                    source_label = a['next_labels'][a['q'](x)]
                    target_label = b['next_labels'][b['q'](y)]
                    if source_label in next_map:
                        assert next_map[source_label] == target_label
                        counts['representative_independence_pairs'] += 1
                    next_map[source_label] = target_label
                    counts['whole_cycle_transitions'] += 1
                assert set(next_map) == set(a['from_next'])
                for x, y in next_map.items():
                    rhs = apply(b['p'], apply(f, apply(a['i'], a['next_coord'](x))))
                    assert b['next_coord'](y) == rhs
                    counts['whole_next_coordinate_equations'] += 1
                    if mode == 'source':
                        assert y == b['next_zero']
                        counts['whole_source_zero_checks'] += 1
                    else:
                        assert (y == b['next_zero']) == (x == a['next_zero'])
                        counts['whole_target_zero_reflection_checks'] += 1
                if mode == 'target':
                    # A zero map without the actual transition law would
                    # invalidate reflection; record this rejected model.
                    bad_map = {x: b['next_zero'] for x in next_map}
                    assert any(bad_map[x] != y for x, y in next_map.items())
                    assert any(x != a['next_zero'] and bad_map[x] == b['next_zero'] for x in bad_map)
                    counts['missing_transition_countermodels'] += 1
                counts['whole_descent_models'] += 1
assert counts['whole_descent_models'] == 256
assert counts['models_with_nonzero_zero_label'] > 0
assert counts['missing_transition_countermodels'] == 128
report = dict(status='passed', counts=dict(counts),
    meaning='All actual current operations and page identifications are explicit transported structures; no topological realization is asserted.',
    sha256={p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in
        [Path(__file__), HERE/'parameters.json', HERE/'c2h5-e4-candidates.json', HERE/'ActualDescent.lean']})
(HERE/'actual-descent-model-check.json').write_text(json.dumps(report, indent=2)+'\n')
print(json.dumps(report, indent=2))
