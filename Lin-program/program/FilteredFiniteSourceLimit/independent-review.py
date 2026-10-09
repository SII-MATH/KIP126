"""Read-only proof-record audit of finite-source convergence and its unbounded example."""
from pathlib import Path
import hashlib
import json
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
records = {}
for name, expected in [('Basic', 3), ('Examples', 4)]:
    source, log = HERE / (name + '.lean'), HERE / (name + '.log')
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(source)
    assert record['log_sha256'] == sha(log)
    assert not re.search(r'\bsorry\b|\baxiom\b|native_decide', source.read_text())
    txt = log.read_text()
    assert not re.search(r'sorryAx|error:|error\(', txt)
    axes = re.findall(r'depends on axioms: \[([^]]*)\]', txt)
    assert len(axes) == expected
    assert all(set(a.strip() for a in s.split(',')) <= {'propext', 'Classical.choice', 'Quot.sound'} for s in axes)
    obj = ROOT / '.lake/build/lib/lean/FilteredFiniteSourceLimit' / (name + '.olean')
    records[name] = dict(observed_exit_code=0, standard_reports=expected,
        source_sha256=sha(source), log_sha256=sha(log),
        current_object_matches_direct=obj.exists() and sha(obj) == record['olean_sha256'])
report = dict(status='independent_source_review_passed', direct_records=records,
    script_sha256=sha(Path(__file__)), findings=[],
    assumptions=['actual finite source A', 'actual decreasing target filtration G',
                 'target filtration separates all elements', 'the specified map preserves filtrations'],
    conclusion='common image-detection depth and nonempty actual page additive equivalences at all sufficiently late indices',
    example='A=ZMod2; B=Nat->ZMod2; target tails have zero intersection but every level is nonzero',
    not_concluded=['global target filtration bound', 'source or target exhaustion',
                   'finite input models actual homotopy groups', 'Adams strong convergence'])
(HERE / 'independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(report, indent=2))
