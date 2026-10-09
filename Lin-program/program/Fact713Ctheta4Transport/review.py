"""Independent polynomial, complete-complex and same-input finite replay."""
from collections import Counter
import hashlib
import itertools
import json
import sqlite3
from pathlib import Path

HERE=Path(__file__).resolve().parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
report=json.loads((HERE/'ctheta-search.json').read_text())
maps=json.loads((HERE/'maps.json').read_text())
d2=json.loads((HERE/'ctheta-d2.json').read_text())
def parity(xs):return {x for x,n in Counter(xs).items() if n%2}
def poly(xs):return parity(tuple(sorted(x)) for x in xs)
def mul(a,b):return parity(tuple(sorted(x+y)) for x in a for y in b)
def expression(xs):return [poly(x) for x in xs]
def xor(a,b):return [x^y for x,y in zip(a,b)]
def ev(a,m,n,x):
    assert len(a)==m*n and len(x)==n
    return tuple(sum(a[i*n+j]*x[j] for j in range(n))%2 for i in range(m))
def vectors(n):return itertools.product([0,1],repeat=n)
def identity(n):return [int(i==j) for i in range(n) for j in range(n)]
def matmul(a,m,k,b,n):
    return [sum(a[i*k+l]*b[l*n+j] for l in range(k))%2 for i in range(m) for j in range(n)]
counts=dict(d2_columns=0,d2_reductions=0,map_columns=0,map_reductions=0,comparisons=0,
    quotient_vectors=0,quotient_pairs=0,map_vectors=0,same_input_steps=0,known_staircase_d2=0)
c=sqlite3.connect(f'file:{HERE.parent}/upstream/kervaire-49/Ctheta4_AdamsSS_t200.db?mode=ro',uri=True)
for b in d2['matrices'].values():
    s,t=b['source_degree'];m,k=b['cols'],b['rows']
    rows=list(c.execute('select id,base,diff,level from Ctheta4_AdamsE2_ss where s=? and t=? order by id',(s,t)))
    assert len(rows)==m
    cols=[tuple(int(j in (list(map(int,base.split(','))) if base else [])) for j in range(m)) for _,base,_,_ in rows]
    assert len({tuple(sum(x[j]*cols[j][i] for j in range(m))%2 for i in range(m)) for x in vectors(m)})==2**m
    for (rid,base,diff,level),v in zip(rows,cols):
        actual=ev(b['entries'],k,m,v)
        if level==9998:
            assert diff is not None
            ids=list(map(int,diff.split(','))) if diff else []
            assert actual==tuple(int(i in ids) for i in range(k))
        elif 2<=level<5000 or 9000<level<9998 or k==0:
            assert not any(actual)
        else:
            assert level==9000
            continue
        counts['known_staircase_d2']+=1
for path in sorted((HERE/'d2wire').glob('*.json')):
    w=json.loads(path.read_text());r=w['reduction'];assert r['rank']==2
    expected=[mul(poly(w['coefficient']),{(7,7)}),poly(w['coefficientDifferential'])] if w['top'] else [poly(w['coefficientDifferential']),set()]
    assert expression(r['input'])==expected
    residual=[a^b for a,b in zip(expression(r['input']),expression(r['output']))]
    for term in r['terms']:
        rel=r['relations'][term['relation']]
        residual=[x^mul(poly(term['multiplier']),poly(y)) for x,y in zip(residual,rel)]
    assert residual==[set(),set()]
    counts['d2_columns']+=1;counts['d2_reductions']+=len(r['terms'])
for b in maps['maps'].values():
    if 'wire' not in b:continue
    w=b['wire'];a=w['algebra'];assert w['targetT']==w['sourceT']-31 and w['targetS']==w['sourceS']
    for j in range(a['cols']):
        current=set()
        for coefficient,image in zip(a['source'][j],a['images']):current ^= mul(poly(coefficient),poly(image[0]))
        expected=set()
        for i in range(a['rows']):
            if a['entries'][i*a['cols']+j]:expected ^= poly(a['target'][i][0])
        for term in a['terms'][j]:current ^= mul(poly(term['multiplier']),poly(a['relations'][term['relation']][0]))
        assert current==expected
        counts['map_columns']+=1;counts['map_reductions']+=len(a['terms'][j])
for key,b in report['comparisons'].items():
    w=b['wire'];k,m,n,q=(w[x] for x in ['k','m','n','h']);o,i,u,p,up,down=(list(map(int,w[x])) for x in ['outgoing','incoming','inclusion','projection','up','down'])
    assert not any(matmul(o,k,m,i,n))
    assert not any(matmul(o,k,m,u,q))
    assert not any(matmul(p,q,m,i,n))
    assert matmul(p,q,m,u,q)==identity(q)
    lhs=xor(xor(matmul(u,m,q,p,m),matmul(i,m,n,up,m)),matmul(down,m,k,o,m))
    assert lhs==identity(m)
    boundaries={ev(i,m,n,x) for x in vectors(n)}
    cycles=[x for x in vectors(m) if not any(ev(o,k,m,x))]
    for x in cycles:
        assert (not any(ev(p,q,m,x)))==(x in boundaries)
    for x in cycles:
        for y in cycles:
            assert (ev(p,q,m,x)==ev(p,q,m,y))==(tuple(xor(x,y)) in boundaries)
            counts['quotient_pairs']+=1
    counts['comparisons']+=1;counts['quotient_vectors']+=len(cycles)
for key in maps['compatible']:
    b=report['comparisons'][key];s,t=b['center'];r=b['page'];sw=b['wire'];tw=report['comparisons'][f'S0:{s},{t-31}:d{r}']['wire']
    f=maps['maps'][f'{s},{t}:E{r}'];g=maps['maps'][f'{s+r},{t+r-1}:E{r}'];lo=maps['maps'][f'{s-r},{t-r+1}:E{r}'];nxt=maps['maps'][f'{s},{t}:E{r+1}']
    for x in vectors(sw['m']):
        fx=ev(f['entries'],f['rows'],f['cols'],x)
        assert ev(tw['outgoing'],tw['k'],tw['m'],fx)==ev(g['entries'],g['rows'],g['cols'],ev(sw['outgoing'],sw['k'],sw['m'],x))
        if not any(ev(sw['outgoing'],sw['k'],sw['m'],x)):
            assert ev(tw['projection'],tw['h'],tw['m'],fx)==ev(nxt['entries'],nxt['rows'],nxt['cols'],ev(sw['projection'],sw['h'],sw['m'],x))
        counts['map_vectors']+=1
    for x in vectors(sw['n']):
        assert ev(tw['incoming'],tw['m'],tw['n'],ev(lo['entries'],lo['rows'],lo['cols'],x))==ev(f['entries'],f['rows'],f['cols'],ev(sw['incoming'],sw['m'],sw['n'],x))
trajectory=[]
for obj,t,v in [('Ctheta4',169,(1,1,1,0,0,0,0,0)),('S0',138,(1,1,1,0))]:
    for r in [2,3]:
        w=report['comparisons'][f'{obj}:17,{t}:d{r}']['wire']
        assert not any(ev(w['outgoing'],w['k'],w['m'],v))
        assert v not in {ev(w['incoming'],w['m'],w['n'],x) for x in vectors(w['n'])}
        nxt=ev(w['projection'],w['h'],w['m'],v)
        trajectory.append(dict(object=obj,page=r,vector=v,next=nxt))
        v=nxt;counts['same_input_steps']+=1
premises={}
for b in report['comparisons'].values():
    for use in b['uses']:
        if (use['kind'].startswith('explicit_') or
                (use['kind']=='stored_zero_prefix_or_boundary' and use['row'][2] is None)):
            key=(use['object'],*use['source'],use['page'],use['row'][0])
            premises[str(key)]=use
modules=(HERE/'modules.txt').read_text().splitlines();axioms=0
for mod in modules:
    name=mod.split('.')[-1];rec=json.loads((HERE/(name+'-compile.json')).read_text())
    assert rec['observed_exit_code']==0 and rec['inputs_stable']
    assert sha(HERE/(name+'.lean'))==rec['source_sha256']
    assert sha(HERE/rec['log'])==rec['log_sha256']
    assert sha(HERE.parent/'.lake/build/lib/lean'/(mod.replace('.','/')+'.olean'))==rec['olean_sha256']
    for dep,digest in rec['dependencies_sha256'].items():assert sha(HERE.parent/dep)==digest
    log=(HERE/rec['log']).read_text();assert 'sorryAx' not in log;axioms+=log.count('depends on axioms:')
    text=(HERE/(name+'.lean')).read_text();assert not any(x in text for x in ['sorry','admit','native_decide','unsafe','axiom '])
counts.update(modules=len(modules),standard_axiom_reports=axioms)
# Metadata30 is rejected; top generator at(0,31), polynomial image1 at(0,0).
mc=sqlite3.connect(f'file:{HERE.parent}/upstream/kervaire-49/map_AdamsSS_Ctheta4_to_S0_t200.db?mode=ro',uri=True)
assert dict(mc.execute('select name,value from version'))['suspension']==30
assert c.execute('select s,t from Ctheta4_AdamsE2_generators where id=1').fetchone()==(0,31)
assert mc.execute('select map from map_AdamsE2_Ctheta4_to_S0 where id=1').fetchone()==(';',)
assert 31-31==0 and 31-30!=0
out=dict(status='passed_independent_finite_replay',counts=counts,trajectory=trajectory,
    explicit_unproved_conditions=list(premises.values()),
    named_d4_prefix=dict(object='Ctheta4',row=8810,base='0,1,2',page=4,raw_diff=None,
        raw_level=9995,meaning='Explicit finite actual prefix, not inferred from NULL or future level'),
    degree_correction=dict(database_metadata=30,checked_generator_shift=31,
        reason='top generator (0,31) maps to unit (0,0); metadata30 is not homogeneous'),
    hashes={p.name:sha(p) for p in [HERE/'ctheta-d2.json',HERE/'ctheta-search.json',HERE/'maps.json']},
    limitation='Independent checks establish finite identities. All actual staircase/Leibniz/quotient meanings and named source finite d3/d4 prefixes remain mathematical inputs.')
(HERE/'review.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(counts,indent=2));print('explicit unproved conditions',len(premises))
