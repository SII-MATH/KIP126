"""Verify the direct audit and independent finite replay against their exact inputs."""
import hashlib, json, re
from pathlib import Path
P = Path(__file__).resolve().parent
R = P.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
audit = json.loads((P/'compile-audit.json').read_text())
assert {a['module'] for a in audit} == {'Basic','Import','Examples'}
count = 0
for a in audit:
    assert a['exit_code'] == 0
    for path, h in a['input_sha256'].items():
        assert sha(R/path) == h, path
    log = P/(a['module']+'.log')
    assert sha(log) == a['log_sha256']
    obj = R/'.lake/build/lib/lean/RepresentativeSquareCertificates'/(a['module']+'.olean')
    assert sha(obj) == a['olean_sha256'], obj
    text = log.read_text()
    assert 'sorryAx' not in text and 'error:' not in text
    reports = re.findall(r'depends on axioms: \[([^]]*)\]', text)
    count += len(reports)
    for report in reports:
        assert {x.strip() for x in report.split(',')} <= {'propext','Classical.choice','Quot.sound'}
assert count == 14, count
review = json.loads((P/'review.json').read_text())
for path, h in review['source_sha256'].items():
    assert sha(R/path) == h, path
print('3 current direct builds;14 standard-only reports;matrix semantic replay current')
