"""Independent finite audit of the explicit row2708 kernel premises."""
import hashlib
import itertools
import json
import sqlite3
from pathlib import Path

p = Path(__file__).resolve().parent
r = p.parent
sha = lambda f: hashlib.sha256(f.read_bytes()).hexdigest()
db = r/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c = sqlite3.connect(f'file:{db}?mode=ro',uri=True)
rows = {str(i):list(c.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?',(i,)).fetchone()) for i in [2707,2708,2858]}
assert rows['2708'] == [2708,7,134,'0,1',None,9997]
assert rows['2858'] == [2858,10,136,'2',None,9000]
survivor = (1,0)
vectors = list(itertools.product([0,1],repeat=2))
accepted = []
for d in vectors:
    apply = lambda x:(d[0]*x[0]+d[1]*x[1])%2
    survivor_cycle = apply(survivor) == 0
    complete = all(x in [(0,0),survivor] for x in vectors if apply(x)==0)
    if survivor_cycle and complete:
        assert d == (0,1) and {apply(x) for x in vectors} == {0,1}
        accepted.append(list(d))
assert accepted == [[0,1]]
report = dict(status='independent_four_matrices_kernel_premise_audit_passed',findings=[],
    raw_rows=rows,admissible_matrix=accepted[0],
    premise='Complete kernel and survivor cycle are explicit mathematical hypotheses; no raw NULL or selected row implies them.',
    quotient='Full incoming image collapses the entire E4 quotient; no old nonboundary or selected dimension premise is used.',
    scope='Actual source-coordinate injectivity and zero meaning remain explicit. Outgoing target dimension is universally quantified in Lean.',
    inputs_sha256={str(f.relative_to(r)):sha(f) for f in [p/'KernelBranch.lean',p/'README.md',p/'review.py',
      r/'Row2708KernelConditional/Conflict.lean',r/'AffineRemainingSearch/Kernel.lean',
      r/'Fact762Source7Certificates/Finite.lean',r/'Fact762IncomingCertificates/ZeroPropagation.lean',db]})
(p/'review.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print('All four row2708 matrices audited; only [false,true] satisfies both explicit kernel premises')
