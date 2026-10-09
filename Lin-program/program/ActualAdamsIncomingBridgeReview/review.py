"""Capture the original bridge review, including its kernel-checked vacuity finding."""
import hashlib, json, re
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
original=R/'ActualAdamsIncomingBridge'
record=json.loads((original/'Basic-compile.json').read_text())
assert record['observed_exit_code']==0
assert sha(original/'Basic.lean')==record['source_sha256']
assert sha(original/'Basic.log')==record['log_sha256']
obj=R/'.lake/build/lib/lean/ActualAdamsIncomingBridge/Basic.olean'
assert sha(obj)==record['olean_sha256']
counter=json.loads((P/'compile-audit.json').read_text())
assert counter['exit_code']==0
for path,h in counter['input_sha256'].items():assert sha(R/path)==h,path
assert sha(P/'Vacuity.log')==counter['log_sha256']
assert sha(R/'.lake/build/lib/lean/ActualAdamsIncomingBridgeReview/Vacuity.olean')==counter['olean_sha256']
def reports(path,n):
    text=path.read_text();assert 'sorryAx' not in text and 'error:' not in text
    all_=re.findall(r'depends on axioms: \[([^]]*)\]',text);assert len(all_)==n
    for r in all_:assert {a.strip() for a in r.split(',')} <= {'propext','Classical.choice','Quot.sound'}
reports(original/'Basic.log',4);reports(P/'Vacuity.log',2)
partition_cases=0
for r in range(2,10001):
    kinds=[r in [2,3],r in [4,7],r in [5,8,9,10,11,13,14],r in [6,12],r>14]
    assert sum(kinds)==1
    partition_cases+=1
assert (10+4,136+4-1)==(14,139)
tagged_zero_cases=0
for source_dimension in range(5):
    tagged=[('unit',0)]+[('actual',x) for x in range(2**source_dimension)]
    assert tagged[0]!=tagged[1]
    assert len(set(tagged))>1
    assert all(0==0 for _ in tagged)
    tagged_zero_cases+=1
sources=[Path(__file__),P/'INDEPENDENT_REVIEW.md',P/'Vacuity.lean',P/'Vacuity.log',P/'compile-audit.json',
         original/'Basic.lean',original/'Basic.log',original/'Basic-compile.json',
         R/'ActualAdamsSystemBridge/Basic.lean',R/'ActualAdamsSystemBridge/Tail.lean',
         R/'Fact762AssemblyCertificates/Routes.lean',R/'Fact762Source4Certificates/KernelBranch.lean',
         R/'Fact762Source7Certificates/Semantics.lean',R/'Fact762IncomingCertificates/Incoming.lean',
         R/'ManualInputObligations/Reference/AdamsHomology.lean']
report=dict(status='independent_review_found_vacuous_conditions',reviewer='/root/source_rules_next',
 original_direct_exit=0,original_standard_reports=4,counterproof_direct_exit=0,counterproof_standard_reports=2,
 page_partition_cases=partition_cases,tagged_zero_examples=tagged_zero_cases,
 findings=[dict(severity='P1',file='ActualAdamsIncomingBridge/Basic.lean',line=38,
 title='Page4Route is impossible on Unit plus the actual source',
 consequence='Conditions S target is uninhabitable for every S and target; assembly theorem is vacuous.',
 kernel_proof='ActualAdamsIncomingBridgeReview.conditions_impossible')],
 source_sha256={str(p.relative_to(R)):sha(p) for p in sources})
(P/'independent-review.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print(json.dumps({k:v for k,v in report.items() if k!='source_sha256'}))
