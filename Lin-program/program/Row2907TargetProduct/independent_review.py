"""Root review, independent of the producer's branch enumerator."""
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
frozen = json.loads((HERE / 'frozen-source.json').read_text())
for relative, digest in frozen['files'].items():
    assert sha(ROOT / relative) == digest, relative
reports = 0
for record in frozen['modules']:
    source = ROOT / (record['module'].replace('.', '/') + '.lean')
    log = HERE / record['log']
    assert record['observed_exit_code'] == 0 and record['inputs_stable']
    assert sha(source) == record['source_sha256'] and sha(log) == record['log_sha256']
    assert not re.search(r'\b(sorry|axiom|native_decide|unsafe)\b', source.read_text())
    assert not re.search(r'\b(sorryAx|Lean\.ofReduceBool|error)\b', log.read_text())
    for report in re.findall(r'depends on axioms:\s*\[([^]]*)\]', log.read_text()):
        assert set(filter(None, map(str.strip, report.split(',')))) <= {
            'propext', 'Classical.choice', 'Quot.sound'}
    reports += record['axiom_reports']

def mat(bits, rows, cols, vector):
    return tuple(sum(bits[i * cols + j] * vector[j] for j in range(cols)) % 2
                 for i in range(rows))

def vectors(n):
    return list(itertools.product((0, 1), repeat=n))

cases = []
for r, a in itertools.product((0, 1), repeat=2):
    w = json.loads((ROOT / 'Row3136SquareCandidates/wire' /
                    f'u0a{a}r{r}_source.json').read_text())
    cycles = [v for v in vectors(w['m']) if not any(mat(w['outgoing'], w['k'], w['m'], v))]
    boundaries = {mat(w['incoming'], w['m'], w['n'], v) for v in vectors(w['n'])}
    cosets = {frozenset(tuple(x ^ y for x, y in zip(v, b)) for b in boundaries) for v in cycles}
    assert len(cosets) == 2 ** w['h']
    coordinate_to_coset = {}
    for coset in cosets:
        values = {mat(w['projection'], w['h'], w['m'], v) for v in coset}
        assert len(values) == 1
        coordinate_to_coset[values.pop()] = coset
    assert len(coordinate_to_coset) == len(cosets)
    # Derive the E4 action by actual quotient classes, not a chosen inclusion.
    next_actions = {}
    for coordinate, coset in coordinate_to_coset.items():
        values = {v[0] for v in coset}
        assert len(values) == 1, 'whole product must descend through all boundaries'
        next_actions[coordinate] = values.pop()
    compatible = [v for v in vectors(w['h']) if next_actions[v] == 1]
    assert bool(compatible) == (a == 0)
    if a == 0:
        assert compatible == ([(1,),] if r else [(1, 0), (1, 1)])
    else:
        assert all(v[0] == 0 for v in cycles)
    cases.append(dict(r=r, a=a, cycles=len(cycles), cosets=len(cosets),
                      compatible_d4_coordinates=compatible))

result = dict(status='passed', findings=[], modules=len(frozen['modules']),
              axiom_reports=reports, frozen_files=len(frozen['files']), cases=cases,
              frozen_source_sha256=sha(HERE / 'frozen-source.json'),
              proof_review=['Complete incoming surjectivity and outgoing injectivity retained',
                  'Same factor and known-target bindings as the known product differential',
                  'E4 product zero derived using arbitrary actual quotient representatives',
                  'Leibniz uses a separately supplied product differential, not the desired coefficient',
                  'Residual parameter remains free; no topology realization follows from finite coherence'])
(HERE / 'independent-review.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps(result, indent=2))
