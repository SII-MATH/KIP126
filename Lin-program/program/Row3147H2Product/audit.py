"""Independent SQL and bitset checks; this script never imports the exporter."""
import collections
import hashlib
import itertools
import json
from pathlib import Path
import sqlite3

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
load=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
data=load(HERE/'source.json')
for p,h in data['input_sha256'].items():assert sha(ROOT/p)==h,p
c=sqlite3.connect('file:'+str(ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db')+'?mode=ro',uri=True)
meta=dict(c.execute('select name,value from version'))
assert meta==data['database_metadata']
degrees={i:(s,t) for i,s,t in c.execute('select id,s,t from S0_AdamsE2_generators')}
def mon(raw):
    cells=list(map(int,raw.split(','))) if raw else []
    assert len(cells)%2==0
    return tuple(sorted(g for g,e in zip(cells[::2],cells[1::2]) for _ in range(e)))
def degree(m):return tuple(sum(degrees[g][j] for g in m) for j in [0,1])
def parity(ms):return {m for m,n in collections.Counter(ms).items() if n%2}
def mul(a,b):return parity(tuple(sorted(x+y)) for x in a for y in b)
def columns(w,f,r,n):
    bits=w[f]
    assert len(bits)==r*n and all(type(b) is bool for b in bits)
    return [sum(int(bits[i*n+j])<<i for i in range(r)) for j in range(n)]
def ev(cols,x):
    result=0
    for j,v in enumerate(cols):
        if x>>j&1:result^=v
    return result
def quotient(w):
    k,m,n,h=(w[x] for x in ['k','m','n','h'])
    a,b,u,p,up,down=[columns(w,f,r,cc) for f,r,cc in [
      ('outgoing',k,m),('incoming',m,n),('inclusion',m,h),('projection',h,m),
      ('up',n,m),('down',m,k)]]
    boundaries={ev(b,x) for x in range(1<<n)}
    cycles=[x for x in range(1<<m) if ev(a,x)==0]
    assert boundaries<=set(cycles)
    for j,col in enumerate(u):assert ev(a,col)==0 and ev(p,col)==1<<j
    for j in range(m):assert ev(u,p[j])^ev(b,up[j])^ev(down,a[j])==1<<j
    for x,y in itertools.product(cycles,repeat=2):
        assert (ev(p,x)==ev(p,y))==((x^y) in boundaries)
    return len(cycles)**2
families=[{tuple(e['key'][k] for k in ['page','s','t']):e['wire'] for e in
 load(ROOT/f'Fact713SquareContinuation/zero_b{b}-family.json')['entries']} for b in [0,1]]
pairs=0
for name,item in data['comparisons'].items():
    d=tuple(item['degree']);w=item['wire']
    assert w==load(HERE/'wire'/f'{name}.json')
    pairs+=quotient(w)
    r=item.get('page',2)
    if (r,*d) in families[0]:assert families[0][r,*d]==families[1][r,*d]==w
    if r!=2:continue
    assert d[1]<=meta['d2_t_max']
    groups=[]
    for dd in [(d[0]-2,d[1]-1),d,(d[0]+2,d[1]+1)]:
        assert dd[1]<=meta['t_max']
        g=c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',dd).fetchall()
        for row in g:assert degree(mon(row[1]))==dd
        groups.append(g)
    assert [list(map(list,g)) for g in groups]==item['groups']
    n,m,k=map(len,groups)
    assert (k,m,n)==tuple(w[f] for f in ['k','m','n'])
    for field,g,target in [('incoming',groups[0],m),('outgoing',groups[1],k)]:
        cols=[]
        for _,_,raw in g:
            assert raw is not None
            js=[int(v) for v in raw.split(',') if v]
            assert len(js)==len(set(js)) and all(0<=j<target for j in js)
            cols.append(sum(1<<j for j in js))
        assert columns(w,field,target,len(g))==cols
    assert [list(x) for x in c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',d)]==item['staircase']
relations=0
target=data['comparisons']['product']['groups'][1]
for j,col in enumerate(data['columns']):
    b=load(HERE/'wire'/f'column{j}.json')
    assert b==col['bundle']
    assert parity(map(tuple,b['input']))==mul({(2,)},{mon(col['source'][1])})
    assert all(degree(tuple(m))==(16,140) for m in b['input']+b['output'])
    delta=parity(map(tuple,b['input']+b['output']))
    for rel,origin in zip(b['relations'],col['relations'],strict=True):
        row=c.execute('select rel,s,t from S0_AdamsE2_relations where rowid=?',(origin['rowid'],)).fetchone()
        assert (row[0],list(row[1:]))==(origin['raw'],origin['degree'])
        assert list(map(list,map(mon,row[0].split(';'))))==rel
        assert all(degree(tuple(m))==tuple(row[1:]) for m in rel)
        relations+=1
    combo=set()
    for term in b['terms']:
        assert 0<=term['relation']<len(b['relations'])
        combo.symmetric_difference_update(mul(map(tuple,term['multiplier']),list(map(tuple,b['relations'][term['relation']]))))
    assert delta==combo
    expected={mon(target[i][1]) for i in col['coordinates']}
    assert parity(map(tuple,b['output']))==expected
assert [col['coordinates'] for col in data['columns']]==[[4],[]]
a=data['comparisons']['factor']['wire'];b=data['comparisons']['source']['wire'];d=data['comparisons']['product']['wire']
pa,pb,pd=[columns(w,'projection',w['h'],w['m']) for w in [a,b,d]]
assert ev(pa,1)==1 and ev(pb,1)==2 and ev(pd,16)==2
tensor=load(HERE/'wire/productTensor.json')
assert tensor==data['tensor'] and (tensor['left'],tensor['right'],tensor['target'])==(a,b,d)
assert tensor['tensor']==list(map(bool,data['entries']))
def product(x,y):return 16 if x and y&1 else 0
def nxt(x,y):return 2 if x and y&2 else 0
for x,y in itertools.product(range(2),range(4)):
    assert ev(pd,product(x,y))==nxt(ev(pa,x),ev(pb,y))
    assert ev(columns(d,'outgoing',d['k'],d['m']),product(x,y))==0

# All invertible relabelings of the whole 3-dimensional product chart must
# transport the named column and every product, not preserve a chosen index.
relabelings=0
ordered=0
for change in itertools.product(range(8),repeat=3):
    if len({ev(change,x) for x in range(8)})!=8:continue
    relabelings+=1
    for x,y in itertools.product(range(2),range(4)):
        assert ev(change,ev(pd,product(x,y)))==ev(change,nxt(ev(pa,x),ev(pb,y)))
        ordered+=1
assert relabelings==168
assert any(ev(change,2)!=2 for change in itertools.product(range(8),repeat=3)
           if len({ev(change,x) for x in range(8)})==8)
assert data['comparisons']['source']['staircase']==[[2839,'1',None,9994],[2840,'0',None,9995]]
assert data['comparisons']['product']['staircase'][2]==[3147,'4',None,9000]
assert data['comparisons']['factorTarget']['groups'][1]==[]
report=dict(status='passed',comparisons=6,quotient_cycle_pairs=pairs,product_columns=2,
 relation_occurrences=relations,full_product_inputs=8,full_coordinate_relabelings=relabelings,
 relabeled_product_inputs=ordered,raw_right_index=0,constructed_right_index=1,
 raw_row3147_index=4,constructed_row3147_index=1,
 scope='Independent SQL degree, completeness, raw-column, polynomial identity and full quotient checks; '
 'right-factor actual d3 prefix remains an explicit full Meaning, never inferred from SQL NULL.',
 audit_source_sha256=sha(Path(__file__)))
(HERE/'audit.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
