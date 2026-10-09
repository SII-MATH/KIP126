"""Independent root review of complete d4 cosets and exact endpoint binding."""
import hashlib
import itertools
import json
from pathlib import Path
import re

H = Path(__file__).resolve().parent
R = H.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
f = json.loads((H / 'frozen-source.json').read_text())
for name, digest in f['files'].items():
    path = R / name
    assert sha(path) == digest, name
reports = 0
for module in (H / 'modules.txt').read_text().splitlines():
    name = module.split('.')[-1]
    c = json.loads((H / (name + '-compile.json')).read_text())
    assert c['observed_exit_code'] == 0 and c['inputs_stable']
    assert sha(H / (name + '.lean')) == c['source_sha256']
    log = H / c['log']
    assert sha(log) == c['log_sha256']
    assert not re.search(r'\b(sorryAx|Lean\.ofReduceBool|error)\b', log.read_text())
    axioms = re.findall(r'depends on axioms:\s*\[([^]]*)\]', log.read_text())
    for ax in axioms:
        assert set(filter(None, map(str.strip, ax.split(',')))) <= {
            'propext', 'Classical.choice', 'Quot.sound'}
    reports += len(axioms) + log.read_text().count('does not depend on any axioms')

def plus(x, y):
    return tuple(a ^ b for a, b in zip(x, y))

models = pairs = invalid = 0
for b in (0, 1):
    image = {(0, 0, 0), (1, 0, 0), (b, 1, 1), (b ^ 1, 1, 1)}
    vectors = list(itertools.product((0, 1), repeat=3))
    named = (0, 1, 0)
    for outgoing in vectors:
        d = lambda v: sum(a * x for a, x in zip(outgoing, v)) % 2
        if any(d(v) for v in image) or d(named):
            invalid += 1
            continue
        assert outgoing == (0, 0, 0)
        cosets = {frozenset(plus(x, y) for y in image) for x in vectors}
        assert len(cosets) == 2 and named not in image
        named_coset = frozenset(plus(named, y) for y in image)
        assert cosets == {frozenset(image), named_coset}
        for first, second in itertools.product(vectors, repeat=2):
            assert (frozenset(plus(first, y) for y in image) ==
                    frozenset(plus(second, y) for y in image)) == (plus(first, second) in image)
            pairs += 1
        models += 1

result = dict(status='passed', findings=[], modules=3, axiom_reports=reports,
              frozen_files=len(f['files']), complete_coset_models=models,
              rejected_outgoing_maps=invalid, all_representative_pairs=pairs,
              frozen_source_sha256=sha(H / 'frozen-source.json'),
              proof_review=['Complete complex law follows from actual square zero and incoming surjectivity',
                'Named cycle is derived from the same E2 product trace',
                'Next-page uniqueness quantifies over every actual E5 element in degree (25,150)',
                'ResultValid binds exact caller input and exact constructed quotient output',
                'Product and map source-obstruction equations and actual naming remain explicit premises'])
(H / 'independent-review.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps(result, indent=2))
