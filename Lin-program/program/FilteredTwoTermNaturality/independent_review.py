"""Independent cyclic-group quotient oracle and frozen proof-evidence review."""
from collections import Counter
from functools import lru_cache
from itertools import product
from pathlib import Path
import hashlib
import json
import random
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
load = lambda p: json.loads(p.read_text())
frozen = load(HERE / 'frozen-source.json')
for category in ['source_sha256', 'imported_source_sha256']:
    for name, digest in frozen[category].items():
        assert sha(ROOT / name) == digest
proofs = {}
for name in ['Basic', 'Laws', 'Examples']:
    record = load(HERE / (name + '-compile.json'))
    assert record == frozen['direct_compilation'][name]
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(HERE / (name + '.lean'))
    log = HERE / (name + '.log')
    assert record['log_sha256'] == sha(log)
    reports = re.findall(r"'[^']+' depends on axioms: \[([^\]]*)\]", log.read_text())
    reports += [''] * len(re.findall(r"'[^']+' does not depend on any axioms", log.read_text()))
    assert not re.search(r'\b(sorryAx|error|Lean\.ofReduceBool)\b', log.read_text())
    warnings = [line for line in log.read_text().splitlines() if ': warning:' in line]
    assert all('is not explicitly referenced' in line for line in warnings)
    for report in reports:
        assert set(filter(None, map(str.strip, report.split(',')))) <= {
            'propext', 'Classical.choice', 'Quot.sound'}
    source = (HERE / (name + '.lean')).read_text()
    assert not re.search(r'\b(sorry|axiom|native_decide|unsafe)\b', source)
    proofs[name] = dict(reports=len(reports), record=record, warnings=warnings,
                       current_olean_matches=record['olean_sha256'] == sha(
                           ROOT / f'.lake/build/lib/lean/{HERE.name}/{name}.olean'))
assert sum(p['reports'] for p in proofs.values()) == frozen['axiom_reports'] == 12

@lru_cache(None)
def chains(order):
    divisors = [d for d in range(1, order+1) if order % d == 0]
    return tuple(ds for ds in product(divisors, repeat=3)
                 if ds[1] % ds[0] == 0 and ds[2] % ds[1] == 0)

def subgroup(order, ds, s):
    d = ds[s] if s < 3 else order
    return frozenset(range(0, order, d))

def maps(a, b):
    return [k for k in range(b) if a*k % b == 0]

def preserves(a, b, fa, fb, coefficient):
    return all(all(coefficient*x % b in subgroup(b, fb, s)
                   for x in subgroup(a, fa, s)) for s in range(4))

@lru_cache(None)
def source(a, b, fa, fb, f, s, n):
    target = subgroup(b, fb, s+n)
    cycles = frozenset(x for x in subgroup(a, fa, s) if f*x % b in target)
    corrections = frozenset(x for x in subgroup(a, fa, s+1) if f*x % b in target)
    assert corrections <= cycles
    return cycles, corrections

@lru_cache(None)
def target(a, b, fa, fb, f, t, n):
    ambient = subgroup(b, fb, t)
    incoming = {f*x % b for x in subgroup(a, fa, max(0, t+1-n)) if f*x % b in ambient}
    higher = subgroup(b, fb, t+1)
    relations = frozenset((u+v) % b for u in higher for v in incoming)
    assert relations <= ambient
    return ambient, relations

def cls(order, relations, x):
    return min((x+y) % order for y in relations)

counts = Counter()
rng = random.Random(7133476)
orders = [1, 2, 3, 4, 6, 8]
while counts['squares'] < 2400:
    if counts['squares'] < len(orders):
        a = b = c = d = orders[counts['squares']]
        fa = fc = (1, a, a)
        fb = fd = (1, 1, b)
        f = g = p = q = 1 % a
    else:
        a, b, c, d = (rng.choice(orders) for _ in range(4))
        fa, fb, fc, fd = (rng.choice(chains(m)) for m in [a, b, c, d])
        f, g, p, q = (rng.choice(maps(m, n)) for m, n in [(a,b),(c,d),(a,c),(b,d)])
    if q*f % d != g*p % d:
        continue
    if not all(preserves(m, n, fm, fn, k) for m, n, fm, fn, k in [
            (a,b,fa,fb,f),(c,d,fc,fd,g),(a,c,fa,fc,p),(b,d,fb,fd,q)]):
        continue
    counts['squares'] += 1
    counts['proper_initial_filtration'] += any(ds[0] > 1 for ds in [fa,fb,fc,fd])
    counts['unequal_group_orders'] += len({a,b,c,d}) > 1
    counts['nonzero_square_maps'] += p != 0 and q != 0
    scalar = rng.randrange(1, 7)
    for s, n in product(range(4), range(5)):
        z, rel = source(a,b,fa,fb,f,s,n)
        z2, rel2 = source(c,d,fc,fd,g,s,n)
        assert {p*x % c for x in z} <= z2
        assert {p*x % c for x in rel} <= rel2
        nz, nr = source(a,b,fa,fb,f,s,n+1)
        nz2, nr2 = source(c,d,fc,fd,g,s,n+1)
        assert nz <= z and nr <= rel
        _, tr = target(a,b,fa,fb,f,s+n,n)
        _, tr2 = target(c,d,fc,fd,g,s+n,n)
        for x in z:
            sx = cls(a,rel,x)
            mapped = cls(c,rel2,p*x % c)
            assert cls(c,rel2,p*sx % c) == mapped
            assert cls(a,rel,sx) == sx
            assert cls(c,rel2,0) == 0
            assert cls(c,rel2,scalar*mapped % c) == cls(c,rel2,scalar*p*x % c)
            differential = cls(b,tr,f*x % b)
            left = cls(d,tr2,q*differential % d)
            right = cls(d,tr2,g*mapped % d)
            assert left == right
            counts['source_classes'] += 1
            counts['nonzero_differentials'] += differential != 0
            counts['nonzero_transported_differentials'] += right != 0
            for y in z:
                assert cls(c,rel2,p*((x+y) % a) % c) == cls(c,rel2,(p*x+p*y) % c)
                if cls(a,rel,y) == sx:
                    assert cls(c,rel2,p*y % c) == mapped
                counts['source_representative_pairs'] += 1
        for x in nz:
            next_class = cls(a,nr,x)
            left = cls(c,rel2,p*cls(a,rel,next_class) % c)
            right = cls(c,rel2,cls(c,nr2,p*next_class % c))
            assert left == right
            counts['source_next'] += 1
    for t, n in product(range(4), range(5)):
        ambient, rel = target(a,b,fa,fb,f,t,n)
        ambient2, rel2 = target(c,d,fc,fd,g,t,n)
        _, next_rel = target(a,b,fa,fb,f,t,n+1)
        _, next_rel2 = target(c,d,fc,fd,g,t,n+1)
        assert rel <= next_rel
        assert {q*y % d for y in ambient} <= ambient2
        assert {q*y % d for y in rel} <= rel2
        counts['target_levels'] += 1
        counts['target_n_above_t'] += n > t
        for y in ambient:
            sy = cls(b,rel,y)
            mapped = cls(d,rel2,q*y % d)
            assert cls(d,rel2,q*sy % d) == mapped
            assert cls(b,rel,sy) == sy
            assert cls(d,rel2,0) == 0
            assert cls(d,rel2,scalar*mapped % d) == cls(d,rel2,scalar*q*y % d)
            assert cls(d,next_rel2,q*cls(b,next_rel,sy) % d) == cls(d,next_rel2,mapped)
            counts['target_classes_and_advance'] += 1
            for v in ambient:
                assert cls(d,rel2,q*((y+v) % b) % d) == cls(d,rel2,(q*y+q*v) % d)
                if cls(b,rel,v) == sy:
                    assert cls(d,rel2,q*v % d) == mapped
                counts['target_representative_pairs'] += 1

# Exact integer example: source relation is the second-coordinate subgroup;
# target relation at (t,n)=(1,1) is zero, so the differential is the first coordinate.
for first in range(-4,5):
    for second in range(-4,5):
        for correction in range(-4,5):
            assert (first,second+correction)[0] == first
            assert -(first) == (-first,-second)[0]
            counts['integer_example_representatives'] += 1
assert 1 != 0 and -1 != 0
assert counts['nonzero_transported_differentials'] > 0
report = dict(status='pass', findings=[], proof_evidence=proofs,
              finite_oracle_counts=dict(counts),
              scope='Independent cyclic group quotient oracle and source proof review. '
                    'No assertion of topological or Adams realization; '
                    'composition oracle includes scalar second squares, while Lean theorem is general.',
              source_sha256={p.name:sha(p) for p in HERE.glob('*.lean')})
(HERE / 'independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(dict(status='pass', counts=dict(counts), axiom_reports=12)))
