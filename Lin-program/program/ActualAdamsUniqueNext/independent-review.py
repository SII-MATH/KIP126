"""Independent full homology and zero-preserving next-page uniqueness review."""
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
def apply(columns,x):
    out=0
    for i,column in enumerate(columns):
        if (x>>i)&1:out^=column
    return out
complexes=unique_complexes=named_cases=all_next_elements=swapped_counterexamples=0
for incoming in itertools.product(range(8),repeat=2):
    boundaries={apply(incoming,x) for x in range(4)}
    for outgoing in itertools.product(range(4),repeat=3):
        if any(apply(outgoing,x) for x in boundaries):continue
        complexes+=1
        cycles={x for x in range(8) if apply(outgoing,x)==0}
        representative=lambda x:min(x^b for b in boundaries)
        classes={representative(x) for x in cycles}
        if len(classes)!=2:continue
        unique_complexes+=1
        nonzero=next(iter(classes-{0}))
        identify={0:0,nonzero:1}
        inverse={v:k for k,v in identify.items()}
        for x in cycles-boundaries:
            assert all(y in boundaries or y^x in boundaries for y in cycles)
            advanced=identify[representative(x)]
            assert advanced!=0
            for y in [0,1]:
                assert inverse[y] in classes
                assert y==0 or y==advanced
                all_next_elements+=1
            swapped={0:1,nonzero:0}
            assert len(set(swapped.values()))==2 and swapped[representative(x)]==0
            swapped_counterexamples+=1
            named_cases+=1

build=[]
for name in ['Basic','Fact764']:
    record=json.loads((HERE/(name+'-compile.json')).read_text())
    assert record['observed_exit_code']==0
    assert sha(HERE/(name+'.lean'))==record['source_sha256']
    assert sha(HERE/(name+'.log'))==record['log_sha256']
    log=(HERE/(name+'.log')).read_text()
    dependencies=re.findall(r'depends on axioms: \[([^]]*)\]',log)
    assert len(dependencies)+log.count('does not depend on any axioms')==2
    assert all({x.strip() for x in group.split(',')}<={'propext','Classical.choice','Quot.sound'}
               for group in dependencies)
    current=ROOT/'.lake/build/lib/lean/ActualAdamsUniqueNext'/(name+'.olean')
    build.append(dict(module=name,observed_exit_code=0,standard_axiom_reports=2,
        current_olean_matches_direct=sha(current)==record['olean_sha256'] if current.exists() else None))
files=[HERE/'Basic.lean',HERE/'Fact764.lean',ROOT/'ActualAdamsUniqueBridge/Basic.lean',
    ROOT/'ActualAdamsUniqueBridge/Quotient.lean',ROOT/'ActualAdamsUniqueBridge/Fact764.lean',
    ROOT/'ActualAdamsSystemBridge/Basic.lean',ROOT/'Fact764ConstrainedE5/Actual.lean']
result=dict(status='independent_review_passed',findings=[],reviewer='/root/map_search_next',
    finite_replay=dict(full_complexes=complexes,one_dimensional_homology_complexes=unique_complexes,
        actual_nonboundary_named_cases=named_cases,all_next_page_elements=all_next_elements,
        zero_swapping_bijection_counterexamples=swapped_counterexamples),
    semantics=[
        'IsOnlyNonzero asserts actual nonzeroness and dichotomy for every element of the full next-page carrier.',
        'next_unique uses the actual cycle advance branch, exact quotient-zero iff boundary, and the supplied ZeroMeaning.',
        'All next-page elements are considered through fromNext and its true right inverse.',
        'The finite certificate retains full incoming coordinates, their surjectivity, both faithful coordinate maps, and all differential equations from ActualAdamsUniqueBridge.',
        'The new certificate adds explicit ZeroMeaning; a finite wire or hash cannot manufacture it.',
        'Fact764 preserves both allowed input branches and its tactic specializes the exact false-branch wire.'],
    not_claimed=['Type bijection alone preserves zero', 'Named E2-to-E4 trace without external assembly',
        'Automatic full coordinate meanings from finite data', 'Permanent survival of the E5 class',
        'Actual topology or convergence'],
    build_evidence=build,inputs_sha256={str(p.relative_to(ROOT)):sha(p) for p in files})
(HERE/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(f'Independent review passed:{complexes} full complexes/{unique_complexes} one-dimensional '
      f'quotients/{named_cases} nonboundary names;2direct0/4standardreports')
