"""Finite semantic oracle under arbitrary zero-preserving carrier coordinates."""
from itertools import permutations, product
from pathlib import Path
import hashlib
import json

HERE = Path(__file__).resolve().parent
FAMILY = HERE.parent / 'Row3151FullNeighborhood'


def bijections(n):
    return [(0,) + p for p in permutations(range(1, 1 << n))]


def apply(bits, m, n, x):
    return sum((sum(int(bits[i*n+j]) * ((x >> j) & 1) for j in range(n)) % 2) << i
               for i in range(m))


def inverse(p):
    return tuple(p.index(i) for i in range(len(p)))


counts = dict(carrier_coordinate_models=0, full_boundary_checks=0,
              actual_complex_checks=0, named_nonzero_events=0,
              quotient_zero_checks=0, prefix_quotient_models=0,
              endpoint_coordinate_checks=0)
for code in ['000', '001', '010', '011', '100', '110']:
    a, b, q = map(int, code)
    w = json.loads((FAMILY / f'event{code}.json').read_text())
    in3 = json.loads((FAMILY / f'incomingD3{code}.json').read_text())
    n = w['n']
    # Every coordinate bijection covers the full actual carrier. The actual
    # group law is transported along it rather than inferred from labels.
    for ci, cs, ct in product(bijections(n), bijections(2), bijections(2)):
        ii, si, ti = inverse(ci), inverse(cs), inverse(ct)
        actual_in = lambda x: si[apply(w['incoming'], 2, n, ci[x])]
        actual_out = lambda x: ti[apply(w['outgoing'], 2, 2, cs[x])]
        source_add = lambda x, y: si[cs[x] ^ cs[y]]
        counts['carrier_coordinate_models'] += 1
        actual_image = {actual_in(x) for x in range(1 << n)}
        matrix_image = {apply(w['incoming'], 2, n, x) for x in range(1 << n)}
        actual_cycles = {x for x in range(4) if actual_out(x) == 0}
        for x in range(1 << n):
            assert actual_out(actual_in(x)) == 0
            counts['actual_complex_checks'] += 1
        for x in range(4):
            assert (x in actual_image) == (cs[x] in matrix_image)
            counts['full_boundary_checks'] += 1
        named_source, named_target = si[2], ti[1]
        assert actual_out(named_source) == named_target and named_target != 0
        assert named_source not in actual_image
        counts['named_nonzero_events'] += 1
        cosets = {frozenset(source_add(x, y) for y in actual_image) for x in actual_cycles}
        zero_coset = frozenset(actual_image)
        assert len(cosets) == 1 << w['h']
        other_cosets = sorted((c for c in cosets if c != zero_coset), key=lambda c: tuple(sorted(c)))
        next_carrier = {zero_coset: 0, **{c:i+1 for i,c in enumerate(other_cosets)}}
        for x in actual_cycles:
            cls = frozenset(source_add(x, y) for y in actual_image)
            assert (next_carrier[cls] == 0) == (x in actual_image)
            counts['quotient_zero_checks'] += 1
        kernel_element = si[1 | (b << 1)]
        cls = frozenset(source_add(kernel_element, y) for y in actual_image)
        assert (next_carrier[cls] == 0) == bool(not a and q)
    # The previous page's projection must be an actual quotient connection,
    # not a mere independently supplied dimension equality.
    for c3, c4 in product(bijections(2), bijections(n)):
        i3, i4 = inverse(c3), inverse(c4)
        d3 = lambda x: apply(in3['outgoing'], 1, 2, c3[x])
        cycles = {x for x in range(4) if d3(x) == 0}
        advance = lambda x: i4[apply(in3['projection'], n, 2, c3[x])]
        assert {advance(x) for x in cycles} == set(range(1 << n))
        assert len({advance(x) for x in cycles}) == len(cycles)
        prefix = i3[1]
        assert prefix in cycles and prefix != 0
        assert c4[advance(prefix)] == 1
        counts['prefix_quotient_models'] += 1
        counts['endpoint_coordinate_checks'] += 1

# A prefix-only incoming interpretation misses the additional generator.
incoming = [False, True, False, False]
assert apply(incoming, 2, 2, 1) == 0
assert apply(incoming, 2, 2, 2) == 1
prefix_only_would_miss_boundary = True

# A bare set equivalence between homology and next page can swap zero.
# This demonstrates why actual_quotient_zero_iff requests ZeroMeaning.
homology_classes = [{0}, {1}]
wrong_next = {frozenset(homology_classes[0]): 1, frozenset(homology_classes[1]): 0}
assert wrong_next[frozenset({1})] == 0 and 1 not in {0}
zero_meaning_needed = True

# Faithfulness matters even if a coordinate function preserves zero.
noninjective_target = lambda x: 0 if x == 0 else 1
assert noninjective_target(1) == noninjective_target(2) and 1 != 2
report = dict(findings=[], counts=counts, cases=6,
    omitted_condition_counterexamples=dict(full_incoming_needed=prefix_only_would_miss_boundary,
        zero_meaning_needed=zero_meaning_needed, target_faithfulness_needed=True),
    model='finite local actual carriers with transported group laws and all zero-preserving coordinate bijections',
    excluded='not a globally realized Adams spectral sequence or derivation of external product/known-column interpretations',
    script_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest())
(HERE / 'independent-oracle.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(report, indent=2))
