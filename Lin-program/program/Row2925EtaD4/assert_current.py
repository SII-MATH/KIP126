"""Check source/log/input identities; preserve direct versus later Lake objects."""
import hashlib
import json
import re
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
names = ['Products', 'Comparison', 'Higher', 'ProductSemantics', 'H05',
         'H05Semantics', 'LeftTerm', 'Naturality', 'Restriction', 'Actual', 'TwoBranches', 'Links']
allowed = {'propext', 'Classical.choice', 'Quot.sound'}
leaves = {}
for name in names:
    source, log = HERE / (name + '.lean'), HERE / (name + '.log')
    record_path = HERE / (name + '-compile.json')
    record = json.loads(record_path.read_text())
    assert record['observed_exit_code'] == 0, name
    assert record['source_sha256'] == sha(source), source
    assert record['log_sha256'] == sha(log), log
    for path, digest in record['external_input_sha256'].items():
        assert sha(ROOT / path) == digest, path
    text = log.read_text()
    assert not re.search(r'error:|error\(|sorryAx|warning:', text), log
    reports = re.findall(r"'([^']+)' (?:depends on axioms: \[([^]]*)\]|does not depend on any axioms)", text)
    for theorem, axioms in reports:
        assert {x.strip() for x in axioms.split(',') if x.strip()} <= allowed, theorem
    assert not re.search(r'\b(?:sorry|admit|axiom|native_decide|unsafe)\b', source.read_text()), source
    obj = ROOT / '.lake/build/lib/lean/Row2925EtaD4' / (name + '.olean')
    leaves[name] = dict(source_sha256=sha(source), direct_record_sha256=sha(record_path),
                        reports=len(reports), current_object_sha256=sha(obj),
                        current_object_matches_direct=sha(obj) == record['olean_sha256'])
supplement = json.loads((HERE / 'supplemental-input-identities.json').read_text())
for path, digest in supplement['current_inputs_sha256'].items():
    assert sha(HERE / path) == digest, path
for name, digest in supplement['direct_records_sha256'].items():
    assert sha(HERE / (name + '-compile.json')) == digest, name
raw = json.loads((HERE / 'review.json').read_text())
for path, digest in raw['inputs_sha256'].items():
    assert sha(ROOT / path) == digest, path
report = dict(status='current_sources_logs_inputs_and_standard_axioms_passed', leaves=leaves,
              reports=sum(x['reports'] for x in leaves.values()),
              raw_review_sha256=sha(HERE / 'review.json'),
              independent_review_sha256=sha(HERE / 'independent-review.json'),
              note='Current object mismatch, if present, is recorded separately; historical direct proof records are not rewritten.')
(HERE / 'current-audit.json').write_text(json.dumps(report, indent=2, sort_keys=True) + '\n')
print(len(leaves), 'successful leaves;', report['reports'], 'standard axiom reports')
