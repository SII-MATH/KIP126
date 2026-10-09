"""Independent exact enumeration of the variable-dimension neighborhood."""
from pathlib import Path
from itertools import product
import hashlib
import json
import sqlite3
import subprocess

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
canonical=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
ev=lambda bits,m,n,x:sum((sum(int(bits[i*n+j])*((x>>j)&1) for j in range(n))%2)<<i for i in range(m))
vector=lambda xs:sum(int(x)<<i for i,x in enumerate(xs))

def compare(w):
    k,m,n,h=[w[x] for x in ['k','m','n','h']]
    D=lambda x:ev(w['outgoing'],k,m,x)
    J=lambda x:ev(w['incoming'],m,n,x)
    I=lambda x:ev(w['inclusion'],m,h,x)
    P=lambda x:ev(w['projection'],h,m,x)
    kernel={x for x in range(1<<m) if D(x)==0};image={J(x) for x in range(1<<n)}
    assert image<=kernel
    assert all(D(I(z))==0 and P(I(z))==z for z in range(1<<h))
    assert all(x^I(P(x)) in image for x in kernel)
    assert all((P(x)==P(y))==((x^y) in image) for x,y in product(kernel,repeat=2))
    assert len(kernel)==len(image)*(1<<h)

def path(stages,raw,final):
    x=vector(raw)
    for s in stages:
        w=s['wire'];compare(w);assert vector(s['representative'])==x
        assert ev(w['outgoing'],w['k'],w['m'],x)==0
        assert x not in {ev(w['incoming'],w['m'],w['n'],a) for a in range(1<<w['n'])}
        x=ev(w['projection'],w['h'],w['m'],x)
    assert x==vector(final)

pro=json.loads((HERE/'provenance.json').read_text())
for name,digest in pro['input_sha256'].items():assert sha(ROOT/name)==digest,name
db=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
for key,expected in pro['raw_rows'].items():assert list(db.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?',(int(key),)).fetchone())==expected

# Enumerate every D and J, not just the exported six cases.
admissible=[];examined=0
for a in [False,True]:
    n=1 if a else 2
    for dbits,jbits in product(range(16),range(1<<(2*n))):
        examined+=1
        D=[bool(dbits>>i&1) for i in range(4)]
        J=[bool(jbits>>i&1) for i in range(2*n)]
        if ev(D,2,2,2)!=1 or (ev(D,2,2,1)>>1)&1:continue
        if ev(J,2,n,1)!=0:continue
        if any(ev(D,2,2,ev(J,2,n,x)) for x in range(1<<n)):continue
        b=bool(ev(D,2,2,1)&1)
        q=False if a else bool(ev(J,2,n,2)&1)
        code=f'{int(a)}{int(b)}{int(q)}'
        w=json.loads((HERE/f'event{code}.json').read_text())
        assert w['outgoing']==D and w['incoming']==J
        admissible.append(code)
assert len(admissible)==len(set(admissible))==6

adjacent=0;consecutive=0;count=0
for case in pro['cases']:
    code=case['code'];f=json.loads((HERE/f'family{code}.json').read_text())['entries']
    assert len(f)==9 and len({tuple(x['key'].values()) for x in f})==9
    by={(e['key']['page'],e['key']['s'],e['key']['t']):e['wire'] for e in f}
    assert set(by)=={(r,s,t) for r in [2,3,4] for s,t in [(7,134),(11,137),(15,140)]}
    for e in f:compare(e['wire']);count+=1
    for e,g in product(f,repeat=2):
        a,b=e['key'],g['key'];w,v=e['wire'],g['wire']
        if a['page']==b['page'] and b['s']==a['s']+a['page'] and b['t']==a['t']+a['page']-1:
            assert w['k']==v['m'] and w['m']==v['n'] and w['outgoing']==v['incoming'];adjacent+=1
        if b['page']==a['page']+1 and (a['s'],a['t'])==(b['s'],b['t']):assert w['h']==v['m'];consecutive+=1
    assert by[(3,7,134)]['h']==by[(4,7,134)]['m']==by[(4,11,137)]['n']==case['incoming_source_dimension']
    assert by[(4,15,140)]==json.loads((ROOT/f"Row3152BranchCertificates/sourceD4{int(case['row2925_first_bit'])}.json").read_text())
    w=json.loads((HERE/f'finite{code}.json').read_text())
    path(w['sourceStages'],w['rawSource'],w['source']);path(w['targetStages'],w['rawTarget'],w['target'])
    assert w['event']==by[(4,11,137)] and ev(w['event']['outgoing'],2,2,vector(w['source']))==vector(w['target'])!=0
    assert w['rawSource']==[False,False,True,False,False,False] and w['rawTarget']==[False,True,False,False,False]
    for prefix in ['family','finite','indexed','bound']:
        pathfile=HERE/f'{prefix}{code}.json';assert pathfile.read_text()==canonical(json.loads(pathfile.read_text()))

result=dict(status='variable_dimension_neighborhood_review_passed',raw_unknowns_preserved=True,
    examined_matrix_pairs=examined,admissible_cases=admissible,distinct_events=1,
    complete_comparisons=count,adjacent_matrix_equalities=adjacent,consecutive_dimensions=consecutive,
    prior_endpoint_steps=24,nonzero_incoming_cases=['001','011'],
    source_event_incoming_dimensions=[1,2],actual_adams_realization=False,
    frozen_aggregate_sha256=sha(ROOT/'AggregateD5Conditional/source.json'),
    input_sha256={p.name:sha(p) for p in [HERE/'provenance.json',HERE/'review.py']})
(HERE/'review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
