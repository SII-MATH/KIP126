"""Independent audit of the u-zero bridge and its source binding."""
import hashlib
import itertools
import json
import re
from pathlib import Path
HERE=Path(__file__).resolve().parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
source=HERE/'Assembly.lean'
record=json.loads((HERE/'Assembly-compile.json').read_text())
log=HERE/'Assembly.log'
assert record['observed_exit_code']==0 and record['source_sha256']==sha(source)
assert record['log_sha256']==sha(log) and 'sorryAx' not in log.read_text()
axioms=re.findall(r'depends on axioms:\s*\[([^]]*)\]',log.read_text())
assert len(axioms)==2
for ax in axioms:assert set(x.strip() for x in ax.split(',') if x.strip())<={'propext','Classical.choice','Quot.sound'}
models=accepted=wrong_bindings=0
for labels,nextlabels,u in itertools.product(itertools.permutations(range(4)),
        itertools.permutations(range(2)),[0,1]):
    D={labels[x+2*y]:nextlabels[(u*x)^y] for x,y in itertools.product([0,1],repeat=2)}
    named=labels[1]
    models+=1
    if D[named]==nextlabels[0]:
        accepted+=1
        assert u==0
        assert {x for x in labels if D[x]==nextlabels[0]}=={labels[0],labels[1]}
    # Without the binding, a named zero-class differential cannot identify u.
    if u==1 and D[labels[0]]==nextlabels[0]:
        wrong_bindings+=1
assert (models,accepted,wrong_bindings)==(96,48,48)
result=dict(status='no_correctness_findings',actual_target_models=models,
    named_zero_models=accepted,missing_binding_counterexamples=wrong_bindings,
    actual_signature='u-zero requires full TargetMeaning plus exact e0 actual source binding; actual_two_candidates retains these hypotheses and derives all-source 0/e0 via square zero.',
    compile=record,axiom_reports=len(axioms),source_sha256=sha(source))
(HERE/'assembly-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k!='compile'},indent=2))
