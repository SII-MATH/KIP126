"""Independent representative/cycle and commuting-square finite oracle."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
U = frozenset(range(4)); Z = frozenset([0])
SUBS = [Z, frozenset([0, 1]), frozenset([0, 2]), frozenset([0, 3]), U]
CHAINS = [(U, a, b, Z) for a in SUBS for b in SUBS if b <= a]
MAPS = [tuple([0, a, b, a ^ b]) for a in U for b in U]
get = lambda f, s: f[s] if s < len(f) else Z
count = Counter()

def ordinary(F, G, f, s, n, x, y):
    return x in get(F, s) and y in get(G, s + n) and any(
        a ^ x in get(F, s + 1) and f[a] ^ y in get(G, s + n + 1) for a in U)

def actual(F, G, f, s, n, x, y):
    cycles = {a for a in get(F, s) if f[a] in get(G, s + n)}
    corrections = {a for a in get(F, s + 1) if f[a] in get(G, s + n)}
    relations = {b ^ f[a] for a in corrections for b in get(G, s + n + 1)}
    return x in get(F, s) and y in get(G, s + n) and any(
        a ^ x in get(F, s + 1) and f[a] ^ y in relations for a in cycles)

for F, G, f in itertools.product(CHAINS, CHAINS, MAPS):
    if not all(all(f[x] in G[i] for x in F[i]) for i in range(4)):
        continue
    for s, n, x, y in itertools.product(range(4), range(4), U, U):
        checked = actual(F, G, f, s, n, x, y)
        assert checked == ordinary(F, G, f, s, n, x, y)
        count['has_extension_equivalences'] += 1
        if checked and f[x] not in get(G, s + n):
            count['original_not_cycle_but_correctable'] += 1

# Exhaust all filtered squares on a nontrivial two-dimensional flag, all
# lengths 0..2 and all input/output tuples which satisfy the three extensions.
F = (U, frozenset([0, 2]), Z)
maps = [f for f in MAPS if all(f[x] in F[i] for i in range(3) for x in F[i])]
ext = {(f, s, n): [(x, y) for x in U for y in U if actual(F, F, f, s, n, x, y)]
       for f in maps for s in range(4) for n in range(5)}

def no_cross(f, s, n):
    return not any(f[h] in get(F, p) and f[h] not in get(F, p + 1)
                   for h in get(F, s + 1) for p in range(s + 1, s + n + 1))

for f, p, q, g in itertools.product(maps, repeat=4):
    if not all(q[f[a]] == g[p[a]] for a in U):
        continue
    count['commuting_filtered_squares'] += 1
    for s, n, m, l in itertools.product(range(2), range(3), range(3), range(3)):
        if n > m + l or not (no_cross(f, s, n) or no_cross(p, s, m)) or not no_cross(g, s + m, l):
            continue
        for x, y in ext[f, s, n]:
            for xp, z in ext[p, s, m]:
                if xp != x:
                    continue
                for zp, w in ext[g, s + m, l]:
                    if zp != z:
                        continue
                    assert actual(F, F, q, s + n, m + l - n, y, w)
                    count['fourth_extension_checks'] += 1
                    count['length_zero_outputs' if m + l == n else 'positive_length_outputs'] += 1
                    if y and w:
                        count['nonzero_input_output'] += 1
assert count['original_not_cycle_but_correctable'] and count['nonzero_input_output']
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
records = {}
for name in ['Basic', 'Square', 'Examples']:
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(HERE / (name + '.lean'))
    assert record['log_sha256'] == sha(HERE / (name + '.log'))
    log = (HERE / (name + '.log')).read_text()
    assert not re.search(r'sorryAx|error:|error\(', log)
    axes = re.findall(r'depends on axioms: \[([^]]*)\]', log)
    assert all(set(x.strip() for x in a.split(',')) <= {'propext', 'Classical.choice', 'Quot.sound'} for a in axes)
    obj = ROOT / '.lake/build/lib/lean/FilteredExtensionSquare' / (name + '.olean')
    records[name] = dict(direct_exit_code=0, standard_axiom_reports=len(axes) + log.count('does not depend on any axioms'),
        current_object_matches_direct=obj.exists() and sha(obj) == record['olean_sha256'])
assert sum(r['standard_axiom_reports'] for r in records.values()) == 6
report = dict(status='independent_extension_square_review_passed', counts=dict(count), direct_records=records,
    scope='Actual quotient equations on filtered additive groups, without a paper ESS/topology identification.',
    input_sha256={p.name: sha(p) for p in [HERE / (n + '.lean') for n in ['Basic', 'Square', 'Examples']]})
(HERE / 'independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({k: v for k, v in report.items() if k != 'input_sha256'}, indent=2))
