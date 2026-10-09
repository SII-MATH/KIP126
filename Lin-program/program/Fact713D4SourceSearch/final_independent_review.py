"""Verify successful direct-build evidence and independent review artifacts."""
import hashlib
import json
import re
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
modules = ['Maps','MapSemantics','Comparison','Parameters','Naturality','Incoming',
           'ActualDescent','Actual','Assembly','CoordinateBridge']
evidence = {}
for name in modules:
    source, log = HERE/(name+'.lean'), HERE/(name+'.log')
    record = json.loads((HERE/(name+'-compile.json')).read_text())
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(source) and record['log_sha256'] == sha(log)
    for path, digest in record['external_input_sha256'].items():
        assert sha(ROOT/path) == digest
    assert not re.search(r'\b(sorry|admit|axiom|native_decide|unsafe)\b', source.read_text())
    assert not re.search(r'\b(sorryAx|Lean\.ofReduceBool|error)\b', log.read_text())
    reports = re.findall(r"'([^']+)' depends on axioms: \[([^\]]*)\]", log.read_text())
    reports += [(n, '') for n in re.findall(r"'([^']+)' does not depend on any axioms", log.read_text())]
    for _, report in reports:
        assert set(filter(None,map(str.strip,report.split(',')))) <= {'propext','Quot.sound','Classical.choice'}
    evidence[name] = dict(compile=record, reports=[dict(name=n, axioms=list(filter(None,map(str.strip,r.split(','))))) for n,r in reports])

candidate = json.loads((HERE/'candidate-independent-review.json').read_text())
for path, digest in candidate['input_sha256'].items():
    assert sha(ROOT/path) == digest
models = json.loads((HERE/'actual-descent-model-check.json').read_text())
for path, digest in models['sha256'].items():
    assert sha(HERE/path) == digest
replay = json.loads((HERE/'comparison-replay.json').read_text())
for path, digest in replay['sha256'].items():
    assert sha(HERE/path) == digest
assert candidate['accepted_assignments'] == 32 and len(candidate['raw_d3_column_checks']) == 34
assert candidate['coordinate_bridge_checks'] == 40
assert models['counts']['whole_descent_models'] == 256
report = dict(status='no_unresolved_correctness_findings', modules=modules, compiled=evidence,
    axiom_reports=sum(len(x['reports']) for x in evidence.values()),
    resolved_findings=candidate['resolved_findings'],
    independent_counts={k:candidate[k] for k in ['matrices','columns','relation_steps',
        'complete_d2_quotients','whole_d2_square_vectors','quotient_pair_checks',
        'parameter_d3_quotients','tested_unknown_assignments','accepted_assignments','coordinate_bridge_checks']},
    raw_d3_column_checks=len(candidate['raw_d3_column_checks']), actual_model_counts=models['counts'],
    actual_chain=['Incoming.Forcing.zero derives unknown column zero using earlier row2773 theorem',
        'Assembly.incomingCoordinates_surjective and incomingEquation construct full target incoming meaning',
        'Assembly.targetMeaning plus complete current meanings construct both actual quotient coordinates',
        'ActualDescent.next_map_coordinates derives the whole next-map equation from actual quotient transitions',
        'Actual.actual_row2684_d4_zero and Assembly.actual_d4_zero apply whole source-zero and target-zero-reflection with actual d4 naturality',
        'CoordinateBridge gives whole E3/E4 coordinate changes and derives next naming/uniqueness'],
    scope='Conditional actual Adams-object theorem with complete explicit meanings; no sphere realization or unconditioned topological conclusion.',
    file_sha256={p.name:sha(p) for p in [Path(__file__), HERE/'candidate-independent-review.json',
        HERE/'actual-descent-model-check.json', HERE/'comparison-replay.json', *[HERE/(n+'.lean') for n in modules]]})
(HERE/'final-independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(dict(status=report['status'],modules=len(modules),axiom_reports=report['axiom_reports'],
    raw_d3_column_checks=34,coordinate_bridge_checks=40,models=256),indent=2))
