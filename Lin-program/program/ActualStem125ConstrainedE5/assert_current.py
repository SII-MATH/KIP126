"""Audit the frozen typed aggregate bridge and its exact index provenance."""
import hashlib
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
modules = ['Basic', 'Actual', 'Whole']
reports = 0
builds = []
for name in modules:
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(HERE / (name + '.lean'))
    assert record['log_sha256'] == sha(HERE / (name + '.log'))
    text = (HERE / (name + '.log')).read_text()
    assert 'sorryAx' not in text and 'error:' not in text and 'error(' not in text
    axioms = re.findall(r'depends on axioms: \[([^]]*)\]', text)
    assert all({x.strip() for x in a.split(',')} <= {'propext', 'Classical.choice', 'Quot.sound'} for a in axioms)
    reports += len(axioms) + text.count('does not depend on any axioms')
    builds.append(dict(module=name, exit_code=0, source_log_match=True,
        current_olean_matches_direct=record['olean_sha256'] == sha(
            ROOT / '.lake/build/lib/lean/ActualStem125ConstrainedE5' / (name + '.olean'))))
assert reports == 16
original = [5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,33,34,36,37,38,39,40,41,42,43,44,45,46,49,52,55,56,57]
positive = [1,4,6,8,9,10,11,13,16,17,20,26,32,36,39,40,41]
zero = [0,2,3,5,7,12,14,15,18,19,21,22,23,24,25,27,28,29,30,31,33,34,35,37,38,42,43,44]
assert sorted(positive + zero) == list(range(45))
assert original[positive[10]] == 25
enumeration = json.loads((ROOT / 'Stem125ConstrainedE5/enumeration.json').read_text())
assert [original[i] for i in positive] == enumeration['positive_center_filtrations']
assert [original[i] for i in zero] == enumeration['zero_center_filtrations']
assert enumeration['dimension_counts'] == {'3':4, '4':16, '5':20, '6':8}
for row in enumeration['rows']:
    assert 3 <= row['dimension'] <= 6
    assert row['cardinality'] == 2 ** row['dimension']
    assert 8 <= row['cardinality'] <= 64
files = [HERE / (name + '.lean') for name in modules] + [
    ROOT / 'ActualAdamsProductTraceBridge/Assembly.lean',
    ROOT / 'ActualAdamsProductCycleBridge/Zero.lean',
    ROOT / 'ActualAdamsSystemBridge/Basic.lean',
    ROOT / 'Stem125ConstrainedE5/Constraints.lean',
    ROOT / 'Stem125ConstrainedE5/enumeration.json',
    ROOT / 'Stem125HomologyCertificates/Meaning.lean',
    ROOT / 'Stem125HomologyCertificates/D2.lean',
    ROOT / 'Stem125E5Search/Product.lean',
    ROOT / 'SemanticTrajectoryCertificates/Page.lean',
    Path(__file__)]
result = dict(status='typed_actual_45_center_bridge_direct_audit_passed',
    modules=modules, build_records=builds, standard_or_no_axiom_reports=reports,
    original_filtrations=original, positive_original_indices=positive,
    zero_original_indices=zero, named_positive_index=10, named_degree=[25,150],
    constrained_choice_count=48, dimension_distribution=enumeration['dimension_counts'],
    mathematical_inputs=['one actual S and its homology identifications',
        'zero-compatible homology transitions and typed graded product',
        'six actual multiplicativity squares and five faithful E2 empty targets',
        'actual initial named product and its finite coordinates at the same transported value',
        'two independent candidate obstructions and both complete incoming columns',
        '17 full actual page meanings with complete incoming/current coordinates',
        'equality of both naming-coordinate systems at the filtration25 actual group',
        '28 faithful actual E4 zero-center coordinate maps'],
    limitations=['No actual sphere instance constructed.',
        'No claim that the recorded45 centers exhaust all actual filtrations.',
        'No global realization of all48 choices, later permanence or convergence.'],
    input_sha256={str(p.relative_to(ROOT)): sha(p) for p in files})
(HERE / 'audit.json').write_text(json.dumps(result, indent=2) + '\n')
print('three direct builds;16 standard reports;45 exact centers;48 conditional choices;actual card8..64')
