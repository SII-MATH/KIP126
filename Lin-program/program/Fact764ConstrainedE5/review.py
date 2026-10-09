"""Read raw SQL separately and exhaust every small vector and f25 full-map choice."""
import hashlib
import itertools
import json
import sqlite3
from pathlib import Path

P = Path(__file__).resolve().parent
R = P.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
db = R / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
sql = sqlite3.connect(f'file:{db}?mode=ro', uri=True)
data = json.loads((R / 'AggregateD5Conditional/source.json').read_text())['blocks']
source = json.loads((R / 'AggregateLeibniz3564Conditional/source.json').read_text())['blocks']
branches = json.loads((R / 'Stem125E5Search/branches.json').read_text())['branches']['twentyfive']

def columns(a, m, n):
    assert len(a) == m * n
    return [sum(int(a[i*n+j]) << i for i in range(m)) for j in range(n)]

def apply(cols, x):
    y = 0
    for j, col in enumerate(cols):
        if (x >> j) & 1:
            y ^= col
    return y

def matrix(w, field, m, n):
    return columns(w[field], m, n)

def projection(w, x):
    return apply(matrix(w, 'projection', w['h'], w['m']), x)

def rows(table, fields, s, t):
    return [list(x) for x in sql.execute(
        f'SELECT {fields} FROM {table} WHERE s=? AND t=? ORDER BY id', (s,t))]

source_e2 = rows('S0_AdamsE2_basis', 'id,mon,d2', 21,147)
source_ss = rows('S0_AdamsE2_ss', 'id,base,diff,level', 21,147)
target_e2 = rows('S0_AdamsE2_basis', 'id,mon,d2', 25,150)
target_ss = rows('S0_AdamsE2_ss', 'id,base,diff,level', 25,150)
assert source_e2 == [[3748,'530,1',''],[3749,'1,1,510,1',''],[3750,'0,3,500,1','']]
assert source_ss == [[3748,'2','4',3],[3749,'1','3',9996],[3750,'0',None,9996]]
assert target_e2 == [[3992,'559,1','0'],[3993,'558,1','0'],[3994,'13,4,51,1',''],[3995,'8,2,9,1,13,1,80,1','']]
assert target_ss == [[3992,'3','1',4],[3993,'2',None,9000],[3994,'0,1',None,9000],[3995,'1','0',9998]]
generators = [list(x) for x in sql.execute(
    'SELECT id,name,s,t FROM S0_AdamsE2_generators WHERE id IN (13,51) ORDER BY id')]
assert generators == [[13,'g',4,24],[51,'\\Delta h_1g',9,54]]
assert 4*generators[0][2]+generators[1][2] == 25
assert 4*generators[0][3]+generators[1][3] == 150
s2 = data['S0:21,147:d2']['wire']; s3 = source['S0:21,147:d3']['wire']
t2 = data['S0:25,150:d2']['wire']; t3 = data['S0:25,150:d3']['wire']
ps = lambda x: projection(s3, projection(s2,x))
pt = lambda x: projection(t3, projection(t2,x))
for x in range(8):
    assert ps(x) == ((x>>1)&1) + ((x&1)<<1)
assert [ps(2),ps(1),ps(4)] == [1,2,0]
for x in range(16):
    assert pt(x) == ((x>>3)&1) + (((x>>2)&1)<<1) + (((x>>1)&1)<<2)
assert pt(8) == 1 and pt(4) == 2

# Independently enumerate every candidate and both residual boundary tests.
allowed = []
for x in range(16):
    cycle = apply(matrix(t2,'outgoing',t2['k'],t2['m']),x) == 0
    product = 1 ^ apply([1,0,2,4],x)
    product_ok = product in {0,2,4,6}
    mapped = apply([2,0,1,0],x)
    map_ok = mapped in {0,3}
    if cycle and product_ok and map_ok:
        allowed.append(x)
assert allowed == [7,15] and [pt(x) for x in allowed] == [6,7]

# All 8 * 64 possible full matrices, rather than only the named values.
expected = set()
for A in itertools.product([0,1],repeat=3):
    for B in itertools.product(range(8),repeat=2):
        if B[0] == 1 and all(apply(A,col)==0 for col in B):
            expected.add((A,B))
actual = set()
selected = []; counter = []; constrained = []; cycle_pairs = 0
for i,row in enumerate(branches):
    w=row['wire'];A=matrix(w,'outgoing',1,3);B=matrix(w,'incoming',3,2)
    actual.add((tuple(A),tuple(B)))
    if B[1] in [6,7]:
        constrained.append(i)
        if A == [0,0,0]: selected.append(i)
        else:
            counter.append(i)
            assert A == [0,1,1] and apply(A,2) == 1 and w['h'] == 0
assert actual == expected and len(actual)==20
assert constrained == [8,9,18,19] and selected == [8,18] and counter == [9,19]
for b,i in enumerate(selected):
    wire=json.loads((P/f'certificate{b}.json').read_text())
    assert wire['version']==1 and wire['named']==[False,True,False]
    w=wire['comparison'];assert w==branches[i]['wire']
    m,n,k,h=(w[z] for z in ['m','n','k','h'])
    assert (m,n,k,h)==(3,2,1,1)
    A=matrix(w,'outgoing',k,m);B=matrix(w,'incoming',m,n)
    I=matrix(w,'inclusion',m,h);Q=matrix(w,'projection',h,m)
    U=matrix(w,'up',n,m);D=matrix(w,'down',m,k)
    assert all(apply(A,col)==0 for col in B+I)
    assert all(apply(Q,col)==0 for col in B)
    assert apply(Q,I[0])==1
    for x in range(8):
        assert apply(I,apply(Q,x)) ^ apply(B,apply(U,x)) ^ apply(D,apply(A,x)) == x
    boundaries={apply(B,z) for z in range(4)}
    assert 2 not in boundaries and apply(A,2)==0
    assert len(boundaries)==4
    for x in range(8):
        assert x in boundaries or x^2 in boundaries
        for y in range(8):
            cycle_pairs+=1
            assert (apply(Q,x)==apply(Q,y)) == (x^y in boundaries)
inputs=[db,Path(__file__),*sorted(P.glob('*.lean')),*sorted(P.glob('certificate?.json')),
    R/'AggregateD5Conditional/source.json',R/'AggregateLeibniz3564Conditional/source.json',
    R/'Stem125E5Search/branches.json']
report={
    'status':'conditional_fact764_E5_review_passed',
    'raw':{'source_E2':source_e2,'source_staircase':source_ss,'target_E2':target_e2,
        'target_staircase':target_ss,'named_generators':generators},
    'candidates_checked':16,'allowed_raw_candidates':allowed,'all_full_matrix_pairs_checked':512,
    'complex_choices':20,'constrained_indices':constrained,'unique_indices':selected,
    'noncycle_counterexample_indices':counter,'full_cycle_pairs':cycle_pairs,
    'preserved_prior_blocks':len(data),
    'source_sha256':{str(p.relative_to(R)):sha(p) for p in inputs},
    'limitations':['Actual E2/page/basis completeness and true differential interpretations are premises.',
        'Leibniz, factor cycle, known product differential, and naturality are actual algebraic premises.',
        'Two obstructions do not imply named cycle: indices9/19 are checked counterexamples.',
        'The named E5 class is not proved permanent at all later pages.']}
assert len(data)==358
(P/'review.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print('SQL basis/staircase separated;16 candidates;512 full matrix pairs;20 branches;128 cycle pairs')
