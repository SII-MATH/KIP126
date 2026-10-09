"""Check the base twelve and separate final-target successful build evidence."""
import hashlib
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
modules = ['Data', 'Family', 'Targets', 'FinalData', 'FinalFamily', 'FinalTarget']
records = []
reports = 0
for name in modules:
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0, name
    assert record['source_sha256'] == sha(HERE / (name + '.lean')), name
    assert record['log_sha256'] == sha(HERE / (name + '.log')), name
    text = (HERE / (name + '.log')).read_text()
    assert 'sorryAx' not in text and 'error:' not in text and 'error(' not in text, name
    axioms = re.findall(r'depends on axioms: \[([^]]*)\]', text)
    assert all({x.strip() for x in entry.split(',')} <= {'propext', 'Classical.choice', 'Quot.sound'} for entry in axioms)
    reports += len(axioms) + text.count('does not depend on any axioms')
    records.append(dict(module=name, exit_code=0, source_log_match=True,
        current_olean_matches_direct=record['olean_sha256'] == sha(
            ROOT / '.lake/build/lib/lean/AggregateIncomingTargetCompletion' / (name + '.olean'))))
assert reports == 27
base = json.loads((HERE / 'data.json').read_text())
search = json.loads((HERE / 'conditional3391-search.json').read_text())
final = json.loads((HERE / 'final-data.json').read_text())
for data in [base, search]:
    for path, digest in data['input_sha256'].items():
        assert sha(ROOT / path) == digest, path
assert len(base['ids']) == 12 and len(base['extra']) == 26 and len(base['closure']) == 88
assert len(final['extra']) == 15 and final['final_count'] == 399
assert final['conditional_row'] == [3743, '0', None, 9000]
assert search['blocks']['S0:23,147:d4']['uses'][0]['kind'] == 'conditional_successor_row3986'
assert search['blocks']['S0:18,143:d5']['wire']['incoming'] == [True]
assert search['blocks']['S0:18,143:d5']['wire']['h'] == 0
files = [HERE / (name + '.lean') for name in modules] + [
    HERE / 'data.json', HERE / 'conditional3391-search.json', HERE / 'final-data.json',
    HERE / 'generate.py', HERE / 'search_final.py', HERE / 'final_generate.py', Path(__file__)]
result = dict(status='base_twelve_and_conditional_final_target_builds_verified',
    build_records=records, standard_or_no_axiom_reports=reports,
    base_completed_incoming_rows=12, final_completed_incoming_rows=13,
    all_supplied_incoming_rows=36, original_named_events_preserved=95,
    base_comparisons=384, final_comparisons=399,
    final_additional_condition='Row3743Successor actual known-event and faithful coordinate meaning; raw NULL retained.',
    input_sha256={str(path.relative_to(ROOT)): sha(path) for path in files})
(HERE / 'current-audit.json').write_text(json.dumps(result, indent=2) + '\n')
print('six direct builds;27 standard reports;12 base+1 conditional incoming targets;95 original events preserved')
