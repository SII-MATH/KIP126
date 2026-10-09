"""Root review of exact old/new quotient coordinates and complete E6 proof."""
import hashlib
import itertools
import json
from pathlib import Path
import sqlite3

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
load=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
frozen=load(HERE/'frozen-source.json')
for name,digest in frozen['files'].items():assert sha(ROOT/name)==digest,name


def cols(w,field,m,n):
    bits=w[field];assert len(bits)==m*n
    return [sum(int(bits[i*n+j])<<i for i in range(m)) for j in range(n)]


def ev(columns,x):
    result=0
    for j,col in enumerate(columns):
        if x>>j&1:result^=col
    return result


def check(w):
    k,m,n,h=[w[x] for x in ['k','m','n','h']]
    a,b,i,p,u,d=[cols(w,f,r,c) for f,r,c in [('outgoing',k,m),('incoming',m,n),
        ('inclusion',m,h),('projection',h,m),('up',n,m),('down',m,k)]]
    boundary={ev(b,x) for x in range(1<<n)}
    cycles={x for x in range(1<<m) if ev(a,x)==0}
    assert boundary<=cycles and all(ev(p,x)==0 for x in boundary)
    assert all(ev(a,x)==0 and ev(p,x)==1<<j for j,x in enumerate(i))
    for j in range(m):assert ev(i,p[j])^ev(b,u[j])^ev(d,a[j])==1<<j
    for x,y in itertools.product(cycles,repeat=2):assert (ev(p,x)==ev(p,y))==(x^y in boundary)
    return a,b,i,p,len(cycles)**2


old=load(ROOT/'Fact763PageCertificates/comparison.json')
wire=lambda n:load(ROOT/'Row2693D5Search/wire'/f'{n}.json')
new=wire('product2')
assert all(old[f]==new[f] for f in ['k','m','n','h','incoming','outgoing'])
_,_,oi,op,oldpairs=check(old)
_,_,ni,np,newpairs=check(new)
change=[ev(np,x) for x in oi];inverse=[ev(op,x) for x in ni]
assert change==[9,6,4,8]
for x in range(16):assert ev(change,ev(inverse,x))==x and ev(inverse,ev(change,x))==x
for x in range(32):assert ev(change,ev(op,x))==ev(np,x)
assert ev(op,16)==ev(np,16)==4
data=load(HERE/'source.json')
incoming=data['incoming2']['wire'];step=data['source5']
assert incoming==load(HERE/'wire/incoming2.json') and step==load(HERE/'wire/source5.json')
ia,ib,_,_,ipairs=check(incoming)
a,b,i,p,spairs=check(step)
assert incoming['m']==1 and incoming['h']==0 and ia[0]!=0
assert (step['m'],step['n'],step['k'],step['h'])==(2,0,1,1)
assert a==[0,1] and b==[] and p==[1,0] and i==[1]
database=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect('file:'+str(database)+'?mode=ro',uri=True)
assert sha(database)==data['database_sha256']
rawrows=[]
for degree in [(3,129),(5,130),(7,131)]:
    rawrows.append(c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',degree).fetchall())
assert rawrows==[[(r['id'],r['mon'],r['d2']) for r in g] for g in data['incoming2']['rows']]
decode=lambda raw:sum(1<<int(v) for v in raw.split(',') if v)
assert ia==[decode(r[2]) for r in rawrows[1]] and ib==[decode(r[2]) for r in rawrows[0]]
assert c.execute('select mon,s,t from S0_AdamsE2_basis where id=2694').fetchone()==('0,2,367,1',10,134)
assert c.execute('select base,diff,level from S0_AdamsE2_ss where id=2694').fetchone()==('3','1',9995)
pairs=oldpairs+newpairs+ipairs+spairs
value=16;other=2
for r in [2,3,4]:
    w=wire('product'+str(r));out,inc,_,proj,q=check(w);pairs+=q
    assert ev(out,value)==0 and value not in {ev(inc,x) for x in range(1<<w['n'])}
    value=ev(proj,value)
    w=wire('target'+str(r));out,inc,_,proj,q=check(w);pairs+=q
    assert ev(out,other)==0;other=ev(proj,other)
assert value==other==1 and ev(a,value)==0 and ev(p,value)==1
# Complete d5 values determine every source value. Any extra incoming
# generator could destroy this result and is excluded by the whole E5 source.
accepted=0
for candidate in itertools.product(range(2),repeat=2):
    if candidate[0]==0 and candidate[1]==1:
        assert all(ev(candidate,x)==ev(a,x) for x in range(4));accepted+=1
assert accepted==1
models=0
for current,nextpage in itertools.product(itertools.permutations(range(4)),itertools.permutations(range(2))):
    actual=current.index(1)
    value6=nextpage.index(ev(p,current[actual]))
    assert value6!=nextpage.index(0)
    models+=1
report=dict(status='passed',findings=[],comparisons=10,quotient_pairs=pairs,
    complete_E3_change=change,change_inverse_checks=16,full_E2_bridge_checks=32,
    same_input_models=models,frozen_files=len(frozen['files']),modules=len(frozen['modules']),
    standard_axiom_reports=frozen['axiom_reports'],
    scope='Exact original E2 input; whole d5 [0,1]; complete incoming E5 zero; same-input nonzero E6. '
          'Known last d5 column and complete actual early/product meanings remain explicit. No permanence.')
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
