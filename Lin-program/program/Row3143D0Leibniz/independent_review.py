"""Read-only second review of frozen sources, complete SQL rows and quotient models."""
import hashlib
import itertools
import json
import re
import sqlite3
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
frozen=json.loads((HERE/'frozen-source.json').read_text())
deps={};external={};reports=0
for key,digest in frozen['files'].items():
    assert sha(ROOT/key)==digest,(key,'frozen file changed')
for item in frozen['modules']:
    name=item['module'].split('.')[-1]
    code=(HERE/(name+'.lean')).read_text()
    assert not re.search(r'\b(sorry|admit|axiom|unsafe|native_decide)\b',code)
    assert item['observed_exit_code']==0 and item['inputs_stable']
    assert item['source_sha256']==sha(HERE/(name+'.lean'))
    assert item['olean_sha256']==sha(ROOT/'.lake/build/lib/lean'/HERE.name/(name+'.olean'))
    assert item['log_sha256']==sha(HERE/item['log'])
    for relative,digest in item['dependencies_sha256'].items():assert sha(ROOT/relative)==digest;deps[relative]=digest
    for relative,digest in item['external_input_sha256'].items():assert sha(ROOT/relative)==digest;external[relative]=digest
    log=(HERE/item['log']).read_text()
    assert 'sorryAx' not in log and 'error:' not in log
    printed=re.findall(r'depends on axioms: \[([^\]]*)\]|does not depend on any axioms',log)
    for row in printed:assert set(row.split(', ')) <= {'','propext','Classical.choice','Quot.sound'}
    reports+=len(printed)
assert reports==57
prov=json.loads((HERE/'provenance.json').read_text())
db=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
counts=dict(comparisons=0,complete_rows=0,cycles=0,quotient_pairs=0,renamed_squarezero=0,
    no_known_nonzero_countermodels=0,no_squarezero_countermodels=0,same_input_product_models=0)
def ev(a,m,n,x):
    assert len(a)==m*n and len(x)==n
    return tuple(sum(a[i*n+j]*x[j] for j in range(n))%2 for i in range(m))
def vectors(n):return itertools.product([0,1],repeat=n)
for name,b in prov['comparisons'].items():
    s,t=b['degree'];w=b['wire'];k,m,n,h=(w[x] for x in ['k','m','n','h'])
    for degree,expected in zip([(s-2,t-1),(s,t),(s+2,t+1)],b['rows']):
        actual=[dict(id=i,mon=mon,d2=d2) for i,mon,d2 in c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',degree)]
        assert actual==expected
        counts['complete_rows']+=len(actual)
    cycles=[x for x in vectors(m) if not any(ev(w['outgoing'],k,m,x))]
    boundaries={ev(w['incoming'],m,n,x) for x in vectors(n)}
    assert boundaries <= set(cycles)
    for x in cycles:
        p=ev(w['projection'],h,m,x)
        ip=ev(w['inclusion'],m,h,p)
        assert tuple(a^b for a,b in zip(x,ip)) in boundaries
        for y in cycles:
            assert (p==ev(w['projection'],h,m,y))==(tuple(a^b for a,b in zip(x,y)) in boundaries)
            counts['quotient_pairs']+=1
    for v in vectors(h):assert ev(w['projection'],h,m,ev(w['inclusion'],m,h,v))==v
    counts['comparisons']+=1;counts['cycles']+=len(cycles)
assert c.execute('select id,base,diff,level,s,t from S0_AdamsE2_ss where id=2149').fetchone()==(2149,'2','1',9996,17,125)
assert c.execute('select id,mon,s,t from S0_AdamsE2_basis where id=2150').fetchone()==(2150,'0,2,9,1,188,1',17,125)
assert c.execute('select id,mon,s,t from S0_AdamsE2_basis where id=2277').fetchone()==(2277,'1,1,64,2',21,128)
assert c.execute('select id,base,diff,level from S0_AdamsE2_ss where id=3143').fetchone()==(3143,'0',None,9000)
assert c.execute('select id,mon from S0_AdamsE2_basis where s=17 and t=140 order by id limit 1').fetchone()==(3141,'8,1,280,1')
target=prov['comparisons']['rightTarget']['wire']
assert ev(target['projection'],1,3,(0,1,0))==(0,)
assert ev(target['projection'],1,3,(0,0,1))==(1,)
for offsets in itertools.product([0,1],repeat=4):
    a,b,c0,d=offsets
    for previous,following in itertools.product([0,1],repeat=2):
        p=lambda x:(previous*(x^a))^b
        q=lambda x:(following*(x^b))^c0
        known=q(b^1)==(c0^1)
        square=all(q(p(x))==c0 for x in [0,1])
        if known and square:
            assert all(p(x)==b for x in [0,1]);counts['renamed_squarezero']+=1
        if square and not known and any(p(x)!=b for x in [0,1]):counts['no_known_nonzero_countermodels']+=1
        if known and not square and any(p(x)!=b for x in [0,1]):counts['no_squarezero_countermodels']+=1
for offsets in itertools.product([0,1],repeat=6):
    a,b,c0,aa,bb,cc=offsets
    advanceA=lambda x:(x^a)^aa
    advanceB=lambda x:(x^b)^bb
    advanceC=lambda x:(x^c0)^cc
    prod3=lambda x,y:((x^a)*(y^b))^c0
    prod4=lambda x,y:((x^aa)*(y^bb))^cc
    for x,y in itertools.product([0,1],repeat=2):
        assert advanceC(prod3(x,y))==prod4(advanceA(x),advanceB(y))
    named=prod3(a^1,b^1)
    assert advanceC(named)==prod4(advanceA(a^1),advanceB(b^1))
    counts['same_input_product_models']+=1
out=dict(status='passed_no_findings',frozen_files=len(frozen['files']),leaves=len(frozen['modules']),
    axiom_reports=reports,dependency_hashes=len(deps),external_hashes=len(external),counts=counts,
    known_event=dict(row=2149,basis=2150,target_basis=2277,page=4,source=[17,125],target=[21,128]),
    requested_event=dict(row=3143,basis=3141,page=4,source=[17,140],raw_diff=None),
    scope='The known d4 is an explicit actual nonzero meaning. No event value of row3143 or E4 named factorization is supplied. Six full E2 inputs construct detector E3 and E4 coordinates; source named input is E3 and actual relation/product/quotient interpretations remain explicit.',
    hashes=dict(frozen=sha(HERE/'frozen-source.json'),provenance=sha(HERE/'provenance.json'),database=sha(db)))
(HERE/'independent-review.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
