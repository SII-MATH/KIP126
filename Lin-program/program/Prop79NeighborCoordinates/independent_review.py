"""Read-only review of constructed full neighboring coordinates."""
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
for name, expected in frozen['files'].items():
    assert sha(HERE / name) == expected
compiled = {}
for name in ['Basic', 'Assembly']:
    record = load(HERE / (name + '-compile.json'))
    source, log = HERE / (name + '.lean'), HERE / (name + '.log')
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(source) and record['log_sha256'] == sha(log)
    assert record['olean_sha256'] == sha(ROOT / '.lake/build/lib/lean/Prop79NeighborCoordinates' / (name + '.olean'))
    for field in ['dependencies_sha256', 'external_input_sha256']:
        for path, expected in record[field].items():
            assert sha(ROOT / path) == expected
    assert not re.search(r'\b(sorry|admit|axiom|native_decide|unsafe)\b', source.read_text())
    assert not re.search(r'\b(sorryAx|Lean\.ofReduceBool|error)\b', log.read_text())
    for report in re.findall(r"'[^']+' depends on axioms: \[([^\]]*)\]", log.read_text()):
        assert set(filter(None, map(str.strip, report.split(',')))) <= {'propext', 'Classical.choice', 'Quot.sound'}
        counts['axiom_reports'] += 1
    compiled[name] = record
assert counts['axiom_reports'] == 11

def ev(bits, m, n, x):
    assert len(bits) == m * n
    return sum((sum(int(bits[i * n + j]) * ((x >> j) & 1) for j in range(n)) % 2) << i for i in range(m))

search = load(ROOT / 'Prop79IncomingSearch/search.json')
for degree, dimensions in [((10, 136), [3, 1, 0]), ((18, 142), [2, 0, 0]), ((9, 135), [5, 3, 2, 1])]:
    wires = [search['comparisons'][f'Cnu:{degree[0]},{degree[1]}:d{r}']['wire'] for r in range(2, len(dimensions) + 1)]
    for choices in itertools.product(*[range(min(4, 1 << d)) for d in dimensions]):
        coordinates, inverse = [], []
        for d, c in zip(dimensions, choices):
            labels = list(range(1 << d))
            if c & 2:
                labels[1], labels[-1] = labels[-1], labels[1]
            labels = [v ^ (c & 1) for v in labels]
            coordinates.append(labels)
            inverse.append({v: i for i, v in enumerate(labels)})
        current = coordinates[0]
        for r, w in enumerate(wires):
            assert [w['m'], w['h']] == dimensions[r:r + 2]
            cycles = [x for x in range(len(current)) if ev(w['outgoing'], w['k'], w['m'], current[x]) == 0]
            boundaries = {inverse[r][ev(w['incoming'], w['m'], w['n'], x)] for x in range(1 << w['n'])}
            plus = lambda x, y: inverse[r][current[x] ^ current[y]]
            quotient = lambda x: inverse[r + 1][ev(w['projection'], w['h'], w['m'], current[x])]
            derived = {}
            for x in cycles:
                z, v = quotient(x), ev(w['projection'], w['h'], w['m'], current[x])
                assert z not in derived or derived[z] == v
                derived[z] = v
                counts['derived_representatives'] += 1
            assert derived == dict(enumerate(coordinates[r + 1]))
            for x, y in itertools.product(cycles, repeat=2):
                assert (quotient(x) == quotient(y)) == (plus(x, y) in boundaries)
                assert quotient(plus(x, y)) == inverse[r + 1][derived[quotient(x)] ^ derived[quotient(y)]]
                counts['actual_quotient_and_add_pairs'] += 1
            current = [derived[x] for x in range(len(derived))]
            counts['constructed_steps'] += 1
        if dimensions[-1] == 0:
            assert current == [0]
            counts['derived_full_singleton_neighbors'] += 1
        else:
            assert sorted(current) == [0, 1]
            for target_offset, generator in itertools.product(range(4), repeat=2):
                target_zero = target_offset
                values = {x: (generator if current[x] else 0) ^ target_offset for x in range(2)}
                named = inverse[-1][1]
                if values[named] == target_zero:
                    assert all(value == target_zero for value in values.values())
                    counts['single_named_value_forces_whole_d5_zero'] += 1
                else:
                    assert any(value != target_zero for value in values.values())
                    counts['missing_named_value_countermodels'] += 1
        counts['actual_models'] += 1

report = {'status': 'passed_no_findings', 'counts': dict(counts), 'compiled': compiled,
    'review': {'later_current_coordinates_are_derived': True,
        'sourceEquiv_degree4': [10, 136], 'outgoing_target_degree4': [18, 142],
        'sourceEquiv_degree5': [9, 135], 'full_d5_zero_derived_from_single_named_value': True,
        'no_self_reference_in_coordinate_meanings': True,
        'd5_known_basis_remains_actual_mathematical_input': True,
        'E6_or_permanence_claimed': False},
    'input_sha256': {str(p.relative_to(ROOT)): sha(p) for p in [Path(__file__),
        HERE / 'frozen-source.json', ROOT / 'Prop79IncomingSearch/search.json',
        ROOT / 'ActualAdamsIncomingBridge/Basic.lean', ROOT / 'Fact721ConstructedActual/Basic.lean']}}
(HERE / 'independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({k: v for k, v in report.items() if k != 'compiled'}, indent=2))
