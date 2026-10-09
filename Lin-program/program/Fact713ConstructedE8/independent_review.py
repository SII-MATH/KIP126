"""Review the one-initial-coordinate interface and derived named E8 trace."""
from collections import Counter
import itertools
import hashlib
import json
from pathlib import Path
import re

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
load=lambda p:json.loads(p.read_text())
frozen=load(HERE/'frozen-source.json')
for name,digest in frozen['files'].items():assert sha(HERE/name)==digest
proofs={}
for name in ['Basic','Trace']:
    record=load(HERE/(name+'-compile.json'))
    assert record['observed_exit_code']==0 and record['source_sha256']==sha(HERE/(name+'.lean'))
    log=HERE/(name+'.log');assert record['log_sha256']==sha(log)
    reports=re.findall(r"'[^']+' depends on axioms: \[([^\]]*)\]",log.read_text())
    reports+=['']*len(re.findall(r"'[^']+' does not depend on any axioms",log.read_text()))
    assert not re.search(r'\b(sorryAx|error|Lean\.ofReduceBool)\b',log.read_text())
    for report in reports:assert set(filter(None,map(str.strip,report.split(','))))<={'propext','Classical.choice','Quot.sound'}
    assert not re.search(r'\b(sorry|axiom|native_decide|unsafe)\b',(HERE/(name+'.lean')).read_text())
    proofs[name]=dict(record=record,reports=len(reports))
assert sum(p['reports'] for p in proofs.values())==10

snapshot=load(ROOT/'Fact713NextSourceSearch/refined.json')
wires={r:snapshot['comparisons'][f'S0:9,132:d{r}']['wire'] for r in range(2,7)}
wires[7]=load(ROOT/'Fact713Row2994Branches/wire/b_S0_9_132_d7.json')
vectors={2:3,3:1,4:1,5:1,6:1,7:1,8:1}
dims={2:2,3:2,4:1,5:1,6:1,7:1,8:1}
def matrix(bits,m,n):return [sum(int(bits[r*n+c])<<r for r in range(m)) for c in range(n)]
def ev(cs,x):
    value=0
    for c,column in enumerate(cs):
        if x&(1<<c):value^=column
    return value
def decode(w):return {name:matrix(w[name],*shape) for name,shape in dict(
    outgoing=(w['k'],w['m']),incoming=(w['m'],w['n']),
    inclusion=(w['m'],w['h']),projection=(w['h'],w['m'])).items()}
decoded={r:decode(w) for r,w in wires.items()}
counts=Counter()
def permutations(n):return [(0,)+p for p in itertools.permutations(range(1,1<<n))]
for carrier_names in itertools.product(*(permutations(dims[r]) for r in range(2,9))):
    hidden=dict(zip(range(2,9),carrier_names))
    inverse={r:{v:i for i,v in enumerate(p)} for r,p in hidden.items()}
    actual_add=lambda r,x,y:inverse[r][hidden[r][x]^hidden[r][y]]
    current={x:hidden[2][x] for x in range(4)}
    raw=inverse[2][3]
    endpoint=raw
    for r,w in wires.items():
        a=decoded[r]
        assert current==dict(enumerate(hidden[r]))
        incoming={inverse[r][ev(a['incoming'],v)] for v in range(1<<w['n'])}
        cycles=[x for x in current if ev(a['outgoing'],current[x])==0]
        actual_quotient=lambda x:inverse[r+1][ev(a['projection'],current[x])]
        # Derive next coordinates by the actual quotient and finite projection;
        # no arbitrary next coordinate map is fed into the construction.
        next_coord={}
        for x in cycles:
            actual_next=actual_quotient(x)
            z=ev(a['projection'],current[x])
            assert actual_next not in next_coord or next_coord[actual_next]==z
            next_coord[actual_next]=z
            counts['quotient_coordinates_constructed']+=1
        assert set(next_coord)==set(range(1<<w['h']))
        assert len(set(next_coord.values()))==1<<w['h']
        assert next_coord[0]==0
        for x in cycles:
            for y in cycles:
                assert actual_quotient(actual_add(r,x,y))==actual_add(r+1,actual_quotient(x),actual_quotient(y))
                assert (actual_quotient(x)==actual_quotient(y))==(actual_add(r,x,y) in incoming)
                counts['local_quotient_addition_pairs']+=1
        for x in next_coord:
            for y in next_coord:
                assert next_coord[actual_add(r+1,x,y)]==next_coord[x]^next_coord[y]
                counts['derived_additivity_pairs']+=1
        assert endpoint in cycles and endpoint not in incoming
        assert current[endpoint]==vectors[r]
        endpoint=actual_quotient(endpoint)
        assert next_coord[endpoint]==vectors[r+1] and endpoint!=0
        current=next_coord
        counts['same_raw_actual_trace_steps']+=1
        counts['whole_incoming_elements']+=1<<w['n']
    assert current[endpoint]==1 and endpoint!=0
    counts['models']+=1
assert counts['models']==36 and counts['same_raw_actual_trace_steps']==216
report=dict(status='no_correctness_findings',findings=[],proof_evidence=proofs,counts=dict(counts),
            supplied_tracked_page_coordinates=['E2'],constructed_tracked_page_coordinates=['E3','E4','E5','E6','E7','E8'],
            remaining_premises=['Same actual S and CertifiedAdamsPages throughout',
              'Full neighboring differential meanings at d2 through d7',
              'Local zero and addition laws for each actual quotient identification',
              'Actual initial named E2 interpretation for sphere claim'],
            scope='A conditional actual E8 trace for the fixed initial raw vector. Its d7 wire comes from an explicitly interpreted finite branch; no actual row2994 branch selection, sphere meanings or E12 theorem.',
            source_sha256={str(p.relative_to(ROOT)):sha(p) for p in
                [HERE/'Basic.lean',HERE/'Trace.lean',ROOT/'ActualAdamsHomologyCoordinates/Basic.lean',
                 ROOT/'ActualAdamsHomologyCoordinates/Adapter.lean',ROOT/'Fact713NextSourceSearch/refined.json',ROOT/'Fact713ConstructedNamed/Basic.lean',
                 ROOT/'Fact713ConstructedNamed/Trace.lean',ROOT/'Fact713Row2994Branches/wire/b_S0_9_132_d7.json']})
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(dict(status=report['status'],axiom_reports=10,counts=dict(counts))))
