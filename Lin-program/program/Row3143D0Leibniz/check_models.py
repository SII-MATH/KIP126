"""Exhaust labels in the square-zero and named product descent arguments."""
from collections import Counter
import itertools
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
perms = list(itertools.permutations(range(2)))
counts = Counter()

# Every full one-dimensional source/target E3/E4 coordinate labeling.
for ds3, dt3, ds4, dt4, before in itertools.product(perms, repeat=5):
    inv = lambda p: {v: i for i, v in enumerate(p)}
    si3, ti3, si4, ti4, bi = map(inv, [ds3, dt3, ds4, dt4, before])
    quotient_s = {x: si4[ds3[x]] for x in range(2)}
    quotient_t = {x: ti4[dt3[x]] for x in range(2)}
    assert quotient_s[si3[0]] == si4[0] and quotient_t[ti3[0]] == ti4[0]
    known_d4 = {x: ti4[ds4[x]] for x in range(2)}
    assert known_d4[quotient_s[si3[1]]] == quotient_t[ti3[1]]
    assert known_d4[si4[1]] != ti4[0]
    for value in range(2):
        previous_d4 = {bi[0]: si4[0], bi[1]: value}
        square_zero = all(known_d4[previous_d4[x]] == ti4[0] for x in range(2))
        assert square_zero == all(y == si4[0] for y in previous_d4.values())
        counts['square_zero_accepted' if square_zero else 'nonzero_previous_rejected'] += 1
    counts['square_zero_models'] += 1

# Same actual E3 input, transported through multiplicative quotient squares.
for a3, b3, x3, a4, b4, x4 in itertools.product(perms, repeat=6):
    ai3, bi3, xi3, ai4, bi4, xi4 = map(inv, [a3, b3, x3, a4, b4, x4])
    product3 = lambda a, b: xi3[a3[a] & b3[b]]
    product4 = lambda a, b: xi4[a4[a] & b4[b]]
    qa, qb, qx = ({i: inv(nxt)[cur[i]] for i in range(2)}
                  for cur, nxt in [(a3, a4), (b3, b4), (x3, x4)])
    for a, b in itertools.product(range(2), repeat=2):
        assert qx[product3(a, b)] == product4(qa[a], qb[b])
        counts['multiplicative_quotient_pairs'] += 1
    named_input = xi3[1]
    assert named_input == product3(ai3[1], bi3[1])
    assert qx[named_input] == product4(qa[ai3[1]], qb[bi3[1]])
    assert qx[named_input] != xi4[0]
    assert named_input != xi3[0]
    counts['same_input_product_models'] += 1

out = dict(status='all_finite_models_passed', counts=dict(counts),
           limitation='Finite additional tests, not actual Adams meanings. The known nonzero d4 is an explicit input.')
(HERE/'model-check.json').write_text(json.dumps(out, indent=2)+'\n')
print(json.dumps(out, indent=2))
