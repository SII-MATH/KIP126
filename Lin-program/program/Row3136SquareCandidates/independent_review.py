"""Independent exhaustive bitset audit of all source/target parameter choices."""
import hashlib
import itertools
import json
import sqlite3
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
load=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
def columns(wire, field, rows, cols):
    bits = wire[field]
    assert len(bits) == rows * cols
    return [sum(int(bits[i * cols + j]) << i for i in range(rows)) for j in range(cols)]


def apply(cols, x):
    result = 0
    for j, column in enumerate(cols):
        if x & (1 << j):
            result ^= column
    return result


def quotient(wire):
    k, m, n, h = [wire[key] for key in ['k', 'm', 'n', 'h']]
    a = columns(wire, 'outgoing', k, m)
    b = columns(wire, 'incoming', m, n)
    inc = columns(wire, 'inclusion', m, h)
    proj = columns(wire, 'projection', h, m)
    up = columns(wire, 'up', n, m)
    down = columns(wire, 'down', m, k)
    boundaries = {apply(b, x) for x in range(1 << n)}
    cycles = [x for x in range(1 << m) if not apply(a, x)]
    assert boundaries <= set(cycles)
    assert all(not apply(a, apply(inc, x)) and apply(proj, apply(inc, x)) == x
               for x in range(1 << h))
    for x in range(1 << m):
        assert apply(inc, apply(proj, x)) ^ apply(b, apply(up, x)) ^ apply(down, apply(a, x)) == x
    for x, y in itertools.product(cycles, repeat=2):
        assert (apply(proj, x) == apply(proj, y)) == ((x ^ y) in boundaries)
    return len(cycles) ** 2


data=load(HERE/'candidates.json')
sql=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
pairs=0
for degree, block in data['comparisons'].items():
 s,t=map(int,degree.split(','));w=block['wire']
 rows=[[dict(id=i,mon=m,d2=d) for i,m,d in sql.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',deg)] for deg in [(s-2,t-1),(s,t),(s+2,t+1)]]
 assert rows==block['rows']
 for field,group,dim in [('incoming',rows[0],w['m']),('outgoing',rows[1],w['k'])]:
  assert all(r['d2'] is not None for r in group)
  expected=[sum(1<<int(i) for i in r['d2'].split(',') if i) for r in group]
  assert columns(w,field,dim,len(group))==expected
 pairs+=quotient(w)
accepted=[]
for u,a,b in itertools.product([0,1],repeat=3):
 square=all(apply([u,1],apply([a+2*b,0],x))==0 for x in range(4))
 assert square==(b==u*a)
 if square:accepted.append([u,a,b])
assert accepted==[[0,0,0],[0,1,0],[1,0,0],[1,1,1]]
for c in data['candidates']:
 u,a,b=c['u'],c['a'],c['b'];residual=c['prior_row2994_branch']=='residual_rebased'
 w,z=c['source_d3_wire'],c['target_d3_wire']
 assert w['outgoing']==z['incoming']==[bool(a),False,bool(u*a),False]
 assert z['outgoing']==[bool(u),True] and w['incoming']==[False,residual]
 assert w['h']==2-a-residual and z['h']==1-a
 pairs+=quotient(w)+quotient(z)
 for value in range(4):assert (apply([u,1],value)==0)==(value in [0,1+2*u])
frozen=load(HERE/'frozen-source.json')
for filename, expected in frozen['files'].items():
 assert sha(ROOT/filename)==expected
out=dict(status='passed',complete_d2=4,complete_d3=16,cycle_pairs=pairs,accepted_parameters=accepted,
 actual_review='Whole target map retained; sqzero restricts every source image, diagonal case required until u is proved zero',
 inputs={str(p.relative_to(ROOT)):sha(p) for p in [Path(__file__),HERE/'frozen-source.json',HERE/'candidates.json']})
(HERE/'independent-review.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
