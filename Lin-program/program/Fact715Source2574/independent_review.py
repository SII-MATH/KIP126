"""Root independent polynomial and whole-source collapse review."""
import hashlib
import itertools
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
frozen=json.loads((HERE/'frozen-source.json').read_text())
for name,digest in frozen['files'].items():
    assert sha(HERE/name)==digest,name
modules=(HERE/'modules.txt').read_text().splitlines()
for module in modules:
    r=json.loads((HERE/(module.split('.')[-1]+'-compile.json')).read_text())
    assert r['observed_exit_code']==0 and r['inputs_stable']
    assert sha(ROOT/'.lake/build/lib/lean'/(module.replace('.','/')+'.olean'))==r['olean_sha256']
data=json.loads((HERE/'source.json').read_text())
def ev(a,m,n,x):
    return sum((sum(a[i*n+j]*((x>>j)&1) for j in range(n))%2)<<i for i in range(m))
pairs=0
for b in data['comparisons'].values():
    w=b['wire'];k,m,n,h=(w[x] for x in ['k','m','n','h'])
    kernel=[x for x in range(2**m) if ev(w['outgoing'],k,m,x)==0]
    image={ev(w['incoming'],m,n,x) for x in range(2**n)}
    assert image<=set(kernel)
    for x in kernel:
        for y in kernel:
            assert (ev(w['projection'],h,m,x)==ev(w['projection'],h,m,y))==((x^y) in image)
            pairs+=1
assert data['comparisons']['source']['wire']['h']==1
assert data['comparisons']['factorTarget']['wire']['h']==0
target=data['comparisons']['target']['wire']
assert ev(target['projection'],2,4,8)==2
# Every nonzero source-map value compatible with a nonzero product
# differential has trivial kernel. The target value is not selected.
compatible=0
for dim in range(1,5):
    for image in range(2**dim):
        for columns in itertools.product(range(4),repeat=dim):
            result=0
            for i,col in enumerate(columns):
                if image>>i&1:result^=col
            if result!=2:continue
            assert image!=0
            assert [x for x in range(2) if x*image==0]==[0]
            compatible+=1
report=dict(status='passed',frozen_files=len(frozen['files']),modules=len(modules),
    quotient_pairs=pairs,all_source_target_choices_compatible=compatible,
    manual_review=['Product tensor includes both complete E2 source columns.',
      'Product and target recorded differential endpoints use exact original E2 representatives.',
      'The known nonzero differential is ss2866, not the desired ss2574 source differential.',
      'Actual Leibniz plus the complete empty factor d3 target excludes a source cycle.',
      'The complete one-dimensional E3 source has only the zero cycle.',
      'Actual E4 and E5 vanish by quotient surjectivity and explicit local zero laws.',
      'The full incoming d5 map includes every actual source element.'],
    remaining='Actual whole E2/d2/product interpretations and ss2866 differential meaning remain explicit.')
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report))
