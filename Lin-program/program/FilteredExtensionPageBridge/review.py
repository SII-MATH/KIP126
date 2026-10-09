"""Independent actual page-equation and crossing audit with full finite subgroups."""
from collections import Counter
from itertools import product
from pathlib import Path
import hashlib
import json
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
U = frozenset(range(4)); ZERO = frozenset([0])
S = [ZERO, frozenset([0, 1]), frozenset([0, 2]), frozenset([0, 3]), U]
CHAINS = [(a, b, c, ZERO) for a, b, c in product(S, repeat=3) if c <= b <= a]
MAPS = [(0, a, b, a ^ b) for a, b in product(U, repeat=2)]
at = lambda F, t: F[t] if t < len(F) else ZERO
coset = lambda x, H: frozenset(x ^ h for h in H)
exact = lambda F, t, x: x in at(F, t) and x not in at(F, t + 1)
count = Counter()
for F, G, f in product(CHAINS, CHAINS, MAPS):
    if not all(f[x] in G[i] for i in range(4) for x in F[i]): continue
    count['filtered_maps'] += 1
    for s, n in product(range(4), repeat=2):
        t = s + n
        cycles = {a for a in at(F, s) if f[a] in at(G, t)}
        corr = {a for a in at(F, s + 1) if f[a] in at(G, t)}
        R = {y ^ f[a] for y in at(G, t + 1) for a in corr}
        stable = all(f[a] in at(G, t + 1) for a in at(F, s + 1))
        for x, y in product(at(F, s), at(G, t)):
            extension = any(a ^ x in at(F, s + 1) and f[a] ^ y in at(G, t + 1) for a in U)
            leading_event = any(coset(a, at(F, s + 1)) == coset(x, at(F, s + 1))
                                and (0, coset(f[a], R)) == (0, coset(y, R)) for a in cycles)
            assert leading_event == extension
            count['leading_page_event_equivalences'] += 1
            if leading_event and x not in cycles:
                count['noncycle_corrected_events'] += 1
            if x in cycles:
                literal = (0, coset(f[x], R)) == (0, coset(y, R))
                assert literal == extension
                count['raw_cycle_page_equations'] += 1
            if extension:
                all_reps = all(f[a] ^ y in at(G, t + 1) for a in U if a ^ x in at(F, s + 1))
                assert all_reps == stable
                count['all_representatives_equivalences'] += 1
        for y in at(G, t):
            assert exact(G, t, y) == (coset(y, at(G, t + 1)) != at(G, t + 1))
            earlier = {coset(a, at(G, t + 1)) for a in R}
            assert (coset(y, R) != frozenset(R)) == (coset(y, at(G, t + 1)) not in earlier)
            count['exact_and_essential_distinctions'] += 1
        crossing = False
        for p in range(s + 1, t + 1):
            literal = False
            for v in range(s + 1, p + 1):
                vcycles = {a for a in at(F, v) if f[a] in at(G, p)}
                vcorr = {a for a in at(F, v + 1) if f[a] in at(G, p)}
                vrel = {b ^ f[a] for b in at(G, p + 1) for a in vcorr}
                for a, b in product(vcycles, at(G, p)):
                    eq = (0, coset(f[a], vrel)) == (0, coset(b, vrel))
                    if exact(F, v, a) and exact(G, p, b) and eq:
                        literal = True
                        if coset(b, vrel) == frozenset(vrel):
                            count['inessential_exact_crossings'] += 1
            raw = any(exact(G, p, f[a]) for a in at(F, s + 1))
            assert literal == raw
            crossing |= literal
            count['literal_crossing_equivalences'] += 1
        assert (not crossing) == stable
        count['no_crossing_iff_higher'] += 1

sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
records = {}
for name in ['Basic', 'Crossing', 'Certificate', 'Import', 'Examples']:
    source, log = HERE / (name + '.lean'), HERE / (name + '.log')
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(source)
    assert record['log_sha256'] == sha(log)
    txt = log.read_text()
    assert not re.search(r'sorryAx|error:|error\(', txt)
    axes = re.findall(r'depends on axioms: \[([^]]*)\]', txt)
    assert all(set(a.strip() for a in s.split(',')) <= {'propext', 'Classical.choice', 'Quot.sound'} for s in axes)
    obj = ROOT / '.lake/build/lib/lean/FilteredExtensionPageBridge' / (name + '.olean')
    records[name] = dict(exit_code=0, standard_reports=len(axes) + txt.count('does not depend on any axioms'),
        source_sha256=sha(source), log_sha256=sha(log),
        current_object_matches_direct=obj.exists() and sha(obj) == record['olean_sha256'])
report = dict(status='actual_page_equation_crossing_bridge_review_passed', counts=dict(count),
    direct_records=records, script_sha256=sha(Path(__file__)))
(HERE / 'review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(report, indent=2))
