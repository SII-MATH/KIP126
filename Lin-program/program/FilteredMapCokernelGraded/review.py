"""Independent set/coset oracle; compilation is verified separately."""
from itertools import product
from pathlib import Path
import hashlib
import json
import random

HERE = Path(__file__).resolve().parent


def span(generators):
    values = {0}
    for x in generators:
        values |= {y ^ x for y in tuple(values)}
    return frozenset(values)


def subspaces(d):
    spaces = {frozenset({0})}
    for x in range(1 << d):
        spaces |= {span((*h, x)) for h in tuple(spaces)}
    return sorted(spaces, key=lambda h: (len(h), tuple(sorted(h))))


def flags(d):
    return [(a, b, frozenset({0})) for a in subspaces(d)
            for b in subspaces(d) if b <= a]


def add(h, k):
    return frozenset(x ^ y for x in h for y in k)


def canonical(x, subgroup):
    return min(x ^ y for y in subgroup)


def image(columns, x):
    value = 0
    for j, column in enumerate(columns):
        if (x >> j) & 1:
            value ^= column
    return value


def inspect(a, b, source, target, columns):
    f = lambda x: image(columns, x)
    if any(not {f(x) for x in h} <= k for h, k in zip(source, target)):
        return False, 0
    universe = frozenset(range(1 << b))
    k = frozenset(f(x) for x in source[0])
    q = lambda x: canonical(x, k)
    cokernel = {q(x) for x in universe}
    levels = [{q(x) for x in h} for h in target]
    assert k <= target[0]
    assert (levels[0] == cokernel) == (add(target[0], k) == universe)
    assert (levels[0] == cokernel) == (target[0] == universe)
    full_image = frozenset(f(x) for x in range(1 << a))
    if source[0] == frozenset(range(1 << a)):
        assert k == full_image
    for t in range(2):
        gt, next_gt = target[t:t + 2]
        incoming = {f(x) for x in source[0] if f(x) in gt}
        assert incoming == k & gt
        relations = add(next_gt, incoming)
        level_kernel = k & gt
        assert {x for x in gt if q(x) == 0} == level_kernel
        assert {q(x) for x in relations} == levels[t + 1]
        qadd = lambda x, y: q(x ^ y)
        graded = lambda y: min(qadd(y, z) for z in levels[t + 1])
        to_graded = lambda y: graded(q(y))
        assert {x for x in gt if to_graded(x) == 0} == relations
        domain = {canonical(y, relations) for y in gt}
        codomain = {graded(y) for y in levels[t]}
        pairs = {(canonical(y, relations), to_graded(y)) for y in gt}
        assert {x for x, _ in pairs} == domain
        assert {y for _, y in pairs} == codomain
        assert len(pairs) == len(domain) == len(codomain)
        for x, y in product(gt, repeat=2):
            assert to_graded(x ^ y) == graded(qadd(to_graded(x), to_graded(y)))
        first = lambda x: canonical(x, level_kernel)
        second_relations = {first(x) for x in relations}
        iterated = lambda x: min(first(first(x) ^ z) for z in second_relations)
        assert all(iterated(x) == canonical(x, relations) for x in gt)
    return True, 2


def cyclic_oracle():
    def cyclic_flags(n):
        subs = [frozenset(range(0, n, d)) for d in range(1, n + 1) if n % d == 0]
        return [(h, k, frozenset({0})) for h in subs for k in subs if k <= h]

    candidates = maps = levels_checked = 0
    for a, b in product(range(1, 9), repeat=2):
        plus = lambda x, y: (x + y) % b
        subgroup_sum = lambda h, k: {plus(x, y) for x in h for y in k}
        canon = lambda x, h: min(plus(x, y) for y in h)
        for source, target in product(cyclic_flags(a), cyclic_flags(b)):
            for c in range(b):
                if a * c % b:
                    continue
                candidates += 1
                f = lambda x: c * x % b
                if any(not {f(x) for x in h} <= k for h, k in zip(source, target)):
                    continue
                maps += 1
                image0 = {f(x) for x in source[0]}
                q = lambda x: canon(x, image0)
                induced = [{q(x) for x in h} for h in target]
                assert (induced[0] == {q(x) for x in range(b)}) == (len(target[0]) == b)
                for t in range(2):
                    levels_checked += 1
                    gt, next_gt = target[t:t + 2]
                    relations = subgroup_sum(next_gt, image0 & gt)
                    qadd = lambda x, y: q(plus(x, y))
                    graded = lambda x: min(qadd(x, y) for y in induced[t + 1])
                    to_graded = lambda x: graded(q(x))
                    assert {x for x in gt if to_graded(x) == 0} == relations
                    assert {q(x) for x in relations} == induced[t + 1]
                    pairs = {(canon(x, relations), to_graded(x)) for x in gt}
                    assert len(pairs) == len({x for x, _ in pairs}) == len({y for _, y in pairs})
                    assert {y for _, y in pairs} == {graded(y) for y in induced[t]}
                    for x, y in product(gt, repeat=2):
                        assert to_graded(plus(x, y)) == graded(qadd(to_graded(x), to_graded(y)))
                    kernel = image0 & gt
                    first = lambda x: canon(x, kernel)
                    second_relations = {first(x) for x in relations}
                    assert all(min(first(plus(first(x), y)) for y in second_relations)
                               == canon(x, relations) for x in gt)
    return candidates, maps, levels_checked


def main():
    examined = accepted = pages = 0
    for a, b in product(range(3), repeat=2):
        for source, target in product(flags(a), flags(b)):
            for columns in product(range(1 << b), repeat=a):
                ok, n = inspect(a, b, source, target, columns)
                examined += 1
                accepted += ok
                pages += n
    rng = random.Random(126)
    random_examined = random_accepted = random_pages = 0
    for _ in range(2000):
        a, b = rng.randrange(1, 5), rng.randrange(1, 5)
        columns = tuple(rng.randrange(1 << b) for _ in range(a))
        f = lambda x: image(columns, x)
        f0 = span(rng.randrange(1 << a) for _ in range(rng.randrange(a + 1)))
        f1 = span(rng.choice(tuple(sorted(f0))) for _ in range(rng.randrange(a + 1)))
        g1 = span([*(f(x) for x in f1), *(rng.randrange(1 << b)
                    for _ in range(rng.randrange(b + 1)))])
        g0 = span([*g1, *(f(x) for x in f0), *(rng.randrange(1 << b)
                    for _ in range(rng.randrange(b + 1)))])
        source, target = (f0, f1, frozenset({0})), (g0, g1, frozenset({0}))
        ok, n = inspect(a, b, source, target, columns)
        assert ok
        random_examined += 1
        random_accepted += ok
        random_pages += n
    # The restricted identity can have nonzero cokernel while its full
    # cokernel is zero; the zero target filtration can fail exhaustion.
    assert len({canonical(x, {0}) for x in range(2)}) == 2
    assert len({canonical(x, {0, 1}) for x in range(2)}) == 1
    assert {canonical(x, {0}) for x in {0}} != {0, 1}
    cyclic_candidates, cyclic_maps, cyclic_levels = cyclic_oracle()
    report = {
        "oracle": "independent exhaustive finite F2 sets/cosets",
        "exhaustive_dimensions": [0, 1, 2],
        "exhaustive_filtration": "all F0 >= F1 >= F2=0 and G0 >= G1 >= G2=0",
        "examined_filtered_map_candidates": examined,
        "accepted_filtered_maps": accepted,
        "associated_graded_levels_checked": pages,
        "random_seed": 126,
        "random_dimensions": [1, 2, 3, 4],
        "random_filtered_maps_checked": random_accepted,
        "random_levels_checked": random_pages,
        "cyclic_group_orders": list(range(1, 9)),
        "cyclic_candidates": cyclic_candidates,
        "cyclic_preserving_maps": cyclic_maps,
        "cyclic_levels_checked": cyclic_levels,
        "checks": ["restricted image", "quotient map kernel", "induced levels",
                   "final incoming image", "final kernel", "remaining relations image",
                   "graded bijection", "graded addition", "iterated third quotient",
                   "source fullness", "target exhaustion equivalence",
                   "restricted identity and target exhaustion counterexamples"],
        "proof_status": "finite oracle only; Lean compilation recorded separately",
        "script_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
    }
    (HERE / "oracle-review.json").write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps(report, indent=2))


if __name__ == "__main__":
    main()
