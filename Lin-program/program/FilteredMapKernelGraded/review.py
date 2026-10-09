"""Independent finite-group test of kernel/source quotient comparisons."""
import itertools
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
counts = dict(filtered_maps=0, injections=0, bounded_isomorphisms=0,
              non_surjective_unbounded=0, proper_source_initial=0)


def cosets(elements, relations, add):
    return {frozenset(add(x, h) for h in relations) for x in elements}


for size, xor in [(4, False), (4, True), (6, False)]:
    add = (lambda a, b: a ^ b) if xor else (lambda a, b: (a+b) % size)
    universe = frozenset(range(size))
    subgroups = []
    for bits in range(1 << size):
        subset = frozenset(i for i in universe if bits >> i & 1)
        if 0 in subset and all(add(x, y) in subset for x in subset for y in subset):
            subgroups.append(subset)
    filtrations = [chain for chain in itertools.product(subgroups, repeat=3)
                   if chain[2] <= chain[1] <= chain[0]]
    maps = [f for f in itertools.product(universe, repeat=size)
            if f[0] == 0 and all(f[add(x, y)] == add(f[x], f[y])
                                 for x in universe for y in universe)]
    for F, G, f in itertools.product(filtrations, filtrations, maps):
        if not all({f[x] for x in F[s]} <= G[s] for s in range(3)):
            continue
        counts['filtered_maps'] += 1
        counts['proper_source_initial'] += F[0] != universe
        kernel = frozenset(x for x in universe if f[x] == 0)
        for s, n in itertools.product(range(3), range(5)):
            target = G[min(s+n, 2)]
            higher = F[min(s+1, 2)]
            cycles = frozenset(x for x in F[s] if f[x] in target)
            corrections = frozenset(x for x in higher if f[x] in target)
            source = cosets(cycles, corrections, add)
            graded = cosets(kernel & F[s], kernel & higher, add)
            images = []
            for cls in graded:
                possible = {frozenset(add(x, h) for h in corrections) for x in cls}
                assert len(possible) == 1 and possible <= source
                images.append(next(iter(possible)))
            assert len(set(images)) == len(graded)
            counts['injections'] += 1
            if target == frozenset({0}):
                assert set(images) == source
                counts['bounded_isomorphisms'] += 1
            elif set(images) != source:
                counts['non_surjective_unbounded'] += 1
assert counts['non_surjective_unbounded'] > 0
(HERE / 'oracle-review.json').write_text(json.dumps(dict(counts=counts,
    scope='Literal quotient map over Z/4, (Z/2)^2 and Z/6; proper F0 and nonzero constant tails included',
    proof='Finite oracle only; Lean proof records are separate'), indent=2)+'\n')
print(json.dumps(counts))
