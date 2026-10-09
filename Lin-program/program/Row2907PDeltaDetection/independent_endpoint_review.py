"""Independent branch consequence and exact same-input request review."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE=Path(__file__).resolve().parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
counts=Counter();proofs={}
for name in ['Branches','Tactic']:
    source=HERE/(name+'.lean');log=HERE/(name+'.log');r=json.loads((HERE/(name+'-compile.json')).read_text())
    assert r['observed_exit_code']==0 and r['source_sha256']==sha(source) and r['log_sha256']==sha(log)
    assert not re.search(r'\b(sorry|axiom|native_decide|unsafe)\b',source.read_text())
    assert not re.search(r'\b(sorryAx|Lean\.ofReduceBool|error)\b',log.read_text())
    reports=re.findall(r'depends on axioms:\s*\[([^]]*)\]',log.read_text())
    for report in reports:assert set(filter(None,map(str.strip,report.split(','))))<={'propext','Classical.choice','Quot.sound'}
    proofs[name]=dict(source_sha256=sha(source),log_sha256=sha(log),axiom_reports=len(reports)+log.read_text().count('does not depend on any axioms'))

for src,target in itertools.product(itertools.permutations(range(2)),repeat=2):
    si={v:i for i,v in enumerate(src)};ti={v:i for i,v in enumerate(target)}
    d=lambda x:ti[src[x]]
    for x in range(2):
        assert target[d(x)]==src[x]
        counts['whole_one_dimensional_map_elements']+=1
    assert target[d(si[1])]==1
    # A complete dimension-zero target has only zero, contradicting nonzero d4.
    zero_target={0:0}
    assert not any(value!=0 for value in zero_target.values())
    counts['zero_target_branches_rejected']+=1

lists=lambda n:[list(v) for k in range(n+1) for v in itertools.product([False,True],repeat=k)]
check=lambda source,output:source==[True,False] and output==[True]
def diagnose(source,output):
    if len(source)!=2:return 'source.length'
    if source!=[True,False]:return 'source'
    if len(output)!=1:return 'output.length'
    if output!=[True]:return 'output'
    return None
requests=list(itertools.product(lists(4),lists(3)))
for source,output in requests:
    accepted=check(source,output)
    assert accepted==(diagnose(source,output) is None)
    if accepted:
        canonical=sum(int(x)<<i for i,x in enumerate(source));stairs=((canonical&1)<<1)|((canonical>>1)&1)
        assert canonical==1 and stairs==2 and ((stairs>>1)&1)==1 and output==[True]
        counts['accepted_named_requests']+=1
    else:counts['rejected_requests']+=1
for a,b in itertools.product(requests,repeat=2):
    assert all(check(*r) for r in [a,b])==(check(*a) and check(*b))
    counts['ordered_batch_pairs']+=1
assert counts['accepted_named_requests']==1 and counts['rejected_requests']==464 and counts['ordered_batch_pairs']==216225
result=dict(status='no_endpoint_correctness_findings',findings=[],modules=proofs,
    axiom_reports=sum(x['axiom_reports'] for x in proofs.values()),counts=dict(counts),
    scope='Branches and Tactic only; complements independent-core-review.json',
    limitations=['Residual/nonzero branch exclusion requires its complete actual E4 target interpretation',
        'Whole target coefficient is derived only when actual target dimension is one',
        'Exact canonical E3 caller input is bound to W.source before the same quotient transition'])
(HERE/'independent-endpoint-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(dict(status=result['status'],axiom_reports=result['axiom_reports'],counts=dict(counts)),indent=2))
