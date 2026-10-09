"""Independent complete action, quotient, relabeling and request checks."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
load=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
counts=Counter()
def ev(bits,m,n,x):
    assert len(bits)==m*n
    return sum((sum(int(bits[i*n+j])*((x>>j)&1) for j in range(n))%2)<<i for i in range(m))

product=load(ROOT/'Row2907PDeltaDetection/wire/targetProduct.json')
left,right,target=[product[x] for x in ['left','right','target']]
for x,y in itertools.product(range(1<<left['m']),range(1<<right['m'])):
    if ev(left['outgoing'],left['k'],left['m'],x) or ev(right['outgoing'],right['k'],right['m'],y):continue
    image=0
    for i in range(target['m']):
        bit=0
        for j in range(left['m']):
            for k in range(right['m']):
                bit ^= int(product['tensor'][(i*left['m']+j)*right['m']+k])*((x>>j)&1)*((y>>k)&1)
        image |= bit<<i
    expected=ev(left['projection'],left['h'],left['m'],x)&(
        ev(right['projection'],right['h'],right['m'],y)&1)
    assert ev(target['projection'],target['h'],target['m'],image)==expected
    counts['E2_cycle_products']+=1

cases=[]
perms=lambda n:list(itertools.permutations(range(n)))
for r,a in itertools.product([0,1],repeat=2):
    w=load(ROOT/'Row3136SquareCandidates/wire'/f'u0a{a}r{r}_source.json')
    cycles=[v for v in range(4) if ev(w['outgoing'],w['k'],w['m'],v)==0]
    boundaries={ev(w['incoming'],w['m'],w['n'],v) for v in range(1<<w['n'])}
    projection=lambda v:ev(w['projection'],w['h'],w['m'],v)
    inclusion=lambda v:ev(w['inclusion'],w['m'],w['h'],v)
    if a:assert all((v&1)==0 for v in cycles)
    branch=Counter()
    # Chart permutations relabel factor E3/E4, target E3/E4, known target
    # E3/E4, and product E4. In every case zero may have a nonzero label.
    for fs,fn,ts,tn,ks,kn,pn in itertools.product(perms(2),perms(2),perms(4),
            perms(1<<w['h']),perms(2),perms(2),perms(2)):
        inv=lambda p:{v:i for i,v in enumerate(p)}
        fi,fni,ti,tni,ki,kni,pni=map(inv,[fs,fn,ts,tn,ks,kn,pn])
        fnext=lambda x:fni[fs[x]]
        tnext=lambda y:tni[projection(ts[y])]
        knext=lambda z:kni[ks[z]]
        product3=lambda x,y:ki[fs[x]*(ts[y]&1)]
        product4=lambda x,y:kni[fn[x]*(inclusion(tn[y])&1)]
        for x,y in itertools.product(range(2),[ti[v] for v in cycles]):
            assert knext(product3(x,y))==product4(fnext(x),tnext(y))
            if a:assert product4(fnext(x),tnext(y))==kni[0]
            branch['product_quotient_pairs']+=1
        # Known product is the nonzero E4 source and its differential has
        # known-target coordinate one. The Leibniz factor differential is zero.
        known_product=pni[1]
        known_d4={pni[0]:kni[0],known_product:kni[1]}
        for image in range(1<<w['h']):
            rhs=product4(fni[1],tni[image])
            compatible=rhs==known_d4[known_product]
            assert compatible==((inclusion(image)&1)==1)
            if a:assert not compatible
            if r and not a:assert compatible==(image==1)
            branch['accepted_d4_candidates' if compatible else 'rejected_d4_candidates']+=1
        branch['carrier_models']+=1
    assert bool(branch['accepted_d4_candidates'])==(not bool(a))
    counts.update(branch)
    cases.append(dict(residual=r,coefficient=a,target_E4_dimension=w['h'],counts=dict(branch)))

vectors=lambda n:[list(v) for k in range(n+1) for v in itertools.product([False,True],repeat=k)]
requests=list(itertools.product(vectors(4),vectors(3)))
check=lambda s,o:s==[True,False] and o==[True]
for s,o in requests:
    counts['accepted_requests' if check(s,o) else 'rejected_requests']+=1
    failure=next((name for name,ok in [('source.length',len(s)==2),('source',s==[True,False]),
                 ('output.length',len(o)==1),('output',o==[True])] if not ok),None)
    assert (failure is None)==check(s,o)
for pair in itertools.product(requests,repeat=2):
    assert all(check(*request) for request in pair)==(pair==(([True,False],[True]),([True,False],[True])))
    counts['batch_pairs']+=1
out=dict(status='all_complete_target_products_and_branch_exclusions_passed',cases=cases,counts=dict(counts),
    selected_residual=False,coefficient_forced_zero_under_actual_premises=True,
    actual_premises=['Row2907PDeltaDetection witness with known actual product differential',
        'Entire actual target d3 source and incoming meanings in canonical coordinates',
        'Whole E3 factor-target product equation with same factor and known-target charts',
        'Actual factor-target quotient multiplication transition and local zero laws'],
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in [Path(__file__),
        ROOT/'Row2907PDeltaDetection/wire/targetProduct.json',
        *[ROOT/'Row3136SquareCandidates/wire'/f'u0a{a}r{r}_source.json' for r,a in itertools.product([0,1],repeat=2)]]})
(HERE/'audit.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
