"""Read-only generated-source and full finite quotient/trace oracle."""
import hashlib
import itertools
import json
import re
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
source=HERE/'Basic.lean';generator=HERE/'generate.py'
script=generator.read_text()
marker="(HERE / 'Basic.lean').write_text"
assert script.count(marker)==1
namespace={'__file__':str(generator)}
exec(compile(script.split(marker)[0],str(generator),'exec'),namespace)
assert '\n'.join(namespace['lines'])==source.read_text()
record=json.loads((HERE/'Basic-compile.json').read_text())
assert record['observed_exit_code']==0 and record['source_sha256']==sha(source)
log=HERE/'Basic.log';assert record['log_sha256']==sha(log)
assert 'sorryAx' not in log.read_text()
reports=re.findall(r"'[^']+' depends on axioms: \[([^\]]*)\]",log.read_text())
reports+=['']*len(re.findall(r"'[^']+' does not depend on any axioms",log.read_text()))
assert len(reports)==10
for report in reports:assert set(filter(None,map(str.strip,report.split(',')))) <= {'propext','Classical.choice','Quot.sound'}

snapshot=json.loads((ROOT/'Fact713Row2773Refinement/refined.json').read_text())
wires={r:snapshot['comparisons'][f'S0:9,132:d{r}']['wire'] for r in range(2,6)}
vectors={2:3,3:1,4:1,5:1,6:1}
dims={2:2,3:2,4:1,5:1,6:1}

def matrix(bits,m,n):
    assert len(bits)==m*n
    return [sum(int(bits[r*n+c])<<r for r in range(m)) for c in range(n)]
def ev(columns,x):
    result=0
    for c,column in enumerate(columns):
        if x & (1<<c):result^=column
    return result
def decode(w):return {name:matrix(w[name],*shape) for name,shape in dict(
    outgoing=(w['k'],w['m']),incoming=(w['m'],w['n']),
    inclusion=(w['m'],w['h']),projection=(w['h'],w['m'])).items()}
def bijections(n):return [(0,)+p for p in itertools.permutations(range(1,1<<n))]
def inverse(p):return tuple(p.index(i) for i in range(len(p)))

decoded={r:decode(w) for r,w in wires.items()}
finite=[];pair_count=0
for r,w in wires.items():
    a=decoded[r];cycles=[x for x in range(1<<w['m']) if ev(a['outgoing'],x)==0]
    images={ev(a['incoming'],x) for x in range(1<<w['n'])}
    assert vectors[r] in cycles and vectors[r] not in images
    assert ev(a['projection'],vectors[r])==vectors[r+1]
    assert (w['m'],w['h'])==(dims[r],dims[r+1])
    for x in cycles:
        assert x^ev(a['inclusion'],ev(a['projection'],x)) in images
        for y in cycles:
            assert (ev(a['projection'],x)==ev(a['projection'],y))==(x^y in images)
            pair_count+=1
    finite.append(dict(page=r,dimensions=[w['k'],w['m'],w['n'],w['h']],
        raw=vectors[r],next=vectors[r+1],cycles=len(cycles),incoming_image=len(images)))

# Relabel all actual central carriers independently, preserving only zero.
# Define actual operations by transport; no coordinate map is assumed linear.
models=steps=incoming_elements=cycle_transitions=boundary_checks=0
for chosen in itertools.product(*(bijections(dims[r]) for r in range(2,7))):
    coord=dict(zip(range(2,7),chosen));inv={r:inverse(p) for r,p in coord.items()}
    actual=inv[2][vectors[2]]
    for r,w in wires.items():
        a=decoded[r]
        actual_d=lambda x:ev(a['outgoing'],coord[r][x])
        actual_j=lambda x:inv[r][ev(a['incoming'],x)]
        actual_quotient=lambda x:inv[r+1][ev(a['projection'],coord[r][x])]
        incoming={actual_j(x) for x in range(1<<w['n'])}
        incoming_elements+=1<<w['n']
        assert actual_d(actual)==0 and actual not in incoming
        for x in range(1<<w['m']):
            assert (x in incoming)==(coord[r][x] in {ev(a['incoming'],v) for v in range(1<<w['n'])})
            boundary_checks+=1
            if actual_d(x)==0:
                assert (actual_quotient(x)==0)==(x in incoming)
                cycle_transitions+=1
        actual=actual_quotient(actual)
        assert coord[r+1][actual]==vectors[r+1]
        steps+=1
    assert actual!=0 and coord[6][actual]==1
    models+=1

inputs=[source,generator,ROOT/'Row3151ActualTransport/Named.lean',ROOT/'Row3151ActualTransport/Basic.lean',
    ROOT/'Fact713E12Search/Prefix.lean',ROOT/'Fact713Row2773Refinement/Data.lean',
    ROOT/'Fact713Row2773Refinement/refined.json']
result=dict(status='no_correctness_findings',generator_byte_identical=True,compiled=record,
    axiom_reports=len(reports),finite_path=finite,finite_quotient_pair_checks=pair_count,
    coordinate_models=models,actual_trace_steps=steps,full_incoming_elements=incoming_elements,
    whole_carrier_boundary_checks=boundary_checks,actual_cycle_quotient_checks=cycle_transitions,
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in inputs},
    limitation='All four full actual StepMeaning objects remain premises, including inherited row2569 zero-prefix interpretation. The finite model oracle is not a sphere Adams realization.')
(HERE/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k not in ['compiled','finite_path','input_sha256']},indent=2))
