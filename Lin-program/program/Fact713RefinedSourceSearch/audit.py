"""Independent raw-row, matrix, homology, and preservation checks."""
import hashlib
import itertools
import json
from pathlib import Path
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
baseline = ROOT / 'Fact713E12Search/successor-search.json'
old = json.loads(baseline.read_text())
snapshot = HERE / 'refined.json'
report = json.loads(snapshot.read_text())
scan = json.loads((HERE / 'successors.json').read_text())
cache = report['comparisons'] | report['successor_closure']
assert all(cache[k] == v for k, v in old['comparisons'].items())
assert len(cache) == 1239 and len(report['comparisons']) == 1236
assert report['unresolved_comparisons'] == 184
assert set(report['new_comparison_keys']) == {'S0:24,144:d4', 'S0:19,140:d5'}
vecs = lambda n: list(itertools.product([0, 1], repeat=n))
def app(bits, m, n, x):
    assert len(bits) == m*n and len(x) == n
    return tuple(sum(int(bits[i*n+j])*x[j] for j in range(n)) % 2 for i in range(m))
def project(s, t, r, x):
    for q in range(2, r):
        w = cache[f'S0:{s},{t}:d{q}']['wire']
        x = app(w['projection'], w['h'], w['m'], x)
    return x

db = ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
connection = sqlite3.connect(f'file:{db}?mode=ro', uri=True)
raw_unknown = list(connection.execute(
    'SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=3476').fetchone())
raw_successor = list(connection.execute(
    'SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=3728').fetchone())
assert raw_unknown == [3476, 24, 144, '0', None, 9000]
assert raw_successor == [3728, 28, 147, '2', '0,2', 9996]
degree_data = {}
for s, t in [(24,144), (28,147), (32,150)]:
    degree = dict(object='S0', degree=[s,t],
        e2=[list(row) for row in connection.execute(
            'SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))],
        staircase=[list(row) for row in connection.execute(
            'SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t))])
    assert degree == report['degree_data'][f'S0:{s},{t}']
    degree_data[f'S0:{s},{t}'] = degree
connection.close()
assert project(24,144,4,(1,0,0)) == (0,1)
assert project(28,147,4,(0,0,1)) == (1,)
assert project(32,150,4,(1,0,1)) == (1,)
successor = cache['S0:28,147:d4']['wire']
assert (successor['m'],successor['k'],successor['outgoing']) == (1,1,[True])
assert [x for x in vecs(1) if app(successor['outgoing'],1,1,x)==(0,)] == [(0,)]
assert cache['S0:24,144:d4']['wire']['outgoing'] == [False,False]
assert scan['tested_unknown_row_pages'] == 36
tested_keys = {(tuple(x['source']),x['page'],tuple(x['row'])) for x in scan['results']}
expected_keys = {(tuple(x['source']),x['page'],tuple(x['row'])) for x in old['unknowns']
                 if x['resolution'].startswith('unresolved')}
assert tested_keys == expected_keys
forced = []
for item in scan['results']:
    if item['status'] != 'complete_successor':
        assert item['status'] == 'blocked_successor' and item['reason']
        continue
    m,n = item['domain'],item['codomain']
    flat = [bit for row in item['matrix'] for bit in row]
    kernel = [list(x) for x in vecs(m) if app(flat,n,m,x)==(0,)*n]
    assert kernel == item['kernel_candidates'] and item['forced_zero'] == (len(kernel)==1)
    if item['forced_zero']: forced.append(item['row'][0])
assert forced == [3476]

vectors = pairs = overlaps = predecessor_checks = 0
for key, block in cache.items():
    w = block['wire']
    n,m,k,h = [w[x] for x in ['n','m','k','h']]
    assert w['version'] == 1
    A = lambda x: app(w['outgoing'],k,m,x)
    B = lambda x: app(w['incoming'],m,n,x)
    I = lambda x: app(w['inclusion'],m,h,x)
    Q = lambda x: app(w['projection'],h,m,x)
    U = lambda x: app(w['up'],n,m,x)
    D = lambda x: app(w['down'],m,k,x)
    boundaries = {B(x) for x in vecs(n)}
    cycles = [x for x in vecs(m) if A(x)==(0,)*k]
    assert all(A(x)==(0,)*k and Q(x)==(0,)*h for x in boundaries)
    assert all(A(I(x))==(0,)*k and Q(I(x))==x for x in vecs(h))
    for x in vecs(m):
        assert tuple(a^b^c for a,b,c in zip(I(Q(x)),B(U(x)),D(A(x)))) == x
        vectors += 1
    for x,y in itertools.product(cycles,repeat=2):
        assert (Q(x)==Q(y)) == (tuple(a^b for a,b in zip(x,y)) in boundaries)
        pairs += 1
    s,t = block['center'];r = block['page']
    if r > 2:
        for dim,a,b in [(n,s-r,t-r+1),(m,s,t),(k,s+r,t+r-1)]:
            previous = f'S0:{a},{b}:d{r-1}'
            assert previous in cache and cache[previous]['wire']['h']==dim
            predecessor_checks += 1
    previous_source = f'S0:{s-r},{t-r+1}:d{r}'
    if previous_source in cache:
        other = cache[previous_source]['wire']
        assert other['m']==n and other['k']==m and other['outgoing']==w['incoming']
        overlaps += 1

manifest = json.loads((HERE/'manifest.json').read_text())
for key in manifest['additional_comparison_keys']:
    path = HERE/'wires'/('b_'+key.replace(':','_').replace(',','_')+'.json')
    assert json.loads(path.read_text())==cache[key]['wire']
for key,(batch,index) in manifest['reused_batch_bindings'].items():
    entry = json.loads((ROOT/f'Fact713ComparisonBatches/Batch{batch:02}.json').read_text())['entries'][index]
    assert entry['wire']==old['comparisons'][key]['wire']
    b=old['comparisons'][key]
    assert entry['key']==dict(object='S0',page=b['page'],s=b['center'][0],t=b['center'][1])

sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
assert report['input_sha256']['Fact713E12Search/successor-search.json']==sha(baseline)
result = dict(status='independent_finite_and_raw_binding_checks_passed',
    preserved_comparisons=len(old['comparisons']),refined_e12_comparisons=1236,
    all_distinct_comparisons=len(cache),still_unresolved_e12_comparisons=184,
    all_input_vectors=vectors,all_cycle_pairs=pairs,adjacent_differential_matches=overlaps,
    predecessor_dimension_checks=predecessor_checks,scanned_unknown_row_pages=36,
    sole_new_forced_zero_row=3476,raw_unknown=raw_unknown,raw_successor=raw_successor,
    raw_degree_data=degree_data,
    source_projection=[0,1],successor_source_projection=[1],successor_target_projection=[1],
    conditions=['full actual successor equation','faithful middle coordinates','actual differential square zero'],
    scope='Independent finite verification. This does not prove the stored successor is the actual topological differential; SuccessorMeaning remains explicit.',
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in [baseline,snapshot,HERE/'successors.json',Path(__file__),db]})
(HERE/'audit.json').write_text(json.dumps(result,indent=2)+'\n')
print(f'{len(cache)} comparisons; {vectors} vectors; {pairs} cycle pairs; {overlaps} overlaps; raw NULL retained')
