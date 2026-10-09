"""Independent raw-source replay; no producer imports and no NULL-to-zero rule."""
import collections
import hashlib
import itertools
import json
import sqlite3
from pathlib import Path

HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
data=json.loads((HERE/'provenance.json').read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
for name,digest in data['source_sha256'].items():assert sha(ROOT/'upstream/kervaire-49'/name)==digest
sql={name:sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/{name}_AdamsSS_t{261 if name=="S0" else 200}.db?mode=ro',uri=True) for name in ['S0','Cnu']}
mapdb=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/map_AdamsSS_Cnu_to_S0_t200.db?mode=ro',uri=True)
raw_images=dict(mapdb.execute('SELECT id,map FROM map_AdamsE2_Cnu_to_S0'))
parity=lambda xs:{x for x,n in collections.Counter(xs).items() if n%2}
def ring(raw):
    fields=list(map(int,raw.split(','))) if raw else []
    assert len(fields)%2==0 and all(g>=0 and g!=4294967295 for g in fields)
    return tuple(sorted(g for g,e in zip(fields[::2],fields[1::2]) for _ in range(e)))
def module(raw):
    fields=raw.split(',');assert len(fields)%2==1
    return ring(','.join(fields[:-1])),int(fields[-1])
def expression(w,generators):return parity((tuple(c),generators[i]) for i,p in enumerate(w) for c in p)
def shift(p,q):return parity((tuple(sorted(a+tuple(b))),g) for a,g in p for b in q)
def bits(raw,n):
    assert raw is not None
    v=list(map(int,raw.split(','))) if raw else []
    assert v==sorted(set(v)) and all(0<=i<n for i in v)
    return tuple(int(i in v) for i in range(n))
def ev(A,m,n,v):
    assert len(A)==m*n and len(v)==n
    return tuple(sum(A[i*n+j]*v[j] for j in range(n))%2 for i in range(m))
vectors=lambda n:itertools.product([0,1],repeat=n)
add=lambda x,y:tuple(a^b for a,b in zip(x,y,strict=True))
generators={name:dict((i,(s,t)) for i,s,t in c.execute(f'SELECT id,s,t FROM {name}_AdamsE2_generators')) for name,c in sql.items()}
def degree(term,ring_target=False):
    c,g=term
    return tuple(sum(generators['S0'][i][k] for i in c)+(0 if ring_target else generators['Cnu'][g][k]) for k in range(2))
matrices={};steps=0;columns=0
for item in data['matrices']:
    kind=item['kind'];S=tuple(item['source_degree']);T=tuple(item['target_degree']);w=item['wire'];a=w['algebra']
    target_name='S0' if kind=='top' else 'Cnu'
    sr=[list(x) for x in sql['Cnu'].execute('SELECT id,mon FROM Cnu_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',S)]
    tr=[list(x) for x in sql[target_name].execute(f'SELECT id,mon FROM {target_name}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',T)]
    assert sr==item['source'] and tr==item['target']
    sg,tg=item['source_generators'],item['target_generators']
    assert len(set(sg))==len(sg) and len(set(tg))==len(tg)
    assert [expression(x,sg) for x in a['source']]==[{module(raw)} for _,raw in sr]
    targets=[(ring(raw),0) if kind=='top' else module(raw) for _,raw in tr]
    assert [expression(x,tg) for x in a['target']]==[{x} for x in targets]
    imgs=[]
    for g,encoded in zip(sg,a['images'],strict=True):
        if kind=='top':
            raw=raw_images[g];assert raw is not None and item['raw_images'][str(g)]==raw
            p=set() if raw=='' else {((),0)} if raw==';' else parity((ring(x),0) for x in raw.split(';'))
        else:p={((16,),g)}
        assert p==expression(encoded,tg);imgs.append(p)
    relations=[]
    for origin,encoded in zip(item['relation_sources'],a['relations'],strict=True):
        name='Cnu' if origin['kind']=='module' else 'S0'
        raw,s,t=sql[name].execute(f'SELECT rel,s,t FROM {name}_AdamsE2_relations WHERE rowid=?',(origin['rowid'],)).fetchone()
        assert raw==origin['raw']
        p=parity(module(x) for x in raw.split(';')) if name=='Cnu' else parity((ring(x),origin.get('module_generator',0)) for x in raw.split(';'))
        assert expression(encoded,tg)==p
        assert all(degree(x,kind=='top')==tuple(origin['degree']) for x in p)
        relations.append(p)
    assert (a['cols'],a['rows'])==(len(sr),len(tr))
    for j,((_,raw),trace) in enumerate(zip(sr,a['terms'],strict=True)):
        c,g=module(raw);current=shift(imgs[sg.index(g)],[c]);assert all(degree(x,kind=='top')==T for x in current)
        for step in trace:
            delta=shift(relations[step['relation']],step['multiplier'])
            assert all(degree(x,kind=='top')==T for x in delta)
            current.symmetric_difference_update(delta);steps+=1
        assert current=={mon for i,mon in enumerate(targets) if a['entries'][i*a['cols']+j]}
        columns+=1
    assert T==(S[0]+w['filtration'],S[1]+w['filtration']-w['suspension'])
    matrices[item['name']]=a

quotients={};cycle_pairs=0;full_vectors=0
for name,block in data['comparisons'].items():
    obj=block['object'];s,t=block['degree'];w=block['wire'];n,m,k,d=[w[x] for x in ['n','m','k','h']]
    groups=[[dict(id=i,mon=raw,d2=d2) for i,raw,d2 in sql[obj].execute(f'SELECT id,mon,d2 FROM {obj}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',st)] for st in [(s-2,t-1),(s,t),(s+2,t+1)]]
    assert groups==block['rows'] and [len(x) for x in groups]==[n,m,k]
    for rows,dim,field in [(groups[0],m,'incoming'),(groups[1],k,'outgoing')]:
        cols=[bits(row['d2'],dim) for row in rows]
        assert w[field]==[v[i] for i in range(dim) for v in cols]
    A=lambda v:ev(w['outgoing'],k,m,v);B=lambda v:ev(w['incoming'],m,n,v)
    P=lambda v:ev(w['projection'],d,m,v);I=lambda v:ev(w['inclusion'],m,d,v)
    boundaries={B(x) for x in vectors(n)};cycles=[x for x in vectors(m) if not any(A(x))]
    assert boundaries<=set(cycles)
    for z in vectors(d):assert I(z) in cycles and P(I(z))==z
    for x in vectors(m):
        assert add(add(I(P(x)),B(ev(w['up'],n,m,x))),ev(w['down'],m,k,A(x)))==x
        full_vectors+=1
    for x,y in itertools.product(cycles,repeat=2):
        assert (P(x)==P(y))==(add(x,y) in boundaries);cycle_pairs+=1
    quotients[name]=w

square_vectors=0
for kind in ['factor']:
    for s,t in [(10,55),(13,57)]:
        source=quotients[f'Cnu_{s}_{t}'];target=quotients[f'Cnu_{s+8}_{t+30}']
        name=f'{kind}_{s}_{t}';M=matrices[name];U=matrices[f'{kind}_{s+2}_{t+1}'];L=matrices[f'{kind}_{s-2}_{t-1}']
        for x in vectors(source['m']):
            assert ev(target['outgoing'],target['k'],target['m'],ev(M['entries'],M['rows'],M['cols'],x))==ev(U['entries'],U['rows'],U['cols'],ev(source['outgoing'],source['k'],source['m'],x));square_vectors+=1
        for x in vectors(source['n']):
            assert ev(M['entries'],M['rows'],M['cols'],ev(source['incoming'],source['m'],source['n'],x))==ev(target['incoming'],target['m'],target['n'],ev(L['entries'],L['rows'],L['cols'],x));square_vectors+=1
        cols=[ev(target['projection'],target['h'],target['m'],ev(M['entries'],M['rows'],M['cols'],ev(source['inclusion'],source['m'],source['h'],x))) for x in [tuple(int(i==j) for i in range(source['h'])) for j in range(source['h'])]]
        expected=[col[i] for i in range(target['h']) for col in cols]
        assert expected==data['E3_maps'][name]['entries']
source=data['E3_maps']['factor_10_55'];target=data['E3_maps']['factor_13_57']
assert source['entries']==[1,0] and target['entries']==[1,0]
out=dict(status='factorization_and_nonzero_remaining_Leibniz_map_verified',matrices=len(matrices),columns=columns,reductions=steps,
    comparisons=len(quotients),full_vectors=full_vectors,cycle_pairs=cycle_pairs,square_vectors=square_vectors,
    source_sha256=sha(HERE/'provenance.json'),limitation='Actual P-squared product boundary representative remains explicit; raw level4 does not prove it.')
(HERE/'audit.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
