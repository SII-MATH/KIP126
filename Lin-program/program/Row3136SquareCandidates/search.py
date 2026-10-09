"""Full local d3 candidates with the entire unknown target column retained."""
import hashlib
import importlib.util
import itertools
import json
import subprocess
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('helper',ROOT/'Row3147MapSearch/search_lifted.py')
h=importlib.util.module_from_spec(spec)
spec.loader.exec_module(h)
sql=h.alg.connection('S0_AdamsSS_t261.db')
degrees=[(17,138),(20,140),(23,142),(26,144)]
comparisons={}
raw={}
for s,t in degrees:
    comparisons[f'{s},{t}']=h.comparison(sql,'S0',s,t,h.metadata(sql))
    raw[f'{s},{t}']=[list(row) for row in sql.execute(
        'SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t))]
assert [x['wire']['h'] for x in comparisons.values()]==[1,2,2,1]
assert [3135,'1',None,9000] in raw['20,140']
assert [3136,'0',None,9000] in raw['20,140']
assert [3305,'0',None,9000] in raw['23,142']
assert [3306,'1','1',9997] in raw['23,142']
W=comparisons['26,144']['wire']
known=h.ev(W['projection'],W['h'],W['m'],[0,1])
assert known==[1]
cases=[]
for u,a,b in itertools.product([0,1],repeat=3):
    target=[u,1]
    source=[a,0,b,0]
    square=h.ev(target,1,2,[a,b])
    if any(square):continue
    assert b==u*a
    for previous_branch,incoming in [('zero',[0,0]),('residual_rebased',[0,1])]:
        assert h.ev(source,2,2,incoming)==[0,0]
        result=subprocess.run([str(ROOT/'PageTransitionCertificates/page-transition-export'),
            '2','2','1',''.join(map(str,source)),''.join(map(str,incoming))],
            capture_output=True,text=True,check=True)
        source_wire=json.loads(result.stdout)
        result=subprocess.run([str(ROOT/'PageTransitionCertificates/page-transition-export'),
            '1','2','2',''.join(map(str,target)),''.join(map(str,source))],
            capture_output=True,text=True,check=True)
        target_wire=json.loads(result.stdout)
        cases.append(dict(u=u,a=a,b=b,prior_row2994_branch=previous_branch,
            source_d3=source,target_d3=target,source_incoming=incoming,
            source_d3_wire=source_wire,target_d3_wire=target_wire))
assert len(cases)==8
report=dict(status='untrusted_complete_four_linear_candidates_with_both_prior_branches',
    comparisons=comparisons,raw=raw,candidates=cases,
    constraint='row3136 image=(a,u*a); row3305 image=u, row3306 image=1',
    important='u is not set to zero. The nonzero image is (1,u), not necessarily e0.',
    limitation='Local complete d3 complexes only; no global branch choice, later staircase rebase, actual E4 interpretation or permanence asserted.',
    sha256={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in
            [Path(__file__),ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db']})
(HERE/'candidates.json').write_text(json.dumps(report,indent=2)+'\n')
print('4 full linear candidates times2 prior incoming branches; u retained; no NULL assigned')
