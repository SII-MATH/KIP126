"""Independent fixed-name actual-trace review without rebuilding Lean."""
from itertools import product
from pathlib import Path
import hashlib
import json
import random
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
FAMILY = ROOT / 'Row3151FullNeighborhood'
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
load = lambda p: json.loads(p.read_text())


def evaluate(bits, m, n, x):
    return sum((sum(int(bits[i*n+j])*((x >> j) & 1) for j in range(n)) % 2) << i
               for i in range(m))


def coords(n, rng):
    nonzero = list(range(1, 1 << n))
    rng.shuffle(nonzero)
    forward = (0, *nonzero)
    return forward, tuple(forward.index(i) for i in range(1 << n))


counts = dict(branches=0, coordinate_models=0, actual_steps=0,
              full_incoming_elements=0, all_current_boundary_checks=0,
              all_cycle_quotient_checks=0, fixed_raw_bindings=0,
              actual_named_events=0)
rng = random.Random(3151)
inputs = {}
for code in ['000', '001', '010', '011', '100', '110']:
    path = FAMILY / f'finite{code}.json'
    wire = load(path)
    inputs[str(path.relative_to(ROOT))] = sha(path)
    assert wire['rawSource'] == [False, False, True, False, False, False]
    assert wire['rawTarget'] == [False, True, False, False, False]
    counts['fixed_raw_bindings'] += 2
    counts['branches'] += 1
    for repetition in range(40):
        counts['coordinate_models'] += 1
        endpoints = {}
        for side, raw, next_value in [('source', 4, 2), ('target', 2, 1)]:
            stages = wire[side + 'Stages']
            current_coordinates, current_inverse = coords(stages[0]['wire']['m'], rng)
            actual_raw = current_inverse[raw]
            actual = actual_raw
            trace = [actual]
            for step in stages:
                w = step['wire']
                counts['actual_steps'] += 1
                next_coordinates, next_inverse = coords(w['h'], rng)
                target_coordinates, target_inverse = coords(w['k'], rng)
                incoming_coordinates, incoming_inverse = coords(w['n'], rng)
                actual_outgoing = lambda x: target_inverse[evaluate(w['outgoing'], w['k'], w['m'], current_coordinates[x])]
                actual_incoming = lambda x: current_inverse[evaluate(w['incoming'], w['m'], w['n'], incoming_coordinates[x])]
                actual_image = {actual_incoming(x) for x in range(1 << w['n'])}
                finite_image = {evaluate(w['incoming'], w['m'], w['n'], x) for x in range(1 << w['n'])}
                counts['full_incoming_elements'] += 1 << w['n']
                for x in range(1 << w['m']):
                    assert (x in actual_image) == (current_coordinates[x] in finite_image)
                    counts['all_current_boundary_checks'] += 1
                actual_cycles = [x for x in range(1 << w['m']) if actual_outgoing(x) == 0]
                actual_add = lambda x, y: current_inverse[current_coordinates[x] ^ current_coordinates[y]]
                quotient = lambda x: frozenset(actual_add(x, y) for y in actual_image)
                projections = {(quotient(x), next_inverse[evaluate(w['projection'], w['h'], w['m'], current_coordinates[x])])
                               for x in actual_cycles}
                assert len(projections) == len({q for q, _ in projections}) == 1 << w['h']
                assert len({v for _, v in projections}) == 1 << w['h']
                counts['all_cycle_quotient_checks'] += len(actual_cycles)
                actual_next_page = dict(projections)
                assert actual_outgoing(actual) == 0 and actual not in actual_image
                assert current_coordinates[actual] == sum(int(v) << i for i,v in enumerate(step['representative']))
                actual = actual_next_page[quotient(actual)]
                trace.append(actual)
                current_coordinates, current_inverse = next_coordinates, next_inverse
            assert len(trace) == 3 and trace[0] == actual_raw
            assert current_coordinates[actual] == next_value
            endpoints[side] = (actual, current_coordinates, current_inverse)
        source, source_coordinates, _ = endpoints['source']
        target, target_coordinates, target_inverse = endpoints['target']
        event = wire['event']
        actual_event = target_inverse[evaluate(event['outgoing'], 2, 2, source_coordinates[source])]
        assert actual_event == target != 0
        counts['actual_named_events'] += 1

source = HERE / 'Named.lean'
log = HERE / 'Named.log'
observed = load(HERE / 'Named-compile.json')
assert observed['observed_exit_code'] == 0
assert observed['source_sha256'] == sha(source)
assert observed['log_sha256'] == sha(log)
reports = re.findall(r"'([^']+)' depends on axioms: \[([^\]]*)\]", log.read_text(), re.S)
assert len(reports) == 12
for theorem, deps in reports:
    assert {a.strip() for a in deps.split(',') if a.strip()} <= {
        'propext', 'Classical.choice', 'Quot.sound'}, theorem
freeze = load(HERE / 'frozen-named.json')
for name, digest in freeze['source_sha256'].items():
    assert sha(ROOT / name) == digest
for name, digest in freeze['imported_source_sha256'].items():
    assert sha(ROOT / name) == digest
obj = ROOT / '.lake/build/lib/lean/Row3151ActualTransport/Named.olean'
report = dict(findings=[], module='Row3151ActualTransport.Named',
    counts=counts, rng_seed=3151, reviewed_source_sha256=sha(source),
    reviewed_log_sha256=sha(log), upstream_observed_exit=0, standard_only_reports=12,
    reviewed_input_sha256=inputs, historical_direct_object=observed['olean_sha256'],
    current_object=sha(obj), object_matches_direct=sha(obj)==observed['olean_sha256'],
    raw_binding='fixed6D local2 source and5D local1 target; actual inputs are coordinate inverses',
    trace='actual quotient maps produce E3/E4 endpoints, and full incoming meanings prove nonboundaries',
    remaining_obligations=['whole actual coordinate/differential/quotient meanings',
        'known d4 column', 'identification of the coordinates with the intended topological Adams E2'],
    independent_recompilation=False, script_sha256=sha(Path(__file__)))
(HERE / 'independent-named-review.json').write_text(json.dumps(report, indent=2)+'\n')
print(json.dumps(counts))
