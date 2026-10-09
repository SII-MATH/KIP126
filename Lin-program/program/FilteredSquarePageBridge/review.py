"""Independent actual page reconstruction of all square-produced fourth events."""
from collections import Counter
from pathlib import Path
import hashlib
import json
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
DATA = ROOT / 'FiniteFilteredSquareProducer/valid.jsonl'
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
rows = [json.loads(x) for x in DATA.read_text().splitlines()]
assert len(rows) == 863
count = Counter()

bits = lambda xs: sum(int(x) << i for i, x in enumerate(xs))

def matrix(flat, m, n, x):
    return sum((sum(int(flat[i*n+j]) * ((x >> j) & 1) for j in range(n)) % 2) << i for i in range(m))

def levels(d, key, dim, generators):
    return [{matrix(flat, dim, generators, x) for x in range(1 << generators)} for flat in d[key]]

at = lambda F, t: F[t] if t < len(F) else {0}
coset = lambda x, H: frozenset(x ^ h for h in H)
for wire in rows:
    d = wire['data']
    F = levels(d, 'sourceB', d['b'], d['hb'])
    G = levels(d, 'sourceD', d['d'], d['hd'])
    q = lambda x: matrix(d['q'], d['d'], d['b'], x)
    y, w = bits(d['y']), bits(d['w'])
    assert d['n'] <= d['m'] + d['l']
    s, n = d['s'] + d['n'], d['m'] + d['l'] - d['n']
    t = s + n
    assert t == d['s'] + d['m'] + d['l']
    assert y in at(F, s) and w in at(G, t)
    assert all(at(F, i + 1) <= at(F, i) and at(G, i + 1) <= at(G, i)
               and {q(x) for x in at(F, i)} <= at(G, i) for i in range(d['depth'] + 1))
    cycles = {a for a in at(F, s) if q(a) in at(G, t)}
    corrections = {a for a in at(F, s + 1) if q(a) in at(G, t)}
    relations = {b ^ q(a) for b in at(G, t + 1) for a in corrections}
    witnesses = {a for a in cycles if coset(a, at(F, s + 1)) == coset(y, at(F, s + 1))
                 and (0, coset(q(a), relations)) == (0, coset(w, relations))}
    assert witnesses
    # The source-page class with this leading class is unique, even if the
    # square proof must choose a different raw representative.
    assert len({coset(a, corrections) for a in witnesses}) == 1
    count['actual_fourth_page_events'] += 1
    count['branch_' + wire['firstBranch']] += 1
    count['raw_fourth_noncycles'] += y not in cycles
    count['zero_length_events'] += n == 0
    count['empty_filtration_events'] += d['depth'] == 0
    count['nonzero_target_classes'] += coset(w, relations) != frozenset(relations)
    for a in witnesses:
        assert a ^ y in at(F, s + 1)
        count['corrected_cycle_witnesses'] += 1

records = {}
for name, expected in [('Basic', 6), ('Import', 4), ('Examples', 9)]:
    source, log = HERE / (name + '.lean'), HERE / (name + '.log')
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(source)
    assert record['log_sha256'] == sha(log)
    txt = log.read_text()
    assert not re.search(r'sorryAx|error:|error\(', txt)
    axes = re.findall(r'depends on axioms: \[([^]]*)\]', txt)
    assert len(axes) + txt.count('does not depend on any axioms') == expected
    assert all(set(a.strip() for a in s.split(',')) <= {'propext', 'Classical.choice', 'Quot.sound'} for s in axes)
    obj = ROOT / '.lake/build/lib/lean/FilteredSquarePageBridge' / (name + '.olean')
    records[name] = dict(observed_exit_code=0, standard_reports=expected,
        source_sha256=sha(source), log_sha256=sha(log),
        current_object_matches_direct=obj.exists() and sha(obj) == record['olean_sha256'])
report = dict(status='square_to_actual_page_bridge_review_passed', counts=dict(count), direct_records=records,
    inputs_sha256={str(DATA.relative_to(ROOT)): sha(DATA)}, script_sha256=sha(Path(__file__)))
(HERE / 'review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(report, indent=2))
