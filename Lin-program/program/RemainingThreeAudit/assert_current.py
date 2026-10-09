import hashlib
import json
import re
from pathlib import Path

p = Path(__file__).resolve().parent
r = p.parent
sha = lambda f: hashlib.sha256(f.read_bytes()).hexdigest()
rows = json.loads((p/'compile-audit.json').read_text())
assert len(rows) == 1
row = rows[0]
assert row['module'] == 'Consequences' and row['exit_code'] == 0
assert row['source_sha256'] == sha(p/'Consequences.lean')
assert row['log_sha256'] == sha(p/'Consequences.log')
assert row['olean_sha256'] == sha(r/'.lake/build/lib/lean/RemainingThreeAudit/Consequences.olean')
log = (p/'Consequences.log').read_text()
assert 'error:' not in log
axioms = re.findall(r'depends on axioms: \[([^]]*)\]', log)
assert len(axioms) == 3
assert all({v.strip() for v in a.split(',')} <= {'propext','Classical.choice','Quot.sound'} for a in axioms)
review = json.loads((p/'audit.json').read_text())
for name, digest in review['inputs_sha256'].items():
    assert sha(r/name) == digest
print('One current Consequences module; 3 standard-only axiom reports; finite search review current')
