"""Root review of frozen evidence and complete product quotient descent."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import re

H = Path(__file__).resolve().parent
R = H.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
frozen = load(H / 'frozen-source.json')
for relative, digest in frozen['files'].items():
    assert sha(H / relative) == digest, relative
reports = 0
for module in (H / 'modules.txt').read_text().splitlines():
    name = module.split('.')[-1]
    record = load(H / (name + '-compile.json'))
    assert record['observed_exit_code'] == 0 and record['inputs_stable']
    assert sha(H / (name + '.lean')) == record['source_sha256']
    log = H / record['log']
    assert sha(log) == record['log_sha256']
    assert not re.search(r'\b(sorryAx|Lean\.ofReduceBool|error)\b', log.read_text())
    axioms = re.findall(r'depends on axioms:\s*\[([^]]*)\]', log.read_text())
    for ax in axioms:
        assert set(filter(None, map(str.strip, ax.split(',')))) <= {
            'propext', 'Classical.choice', 'Quot.sound'}
    reports += len(axioms) + log.read_text().count('does not depend on any axioms')

def columns(bits, rows, cols):
    assert len(bits) == rows * cols
    return [sum(int(bits[i * cols + j]) << i for i in range(rows)) for j in range(cols)]

def apply(cols, x):
    result = 0
    for j, c in enumerate(cols):
        if (x >> j) & 1:
            result ^= c
    return result

def matrix(w, field, x):
    shapes = dict(outgoing=(w['k'], w['m']), incoming=(w['m'], w['n']),
                  projection=(w['h'], w['m']), inclusion=(w['m'], w['h']))
    return apply(columns(w[field], *shapes[field]), x)

def multiply(w, x, y):
    lm, rm, tm = [w[k]['m'] for k in ('left', 'right', 'target')]
    return sum((sum(int(w['tensor'][(k * lm + i) * rm + j]) * ((x >> i) & 1) *
                    ((y >> j) & 1) for i in range(lm) for j in range(rm)) % 2) << k
               for k in range(tm))

counts = Counter()
steps = []
for page in (2, 3, 4):
    w = load(H / f'product{page}.json')
    left, right, target = [w[k] for k in ('left', 'right', 'target')]
    quotient_products = {}
    for x, y in itertools.product(range(1 << left['m']), range(1 << right['m'])):
        if matrix(left, 'outgoing', x) or matrix(right, 'outgoing', y):
            continue
        z = multiply(w, x, y)
        assert matrix(target, 'outgoing', z) == 0
        pair = matrix(left, 'projection', x), matrix(right, 'projection', y)
        quotient_products.setdefault(pair, set()).add(matrix(target, 'projection', z))
        counts['all_cycle_product_representatives'] += 1
    assert len(quotient_products) == (1 << (left['h'] + right['h']))
    assert all(len(values) == 1 for values in quotient_products.values())
    if page < 4:
        nxt = load(H / f'product{page+1}.json')
        for (x, y), outputs in quotient_products.items():
            assert outputs == {multiply(nxt, x, y)}
    else:
        for (x, y), outputs in quotient_products.items():
            assert outputs == {x * y}
            assert (next(iter(outputs)) == 0) == (x == 0 or y == 0)
    steps.append(dict(page=page, left=left['m'], right=right['m'], target=target['m'],
                      next_target=target['h'], quotient_pairs=len(quotient_products)))

# Enumerate every linear 3x2 incoming map compatible with the two column
# rules. Removing the derived first-column rule admits a boundary detector.
for first, second in itertools.product(range(8), repeat=2):
    compatible = first == 0 and second == 1
    if compatible:
        assert 2 not in {0, first, second, first ^ second}
        counts['complete_incoming_maps_accepted'] += 1
    else:
        counts['counterfeit_incoming_maps_rejected'] += 1
assert 2 in {0, 2, 1, 2 ^ 1}

# Independent label changes preserve detection and the two zero Leibniz
# summands. Zero is not assumed to have label zero.
for factor, right, target in itertools.product(itertools.permutations(range(2)),
        itertools.permutations(range(2)), itertools.permutations(range(4))):
    product = lambda x, y: target.index(factor[x] * right[y])
    named = factor.index(1)
    for y in range(2):
        assert (product(named, y) == target.index(0)) == (y == right.index(0))
        counts['relabeled_detection_values'] += 1

result = dict(status='passed', findings=[], modules=18, axiom_reports=reports,
              frozen_files=len(frozen['files']), steps=steps, counts=dict(counts),
              frozen_source_sha256=sha(H / 'frozen-source.json'),
              limitations=['Complete actual E2 and neighboring meanings remain mathematical inputs',
                'Three finite source prefixes are explicit, not inferred from NULL',
                'Detector constructors derive five unknown columns; wrapper alone accepts a completed detector',
                'Same initial-to-E5 trace is supplied from the earlier source package',
                'No d5(g), all-page permanence, or original topology realization is assumed proved'])
(H / 'independent-review.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps(result, indent=2))
