"""Independent full-family bitset review of the frozen square continuation."""
import hashlib
import itertools
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
load=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()


def columns(w,field,rows,cols):
    bits=w[field]
    assert len(bits)==rows*cols
    return [sum(int(bits[i*cols+j])<<i for i in range(rows)) for j in range(cols)]


def apply(cols,x):
    out=0
    for j,v in enumerate(cols):
        if x>>j&1:out^=v
    return out


def quotient(w):
    k,m,n,h=(w[x] for x in ['k','m','n','h'])
    a,b,u,p,up,down=[columns(w,f,r,c) for f,r,c in [('outgoing',k,m),('incoming',m,n),
        ('inclusion',m,h),('projection',h,m),('up',n,m),('down',m,k)]]
    boundaries={apply(b,x) for x in range(1<<n)}
    cycles=[x for x in range(1<<m) if apply(a,x)==0]
    assert boundaries<=set(cycles)
    for j,col in enumerate(u):assert apply(a,col)==0 and apply(p,col)==1<<j
    for j in range(m):assert apply(u,p[j])^apply(b,up[j])^apply(down,a[j])==1<<j
    for x,y in itertools.product(cycles,repeat=2):
        assert (apply(p,x)==apply(p,y))==((x^y) in boundaries)
    return len(cycles)**2


key=lambda e:tuple(e['key'][x] for x in ['object','page','s','t'])
results=[]
for case in ['zero_b0','zero_b1']:
    report=load(HERE/'branches'/f'{case}.json')
    one=load(ROOT/'Fact713Ctheta4Continuation'/f'{case}-family.json')['entries']
    entries=load(HERE/f'{case}-family.json')['entries'];by={key(e):e for e in entries}
    assert len(by)==len(entries) and entries[:len(one)]==one and len(entries)==1385
    old=load(ROOT/'Fact713Row2907Continuation/branches'/f'{case}.json')
    assert all(report['new_comparisons'][k]==v for k,v in old['new_comparisons'].items())
    assert by['S0',4,17,138]['wire']['outgoing']==[False,False]
    assert by['S0',4,17,138]['wire']['incoming']==[False]
    assert by['S0',4,17,138]['wire']['h']==1
    for degree in [(12,134),(17,138)]:
        w=by['S0',5,*degree]['wire']
        assert w['h']==1 and not any(w['outgoing']) and not any(w['incoming'])
    pairs=sum(quotient(e['wire']) for e in entries)
    adjacent=consecutive=0
    for e in entries:
        obj,page,s,t=key(e);w=e['wire']
        upper=by.get((obj,page,s+page,t+page-1))
        if upper:
            v=upper['wire'];assert (w['k'],w['m'],w['outgoing'])==(v['m'],v['n'],v['incoming']);adjacent+=1
        nxt=by.get((obj,page+1,s,t))
        if nxt:assert w['h']==nxt['wire']['m'];consecutive+=1
    value=3
    for page in range(2,10):
        w=by[('S0',page,9,132)]['wire']
        assert apply(columns(w,'outgoing',w['k'],w['m']),value)==0
        assert value not in {apply(columns(w,'incoming',w['m'],w['n']),x) for x in range(1<<w['n'])}
        value=apply(columns(w,'projection',w['h'],w['m']),value)
    assert value==1 and ('S0',10,9,132) not in by and ('S0',4,17,140) in by
    results.append(dict(case=case,entries=len(entries),quotient_pairs=pairs,adjacent=adjacent,consecutive=consecutive))
frozen=load(HERE/'frozen-source.json')
for name,h in frozen['files'].items():assert sha(ROOT/name)==h,name
for r in frozen['modules']:assert r['observed_exit_code']==0
report=dict(status='passed',branches=results,frozen_files=len(frozen['files']),modules=len(frozen['modules']),
            standard_axiom_reports=frozen['axiom_reports'],review_source_sha256=sha(Path(__file__)),
            scope='Exact previous prefix, full candidate maps and finite trajectory binding. '
                  'Prefix10 is independently supplied; coherence alone does not realize actual neighboring pages.')
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
