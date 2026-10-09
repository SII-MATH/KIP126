"""Independent finite replay of the old-chart bridge and complete d5 step."""
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
counts=collections.Counter()


def cols(bits,m,n):
    assert len(bits)==m*n and all(x in [0,1] for x in bits)
    return [sum(int(bits[i*n+j])<<i for i in range(m)) for j in range(n)]


def ev(columns,x):
    assert x >> len(columns)==0
    result=0
    for j,c in enumerate(columns):
        if x>>j&1:result^=c
    return result


def check(w):
    k,m,n,h=[w[x] for x in ['k','m','n','h']]
    o,inc,u,p,up,dn=[cols(w[x],a,b) for x,a,b in [
        ('outgoing',k,m),('incoming',m,n),('inclusion',m,h),
        ('projection',h,m),('up',n,m),('down',m,k)]]
    assert all(ev(o,x)==0 for x in inc+u)
    assert all(ev(p,x)==0 for x in inc)
    assert all(ev(p,x)==1<<j for j,x in enumerate(u))
    for j in range(m):assert ev(u,p[j])^ev(inc,up[j])^ev(dn,o[j])==1<<j
    boundaries={ev(inc,x) for x in range(1<<n)}
    cycles=[x for x in range(1<<m) if ev(o,x)==0]
    for a,b in itertools.product(cycles,repeat=2):
        assert (ev(p,a)==ev(p,b))==((a^b) in boundaries)
        counts['cycle_pairs']+=1
    counts['comparisons']+=1
    return o,inc,u,p


data=load(HERE/'source.json')
db=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
assert sha(db)==data['database_sha256']
c=sqlite3.connect('file:'+str(db)+'?mode=ro',uri=True)
metadata=dict(c.execute('SELECT name,value FROM version'))
assert 131<=int(metadata['t_max']) and 130<=int(metadata['d2_t_max'])
for deg,rows in zip([(3,129),(5,130),(7,131)],data['incoming2']['rows']):
    assert list(c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',deg))==[
        (r['id'],r['mon'],r['d2']) for r in rows]


def sparse(raw,n):
    assert raw is not None
    indices=list(map(int,raw.split(','))) if raw else []
    assert indices==sorted(set(indices)) and all(0<=i<n for i in indices)
    return sum(1<<i for i in indices)


iw=data['incoming2']['wire'];io,ii,_,_=check(iw)
assert io==[sparse(x['d2'],iw['k']) for x in data['incoming2']['rows'][1]]
assert ii==[sparse(x['d2'],iw['m']) for x in data['incoming2']['rows'][0]]
assert iw['m']==1 and iw['h']==0 and io[0]!=0
counts['SQL_d2_columns']=len(io)+len(ii)
assert data['source5']==load(HERE/'wire/source5.json')
assert iw==load(HERE/'wire/incoming2.json')
o,inc,u,p=check(data['source5'])
assert o==[0,1] and inc==[] and p==[1,0] and u==[1]
assert list(c.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss '
                     'WHERE s=10 AND t=134 AND 5<=level AND level<=9995 ORDER BY id'))==[
    tuple(row) for row in data['source_rows']]
v=2
for page in [2,3,4]:
    w=load(ROOT/'Row2693D5Search/wire'/f'target{page}.json')
    oo,ii,_,pp=check(w)
    assert ev(oo,v)==0
    v=ev(pp,v)
assert v==1
old=load(ROOT/'Fact763PageCertificates/comparison.json')
stair=load(ROOT/'Row2693D5Search/wire/product2.json')
for field in ['k','m','n','h','incoming','outgoing']:assert old[field]==stair[field]
_,_,old_u,old_p=check(old)
_,_,stair_u,stair_p=check(stair)
change=[ev(stair_p,x) for x in old_u]
inverse=[ev(old_p,x) for x in stair_u]
assert change!=[1,2,4,8]
for x in range(16):
    assert ev(change,ev(inverse,x))==x and ev(inverse,ev(change,x))==x
    counts['coordinate_equivalence_values']+=1
for x in range(32):
    assert ev(change,ev(old_p,x))==ev(stair_p,x)
    counts['same_raw_quotient_bridge_values']+=1
v=16
assert ev(old_p,v)==4 and ev(stair_p,v)==4
for page in [2,3,4]:
    w=load(ROOT/'Row2693D5Search/wire'/f'product{page}.json')
    oo,ii,_,pp=check(w)
    assert ev(oo,v)==0 and v not in {ev(ii,x) for x in range(1<<w['n'])}
    v=ev(pp,v)
    counts['same_input_trace_steps']+=1
assert v==1 and ev(o,v)==0 and ev(p,v)==1
counts['same_input_trace_steps']+=1
assert c.execute('SELECT mon,s,t FROM S0_AdamsE2_basis WHERE id=2694').fetchone()==('0,2,367,1',10,134)
for first,last in itertools.product(range(2),repeat=2):
    accepted=first==0 and last==1
    counts['whole_d5_candidates']+=1
    if not accepted:counts['rejected_d5_candidates']+=1;continue
    for x in range(4):
        assert ev([first,last],x)==ev(o,x)
        counts['whole_d5_vectors']+=1
for current,target,nextchart in itertools.product(itertools.permutations(range(4)),
    itertools.permutations(range(2)),itertools.permutations(range(2))):
    d=lambda x:target.index(ev(o,current[x]))
    q=lambda x:nextchart.index(ev(p,current[x]))
    raw=current.index(1)
    assert target[d(raw)]==0 and nextchart[q(raw)]==1 and q(raw)!=nextchart.index(0)
    for x in range(4):
        assert (current[x]==1)==(x==raw)
        counts['request_bindings']+=1
    counts['relabelled_E5_E6_models']+=1

report=dict(status='old_quotient_bridge_and_complete_same_input_E6_passed',counts=dict(counts),
    old_to_staircase_columns=change,staircase_to_old_columns=inverse,
    incoming_source='(5,130) complete E2dimension1 with nonzero d2, hence E3zero and E5zero',
    source_d5='complete two-dimensional matrix [0,1]; known other column retained',
    inputs={str(p.relative_to(ROOT)):sha(p) for p in [db,HERE/'source.json',
      ROOT/'Row2693D5Search/frozen-source.json',ROOT/'Fact763PageCertificates/comparison.json']},
    limitation='Conditional actual semantics are proved in Lean; finite tests alone do not prove topology or permanence.')
(HERE/'audit.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
