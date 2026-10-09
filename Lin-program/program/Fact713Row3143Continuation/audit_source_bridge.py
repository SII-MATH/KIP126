"""Exhaustive finite quotient and relabeled actual source naming checks."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
source = load(ROOT / 'Row3143D0Leibniz/source.json')
step = load(HERE / 'source-d3.json')
incoming = load(HERE / 'wire/b_S0_21_143_d4.json')
baseline = load(ROOT / 'Fact713DC2h6Source/refined.json')
assert step == (baseline['comparisons'] | baseline['successor_closure'])['S0:17,140:d3']['wire']
assert step == dict(version=1,k=1,m=1,n=1,h=1,outgoing=[False],incoming=[False],
                    inclusion=[True],projection=[True],up=[False],down=[False])
assert incoming['n'] == incoming['m'] == 1 and incoming['incoming'] == [False]

def ev(bits,m,n,x):
    assert len(bits) == m*n
    return sum((sum(int(bits[i*n+j])*((x>>j)&1) for j in range(n))%2)<<i for i in range(m))

out = lambda x: ev(source['outgoing'],source['k'],source['m'],x)
inc = lambda x: ev(source['incoming'],source['m'],source['n'],x)
proj = lambda x: ev(source['projection'],source['h'],source['m'],x)
cycles = [x for x in range(1<<source['m']) if out(x)==0]
boundaries = {inc(x) for x in range(1<<source['n'])}
assert out(1)==0 and proj(1)==1 and 1 not in boundaries
for a,b in itertools.product(cycles,repeat=2):
    assert (proj(a)==proj(b)) == (a^b in boundaries)

counts=Counter()
for labels in itertools.product(list(itertools.permutations(range(2))),repeat=5):
    # Actual E3, E4, target E4, known detector E4 source and target labels.
    current,next_page,target,detector,detector_target=labels
    inv=[{v:i for i,v in enumerate(p)} for p in labels]
    z3,z4,zt,zd,zdt=[q[0] for q in inv]
    named3,named4=inv[0][1],inv[1][1]
    quotient=lambda x: inv[1][current[x]]
    constructed={quotient(x):current[x] for x in range(2)}
    assert constructed==dict(enumerate(next_page))
    assert quotient(named3)==named4 and named4!=z4
    for raw in cycles:
        actual3=inv[0][proj(raw)]
        assert constructed[quotient(actual3)]==proj(raw)
        assert (quotient(actual3)==named4)==(raw^1 in boundaries)
        counts['all_raw_source_representatives']+=1
    # The known nonzero one-dimensional detector is injective under any labels.
    known=lambda x:inv[4][detector[x]]
    assert known(zd)==zdt and known(inv[3][1])!=zdt
    for x in range(2):
        assert (known(x)==zdt)==(x==zd)
        counts['known_reflects_zero_elements']+=1
    # Entire actual source has only its zero and named product. Once both
    # differentials vanish, any full actual coordinates give the zero column.
    actual_d4={z4:zt,named4:zt}
    for x in range(2):
        assert target[actual_d4[x]]==ev(incoming['incoming'],1,1,next_page[x])
        counts['whole_incoming_column_elements']+=1
    counterfeit={z4:zt,named4:inv[2][1]}
    assert any(target[counterfeit[x]]!=ev(incoming['incoming'],1,1,next_page[x]) for x in range(2))
    counts['nonzero_counterfeit_columns_rejected']+=1
    counts['models']+=1
assert counts['models']==32
result=dict(status='source_quotient_whole_naming_and_column_passed',counts=dict(counts),
    finite_source_cycle_pairs=len(cycles)**2,finite_source_vectors=1<<source['m'],
    scope='Complete actual source E3/E4 naming, fixed input representatives and whole zero d4 column under all local carrier relabelings.',
    limitation='The Leibniz, differential-square and actual coordinate meaning hypotheses are explicit Lean inputs; these model checks are supplementary.',
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in [HERE/'audit_source_bridge.py',
        HERE/'source-d3.json',HERE/'wire/b_S0_21_143_d4.json',ROOT/'Row3143D0Leibniz/source.json',
        ROOT/'Fact713DC2h6Source/refined.json']})
(HERE/'source-bridge-audit.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
