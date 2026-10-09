"""Enumerate exactly the retained local products and independently check them."""
import collections
import hashlib
import itertools
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
branch_file=ROOT/'Stem125E5Search/branches.json'
branches=json.loads(branch_file.read_text())['branches']
search=json.loads((ROOT/'Stem125E5Search/search.json').read_text())
aggregate=json.loads((ROOT/'AggregateD5Conditional/source.json').read_text())['blocks']
extras=search['branches'][0]['new_blocks']
coverage=json.loads((ROOT/'Stem125HomologyCertificates/coverage.json').read_text())['pages']['2']['centers']
positive=[6,9,11,13,14,15,16,18,21,22,25,31,39,43,46,49,52]
zero=[c['filtration'] for c in coverage if c['filtration'] not in positive]
assert len(coverage)==45 and len(zero)==28 and len(set(positive+zero))==45
vecs=lambda n:list(itertools.product([0,1],repeat=n))
def app(flat,rows,cols,x):return tuple(sum(int(flat[i*cols+j])*x[j] for j in range(cols))%2 for i in range(rows))
def rank(columns):
    span={(0,)*len(columns[0])} if columns else {()}
    for c in columns:span|={tuple(x^y for x,y in zip(v,c)) for v in list(span)}
    return len(span).bit_length()-1
wire_audits=[]
def verify(w,label):
    k,m,n,h=(w[x] for x in ['k','m','n','h'])
    A=lambda x:app(w['outgoing'],k,m,x)
    B=lambda x:app(w['incoming'],m,n,x)
    P=lambda x:app(w['projection'],h,m,x)
    I=lambda x:app(w['inclusion'],m,h,x)
    U=lambda x:app(w['up'],n,m,x)
    D=lambda x:app(w['down'],m,k,x)
    image={B(x) for x in vecs(n)}
    cycles=[x for x in vecs(m) if A(x)==(0,)*k]
    assert all(A(x)==(0,)*k and P(x)==(0,)*h for x in image)
    assert all(P(I(x))==x and A(I(x))==(0,)*k for x in vecs(h))
    for x in vecs(m):
        assert tuple(a^b^c for a,b,c in zip(I(P(x)),B(U(x)),D(A(x))))==x
    for x,y in itertools.product(cycles,repeat=2):
        assert (P(x)==P(y))==(tuple(a^b for a,b in zip(x,y)) in image)
    rank_a=rank([A(x) for x in vecs(m)])
    rank_b=rank([B(x) for x in vecs(n)])
    assert m-rank_a-rank_b==h
    wire_audits.append(dict(label=label,input_dimension=m,homology_dimension=h,
        all_cycle_pairs=len(cycles)**2))
    return h
dimensions={}
known_centers=[c for c in search['branches'][0]['positive_centers'] if c['status']=='complete']
known_dimensions={}
for center in known_centers:
    f=center['filtration'];key=f'S0:{f},{f+125}:d4'
    block=extras.get(key,aggregate.get(key))
    assert block is not None,key
    known_dimensions[f]=verify(block['wire'],f'known:{f}')
assert len(known_dimensions)==13 and sum(known_dimensions.values())==2
for name,indices in [('nine',range(2)),('fourteen',range(3)),('fifteen',range(4)),('twentyfive',[8,18])]:
    dimensions[name]={i:verify(branches[name][i]['wire'],f'{name}:{i}') for i in indices}
    for i in indices:
        if name=='twentyfive':
            expected=json.loads((ROOT/f'Fact764ConstrainedE5/certificate{0 if i==8 else 1}.json').read_text())
            assert branches[name][i]['wire']==expected['comparison']
            assert expected['named']==[False,True,False]
assert dimensions=={'nine':{0:1,1:0},'fourteen':{0:1,1:1,2:0},'fifteen':{0:1,1:0,2:1,3:0},'twentyfive':{8:1,18:1}}
rows=[]
for a,b,c,bit in itertools.product(range(2),range(3),range(4),[False,True]):
    index=18 if bit else 8
    d=sum(known_dimensions.values())+dimensions['nine'][a]+dimensions['fourteen'][b]+dimensions['fifteen'][c]+dimensions['twentyfive'][index]
    rows.append(dict(nine=a,fourteen=b,fifteen=c,optional_boundary=bit,twentyfive_index=index,
        dimension=d,cardinality=2**d))
assert len(rows)==48 and len({(r['nine'],r['fourteen'],r['fifteen'],r['twentyfive_index']) for r in rows})==48
counts=collections.Counter(r['dimension'] for r in rows)
assert counts=={3:4,4:16,5:20,6:8}
constraint_cases=[]
for i,branch in enumerate(branches['twentyfive']):
    w=branch['wire']
    for candidate in vecs(4):
        cycle=candidate[0]==candidate[1]
        product=candidate[0]==1
        naturality=candidate[0]==candidate[2]
        known=app(w['incoming'],3,2,(1,0))==(1,0,0)
        unknown=app(w['incoming'],3,2,(0,1))==(candidate[3],candidate[2],candidate[1])
        if not (cycle and product and naturality and known and unknown):continue
        named_cycle=app(w['outgoing'],1,3,(0,1,0))==(0,)
        assert i in [8,9,18,19]
        assert named_cycle==(i in [8,18])
        constraint_cases.append(dict(index=i,candidate=candidate,named_cycle=named_cycle))
assert len(constraint_cases)==4
files=[branch_file,ROOT/'Stem125E5Search/Product.lean',ROOT/'Stem125E5Search/Zero.lean',
    ROOT/'Stem125E5Search/Family.lean',ROOT/'Stem125E5Search/Known.lean',ROOT/'Stem125E5Search/search.json',
    ROOT/'Fact764ConstrainedE5/certificate0.json',ROOT/'Fact764ConstrainedE5/certificate1.json',
    ROOT/'Fact764ConstrainedE5/Conclusion.lean',ROOT/'Fact764CycleFromProduct/Basic.lean',
    ROOT/'Stem125HomologyCertificates/coverage.json',ROOT/'AggregateD5Conditional/source.json']
result=dict(status='48_conditional_local_products_enumerated',rows=rows,
    dimension_counts=dict(sorted(counts.items())),minimum=3,maximum=6,
    all_dimensions_occur={d:next(r for r in rows if r['dimension']==d) for d in range(3,7)},
    local_comparison_audits=wire_audits,original_center_count=45,
    positive_center_filtrations=positive,zero_center_filtrations=zero,
    fixed_known_dimension=sum(known_dimensions.values()),known_center_dimensions=known_dimensions,
    all_constraint_cases=constraint_cases,
    original_aggregate_blocks=len(aggregate),
    scope='These 48 choices index complete local quotient products. No joint actual Adams realization, compatible omitted neighbors, or future-page realization for every combination is asserted.',
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in files})
(HERE/'enumeration.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
print('48 local choices;dimension distribution',dict(counts),';45 centers;358 baseline blocks retained')
