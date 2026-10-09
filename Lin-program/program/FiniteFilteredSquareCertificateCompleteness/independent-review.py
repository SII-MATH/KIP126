"""Independent scalar semantics vs witness existence for crossing and square methods."""
from collections import Counter
from itertools import product
from pathlib import Path
import hashlib
import json
import random
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
U = {0, 1}
subgroup = lambda b: U if b else {0}
at = lambda levels, i: levels[i] if i < len(levels) else 0

def image_witness(H, x):
    return any(H * a == x for a in U)

def factor_witness(H, K):
    return any(K * p == H for p in U)

def preserves_witness(f, H, K):
    return any(K * p == f * H for p in U)

def extension_witness(f, H, K, x, y):
    return any(H * source == rep ^ x and K * target == f * rep ^ y
               for rep, source, target in product(U, repeat=3))

def extension_semantic(f, H, K, x, y):
    return any(rep ^ x in subgroup(H) and f * rep ^ y in subgroup(K) for rep in U)

def stable_semantic(f, H, K):
    return {f * x for x in subgroup(H)} <= subgroup(K)

crossing = Counter()
for depth in range(3):
    flags = list(product(U, repeat=depth))
    for f, F, G, s, n, x, y in product(U, flags, flags, range(2), range(2), U, U):
        wf = all(subgroup(at(F, i + 1)) <= subgroup(at(F, i))
                 and subgroup(at(G, i + 1)) <= subgroup(at(G, i))
                 and stable_semantic(f, at(F, i), at(G, i)) for i in range(depth + 1))
        t = s + n
        corrections = {a for a in subgroup(at(F, s + 1)) if f * a in subgroup(at(G, t))}
        relations = {b ^ f * a for a in corrections for b in subgroup(at(G, t + 1))}
        base = wf and x in subgroup(at(F, s)) and f*x in subgroup(at(G, t)) and y in subgroup(at(G, t)) and (f*x ^ y) in relations
        higher = stable_semantic(f, at(F, s + 1), at(G, t + 1))
        all_reps = all(f*a ^ y in subgroup(at(G, t + 1)) for a in U if a ^ x in subgroup(at(F, s + 1)))
        structural = all(factor_witness(at(F, i + 1), at(F, i))
                         and factor_witness(at(G, i + 1), at(G, i))
                         and preserves_witness(f, at(F, i), at(G, i)) for i in range(depth))
        certificate = structural and image_witness(at(F, s), x) and image_witness(at(G, t), f*x)
        certificate = certificate and image_witness(at(G, t), y) and extension_witness(f, at(F, s+1), at(G, t+1), x, y)
        certificate = certificate and preserves_witness(f, at(F, s+1), at(G, t+1))
        assert certificate == (base and higher) == (base and all_reps)
        crossing['checked_inputs'] += 1
        crossing['accepted'] += certificate
        crossing['rejected'] += not certificate
        crossing['base_extension_without_stability'] += base and not higher

square = Counter()

def inspect_square(depth, flags, maps, vectors, degrees):
    A, B, C, E = flags
    f, p, q, g = maps
    x, y, z, w = vectors
    s, n, m, ell = degrees
    F = lambda levels, i: subgroup(at(levels, i))
    wf = all(F(L, i + 1) <= F(L, i) for L in flags for i in range(depth + 1))
    wf = wf and all(stable_semantic(a, at(L, i), at(M, i))
                    for a, L, M in [(f,A,B),(p,A,C),(q,B,E),(g,C,E)] for i in range(depth + 1))
    wf = wf and all(q*f*v == g*p*v for v in U)
    length = n <= m + ell
    members = x in F(A,s) and y in F(B,s+n) and z in F(C,s+m) and w in F(E,s+m+ell)
    ext = (extension_semantic(f, at(A,s+1), at(B,s+n+1), x, y)
           and extension_semantic(p, at(A,s+1), at(C,s+m+1), x, z)
           and extension_semantic(g, at(C,s+m+1), at(E,s+m+ell+1), z, w))
    first_stable = stable_semantic(f,at(A,s+1),at(B,s+n+1)) or stable_semantic(p,at(A,s+1),at(C,s+m+1))
    last_stable = stable_semantic(g,at(C,s+m+1),at(E,s+m+ell+1))
    premises = length and wf and members and ext and first_stable and last_stable
    structural = all(factor_witness(at(L,i+1),at(L,i)) for L in flags for i in range(depth))
    structural = structural and all(preserves_witness(a,at(L,i),at(M,i))
                                    for a,L,M in [(f,A,B),(p,A,C),(q,B,E),(g,C,E)] for i in range(depth))
    membership = all(image_witness(at(L,i),v) for L,i,v in [(A,s,x),(B,s+n,y),(C,s+m,z),(E,s+m+ell,w)])
    rep = (extension_witness(f,at(A,s+1),at(B,s+n+1),x,y)
           and extension_witness(p,at(A,s+1),at(C,s+m+1),x,z)
           and extension_witness(g,at(C,s+m+1),at(E,s+m+ell+1),z,w))
    branch = preserves_witness(f,at(A,s+1),at(B,s+n+1)) or preserves_witness(p,at(A,s+1),at(C,s+m+1))
    cert = length and structural and membership and q*f == g*p and rep and branch and preserves_witness(g,at(C,s+m+1),at(E,s+m+ell+1))
    assert cert == premises
    fourth_n = max(m+ell-n,0)
    result = length and wf and y in F(B,s+n) and w in F(E,s+n+fourth_n)
    result = result and extension_semantic(q,at(B,s+n+1),at(E,s+n+fourth_n+1),y,w)
    assert not cert or result
    square['checked_inputs'] += 1
    square['accepted'] += cert
    square['rejected'] += not cert
    square['fourth_result_true_without_certificate'] += result and not cert
    return result, cert

for depth in [0, 1]:
    flags = list(product(U, repeat=depth))
    for fs, maps, vectors, deg in product(product(flags, repeat=4), product(U,repeat=4),
                                          product(U,repeat=4), product(U,repeat=3)):
        inspect_square(depth,fs,maps,vectors,(0,*deg))
rng = random.Random(12620260921)
for _ in range(4000):
    flags = [tuple(rng.randrange(2) for _ in range(2)) for _ in range(4)]
    inspect_square(2, flags, [rng.randrange(2) for _ in range(4)],
                   [rng.randrange(2) for _ in range(4)], [rng.randrange(2) for _ in range(4)])
# The Lean counterexample has no generators: all actual groups are zero,
# all maps vanish, x=1 is not a member, while y=w=0 gives the fourth event.
assert inspect_square(1, [(0,)]*4, [0]*4, [1,0,0,0], [0]*4) == (True,False)

modules = {'FilteredCrossingCertificateCompleteness': [('Basic',4),('Search',7)],
           'FiniteFilteredSquareCompletenessLimit': [('Counterexample',4)],
           'FiniteFilteredSquareCertificateCompleteness': [('Basic',6)]}
records = {}
for namespace, leaves in modules.items():
    records[namespace] = {}
    for leaf, expected in leaves:
        folder = ROOT / namespace
        source, log = folder / (leaf + '.lean'), folder / (leaf + '.log')
        direct = json.loads((folder / (leaf + '-compile.json')).read_text())
        assert direct['observed_exit_code'] == 0
        assert direct['source_sha256'] == sha(source)
        assert direct['log_sha256'] == sha(log)
        txt = log.read_text()
        assert not re.search(r'sorryAx|error:|error\(',txt)
        axes = re.findall(r'depends on axioms: \[([^]]*)\]',txt)
        assert len(axes) + txt.count('does not depend on any axioms') == expected
        assert all(set(a.strip() for a in s.split(',')) <= {'propext','Classical.choice','Quot.sound'} for s in axes)
        assert not re.search(r'\bsorry\b|\baxiom\b|native_decide',source.read_text())
        obj = ROOT / '.lake/build/lib/lean' / namespace / (leaf+'.olean')
        records[namespace][leaf] = dict(observed_exit_code=0,standard_reports=expected,
            source_sha256=sha(source),log_sha256=sha(log),
            current_object_matches_direct=obj.exists() and sha(obj) == direct['olean_sha256'])
for namespace in modules:
    report = dict(status='independent_completeness_scope_review_passed',
        crossing_counts=dict(crossing),square_counts=dict(square),
        direct_records=records[namespace],script=str(Path(__file__).relative_to(ROOT)),script_sha256=sha(Path(__file__)),
        named_counterexample='all groups/maps zero, x=1, y=z=w=0: old ResultValid true but memberX check impossible',
        findings=[],scope='stable extension complete for old result; square complete for Premises only, not fourth-extension conclusion')
    (ROOT/namespace/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(dict(crossing_counts=dict(crossing),square_counts=dict(square),direct_records=records),indent=2))
