"""Exhaustive set-based quotient oracle, separate from the producer's replay."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
U = frozenset(range(4))
ZERO = frozenset([0])
SUBS = [ZERO, frozenset([0, 1]), frozenset([0, 2]), frozenset([0, 3]), U]
CHAINS = [(U, a, b, ZERO) for a in SUBS for b in SUBS if b <= a]
MAPS = [tuple([0, a, b, a ^ b]) for a in U for b in U]
get = lambda f, s: f[s] if s < len(f) else ZERO
span_sum = lambda a, b: frozenset(x ^ y for x in a for y in b)
cosets = lambda a, h: {frozenset(x ^ y for y in h) for x in a}
count = Counter()

def page(F, G, f, s, n):
    target = get(G, s + n)
    z = frozenset(x for x in get(F, s) if f[x] in target)
    h = frozenset(x for x in get(F, s + 1) if f[x] in target)
    relations = span_sum(get(G, s + n + 1), {f[x] for x in h})
    return z, h, target, relations

def extension(f, h, k, x, y):
    return any(f[a] ^ y in k for a in U if a ^ x in h)

for F, G, f in itertools.product(CHAINS, CHAINS, MAPS):
    if not all(all(f[x] in G[i] for x in F[i]) for i in range(4)):
        continue
    count['filtered_maps'] += 1
    pages = {(s, n): page(F, G, f, s, n) for s in range(6) for n in range(6)}
    for s, n in itertools.product(range(4), repeat=2):
        z, h, target, relations = pages[s, n]
        zp, hp, _, _ = pages[s, n + 1]
        assert hp == h & zp
        source_cosets = cosets(z, h)
        next_cosets = cosets(zp, hp)
        image_next = {frozenset(x ^ b for b in h) for c in next_cosets for x in [min(c)]}
        kernel = {c for c in source_cosets if f[min(c)] in relations}
        assert len(image_next) == len(next_cosets) and image_next == kernel
        count['source_kernel_steps'] += 1
        for x in z:
            zero = f[x] in relations
            corrected = any(f[x ^ a] in get(G, s + n + 1) for a in h)
            assert zero == corrected
            if zero and f[x] not in get(G, s + n + 1):
                count['required_nonzero_corrections'] += 1
            for y in target:
                eq = f[x] ^ y in relations
                assert eq == extension(f, h, get(G, s + n + 1), x, y)
                assert eq == extension(f, get(F, s + 1), get(G, s + n + 1), x, y)
                count['differential_extension_pairs'] += 1
        if n == 0:
            assert z == get(F, s) and h == get(F, s + 1)
            assert relations == get(G, s + 1)
            count['length_zero_pages'] += 1
        oldz, oldh, oldtarget, oldrel = pages[s + 1, n]
        _, _, newtarget, newrel = pages[s, n + 1]
        assert oldtarget == newtarget and oldrel <= newrel
        oldcosets = cosets(oldtarget, oldrel)
        newcosets = cosets(newtarget, newrel)
        advanced = {frozenset(min(c) ^ r for r in newrel) for c in oldcosets}
        assert advanced == newcosets
        keradvance = {c for c in oldcosets if min(c) in newrel}
        image_d = {frozenset(f[x] ^ r for r in oldrel) for x in oldz}
        assert keradvance == image_d
        assert len(newcosets) * len(image_d) == len(oldcosets)
        count['target_cokernel_steps'] += 1
    for s, p in itertools.product(range(5), repeat=2):
        imagecross = any(f[h] in get(G, p) and f[h] not in get(G, p + 1)
                         for h in get(F, s + 1))
        crossing = False
        for t in range(s + 1, p + 1):
            z, h, target, rel = pages[t, p - t]
            for x in z - get(F, t + 1):
                for y in target - get(G, p + 1):
                    if f[x] ^ y in rel:
                        crossing = True
                        count['length_zero_crossings' if t == p else 'positive_length_crossings'] += 1
                        if t < p and f[x] in rel:
                            count['positive_inessential_crossings'] += 1
        assert crossing == imagecross
        count['crossing_points'] += 1
    for s, q in itertools.product(range(4), repeat=2):
        if s > q:
            continue
        nocross = not any(f[h] in get(G, p) and f[h] not in get(G, p + 1)
                          for h in get(F, s + 1) for p in range(s + 1, q + 1))
        higher = all(f[h] in get(G, q + 1) for h in get(F, s + 1))
        assert nocross == higher
        for x, y in itertools.product(U, repeat=2):
            if extension(f, get(F, s + 1), get(G, q + 1), x, y):
                stable = all(f[a] ^ y in get(G, q + 1) for a in U if a ^ x in get(F, s + 1))
                assert stable == nocross
                count['all_representative_stability'] += 1

assert count['positive_inessential_crossings'] and count['length_zero_crossings']
assert count['required_nonzero_corrections']
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
leaves = ['Basic', 'NextPage', 'Examples', 'TargetNext', 'TargetExamples', 'Crossing']
records = {}
for name in leaves:
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(HERE / (name + '.lean'))
    assert record['log_sha256'] == sha(HERE / (name + '.log'))
    log = (HERE / (name + '.log')).read_text()
    assert not re.search(r'sorryAx|error:|error\(', log)
    axes = re.findall(r'depends on axioms: \[([^]]*)\]', log)
    assert all(set(x.strip() for x in a.split(',')) <= {'propext', 'Classical.choice', 'Quot.sound'} for a in axes)
    reports = len(axes) + log.count('does not depend on any axioms')
    obj = ROOT / '.lake/build/lib/lean/FilteredMapExtension' / (name + '.olean')
    records[name] = dict(standard_axiom_reports=reports, direct_exit_code=0,
        current_object_matches_direct=obj.exists() and sha(obj) == record['olean_sha256'])
assert sum(r['standard_axiom_reports'] for r in records.values()) == 34
result = dict(status='independent_filtered_map_review_passed', counts=dict(count), direct_records=records,
    scope='Actual two-term filtered additive map quotients; no paper ESS or topology identification.',
    input_sha256={p.name: sha(p) for p in [*(HERE / (n + '.lean') for n in leaves), HERE / 'README.md', HERE / 'CROSSING.md']})
(HERE / 'independent-review.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps({k: v for k, v in result.items() if k != 'input_sha256'}, indent=2))
