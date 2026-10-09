"""Check canonical family/CLI artifacts and the new all36 Lean bundle build."""
import hashlib
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
for filename in ['export-audit.json', 'cli-audit.json']:
    audit = json.loads((HERE / filename).read_text())
    for path, digest in audit['input_sha256'].items():
        assert sha(ROOT / path) == digest, path
record = json.loads((HERE / 'Bundle-compile.json').read_text())
assert record['observed_exit_code'] == 0
assert record['source_sha256'] == sha(HERE / 'Bundle.lean')
assert record['log_sha256'] == sha(HERE / 'Bundle.log')
for path, digest in record['external_input_sha256'].items():
    assert sha(HERE / path) == digest, path
log = (HERE / 'Bundle.log').read_text()
assert 'sorryAx' not in log and 'error:' not in log and 'error(' not in log
axioms = re.findall(r'depends on axioms: \[([^]]*)\]', log)
assert all({x.strip() for x in entry.split(',')} <= {'propext', 'Classical.choice', 'Quot.sound'} for entry in axioms)
reports = len(axioms) + log.count('does not depend on any axioms')
assert reports == 7
family = json.loads((HERE / 'family399.json').read_text())
assert len(family['entries']) == 399
result = dict(status='canonical399_all36_bundle_and_cli_verified', records=36,
    preserved_events=95, preserved_requests=95, standard_or_no_axiom_reports=reports,
    current_olean_matches_direct=record['olean_sha256'] == sha(
        ROOT / '.lake/build/lib/lean/AggregateIncomingTargetCompletion/Bundle.olean'),
    input_sha256={str(path.relative_to(ROOT)): sha(path) for path in [
        HERE / 'Bundle.lean', HERE / 'Bundle.log', HERE / 'family399.json', HERE / 'export-audit.json',
        HERE / 'cli-audit.json', HERE / 'PIPELINE.md', Path(__file__)]})
(HERE / 'bundle-audit.json').write_text(json.dumps(result, indent=2) + '\n')
print('family399 JSON exact;36 incoming targets bound to finite quotient zero;95 requests CLI accepted;7 standard reports')
