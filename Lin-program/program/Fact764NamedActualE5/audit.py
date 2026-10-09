"""Independent full finite-column and relabeled quotient oracle."""
import hashlib
import itertools
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent


def act(columns, vector):
    value = 0
    for j, column in enumerate(columns):
        if vector >> j & 1:
            value ^= column
    return value


def invertible(n):
    for columns in itertools.product(range(1 << n), repeat=n):
        values = [act(columns, x) for x in range(1 << n)]
        if len(set(values)) == 1 << n:
            yield values


checked = 0
accepted = []
without_named_cycle = []
for candidate in range(16):
    c = [(candidate >> j) & 1 for j in range(4)]
    product_residual = 1 ^ c[0] ^ (c[2] << 1) ^ (c[3] << 2)
    product_ok = product_residual in (0, 2, 4, 6)
    mapped_candidate = c[2] | c[0] << 1
    map_ok = mapped_candidate in (0, 3)
    target = c[3] | c[2] << 1 | c[1] << 2
    for outgoing in itertools.product(range(2), repeat=3):
        for incoming in itertools.product(range(8), repeat=2):
            checked += 1
            constraints = (c[0] == c[1] and product_ok and map_ok
                           and incoming == (1, target)
                           and all(act(outgoing, act(incoming, x)) == 0 for x in range(4)))
            if not constraints:
                continue
            if act(outgoing, 2):
                without_named_cycle.append((candidate, outgoing, incoming))
                continue
            boundaries = {act(incoming, x) for x in range(4)}
            cycles = {x for x in range(8) if act(outgoing, x) == 0}
            assert 2 not in boundaries
            assert all(x in boundaries or (x ^ 2) in boundaries for x in cycles)
            assert outgoing == (0, 0, 0)
            accepted.append((candidate, outgoing, incoming))
assert checked == 8192
assert len(accepted) == 2 and len(without_named_cycle) == 2
assert {c for c, _, _ in accepted} == {7, 15}
assert all(out == (0, 1, 1) for _, out, _ in without_named_cycle)

models = requests = rejected = quotient_pairs = 0
for _, outgoing, incoming in accepted:
    for current in invertible(3):
        current_inverse = [current.index(x) for x in range(8)]
        for source in invertible(2):
            for flip in range(2):
                models += 1
                image = {current_inverse[act(incoming, source[x])] for x in range(4)}

                def page5(x):
                    coordinate = current[x]
                    return ((coordinate >> 1 & 1) ^ (coordinate >> 2 & 1)) ^ flip

                named = current_inverse[2]
                assert page5(named) != page5(0)
                for x in range(8):
                    for y in range(8):
                        quotient_pairs += 1
                        difference = current_inverse[current[x] ^ current[y]]
                        assert (page5(x) == page5(y)) == (difference in image)
                for raw_input in range(8):
                    for result in range(2):
                        requests += 1
                        accepted_request = raw_input == named and result == page5(named)
                        if accepted_request:
                            assert result != page5(0)
                            assert page5(raw_input) == result
                        else:
                            rejected += 1
assert models == 4032
assert requests == 64512 and rejected == 60480 and quotient_pairs == 258048

bad = [(c, out, inc) for c, out, inc in without_named_cycle]
result = {
    'status': 'passed',
    'full_finite_candidates': checked,
    'accepted_whole_column_cases': len(accepted),
    'countermodels_without_derived_named_cycle': bad,
    'relabeled_local_quotient_models': models,
    'all_representative_pairs': quotient_pairs,
    'fixed_input_output_requests': requests,
    'wrong_input_or_output_rejected': rejected,
    'scope': 'Full finite d4 conditions and local quotient representation oracle; '
             'not a constructed global multiplicative Adams spectral sequence.',
    'lean_source_sha256': {p.name: hashlib.sha256(p.read_bytes()).hexdigest()
                           for p in sorted(HERE.glob('*.lean'))},
}
(HERE / 'audit.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps({k: v for k, v in result.items()
                  if k not in ('lean_source_sha256', 'countermodels_without_derived_named_cycle')}))
