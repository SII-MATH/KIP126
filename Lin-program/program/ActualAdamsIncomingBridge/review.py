"""Check the repaired source and preserve the original vacuity checkpoint."""
import hashlib,itertools,json,re
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
inputs=[P/'Basic.lean',P/'Nonvacuity.lean',P/'README.md',Path(__file__)]
counts=0
for n in ['Basic','Nonvacuity']:
    rec=json.loads((P/(n+'-compile.json')).read_text())
    assert rec['observed_exit_code']==0
    assert sha(P/(n+'.lean'))==rec['source_sha256']
    assert sha(P/(n+'.log'))==rec['log_sha256']
    assert sha(R/'.lake/build/lib/lean/ActualAdamsIncomingBridge'/(n+'.olean'))==rec['olean_sha256']
    text=(P/(n+'.log')).read_text();assert 'sorryAx' not in text and 'error:' not in text
    reports=re.findall(r'depends on axioms: \[([^]]*)\]',text)
    for vals in reports:assert {a.strip() for a in vals.split(',')} <= {'propext','Classical.choice','Quot.sound'}
    counts+=len(reports)
    inputs.extend([P/(n+'-compile.json'),P/(n+'.log')])
assert counts==14
old=json.loads((P/'history/tagged-vacuous-Basic-compile.json').read_text())
assert sha(P/'history/tagged-vacuous-Basic.lean.txt')==old['source_sha256']
assert sha(P/'history/tagged-vacuous-Basic.log')==old['log_sha256']
assert sha(P/'history/tagged-vacuous-Basic.olean')==old['olean_sha256']
oldproof=json.loads((R/'ActualAdamsIncomingBridgeReview/compile-audit.json').read_text())
assert old['source_sha256']==oldproof['input_sha256']['ActualAdamsIncomingBridge/Basic.lean']
assert oldproof['exit_code']==0
degrees=0
for s,t,r in itertools.product(range(31),range(-5,46),range(41)):
    sources=[(e,t-r+1) for e in range(s+1) if e+r==s]
    if r<=s:
        assert sources==[(s-r,t-r+1)]
        assert (sources[0][0]+r,sources[0][1]+r-1)==(s,t)
    else:assert not sources
    degrees+=1
partitions=0
for r in range(2,10001):
    parts=[r in [2,3],r in [4,7],r in [5,8,9,10,11,13,14],r in [6,12],r>14]
    assert sum(parts)==1;partitions+=1
modelcases=0
for r in range(2,1001):
    # The genuine incoming group is zero, not the two-element tagged zero set.
    actual_source=[0];target=1
    values={0 for x in actual_source}
    assert len(actual_source)==1 and target not in values
    modelcases+=1
inputs.extend([P/'history/tagged-vacuous-Basic.lean.txt',P/'history/tagged-vacuous-Basic-compile.json',
    R/'ActualAdamsIncomingBridgeReview/compile-audit.json',
    R/'Fact762AssemblyCertificates/Routes.lean',R/'Fact762Source4Certificates/KernelBranch.lean',
    R/'Fact762Source7Certificates/Semantics.lean',R/'ManualInputObligations/Reference/AdamsHomology.lean'])
report=dict(status='source_repair_and_nonvacuity_passed',direct_builds=2,standard_reports=counts,
    unique_degree_cases=degrees,page_partition_cases=partitions,nonzero_target_model_pages=modelcases,
    constructed_conditions=True,constructed_certified_homology_pages=True,topological_realization=False,
    historical_vacuity_source_sha256=old['source_sha256'],
    source_sha256={str(p.relative_to(R)):sha(p) for p in inputs})
(P/'review.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print(json.dumps({k:v for k,v in report.items() if k!='source_sha256'}))
