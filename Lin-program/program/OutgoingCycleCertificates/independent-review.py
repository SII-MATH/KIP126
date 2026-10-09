"""Independent outgoing-cycle semantic evidence and full finite replay."""
import hashlib
import importlib.util
import itertools
import json
import re
import subprocess
from pathlib import Path

p = Path(__file__).resolve().parent
r = p.parent
sha = lambda f: hashlib.sha256(f.read_bytes()).hexdigest()
spec = importlib.util.spec_from_file_location('arithmetic',r/'Fact762IncomingCertificates/review.py')
a = importlib.util.module_from_spec(spec)
spec.loader.exec_module(a)
text = (p/'killed-prefix.json').read_text()
w = json.loads(text)
assert w['schema'] == 'lin.outgoing-cycle-prefix' and w['firstPage'] == 2 and w['version'] == 1
assert json.dumps(w,sort_keys=True,separators=(',',':'))+'\n' == text
cycles = boundaries = 0
for i,stage in enumerate(w['stages']):
    wire = stage['wire']
    a.check_wire(wire)
    v = stage['representative']
    assert len(v)==wire['m'] and all(type(x) is bool for x in v)
    assert not any(a.product(wire['outgoing'],v,wire['k'],wire['m'],1))
    all_cycles = [list(x) for x in itertools.product([0,1],repeat=wire['m'])
                  if not any(a.product(wire['outgoing'],list(x),wire['k'],wire['m'],1))]
    cycles += len(all_cycles)
    images = [a.product(wire['incoming'],list(x),wire['m'],wire['n'],1)
              for x in itertools.product([0,1],repeat=wire['n'])]
    if list(map(int,v)) in images:
        boundaries += 1
    for x in all_cycles:
        projected = a.product(wire['projection'],x,wire['h'],wire['m'],1)
        assert (not any(projected)) == (x in images)
    if i+1<len(w['stages']):
        next_stage=w['stages'][i+1]
        assert wire['h']==next_stage['wire']['m']
        assert a.product(wire['projection'],v,wire['h'],wire['m'],1)==list(map(int,next_stage['representative']))
assert boundaries==2 and w['stages'][0]['representative']==[True]
assert w['stages'][0]['wire']['incoming']==[True]
assert w['stages'][1]['wire']['m']==0
producer=p/'outgoing-prefix-export'
run=subprocess.run([str(producer),str(p/'killed-prefix.input')],capture_output=True,text=True,check=True)
assert run.stdout==text
assert subprocess.run([str(producer),str(p/'killed-prefix.input')],capture_output=True,text=True,check=True).stdout==text
paper=r/'AdvancedRuleCertificates/kervaire-v2.txt'
paper_text=paper.read_text()
start=paper_text.index('Fact 7.6 .')
fact=paper_text[start:paper_text.index('Remark 7.7 .',start)]
start=paper_text.index('Notation 3.10 .')
definition=paper_text[start:paper_text.index('The following two propositions',start)]
assert 'is a permanent cycle, and can only be killed by' in fact
assert 'be the intersection of all' in definition and 'B_{\\infty}\\subset Z_{\\infty}' in definition
modules=['Basic','Examples','Import','CheckFile','ImportExamples']
build=[]
for name in modules:
    record=json.loads((p/f'{name}-compile.json').read_text())
    log=(p/f'{name}.log').read_text()
    current=record['source_sha256']==sha(p/f'{name}.lean') and record['log_sha256']==sha(p/f'{name}.log')
    success=current and record['observed_exit_code']==0
    reports=re.findall(r'depends on axioms: \[([^]]*)\]',log)
    if success:
        assert 'error:' not in log
        assert all({x.strip() for x in v.split(',')} <= {'propext','Classical.choice','Quot.sound'} for v in reports)
    build.append(dict(module=name,recorded_exit=record['observed_exit_code'],source_log_current=current,
        success_on_current_source=success,standard_axiom_reports=len(reports) if success else None))
inputs=[p/'Basic.lean',p/'Examples.lean',p/'Import.lean',p/'CheckFile.lean',p/'ImportExamples.lean',
    p/'README.md',p/'export.cpp',producer,p/'killed-prefix.input',p/'killed-prefix.json',
    p/'test.py',p/'INDEPENDENT_REVIEW.md',p/'independent-review.py',
    r/'PermanentCycleCertificates/Finite.lean',r/'PermanentCycleCertificates/System.lean',
    r/'PermanentCycleCertificates/prefix_export.cpp',r/'SemanticTrajectoryCertificates/Page.lean',
    r/'PageTransitionCertificates/Trajectory.lean',r/'PageTransitionCertificates/trajectory_export.cpp',
    r/'PageTransitionCertificates/trajectory-export',paper]
result=dict(status='independent_semantic_and_finite_review_passed',findings=[],
    build_observation=build,full_comparisons=2,all_cycle_vectors_replayed=cycles,
    named_boundary_stages=boundaries,real_CXX_output_byte_identical=True,
    paper_evidence=dict(fact76=fact,notation310=definition),
    not_claimed=['actual Z_infinity identification','actual topological realization','actual outgoing tail for Fact762',
                 'nonboundary permanence','instantiation of the killed prefix as PrefixMeaning for the separate Bool killed System'],
    inputs_sha256={str(f.relative_to(r)):sha(f) for f in inputs})
regression=p/'import-regression.json'
if regression.exists():
    result['parent_regression']=json.loads(regression.read_text())
    result['inputs_sha256'][str(regression.relative_to(r))]=sha(regression)
(p/'independent-review.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
print('Outgoing-cycle independent review passed: paper distinction, two full quotients, boundary prefix, real C++ replay')
