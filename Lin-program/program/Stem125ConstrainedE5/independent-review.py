"""Independent whole-center quotient enumeration and exact choice selection review."""
import collections
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
branches=json.loads((ROOT/'Stem125E5Search/branches.json').read_text())['branches']
search=json.loads((ROOT/'Stem125E5Search/search.json').read_text())
aggregate=json.loads((ROOT/'AggregateD5Conditional/source.json').read_text())['blocks']
extras=search['branches'][0]['new_blocks']
coverage=json.loads((ROOT/'Stem125HomologyCertificates/coverage.json').read_text())['pages']['2']['centers']
product_source=(ROOT/'Stem125E5Search/Product.lean').read_text()
def literal_list(name):
    return json.loads(re.search(r'def '+name+r' : List Nat := (\[[^\]]*\])',product_source).group(1))
positive=literal_list('positiveFiltrations')
zero=literal_list('zeroFiltrations')
centers=[c['filtration'] for c in coverage]
assert len(centers)==45 and len(positive)==17 and len(zero)==28
assert sorted(positive+zero)==sorted(centers) and set(positive).isdisjoint(zero)
for name,filtrations,length in [('originalPositive',positive,17),('originalZero',zero,28)]:
    body=product_source.split('def '+name+' ')[1].split('theorem ')[0].split('\ndef ')[0]
    indices=[int(y) for _,y in re.findall(r'\| ⟨(\d+),_⟩ => ⟨(\d+),by decide⟩',body)]
    assert len(indices)==length and [centers[i] for i in indices]==filtrations

def cols(flat,m,n):
    assert len(flat)==m*n
    return [sum(int(flat[i*n+j])<<i for i in range(m)) for j in range(n)]
def apply(a,v):
    out=0
    for i,c in enumerate(a):
        if (v>>i)&1:out^=c
    return out
def matrices(w):
    return [cols(w[f],m,n) for f,m,n in [('outgoing',w['k'],w['m']),('incoming',w['m'],w['n']),
        ('projection',w['h'],w['m']),('inclusion',w['m'],w['h']),('up',w['n'],w['m']),('down',w['m'],w['k'])]]
audit_wires=[]
cycle_pairs=0
def full(w,label):
    global cycle_pairs
    a,b,q,inc,u,d=matrices(w)
    boundaries={apply(b,x) for x in range(1<<w['n'])}
    cycles=[x for x in range(1<<w['m']) if apply(a,x)==0]
    assert all(apply(a,x)==apply(q,x)==0 for x in boundaries)
    assert all(apply(a,apply(inc,x))==0 and apply(q,apply(inc,x))==x for x in range(1<<w['h']))
    for x in range(1<<w['m']):
        assert apply(inc,apply(q,x))^apply(b,apply(u,x))^apply(d,apply(a,x))==x
    for x,y in itertools.product(cycles,repeat=2):
        assert (apply(q,x)==apply(q,y))==(x^y in boundaries)
        cycle_pairs+=1
    assert len(cycles)//len(boundaries)==1<<w['h']
    audit_wires.append(label)
    return w['h']
fixed={}
for filtration in positive:
    if filtration in [9,14,15,25]:continue
    key=f'S0:{filtration},{filtration+125}:d4'
    fixed[filtration]=extras.get(key,aggregate.get(key))['wire']
    full(fixed[filtration],f'fixed:{filtration}')
assert len(fixed)==13 and sum(w['h'] for w in fixed.values())==2
for name in ['nine','fourteen','fifteen','twentyfive']:
    for i,branch in enumerate(branches[name]):full(branch['wire'],f'{name}:{i}')
assert [b['wire']['h'] for b in branches['nine']]==[1,0]
assert [b['wire']['h'] for b in branches['fourteen']]==[1,1,0]
assert [b['wire']['h'] for b in branches['fifteen']]==[1,0,1,0]
for bit,index in [(False,8),(True,18)]:
    certificate=json.loads((ROOT/f'Fact764ConstrainedE5/certificate{int(bit)}.json').read_text())
    assert certificate['comparison']==branches['twentyfive'][index]['wire']
    assert certificate['named']==[False,True,False] and certificate['comparison']['h']==1

choices=list(itertools.product(range(2),range(3),range(4),[False,True]))
embedding=lambda c:(c[0],c[1],c[2],18 if c[3] else 8)
assert len(choices)==len(set(map(embedding,choices)))==48
distribution=collections.Counter()
global_quotient_vectors=0
for choice in choices:
    a,b,c,index=embedding(choice)
    local=dict(fixed)
    local.update({9:branches['nine'][a]['wire'],14:branches['fourteen'][b]['wire'],
        15:branches['fifteen'][c]['wire'],25:branches['twentyfive'][index]['wire']})
    assert set(local)==set(positive)
    assert sum(w['m'] for w in local.values())==24
    dimension=sum(w['h'] for w in local.values())
    assert dimension==3+branches['nine'][a]['wire']['h']+branches['fourteen'][b]['wire']['h']+branches['fifteen'][c]['wire']['h']
    distribution[dimension]+=1
    # Enumerate every tuple of full local homology coordinates and flatten it;
    # arbitrary zero-center quotients each contribute their unique zero class.
    flattened=set()
    ordered=[local[f] for f in positive]
    for values in itertools.product(*(range(1<<w['h']) for w in ordered)):
        flat=0;offset=0
        for value,w in zip(values,ordered):
            a0,b0,q0,i0,_,_=matrices(w)
            representative=apply(i0,value)
            assert apply(a0,representative)==0 and apply(q0,representative)==value
            flat|=value<<offset;offset+=w['h']
        flattened.add(flat)
    assert flattened==set(range(1<<dimension))
    global_quotient_vectors+=len(flattened)
assert distribution=={3:4,4:16,5:20,6:8}

# Actual finite product/map residual membership, rather than just the simplified bits.
product_matrix=[1,4,8]
product_boundaries={0,2,4,6}
map_matrix=[4,1]
map_boundaries={0,3}
def row_apply(rows,value):
    return sum(((row&value).bit_count()%2)<<i for i,row in enumerate(rows))
selected=[];rejected=[]
for index,branch in enumerate(branches['twentyfive']):
    a,b,_,_,_,_=matrices(branch['wire'])
    for candidate in range(16):
        cycle=(candidate&1)==((candidate>>1)&1)
        product=(1^row_apply(product_matrix,candidate)) in product_boundaries
        naturality=row_apply(map_matrix,candidate) in map_boundaries
        projected=((candidate>>3)&1)|(((candidate>>2)&1)<<1)|(((candidate>>1)&1)<<2)
        if cycle and product and naturality and apply(b,1)==1 and apply(b,2)==projected:
            if apply(a,2)==0:selected.append((index,candidate))
            else:rejected.append((index,candidate))
assert selected==[(8,7),(18,15)] and rejected==[(9,7),(19,15)]
same_original_choices=0
for nine,fourteen,fifteen,index in itertools.product(range(2),range(3),range(4),range(20)):
    if index in [i for i,_ in selected]:
        assert embedding((nine,fourteen,fifteen,index==18))==(nine,fourteen,fifteen,index)
        same_original_choices+=1
assert same_original_choices==48

build=[];reports=0
for name in ['Basic','Whole','Constraints']:
    record=json.loads((HERE/(name+'-compile.json')).read_text())
    assert record['observed_exit_code']==0
    assert sha(HERE/(name+'.lean'))==record['source_sha256']
    assert sha(HERE/(name+'.log'))==record['log_sha256']
    log=(HERE/(name+'.log')).read_text()
    dependencies=re.findall(r'depends on axioms: \[([^]]*)\]',log)
    assert all({x.strip() for x in group.split(',')}<={'propext','Classical.choice','Quot.sound'} for group in dependencies)
    count=len(dependencies)+log.count('does not depend on any axioms');reports+=count
    build.append(dict(module=name,observed_exit_code=0,standard_axiom_reports=count))
assert reports==16
files=[HERE/(name+'.lean') for name in ['Basic','Whole','Constraints']]+[HERE/'README.md',
    ROOT/'Stem125E5Search/branches.json',ROOT/'Stem125E5Search/search.json',
    ROOT/'Stem125E5Search/Product.lean',ROOT/'Stem125E5Search/Zero.lean',ROOT/'Stem125E5Search/Family.lean',
    ROOT/'Stem125E4Search/Zero.lean',ROOT/'Stem125HomologyCertificates/coverage.json',
    ROOT/'Fact764ConstrainedE5/Conclusion.lean',ROOT/'Fact764CycleFromProduct/Basic.lean']
result=dict(status='independent_review_passed',findings=[],reviewer='/root/map_search_next',
    finite=dict(original_choices=480,retained_choices=48,dimension_counts=dict(distribution),
        original_centers=45,explicit_centers=17,zero_centers=28,full_comparisons=len(audit_wires),
        full_cycle_pairs=cycle_pairs,enumerated_full_product_quotient_vectors=global_quotient_vectors,
        candidate_branch_pairs=320,selected_pairs=selected,noncycle_counterexamples=rejected),
    semantics=['embed preserves all other fields and identifies exactly the same original Product.Choice.',
        'Whole quotient includes every explicit local quotient plus every arbitrary-neighbor zero-current quotient.',
        'Complete local quotient equivalence gives actual finite cardinality and addition statements.',
        '48 choices are local products; no simultaneous actual graded Adams realization is proved.',
        'Named cycle is essential: branches9/19 satisfy the other obstruction constraints.',
        'aggregate_from_product obtains only the named-cycle premise from the earlier common-ring Meaning; all obstruction/source/complex meanings remain inputs.',
        'The earlier Meaning is ungraded with a caller-supplied zero target tower; no silent upgrade to the newer typed actual bridge is made.'],
    not_claimed=['Actual joint family realization','Full target101 exclusion','Later permanence',
        'Stable homotopy or convergence','Automatic interpretation of independent meanings in a single actual spectrum'],
    build_evidence=build,inputs_sha256={str(p.relative_to(ROOT)):sha(p) for p in files})
(HERE/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(f'Independent review passed:48 choices/45 centers/{dict(distribution)}, '
      f'{len(audit_wires)} full comparisons/{cycle_pairs} cyclepairs/{global_quotient_vectors} whole quotient coordinates;3direct0/16reports')
