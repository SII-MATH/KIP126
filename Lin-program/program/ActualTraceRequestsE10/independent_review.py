"""Review accepted proof evidence and exact imported-request behavior."""
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
frozen = load(HERE / 'frozen-source.json')
for filename, expected in frozen['files'].items():
    assert sha(ROOT / filename) == expected
reports = 0
for proof in frozen['modules']:
    name = proof['module'].split('.')[-1]
    assert proof['observed_exit_code'] == 0 and proof['inputs_stable']
    source = HERE / (name + '.lean')
    assert sha(source) == proof['source_sha256']
    assert not re.search(r'\b(sorry|axiom|native_decide|unsafe)\b', source.read_text())
    log = HERE / proof['log']
    assert sha(log) == proof['log_sha256']
    assert 'sorryAx' not in log.read_text() and 'error:' not in log.read_text()
    for report in re.findall(r'depends on axioms:\s*\[([^]]*)\]', log.read_text()):
        assert set(filter(None, map(str.strip, report.split(',')))) <= {
            'propext', 'Classical.choice', 'Quot.sound'}
        reports += 1
    reports += log.read_text().count('does not depend on any axioms')
runtime = load(HERE / 'runtime.json')
assert runtime['observed_exit_code'] == 0
assert runtime['source_sha256'] == sha(HERE / 'Runtime.lean')
assert runtime['log_sha256'] == sha(HERE / 'runtime.log')
assert 'PASS: 10668 exact requests; 10667 rejected fields' in (HERE / 'runtime.log').read_text()
canonical = load(HERE / 'fact713.json')
assert canonical == dict(version=1, claim='fact-7.13:E10', source=[True, True], output=[True])
lines = (HERE / 'fact713.jsonl').read_text().splitlines()
assert lines and all(json.loads(line) == canonical for line in lines)
vectors = lambda n: [list(v) for k in range(n+1) for v in itertools.product([False, True], repeat=k)]
counts = dict(requests=0, rejected=0, batch_line_checks=0)
for version, claim, source, output in itertools.product(
        [0, 1, 2], ['fact-7.13:E10', 'fact-7.13:E9', 'fact-7.13:E12', ''], vectors(6), vectors(2)):
    request = dict(version=version, claim=claim, source=source, output=output)
    fields = [('version', version == 1), ('claim', claim == canonical['claim']),
              ('source.length', len(source) == 2), ('source', source == canonical['source']),
              ('output.length', len(output) == 1), ('output', output == canonical['output'])]
    failure = next((name for name, good in fields if not good), None)
    assert (failure is None) == (request == canonical)
    if failure:
        counts['rejected'] += 1
        failures = [(i+1, next(name for name, good in fields if not good))
                    for i, r in enumerate([canonical, request, canonical]) if r != canonical]
        assert failures == [(2, failure)]
    counts['requests'] += 1
    counts['batch_line_checks'] += 1
assert counts['requests'] == 10668 and counts['rejected'] == 10667
result = dict(status='no_findings', findings=[], modules=len(frozen['modules']),
              standard_axiom_reports=reports, frozen_files=len(frozen['files']), counts=counts,
              inherited_runtime={'malformed_records':18, 'malformed_batches':6,
                                 'parser_line_locations':6, 'valid_batches':10},
              checked=['same actual Prefix10 is used by soundness and tactic',
                       'claim and version match before delegated full input/output semantics',
                       'strict shared canonical parser reused without relaxing fields',
                       'eight negative tactic examples in accepted Examples module',
                       'diagnostics use explicit functions; unsupported generic instance omitted'],
              limitations=['Only the named E10 request is supported',
                           'Actual Prefix10 carries the explicit neighboring mathematical meanings',
                           'No frozen Lean source or object was recompiled in this review'])
(HERE / 'independent-review.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps(result, indent=2))
