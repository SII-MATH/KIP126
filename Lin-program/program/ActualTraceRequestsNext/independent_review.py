"""Independent strict-record, exact-request and semantic-interface review."""
import hashlib
import itertools
import json
import re
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
load=lambda p:json.loads(p.read_text())
freeze=load(HERE/'frozen-source.json')
for name,digest in freeze['files'].items():assert sha(HERE/name)==digest
names=['Fact713','Fact721','Prop79','Tactic','Examples']
reports=[]
for name in names:
    record=load(HERE/(name+'-compile.json'))
    assert record['observed_exit_code']==0
    assert record['source_sha256']==sha(HERE/(name+'.lean'))
    log=HERE/(name+'.log')
    assert record['log_sha256']==sha(log) and 'sorryAx' not in log.read_text()
    for field,digest in record['external_input_sha256'].items():assert sha(ROOT/field)==digest
    for ax in re.findall(r'depends on axioms:\s*\[([^]]*)\]',log.read_text()):
        assert set(x.strip() for x in ax.split(',') if x.strip())<={'propext','Classical.choice','Quot.sound'}
    assert not re.search(r'\b(sorry|axiom|native_decide)\b',(HERE/(name+'.lean')).read_text())
    reports.append(record)
specs=[('fact713','fact-7.13:E9',[True,True],[True]),
       ('first','fact-7.21:first:E5',[False,True],[True]),
       ('second','fact-7.21:second:E5',[True,False,False],[True]),
       ('prop79','prop-7.9:noHitThrough5',[False,False,True,False],[True,False])]
canonical=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))
for file,claim,source,output in specs:
    expected=dict(version=1,claim=claim,source=source,output=output)
    raw=(HERE/(file+'.json')).read_text()
    assert json.loads(raw)==expected and raw.strip()==canonical(expected)
    lines=(HERE/(file+'.jsonl')).read_text().splitlines()
    assert len(lines)==2 and all(line==canonical(expected) for line in lines)
claims=[spec[1] for spec in specs]+['fact-7.13:E12','']
vectors=lambda n:itertools.product([False,True],repeat=n)
counts={};checked=accepted=0
for _,claim,wanted_source,wanted_output in specs:
    for version,request_claim,n,m in itertools.product([0,1,2],claims,range(7),range(3)):
        for source,output in itertools.product(vectors(n),vectors(m)):
            source,output=list(source),list(output)
            field=('version' if version!=1 else 'claim' if request_claim!=claim else
                   'source.length' if n!=len(wanted_source) else 'source' if source!=wanted_source else
                   'output.length' if m!=len(wanted_output) else 'output' if output!=wanted_output else None)
            valid=(version==1 and request_claim==claim and source==wanted_source and output==wanted_output)
            assert valid==(field is None)
            counts[field or 'accepted']=counts.get(field or 'accepted',0)+1
            checked+=1;accepted+=valid
assert checked==64008 and accepted==4
runtime=load(HERE/'runtime.json')
assert runtime['observed_exit_code']==0 and runtime['source_sha256']==sha(HERE/'Runtime.lean')
assert runtime['log_sha256']==sha(HERE/'runtime.log')
assert 'PASS: 64008 exact requests; 64004 rejected fields and line-2 locations' in (HERE/'runtime.log').read_text()
examples=(HERE/'Examples.lean').read_text()
assert examples.count('actual_trace_request%')==4 and examples.count('actual_trace_batch%')==4
assert examples.count('fail_if_success')==6
prop=(HERE/'Prop79.lean').read_text()
assert '(last : Page5Input P)' in prop and '¬ PageBoundary S 5 degree e5' in prop
assert 'P.nonboundaries last' in prop
fact=(HERE/'Fact713.lean').read_text()
assert 'Fact713ConstructedE9.RequestedValid P request.source request.output' in fact
first_second=(HERE/'Fact721.lean').read_text()
assert 'Trace S pages degree 5 (requestRaw initial request) endpoint' in first_second
assert 'request.source.length = 2' in first_second and 'request.source.length = 3' in first_second
result=dict(status='no_correctness_findings',frozen_files=len(freeze['files']),compiled_modules=5,
    imported_positive_examples=8,negative_tactic_checks=6,independent_request_cases=checked,
    accepted_requests=accepted,diagnostic_counts=counts,runtime_evidence=runtime,
    data_only_request=True,typed_actual_prefix_required=True,claim_endpoint_exact=True,
    same_input_trace_and_output_bound=True,prop79_full_d5_incoming_separate=True,
    scope='Conditional actual endpoints only; JSON supplies no actual mathematics, E12, permanence or d5 outgoing theorem.',
    sha256={str(p.relative_to(ROOT)):sha(p) for p in [Path(__file__),HERE/'frozen-source.json']})
(HERE/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
