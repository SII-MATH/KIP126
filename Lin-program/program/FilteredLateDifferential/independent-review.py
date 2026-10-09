"""Independent literal quotient replay of arbitrarily late differentials."""
from pathlib import Path
import hashlib
import json
import re

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
U={0,1};ZERO={0}
coset=lambda x,H:frozenset(x^h for h in H)
counts={'late_lengths':0,'nonzero_source_classes':0,'zero_earlier_differentials':0,'nonzero_late_page_maps':0}
for late in range(65):
    F=lambda i:U if i==0 else ZERO
    G=lambda i:U if i<=late else ZERO
    counts['late_lengths']+=1
    assert G(late+1)==ZERO
    for n in range(late+1):
        cycles={x for x in F(0) if x in G(n)}
        corrections={x for x in F(1) if x in G(n)}
        target_relations={y^x for y in G(n+1) for x in corrections}
        assert coset(1,corrections)!=frozenset(corrections)
        counts['nonzero_source_classes']+=1
        d=(0,coset(1,target_relations))
        zero=(0,frozenset(target_relations))
        assert (d==zero)==(n<late)
        if n<late:counts['zero_earlier_differentials']+=1
        else:counts['nonzero_late_page_maps']+=1
source,log=HERE/'Basic.lean',HERE/'Basic.log'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
record=json.loads((HERE/'Basic-compile.json').read_text())
assert record['observed_exit_code']==0
assert record['source_sha256']==sha(source)
assert record['log_sha256']==sha(log)
txt=log.read_text()
assert not re.search(r'sorryAx|error:|error\(',txt)
axes=re.findall(r'depends on axioms: \[([^]]*)\]',txt)
assert len(axes)==5
assert all(set(a.strip() for a in s.split(','))<={'propext','Classical.choice','Quot.sound'} for s in axes)
obj=ROOT/'.lake/build/lib/lean/FilteredLateDifferential/Basic.olean'
report=dict(status='independent_late_differential_review_passed',counts=counts,
    observed_exit_code=0,standard_reports=5,source_sha256=sha(source),log_sha256=sha(log),
    current_object_matches_direct=obj.exists() and sha(obj)==record['olean_sha256'],script_sha256=sha(Path(__file__)),
    scope='for each finite cutoff a distinct bounded target filtration gives nonzero later differential; no fixed bound uniform across all filtrations')
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
