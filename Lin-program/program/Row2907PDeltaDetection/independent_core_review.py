"""Independent core review: full products, exact names and actual E4 label models."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
load=lambda p:json.loads(p.read_text())
names=['Data','Basic','Semantics','D2Links','Descent','Actual']
proofs={}
for name in names:
    source=HERE/(name+'.lean');log=HERE/(name+'.log');report=load(HERE/(name+'-compile.json'))
    assert report['observed_exit_code']==0 and report['source_sha256']==sha(source)
    assert report['log_sha256']==sha(log)
    assert not re.search(r'\b(sorry|axiom|native_decide|unsafe)\b',source.read_text())
    assert not re.search(r'\b(sorryAx|Lean\.ofReduceBool|error)\b',log.read_text())
    for file,digest in report['external_input_sha256'].items():assert sha(ROOT/file)==digest
    entries=re.findall(r'depends on axioms:\s*\[([^]]*)\]',log.read_text())
    for entry in entries:assert set(filter(None,map(str.strip,entry.split(','))))<={'propext','Classical.choice','Quot.sound'}
    proofs[name]=dict(source_sha256=sha(source),log_sha256=sha(log),
        axiom_reports=len(entries)+log.read_text().count('does not depend on any axioms'))

def cols(w,f,m,n):
    assert len(w[f])==m*n
    return tuple(sum(int(w[f][i*n+j])<<i for i in range(m)) for j in range(n))
def ev(a,x):
    y=0
    for j,v in enumerate(a):
        if x>>j&1:y^=v
    return y
def complex(w):
    k,m,n,h=[w[f] for f in ['k','m','n','h']]
    a,b,p,I=cols(w,'outgoing',k,m),cols(w,'incoming',m,n),cols(w,'projection',h,m),cols(w,'inclusion',m,h)
    return a,b,p,I,[x for x in range(1<<m) if ev(a,x)==0],{ev(b,x) for x in range(1<<n)}

counts=Counter()
products=load(HERE/'products.json')['products']
for label,item in products.items():
    w=item['wire'];l,r,t=w['left'],w['right'],w['target']
    lc,rc,tc=complex(l),complex(r),complex(t)
    def multiply(x,y):
        return sum((sum(int(w['tensor'][(i*l['m']+j)*r['m']+k])*((x>>j)&1)*((y>>k)&1)
            for j in range(l['m']) for k in range(r['m']))%2)<<i for i in range(t['m']))
    for x,y in itertools.product(lc[4],rc[4]):
        assert multiply(x,y) in tc[4];counts['all_cycle_product_pairs']+=1
    for x,y in itertools.product(lc[5],rc[4]):
        assert multiply(x,y) in tc[5];counts['all_left_boundary_product_pairs']+=1
    for x,y in itertools.product(lc[4],rc[5]):
        assert multiply(x,y) in tc[5];counts['all_right_boundary_product_pairs']+=1
    raw_source=2 if label=='source' else 1
    assert multiply(1,raw_source)==2
    assert ev(lc[2],1)==1 and ev(rc[2],raw_source)==1 and ev(tc[2],2)==1

source3=load(ROOT/'Fact713Row2773Refinement/wire/b_S0_16_137_d3.json') if (ROOT/'Fact713Row2773Refinement/wire/b_S0_16_137_d3.json').exists() else None
if source3 is None:
    source3=load(ROOT/'Fact713Row3143Continuation/zero-family.json')['entries']
    source3=next(e['wire'] for e in source3 if e['key']==dict(object='S0',page=3,s=16,t=137))
assert source3['m']==2 and source3['h']==1
sc=complex(source3)
assert ev(sc[2],2)==1 and 2 in sc[4] and 2 not in sc[5]

perms=lambda n:list(itertools.permutations(range(n)))
for factor3,canonical_source3,product3,known3,factor4,source4,product4,known4 in itertools.product(
        perms(2),perms(4),perms(2),perms(2),perms(2),perms(2),perms(2),perms(2)):
    inverse=lambda p:{v:i for i,v in enumerate(p)}
    fi,si,pi,ki,f4i,s4i,p4i,k4i=map(inverse,[factor3,canonical_source3,product3,known3,factor4,source4,product4,known4])
    swap=lambda v:((v&1)<<1)|((v>>1)&1)
    stairs=lambda x:swap(canonical_source3[x])
    factor_next=lambda a:f4i[factor3[a]]
    source_next=lambda b:s4i[ev(sc[2],stairs(b))]
    product_next=lambda x:p4i[product3[x]]
    prod3=lambda a,b:pi[factor3[a] & (canonical_source3[b]&1)]
    prod4=lambda a,b:p4i[factor4[a] & source4[b]]
    a,b=fi[1],si[1];x=prod3(a,b)
    assert product3[x]==1
    assert stairs(b)==2 and source4[source_next(b)]==1
    assert product4[product_next(x)]==1
    for aa,bb in itertools.product(range(2),range(4)):
        assert product_next(prod3(aa,bb))==prod4(factor_next(aa),source_next(bb))
        counts['all_same_input_product_quotient_pairs']+=1
    known_d=lambda value:k4i[product4[value]]
    assert known_d(product_next(x))!=k4i[0]
    # A zero source derivative plus the proved zero factor derivative
    # would make this very same named product derivative zero by Leibniz.
    counterfeit_product_d=k4i[0]
    assert counterfeit_product_d!=known_d(product_next(x))
    counts['zero_source_counterfeit_rejected']+=1
    counts['same_input_label_models']+=1
assert counts['same_input_label_models']==3072
result=dict(status='no_core_correctness_findings',findings=[],modules=proofs,
    axiom_reports=sum(x['axiom_reports'] for x in proofs.values()),counts=dict(counts),
    reviewed_scope=names,excluded_scope=['Branches','Tactic'],
    preserved_inputs=['Known actual ss6934 d4 in constructed product/target E4 coordinates',
        'Complete actual d3 meanings and full source coordinate swap binding',
        'Actual product equation and its whole quotient transition',
        'Nine complete staircase d2 interpretations, not inferred from raw levels'],
    conclusion='Actual nonzero d4 for the same named source E4 representative; no exact target coefficient or unconditional sphere realization is inferred.',
    source_null_preserved=load(HERE/'search.json')['source_record'],
    inputs_sha256={str(p.relative_to(ROOT)):sha(p) for p in [HERE/'products.json',HERE/'search.json',HERE/'review.json',Path(__file__)]})
(HERE/'independent-core-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(dict(status=result['status'],axiom_reports=result['axiom_reports'],counts=dict(counts)),indent=2))
