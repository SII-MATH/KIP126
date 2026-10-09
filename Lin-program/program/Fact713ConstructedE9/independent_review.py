"""Independent E9 review: every carrier relabeling and bounded malformed request."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
load=lambda p:json.loads(p.read_text())
proofs={}
for name in ['Basic','Trace','Request']:
    source=HERE/(name+'.lean');log=HERE/(name+'.log');r=load(HERE/(name+'-compile.json'))
    assert r['observed_exit_code']==0 and r['source_sha256']==sha(source) and r['log_sha256']==sha(log)
    assert not re.search(r'\b(sorry|axiom|native_decide|unsafe)\b',source.read_text())
    assert not re.search(r'\b(sorryAx|Lean\.ofReduceBool|error)\b',log.read_text())
    reports=re.findall(r'depends on axioms: \[([^]]*)\]',log.read_text())
    reports+=['']*len(re.findall(r'does not depend on any axioms',log.read_text()))
    for report in reports:assert set(filter(None,map(str.strip,report.split(','))))<={'propext','Classical.choice','Quot.sound'}
    proofs[name]=dict(source_sha256=sha(source),log_sha256=sha(log),observed_exit_code=0,axiom_reports=len(reports))
assert sum(x['axiom_reports'] for x in proofs.values())==12

base=load(ROOT/'Fact713NextSourceSearch/refined.json')['comparisons']
wires={r:base[f'S0:9,132:d{r}']['wire'] for r in range(2,7)}
wires[7]=load(ROOT/'Fact713Row2994Branches/wire/b_S0_9_132_d7.json')
wires[8]=load(ROOT/'Fact713Row3247ConditionalBranches/wire/b_S0_9_132_d8.json')
expected=dict(version=1,k=0,m=1,n=0,h=1,outgoing=[],incoming=[],inclusion=[True],projection=[True],up=[],down=[])
assert wires[8]==expected
for filename in ['zero-family.json','residual-family.json']:
    family=load(ROOT/'Fact713Row3247ConditionalBranches'/filename)['entries']
    for r,w in wires.items():
        entry=[x for x in family if x['key']==dict(object='S0',page=r,s=9,t=132)]
        assert len(entry)==1 and entry[0]['wire']==w
    assert all(x['key']!=dict(object='S0',page=9,s=9,t=132) for x in family)
dimensions={2:2,3:2,**{r:1 for r in range(4,10)}}
named={2:3,3:1,**{r:1 for r in range(4,10)}}
def columns(bits,m,n):
    assert len(bits)==m*n
    return tuple(sum(int(bits[i*n+j])<<i for i in range(m)) for j in range(n))
def ev(cols,x):
    z=0
    for j,c in enumerate(cols):
        if x&(1<<j):z^=c
    return z
decoded={r:{f:columns(w[f],*shape) for f,shape in dict(outgoing=(w['k'],w['m']),
    incoming=(w['m'],w['n']),projection=(w['h'],w['m']),inclusion=(w['m'],w['h'])).items()}
    for r,w in wires.items()}
counts=Counter()
permutations={d:list(itertools.permutations(range(1<<d))) for d in set(dimensions.values())}
for choices in itertools.product(*(permutations[dimensions[r]] for r in range(2,10))):
    # All permutations, including ones where the actual zero label is nonzero.
    hidden=dict(zip(range(2,10),choices));inverse={r:{v:i for i,v in enumerate(p)} for r,p in hidden.items()}
    zeros={r:inverse[r][0] for r in hidden}
    actual_add=lambda r,x,y:inverse[r][hidden[r][x]^hidden[r][y]]
    current=dict(enumerate(hidden[2]));raw=inverse[2][named[2]];endpoint=raw
    trace=[(2,endpoint)]
    for r,w in wires.items():
        a=decoded[r]
        assert current==dict(enumerate(hidden[r]))
        boundaries={inverse[r][ev(a['incoming'],v)] for v in range(1<<w['n'])}
        cycles=[x for x in current if ev(a['outgoing'],current[x])==0]
        to_next=lambda x:inverse[r+1][ev(a['projection'],current[x])]
        next_coordinates={}
        for x in cycles:
            z=ev(a['projection'],current[x]);value=to_next(x)
            assert value not in next_coordinates or next_coordinates[value]==z
            next_coordinates[value]=z;counts['constructed_quotient_coordinates']+=1
        assert len(next_coordinates)==1<<w['h'] and len(set(next_coordinates.values()))==1<<w['h']
        assert next_coordinates[zeros[r+1]]==0
        for x,y in itertools.product(cycles,repeat=2):
            assert (to_next(x)==to_next(y))==(actual_add(r,x,y) in boundaries)
            assert to_next(actual_add(r,x,y))==actual_add(r+1,to_next(x),to_next(y))
            counts['actual_quotient_pairs']+=1
        for x,y in itertools.product(next_coordinates,repeat=2):
            assert next_coordinates[actual_add(r+1,x,y)]==next_coordinates[x]^next_coordinates[y]
            counts['derived_additivity_pairs']+=1
        assert endpoint in cycles and endpoint not in boundaries and current[endpoint]==named[r]
        endpoint=to_next(endpoint);assert endpoint!=zeros[r+1] and next_coordinates[endpoint]==named[r+1]
        trace.append((r+1,endpoint));current=next_coordinates;counts['same_raw_trace_steps']+=1
        counts['whole_incoming_elements']+=1<<w['n']
    assert [r for r,_ in trace]==list(range(2,10)) and trace[0]==(2,raw)
    assert current[endpoint]==1 and endpoint!=zeros[9]
    assert inverse[2][3]==raw
    counts['models']+=1
    if any(z!=0 for z in zeros.values()):counts['models_with_nonzero_zero_label']+=1
assert counts['models']==36864 and counts['same_raw_trace_steps']==258048

def lists(n):return [list(x) for k in range(n+1) for x in itertools.product([False,True],repeat=k)]
def check(source,output):return source==[True,True] and output==[True]
def diagnose(source,output):
    if len(source)!=2:return 'source.length'
    if source!=[True,True]:return 'source'
    if len(output)!=1:return 'output.length'
    if output!=[True]:return 'output'
    return None
requests=list(itertools.product(lists(4),lists(3)))
for s,o in requests:
    accepted=check(s,o)
    assert accepted==(diagnose(s,o) is None)
    assert not accepted or (len(s)==2 and len(o)==1 and s==[True,True] and o==[True])
    if accepted:counts['accepted_requests']+=1
    else:counts['rejected_requests']+=1
for a,b in itertools.product(requests,repeat=2):
    accepted=all(check(*x) for x in [a,b])
    assert accepted==(check(*a) and check(*b))
    counts['batch_pairs']+=1
assert counts['accepted_requests']==1 and counts['rejected_requests']==464 and counts['batch_pairs']==216225
assert all(check(*x) for x in [])

out=dict(status='no_correctness_findings',findings=[],proof_evidence=proofs,counts=dict(counts),
    scope='Conditional actual E9 for one fixed E2 input in the same S and pages; seven constructed quotient transitions.',
    supplied_tracked_coordinates=['E2'],constructed_tracked_coordinates=[f'E{r}' for r in range(3,10)],
    remaining_inputs=['Complete actual neighboring differential meanings for d2 through d8',
        'Local zero and addition laws of actual quotient identifications',
        'Interpretation of the initial E2 vector as the claimed sphere class',
        'The new finite branch uses explicit named actual E3 cycle representatives; this E9 interface does not discharge them'],
    limitations=['Python model checks supplement the Lean proof and are not a proof of sphere meanings',
        'Only the named request [true,true] -> [true] is accepted; this is not a generic spectral-sequence calculator'],
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in [HERE/'Basic.lean',HERE/'Trace.lean',HERE/'Request.lean',
        ROOT/'Fact713ConstructedNamed/Basic.lean',ROOT/'Fact713ConstructedE8/Trace.lean',
        ROOT/'ActualAdamsHomologyCoordinates/Basic.lean',ROOT/'ActualAdamsHomologyCoordinates/Adapter.lean',
        ROOT/'Fact713Row3247ConditionalBranches/zero-family.json',ROOT/'Fact713Row3247ConditionalBranches/residual-family.json']})
(HERE/'independent-review.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(dict(status=out['status'],axiom_reports=12,counts=dict(counts)),indent=2))
