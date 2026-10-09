"""Literal associated-graded, boundary, and survivor comparison on finite groups."""
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
at = lambda F, s: F[s] if s < len(F) else Z
coset = lambda x, H: frozenset(x ^ h for h in H)
count = Counter()

def setup(F, G, f, s, n):
    F0, F1, G0, G1 = at(F, s), at(F, s + 1), at(G, s + n), at(G, s + n + 1)
    cycles = frozenset(a for a in F0 if f[a] in G0)
    corrections = frozenset(a for a in F1 if f[a] in G0)
    relations = frozenset(b ^ f[h] for b in G1 for h in corrections)
    surviving = {coset(a, F1) for a in cycles}
    boundaries = {coset(a, G1) for a in relations}
    return F0, F1, G0, G1, cycles, corrections, relations, surviving, boundaries

for F, G, f in itertools.product(CHAINS, CHAINS, MAPS):
    if not all(f[x] in G[i] for i in range(4) for x in F[i]): continue
    count['filtered_maps'] += 1
    for s, n in itertools.product(range(4), repeat=2):
        F0, F1, G0, G1, cycles, corrections, relations, surviving, boundaries = setup(F, G, f, s, n)
        source = {coset(x, corrections) for x in cycles}
        leading = {coset(min(x), F1) for x in source}
        assert len(leading) == len(source) and leading == surviving
        target = {coset(y, relations) for y in G0}
        graded_target = {coset(y, G1) for y in G0}
        # Third-isomorphism quotient equality without choosing linear bases.
        quotient_graded = {frozenset(coset(min(y) ^ min(b), G1) for b in boundaries) for y in graded_target}
        assert len(target) == len(quotient_graded)
        count['source_and_target_isomorphisms'] += 1
        next_surviving = setup(F, G, f, s, n + 1)[7]
        zero_classes = {coset(a, F1) for a in cycles if f[a] in relations}
        assert next_surviving == zero_classes
        count['survivor_recursions'] += 1
        if n == 0:
            assert surviving == {coset(x, F1) for x in F0}
            assert boundaries == {G1}
            assert corrections == F1 and relations == G1
            count['initial_pages'] += 1
        for x, y in itertools.product(F0, G0):
            event = any(coset(a, F1) == coset(x, F1) and f[a] ^ y in relations for a in cycles)
            ordinary = any(a ^ x in F1 and f[a] ^ y in G1 for a in U)
            assert event == ordinary
            count['event_equivalences'] += 1
            if event and f[x] not in G0: count['noncycle_original_events'] += 1
            assert (y not in relations) == (coset(y, G1) not in boundaries)
            count['essential_equivalences'] += 1
        old = setup(F, G, f, s + 1, n)
        new = setup(F, G, f, s, n + 1)
        assert old[2] == new[2] and old[3] == new[3]
        old_target = {coset(y, old[6]) for y in old[2]}
        kernel = {a for a in old_target if min(a) in new[6]}
        differential_image = {coset(f[a], old[6]) for a in old[4]}
        assert kernel == differential_image
        count['target_cokernel_recursions'] += 1
    for t, n in itertools.product(range(5), range(7)):
        incoming = {a for a in at(F, max(t + 1 - n, 0)) if f[a] in at(G, t)}
        relations = {b ^ f[a] for b in at(G, t + 1) for a in incoming}
        next_incoming = {a for a in at(F, max(t - n, 0)) if f[a] in at(G, t)}
        next_relations = {b ^ f[a] for b in at(G, t + 1) for a in next_incoming}
        assert relations <= next_relations
        if n <= t:
            local = setup(F, G, f, t - n, n)
            assert relations == local[6]
            killed = {coset(y, relations) for y in at(G, t) if y in next_relations}
            image_d = {coset(f[a], relations) for a in local[4]}
            assert killed == image_d
            count['all_target_incoming_steps'] += 1
        if n >= t + 1:
            assert relations == {b ^ f[a] for b in at(G, t + 1) for a in F[0] if f[a] in at(G, t)}
            assert relations == next_relations
            count['all_target_stable_steps'] += 1
assert count['noncycle_original_events'] > 0
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
records = {}
for name in ['Basic', 'Event', 'Recurrence', 'AllTargets', 'Examples']:
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(HERE / (name + '.lean'))
    assert record['log_sha256'] == sha(HERE / (name + '.log'))
    log = (HERE / (name + '.log')).read_text()
    assert not re.search(r'sorryAx|error:|error\(', log)
    axes = re.findall(r'depends on axioms: \[([^]]*)\]', log)
    assert all(set(x.strip() for x in a.split(',')) <= {'propext', 'Classical.choice', 'Quot.sound'} for a in axes)
    obj = ROOT / '.lake/build/lib/lean/FilteredMapGradedComparison' / (name + '.olean')
    records[name] = dict(exit_code=0, standard_reports=len(axes) + log.count('does not depend on any axioms'),
        current_object_matches_direct=obj.exists() and sha(obj) == record['olean_sha256'])
result = dict(status='graded_comparison_replay_passed', counts=dict(count), direct_records=records,
    input_sha256={p.name: sha(p) for p in [HERE / (n + '.lean') for n in records] + [HERE / 'review.py']})
(HERE / 'review.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps({k: v for k, v in result.items() if k != 'input_sha256'}, indent=2))
