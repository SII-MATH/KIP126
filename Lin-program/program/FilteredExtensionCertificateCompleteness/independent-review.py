"""Independent finite factor and entire-certificate search completeness audit."""
from collections import Counter
from itertools import product
from pathlib import Path
import hashlib
import json
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
count = Counter()

def matrices(m, n):
    return product(range(1 << m), repeat=n)

def evaluate(M, x):
    y = 0
    for j, column in enumerate(M):
        if (x >> j) & 1: y ^= column
    return y

for a, h, k in product(range(3), repeat=3):
    for H, K in product(list(matrices(a, h)), list(matrices(a, k))):
        imH = {evaluate(H, x) for x in range(1 << h)}
        imK = {evaluate(K, x) for x in range(1 << k)}
        factors = list(matrices(k, h))
        exists = any(all(evaluate(K, P[j]) == H[j] for j in range(h)) for P in factors)
        assert exists == (imH <= imK)
        count['whole_range_factor_equivalences'] += 1
        for x in range(1 << a):
            assert (x in imH) == any(evaluate(H, v) == x for v in range(1 << h))
            count['range_membership_equivalences'] += 1

# Every Boolean field is enumerated independently, with no rank or preferred
# basis assumptions. Scalar depth-two certificates contain exactly 12 bits.
for depth in [0, 1, 2]:
    for f, source, target, s, n, x, y in product([0, 1], product([0, 1], repeat=depth),
            product([0, 1], repeat=depth), range(2), range(2), [0, 1], [0, 1]):
        at = lambda M, i: M[i] if i < depth else 0
        subgroup = lambda bit: {0, 1} if bit else {0}
        F = lambda i: subgroup(at(source, i))
        G = lambda i: subgroup(at(target, i))
        wf = all(F(i + 1) <= F(i) and G(i + 1) <= G(i)
                 and {f * a for a in F(i)} <= G(i) for i in range(depth + 1))
        corrections = {a for a in F(s + 1) if f * a in G(s + n)}
        relations = {b ^ f * a for b in G(s + n + 1) for a in corrections}
        semantic = wf and x in F(s) and f * x in G(s + n) and y in G(s + n) and (f * x ^ y) in relations
        # Enumerate each structural factor family once, then the remaining
        # six scalar fields. The Cartesian product is the full certificate list.
        structure_ok = False
        for sf, tf, mf in product(product([0, 1], repeat=depth), repeat=3):
            if (all(at(source, i) * sf[i] == at(source, i + 1) for i in range(depth))
                and all(at(target, i) * tf[i] == at(target, i + 1) for i in range(depth))
                and all(at(target, i) * mf[i] == f * at(source, i) for i in range(depth))):
                structure_ok = True
                break
        witness_ok = any(at(source, s) * sm == x and at(target, s+n) * im == f*x
                         and at(target, s+n) * tm == y and at(source, s+1) * sc == (rep ^ x)
                         and at(target, s+n+1) * tc == (f*rep ^ y)
                         for sm, im, tm, rep, sc, tc in product([0, 1], repeat=6))
        accepted = structure_ok and witness_ok
        assert accepted == semantic
        count['whole_certificate_search_equivalences'] += 1
        count['accepted_inputs'] += accepted
        count['rejected_inputs'] += not accepted

sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
records = {}
for name, expected in [('Linear', 8), ('Basic', 5), ('Search', 7), ('Examples', 8)]:
    source, log = HERE / (name + '.lean'), HERE / (name + '.log')
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(source)
    assert record['log_sha256'] == sha(log)
    txt = log.read_text()
    assert not re.search(r'sorryAx|error:|error\(', txt)
    axes = re.findall(r'depends on axioms: \[([^]]*)\]', txt)
    assert len(axes) == expected
    assert all(set(a.strip() for a in s.split(',')) <= {'propext', 'Classical.choice', 'Quot.sound'} for s in axes)
    assert not re.search(r'\bsorry\b|\baxiom\b|native_decide', source.read_text())
    obj = ROOT / '.lake/build/lib/lean/FilteredExtensionCertificateCompleteness' / (name + '.olean')
    records[name] = dict(observed_exit_code=0, standard_reports=expected,
        source_sha256=sha(source), log_sha256=sha(log),
        current_object_matches_direct=obj.exists() and sha(obj) == record['olean_sha256'])
report = dict(status='independent_finite_certificate_completeness_review_passed', counts=dict(count),
    direct_records=records, script_sha256=sha(Path(__file__)),
    scope='exact existing finite filtered-extension ResultValid; complete exponential reference search, not C++ producer completeness')
(HERE / 'independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(report, indent=2))
