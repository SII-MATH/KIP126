"""Independent source, quotient, polynomial and finite-model replay."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
data=json.loads((HERE/'source.json').read_text());db=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
assert sha(db)==data['database_sha256']
c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
def ev(a,m,n,x):
    assert len(a)==m*n and len(x)==n
    return tuple(sum(a[i*n+j]*x[j] for j in range(n))%2 for i in range(m))
def vs(n):return itertools.product((0,1),repeat=n)
def xor(a,b):return tuple(x^y for x,y in zip(a,b))
def mm(a,m,k,b,n):return [sum(a[i*k+l]*b[l*n+j] for l in range(k))%2 for i in range(m) for j in range(n)]
def ident(n):return [int(i==j) for i in range(n) for j in range(n)]
def parity(xs):return {x for x,n in Counter(xs).items() if n%2}
def poly(p):return parity(tuple(sorted(x)) for x in p)
def mul(a,b):return parity(tuple(sorted(x+y)) for x in a for y in b)
def mono(raw):
    a=list(map(int,raw.split(','))) if raw else []
    return tuple(sorted(g for g,e in zip(a[::2],a[1::2]) for _ in range(e)))
gens=dict((i,(s,t)) for i,s,t in c.execute('select id,s,t from S0_AdamsE2_generators'))
def degree(mon):return tuple(sum(gens[g][i] for g in mon) for i in range(2))
counts=dict(comparisons=0,cycle_vectors=0,quotient_pairs=0,d2_columns=0,product_columns=0,
            product_pairs=0,model_maps=0,leibniz_compatible_nonzero_maps=0)
for name,b in data['comparisons'].items():
    s,t=b['degree'];w=b['wire'];k,m,n,h=(w[x] for x in ['k','m','n','h'])
    assert json.loads((HERE/'wire'/f'{name}.json').read_text())==w
    for d,group in zip([(s-2,t-1),(s,t),(s+2,t+1)],b['rows']):
        actual=c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',d).fetchall()
        assert actual==[(x['id'],x['mon'],x['d2']) for x in group]
        assert all(degree(mono(x['mon']))==d for x in group)
    assert [list(x) for x in c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',(s,t))]==b['staircase']
    for group,dim,entries in [(b['rows'][0],m,w['incoming']),(b['rows'][1],k,w['outgoing'])]:
        for j,row in enumerate(group):
            assert row['d2'] is not None
            ids=list(map(int,row['d2'].split(','))) if row['d2'] else []
            assert tuple(int(i in ids) for i in range(dim))==ev(entries,dim,len(group),tuple(int(i==j) for i in range(len(group))))
            counts['d2_columns']+=1
    o,i,u,p,up,dn=(w[x] for x in ['outgoing','incoming','inclusion','projection','up','down'])
    assert not any(mm(o,k,m,i,n)) and not any(mm(o,k,m,u,h)) and not any(mm(p,h,m,i,n))
    assert mm(p,h,m,u,h)==ident(h)
    assert xor(xor(mm(u,m,h,p,m),mm(i,m,n,up,m)),mm(dn,m,k,o,m))==tuple(ident(m))
    boundaries={ev(i,m,n,x) for x in vs(n)}
    cycles=[x for x in vs(m) if not any(ev(o,k,m,x))]
    for x in cycles:
        assert (not any(ev(p,h,m,x)))==(x in boundaries)
        for y in cycles:
            assert (ev(p,h,m,x)==ev(p,h,m,y))==(xor(x,y) in boundaries)
            counts['quotient_pairs']+=1
    counts['comparisons']+=1;counts['cycle_vectors']+=len(cycles)
for j,col in enumerate(data['columns']):
    w=col['bundle'];assert json.loads((HERE/'wire'/f'column{j}.json').read_text())==w
    assert poly(w['input'])==mul({(2,)},{mono(col['source']['mon'])})
    cur=poly(w['input'])
    for term in w['terms']:
        q=poly(term['multiplier']);rel=poly(w['relations'][term['relation']])
        rid,raw,s,t=col['relations'][term['relation']]
        assert c.execute('select rel,s,t from S0_AdamsE2_relations where rowid=?',(rid,)).fetchone()==(raw,s,t)
        assert rel==parity(mono(x) for x in raw.split(';'))
        assert all(degree(x)==(s,t) for x in rel)
        cur^=mul(q,rel)
    assert cur==poly(w['output'])
    assert cur==parity(mono(data['comparisons']['product']['rows'][1][i]['mon']) for i in col['coordinates'])
    counts['product_columns']+=1
assert data['entries']==[1,0]
pw=json.loads((HERE/'wire/productTensor.json').read_text());assert pw==data['tensor']
assert pw['tensor']==[True,False]
for key in ['left','right','target']:
    assert pw[key]==data['comparisons'][dict(left='factor',right='source',target='product')[key]]['wire']
for x in vs(1):
    for y in vs(2):
        product=tuple(x[0]*z for z in ev(data['entries'],1,2,y))
        a=ev(data['comparisons']['factor']['wire']['projection'],1,1,x)
        b=ev(data['comparisons']['source']['wire']['projection'],1,2,y)
        assert ev(data['comparisons']['product']['wire']['projection'],1,1,product)==(a[0]*b[0],)
        counts['product_pairs']+=1
target=data['comparisons']['target']['wire']
assert ev(target['projection'],2,4,(0,0,0,1))==(0,1)
assert (0,0,0,1) not in {ev(target['incoming'],4,2,x) for x in vs(2)}
assert c.execute('select base,diff,level from S0_AdamsE2_ss where id=2574').fetchone()==('0',None,9997)
assert c.execute('select base,diff,level from S0_AdamsE2_ss where id=2866').fetchone()==('0','3',9997)
# Exhaust every source map F2 -> F2^n and detector F2^n -> F2^2
# for n <= 3. A nonzero product differential forbids a zero source map.
for n in range(4):
    for d in vs(n):
        for detector in vs(2*n):
            counts['model_maps']+=1
            if ev(detector,2,n,d)!=(0,1):continue
            assert any(d)
            assert [x for x in vs(1) if not any(tuple(x[0]*v for v in d))]==[(0,)]
            counts['leibniz_compatible_nonzero_maps']+=1
modules=(HERE/'modules.txt').read_text().splitlines();axioms=0;empty=0
for module in modules:
    name=module.split('.')[-1];r=json.loads((HERE/(name+'-compile.json')).read_text())
    assert r['observed_exit_code']==0 and r['inputs_stable']
    assert sha(HERE/(name+'.lean'))==r['source_sha256']
    assert sha(ROOT/'.lake/build/lib/lean'/(module.replace('.','/')+'.olean'))==r['olean_sha256']
    assert sha(HERE/r['log'])==r['log_sha256']
    for dep,digest in r['dependencies_sha256'].items():assert sha(ROOT/dep)==digest
    for dep,digest in r['external_input_sha256'].items():assert sha(ROOT/dep)==digest
    log=(HERE/r['log']).read_text();assert 'sorryAx' not in log and 'error:' not in log
    for report in re.findall(r'depends on axioms:\s*\[([^\]]*)\]',log):
        assert set(x.strip() for x in report.split(','))<={'propext','Classical.choice','Quot.sound'}
        axioms+=1
    empty+=log.count('does not depend on any axioms')
    assert not re.search(r'\b(sorry|admit|axiom|unsafe|native_decide)\b',(HERE/(name+'.lean')).read_text())
counts.update(modules=len(modules),standard_axiom_reports=axioms,empty_axiom_reports=empty)
(HERE/'review.json').write_text(json.dumps(dict(status='passed',counts=counts,
    named=dict(source_basis=2573,source_staircase=2574,product=2866,target_basis=3025,target_staircase=3023),
    unknown_source=dict(raw_diff=None,level=9997,interpretation='No selected differential value or prior vanishing supplied'),
    explicit_premises=['complete actual E2/d2 meanings','actual E2 product tensor meaning','multiplicative page transition',
        'recorded ss2866 differential on constructed same-input product and target','local quotient zero laws'],
    limitation='Conditional actual incoming d5 theorem, not original topological realization.'),indent=2)+'\n')
print(json.dumps(counts,indent=2))
