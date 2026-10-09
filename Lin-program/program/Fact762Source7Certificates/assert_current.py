"""Check that the current compiled modules and independent review match disk."""
import hashlib
import json
import re
from pathlib import Path

p = Path(__file__).resolve().parent
r = p.parent
sha = lambda f: hashlib.sha256(f.read_bytes()).hexdigest()
counts = {'Finite': 5, 'Propagation': 2, 'Semantics': 5, 'Inputs': 3}
audit = json.loads((p/'compile-audit.json').read_text())
assert len(audit) == len(counts) and {x['module'] for x in audit} == set(counts)
reports = 0
for row in audit:
    name = row['module']
    assert row['exit_code'] == 0
    assert row['source_sha256'] == sha(p/f'{name}.lean')
    assert row['log_sha256'] == sha(p/f'{name}.log')
    assert row['olean_sha256'] == sha(r/f'.lake/build/lib/lean/Fact762Source7Certificates/{name}.olean')
    log = (p/f'{name}.log').read_text()
    assert 'error:' not in log
    axioms = re.findall(r'depends on axioms: \[([^]]*)\]', log)
    empty = log.count('does not depend on any axioms')
    assert len(axioms)+empty == counts[name]
    assert all({v.strip() for v in a.split(',')} <= {'propext', 'Classical.choice', 'Quot.sound'} for a in axioms)
    reports += len(axioms)+empty
for file in ['source.json', 'review.json']:
    review = json.loads((p/file).read_text())
    for name, digest in review['inputs_sha256'].items():
        assert sha(r/name) == digest, (file, name)
print(f'Four current modules; {reports} standard-only/no-axiom reports; full raw/matrix review current')
