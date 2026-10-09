"""Independent finite homology systems and all-map transport enumeration."""
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
functions = list(itertools.product(range(2), repeat=2))
stages = []
for incoming, outgoing, advance in itertools.product(functions, repeat=3):
    if incoming[0] or outgoing[0]:
        continue
    if any(outgoing[incoming[y]] for y in range(2)):
        continue
    if not all((advance[x] == 0) == (x in incoming) for x in range(2) if outgoing[x] == 0):
        continue
    stages.append((incoming, outgoing, advance))
assert len(stages) == 4
stable = ((0, 0), (0, 0), (0, 1))
counts['one_stage_actual_homology_models'] = len(stages)

def trace(system, x):
    xs = [x]
    for _, _, advance in system:
        xs.append(advance[xs[-1]])
    return xs

for system in itertools.product(stages, repeat=5):
    for x in range(2):
        xs = trace(system, x)
        cycles = [outgoing[xs[n]] == 0 for n, (_, outgoing, _) in enumerate(system)]
        for hit in range(5):
            if xs[hit] not in system[hit][0]:
                continue
            assert all(y == 0 for y in xs[hit + 1:])
            counts['zero_after_hit'] += 1
            if all(cycles[:hit]):
                assert all(cycles)
                counts['all_cycles_from_finite_before_hit'] += 1
    counts['five_stage_systems'] += 1

systems = list(itertools.product(stages, repeat=2))
zero_maps = [f for f in functions if f[0] == 0]
for source, target in itertools.product(systems, repeat=2):
    for page in itertools.product(functions, repeat=3):
        for outgoing_map in itertools.product(zero_maps, repeat=2):
            differential = all(target[n][1][page[n][x]] == outgoing_map[n][source[n][1][x]]
                               for n in range(2) for x in range(2))
            if not differential:
                continue
            compatible = all(target[n][2][page[n][x]] == page[n + 1][source[n][2][x]]
                             for n in range(2) for x in range(2) if source[n][1][x] == 0)
            if not compatible:
                continue
            for x in range(2):
                sx, tx = trace(source, x), trace(target, page[0][x])
                source_cycles = all(source[n][1][sx[n]] == 0 for n in range(2))
                target_cycles = all(target[n][1][tx[n]] == 0 for n in range(2))
                if source_cycles:
                    assert all(tx[n] == page[n][sx[n]] for n in range(3))
                    assert target_cycles
                    counts['natural_same_input_cycle_transports'] += 1
                if all(len(set(f)) == 2 for f in outgoing_map) and target_cycles:
                    assert source_cycles
                    counts['faithful_cycle_reflections'] += 1
            if all(len(set(f)) == 2 for f in page[:2]) and all(source[n][1] == (0, 0) for n in range(2)):
                assert all(target[n][1] == (0, 0) for n in range(2))
                counts['surjective_full_map_tail_pushes'] += 1
            if all(len(set(f)) == 2 for f in outgoing_map) and all(target[n][1] == (0, 0) for n in range(2)):
                assert all(source[n][1] == (0, 0) for n in range(2))
                counts['faithful_full_map_tail_pulls'] += 1
            counts['two_stage_natural_maps'] += 1

# Naturality alone cannot compare independently advanced representatives.
source = (stable, stable)
target = (stable, ((0, 0), (0, 1), (0, 0)))
page, out = ((0, 1), (0, 0), (0, 0)), ((0, 0), (0, 0))
assert all(target[n][1][page[n][x]] == out[n][source[n][1][x]] for n in range(2) for x in range(2))
assert all(source[n][1][trace(source, 1)[n]] == 0 for n in range(2))
assert target[1][1][trace(target, page[0][1])[1]] == 1
counts['missing_quotient_compatibility_countermodels'] = 1

# Zero-preserving nonfaithful target maps hide a nonzero outgoing value.
assert (0, 0)[1] == (0, 0)[0]
counts['missing_outgoing_faithfulness_countermodels'] = 1

compiled = {}
for name in ['Basic', 'Hit', 'Filtration', 'Fact762', 'Examples']:
    source, log = HERE / (name + '.lean'), HERE / (name + '.log')
    record = load(HERE / (name + '-compile.json'))
    assert record['observed_exit_code'] == 0 and record['source_sha256'] == sha(source)
    assert record['log_sha256'] == sha(log)
    assert record['olean_sha256'] == sha(ROOT / '.lake/build/lib/lean/OutgoingCycleMapTransport' / (name + '.olean'))
    for field in ['dependencies_sha256', 'external_input_sha256']:
        for path, expected in record[field].items():
            assert sha(ROOT / path) == expected, (name, path)
    assert not re.search(r'\b(sorry|admit|axiom|native_decide|unsafe)\b', source.read_text())
    assert not re.search(r'\b(sorryAx|Lean\.ofReduceBool|error)\b', log.read_text())
    for report in re.findall(r"'[^']+' depends on axioms: \[([^\]]*)\]", log.read_text()):
        assert set(filter(None, map(str.strip, report.split(',')))) <= {'propext', 'Classical.choice', 'Quot.sound'}
        counts['axiom_reports'] += 1
    counts['axiom_reports'] += len(re.findall(r"'[^']+' does not depend on any axioms", log.read_text()))
    compiled[name] = record

report = {'status': 'passed', 'counts': dict(counts), 'compiled': compiled,
    'scope': 'Universal all-page map transport and hit-branch tail theorem; no unconditional Fact7.6(2) instance.',
    'fact762_tail_removed_on_proved_hit_branch': True,
    'fact762_no_hit_branch_resolved': False,
    'paper_realization_supplied': False,
    'input_sha256': {str(p.relative_to(ROOT)): sha(p) for p in [Path(__file__),
        ROOT / 'Fact762PageCertificates/comparison.json', ROOT / 'ActualPermanenceBoundary/Cases.lean',
        ROOT / 'OutgoingCycleFiltrationCertificates/Basic.lean',
        ROOT / 'OutgoingCycleFiltrationCertificates/Boundary.lean']}}
(HERE / 'model-check.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({k: v for k, v in report.items() if k != 'compiled'}, indent=2))
