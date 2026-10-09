"""Second independent audit: relabeled actual homology and premise boundaries."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
counts = Counter()
frozen = load(HERE / 'frozen-source.json')
compiled = {}
for module in (HERE / 'modules.txt').read_text().splitlines():
    name = module.rsplit('.', 1)[1]
    source = HERE / (name + '.lean')
    record = load(HERE / (name + '-compile.json'))
    log = HERE / record['log']
    assert record['observed_exit_code'] == 0 and record['inputs_stable']
    assert record['source_sha256'] == sha(source)
    assert record['log_sha256'] == sha(log)
    assert record['olean_sha256'] == sha(ROOT / '.lake/build/lib/lean' / (module.replace('.', '/') + '.olean'))
    for field in ['dependencies_sha256', 'external_input_sha256']:
        for path, expected in record[field].items():
            assert sha(ROOT / path) == expected, (module, path)
            counts[field] += 1
    assert not re.search(r'\b(sorry|admit|axiom|native_decide|unsafe)\b', source.read_text())
    assert not re.search(r'\b(sorryAx|Lean\.ofReduceBool|error)\b', log.read_text())
    for report in re.findall(r"'[^']+' depends on axioms: \[([^\]]*)\]", log.read_text()):
        assert set(filter(None, map(str.strip, report.split(',')))) <= {'propext', 'Classical.choice', 'Quot.sound'}
        counts['axiom_reports'] += 1
    counts['axiom_reports'] += len(re.findall(r"'[^']+' does not depend on any axioms", log.read_text()))
    compiled[name] = record
assert counts['axiom_reports'] == 54
assert frozen['direct_compile'] == compiled

def ev(bits, m, n, x):
    assert len(bits) == m * n
    return sum((sum(int(bits[i * n + j]) * ((x >> j) & 1) for j in range(n)) % 2) << i for i in range(m))

search = load(HERE / 'search.json')
wires = {r: search['comparisons'][f'Cnu:14,139:d{r}']['wire'] for r in range(2, 5)}
dimensions = {2: 4, 3: 2, 4: 2, 5: 2}
for choices in itertools.product(range(4), repeat=4):
    coords, inverse = {}, {}
    for r, choice in zip(range(2, 6), choices):
        labels = list(range(1 << dimensions[r]))
        if choice & 2:
            labels[1], labels[2] = labels[2], labels[1]
        coords[r] = [x ^ (choice & 1) for x in labels]
        inverse[r] = {v: i for i, v in enumerate(coords[r])}
    plus = lambda r, x, y: inverse[r][coords[r][x] ^ coords[r][y]]
    zero = {r: inverse[r][0] for r in coords}
    raw = inverse[2][4]
    endpoints = {2: raw}
    derived = coords[2]
    for r, w in wires.items():
        cycles = [x for x in range(len(derived)) if ev(w['outgoing'], w['k'], w['m'], derived[x]) == 0]
        boundaries = {inverse[r][ev(w['incoming'], w['m'], w['n'], y)] for y in range(1 << w['n'])}
        assert boundaries <= set(cycles)
        quotient = lambda x: inverse[r + 1][ev(w['projection'], w['h'], w['m'], derived[x])]
        next_coords = {}
        for x in cycles:
            y = quotient(x)
            v = ev(w['projection'], w['h'], w['m'], derived[x])
            assert y not in next_coords or next_coords[y] == v
            next_coords[y] = v
        assert next_coords == dict(enumerate(coords[r + 1]))
        assert next_coords[zero[r + 1]] == 0
        for x, y in itertools.product(cycles, repeat=2):
            assert (quotient(x) == quotient(y)) == (plus(r, x, y) in boundaries)
            assert quotient(plus(r, x, y)) == plus(r + 1, quotient(x), quotient(y))
            counts['actual_quotient_pairs'] += 1
        for x, y in itertools.product(next_coords, repeat=2):
            assert next_coords[plus(r + 1, x, y)] == next_coords[x] ^ next_coords[y]
            counts['derived_addition_pairs'] += 1
        assert endpoints[r] in cycles and endpoints[r] not in boundaries
        endpoints[r + 1] = quotient(endpoints[r])
        assert next_coords[endpoints[r + 1]] == 1
        derived = [next_coords[i] for i in range(len(next_coords))]
        counts['same_raw_steps'] += 1
    assert endpoints[5] != zero[5]
    for record in search['incoming_checks']:
        r = record['page']
        matrix = sum(record['incoming_matrix'], [])
        for source in range(1 << record['source_dimension']):
            incoming = inverse[r][ev(matrix, dimensions[r], record['source_dimension'], source)]
            assert incoming != endpoints[r]
            counts['actual_complete_incoming_vectors'] += 1
        counts['actual_nonboundary_pages'] += 1
    for x in range(16):
        if x != raw:
            assert coords[2][x] != 4
            counts['wrong_inputs_rejected'] += 1
    counts['actual_models'] += 1

# The named column and the retained future-prefix column are both needed.
for function in itertools.product(range(4), repeat=4):
    if function[0] != 0 or not all(function[x ^ y] == function[x] ^ function[y] for x, y in itertools.product(range(4), repeat=2)):
        continue
    counts['linear_outgoing_maps'] += 1
    if function[1] == 0 and function[2] == 0:
        assert function == (0, 0, 0, 0)
        counts['whole_zero_after_both_columns'] += 1
    if function[1] == 0 and function[2] != 0:
        counts['missing_future_prefix_countermodels'] += 1

# A nonfaithful target interpretation can conceal a nonzero actual map.
actual_d = (0, 1)
unfaithful_coordinates = (0, 0)
assert all(unfaithful_coordinates[actual_d[x]] == 0 for x in range(2))
assert actual_d[1] != 0
counts['missing_faithfulness_countermodels'] = 1

# The E5 incoming prefix does not constrain its outgoing map: this finite
# algebra model has all required incoming maps zero and a nonzero d5 on e0.
outgoing5 = (0, 1, 0, 1)
incoming5 = (0, 0)
assert all(outgoing5[incoming5[x]] == 0 for x in range(2))
assert outgoing5[1] != 0 and 1 not in incoming5
counts['no_E6_from_four_nonboundaries_countermodels'] = 1

report = {
    'status': 'passed_no_findings', 'counts': dict(counts), 'compiled': compiled,
    'review': {
        'actual_source_coordinate_self_reference': False,
        'prefix4_constructs_both_unknown_d3_values': True,
        'prefix5_uses_full_zero_dimensional_neighbor_coordinates': True,
        'page5_whole_incoming_prefix_is_explicit_mathematical_premise': True,
        'result_uses_one_raw_input_and_four_actual_nonboundary_claims': True,
        'E6_or_permanence_claimed': False,
    },
    'input_sha256': {str(p.relative_to(ROOT)): sha(p) for p in [
        Path(__file__), HERE / 'search.json', HERE / 'frozen-source.json',
        HERE / 'Assembly.lean', HERE / 'Actual.lean', HERE / 'ActualIncoming.lean',
        HERE / 'Constructed.lean', HERE / 'Trace.lean', HERE / 'DerivedStep.lean', HERE / 'ZeroSpaces.lean']},
}
(HERE / 'second-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({k: v for k, v in report.items() if k != 'compiled'}, indent=2))
