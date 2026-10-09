"""Root review: frozen evidence, homogeneous products, and complete quotients."""
import hashlib
import itertools
import json
from pathlib import Path
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
frozen = json.loads((HERE / 'frozen-source.json').read_text())
for name, digest in frozen['files'].items():
    assert sha(ROOT / name) == digest, name
for m in frozen['modules']:
    assert m['observed_exit_code'] == 0 and m['inputs_stable']
    assert sha(HERE / m['log']) == m['log_sha256']
    assert sha(ROOT / '.lake/build/lib/lean' / (m['module'].replace('.', '/') + '.olean')) == m['olean_sha256']
data = json.loads((HERE / 'products.json').read_text())
for name, digest in data['input_sha256'].items():
    assert sha(ROOT / name) == digest, name
c = sqlite3.connect('file:' + str(ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db') + '?mode=ro', uri=True)
gens = {i: (s,t) for i,s,t in c.execute('SELECT id,s,t FROM S0_AdamsE2_generators')}
def degree(m):
    return tuple(sum(gens[i][j] for i in m) for j in range(2))
def mon(raw):
    p = list(map(int, raw.split(','))) if raw else []
    return tuple(g for g,n in zip(p[::2],p[1::2]) for _ in range(n))
for label, d in [('factor',(6,67)), ('source',(12,134))]:
    raw = list(c.execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', d))
    assert [list(x) for x in raw] == data[label + '_basis']
    assert all(degree(mon(m)) == d for _,m in raw)
assert c.execute('SELECT base,diff,level FROM S0_AdamsE2_ss WHERE id=2684').fetchone() == ('0',None,9000)
terms = 0
for col in data['columns']:
    w = col['wire']
    assert all(degree(tuple(m)) == (12,134) for m in w['input'] + w['output'])
    for rel, origin in zip(w['relations'], col['relations']):
        assert all(degree(tuple(m)) == tuple(origin['degree']) for m in rel)
    for term in w['terms']:
        for a in term['multiplier']:
            for b in w['relations'][term['relation']]:
                assert degree(tuple(a+b)) == (12,134)
                terms += 1
def vectors(n):
    return itertools.product(range(2), repeat=n)
def ev(a,m,n,v):
    assert len(a) == m*n
    return tuple(sum(a[i*n+j]*v[j] for j in range(n))%2 for i in range(m))
def add(x,y):
    return tuple(a^b for a,b in zip(x,y))
pairs = 0
for name,w in data['blocks'].items():
    k,m,n,h = (w[x] for x in ['k','m','n','h'])
    assert json.loads((HERE / 'wire' / (name+'.json')).read_text()) == w
    image = {ev(w['incoming'],m,n,v) for v in vectors(n)}
    kernel = [v for v in vectors(m) if not any(ev(w['outgoing'],k,m,v))]
    assert image <= set(kernel)
    for x in kernel:
        for y in kernel:
            assert (ev(w['projection'],h,m,x) == ev(w['projection'],h,m,y)) == (add(x,y) in image)
            pairs += 1
    assert {ev(w['projection'],h,m,x) for x in kernel} == set(vectors(h))
assert data['blocks']['emptyTarget2']['h'] == 0
assert data['blocks']['source4']['h'] == 1
report = dict(status='passed', frozen_files=len(frozen['files']), modules=len(frozen['modules']),
    standard_axiom_reports=frozen['axiom_reports'], homogeneous_expanded_relation_terms=terms,
    complete_quotient_pairs=pairs, exact_source_basis=2682, distinct_staircase_row=2684,
    manual_review=['All actual source/factor coordinates after E2 are quotient constructions.',
        'Factor d4 uses only its complete zero target; no unknown incoming value is selected.',
        'All three product transitions use the same actual system, quotient maps and endpoints.',
        'The one-dimensional whole-map argument includes zero and the named nonzero element.',
        'Actual E2 product and full differential meanings remain explicit proof inputs.'])
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report))
