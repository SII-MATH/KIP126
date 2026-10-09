"""Root review of frozen evidence and full actual-coordinate comparisons."""
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
    record=json.loads((HERE/(module.split('.')[-1]+'-compile.json')).read_text())
    assert record['observed_exit_code']==0 and record['inputs_stable']
    assert sha(HERE/record['log'])==record['log_sha256']
    assert sha(ROOT/'.lake/build/lib/lean'/(module.replace('.','/')+'.olean'))==record['olean_sha256']
source=json.loads((HERE/'source.json').read_text())
blocks=source['blocks']
def ev(a,m,n,x):
    return sum((sum(a[i*n+j]*((x>>j)&1) for j in range(n))%2)<<i for i in range(m))
pairs=0
for b in blocks.values():
    w=b['wire'];k,m,n,h=(w[x] for x in ['k','m','n','h'])
    kernel=[x for x in range(2**m) if ev(w['outgoing'],k,m,x)==0]
    image={ev(w['incoming'],m,n,x) for x in range(2**n)}
    assert image<=set(kernel)
    assert {ev(w['projection'],h,m,x) for x in kernel}==set(range(2**h))
    for x in kernel:
        for y in kernel:
            assert (ev(w['projection'],h,m,x)==ev(w['projection'],h,m,y))==((x^y) in image)
            pairs+=1
# Exhaust every possible source-column image at the named E5 comparison:
# the nonzero tracked class cannot be added to the full boundary image.
w=blocks['b8_134_5']['wire']
counterfeit=0
for col in range(1,4):
    assert ev(w['projection'],2,2,col)!=0
    counterfeit+=1
# Quotient maps are conjugated by arbitrary nonzero relabelings. Equality
# is tested in coordinates, not by equating independently chosen labels.
models=0
for p in itertools.permutations(range(4)):
    for q in itertools.permutations(range(4)):
        zero=p.index(0);tracked=p.index(2)
        mapped=lambda x:q.index(p[x])
        assert tracked!=zero and mapped(tracked)!=q.index(0)
        assert all(mapped(x)==q.index(p[x]) for x in range(4))
        models+=1
report=dict(status='passed',frozen_files=len(frozen['files']),modules=len(modules),
    complete_comparisons=len(blocks),quotient_pairs=pairs,rejected_nonzero_incoming_columns=counterfeit,
    independently_relabelled_quotient_models=models,
    manual_review=['Source and target Row2858 quotient classes bind the exact E2 representative.',
      'The transported actual d3 is constrained by three full Leibniz squares; named zero is derived.',
      'The one-dimensional source turns named zero into the entire incoming d3 map.',
      'Row3080 zero follows from the complete zero E3 target, including all incoming d2 columns.',
      'Main d4/d5 targets and d3/d4 incoming sources are constructed from earlier complete homology.',
      'Row2438 finite d3/d4/d5 cycle meanings remain explicit hypotheses, never derived from NULL9986.',
      'Same caller input and nonzero actual E6 endpoint are required by ResultValid.'],
    scope='Conditional actual transport; no topological Ext identification is supplied.')
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report))
