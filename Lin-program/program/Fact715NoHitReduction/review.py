"""Finite semantic models distinguish cumulative boundaries from outgoing death."""
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
counts=dict(models=0,tail_models=0,exact_equivalences=0,nonzero_cutoff_cases=0,
            outgoing_death_cases=0,exceptional_hit_cases=0,mutation_failures=0)
examples={}
# A one-dimensional class may remain, become an incoming boundary, or die
# by an outgoing differential. After incoming death its image is zero and
# it remains in every cycle subset. After outgoing death it never re-enters.
cutoff=3;q=7;length=11
def model(event):
    # (index, kind), where kind I is incoming death and O outgoing death.
    at,kind=event
    z=lambda n: not(kind=='O' and at<n)
    boundary=lambda n: kind=='I' and at<n
    image=lambda n: int(at>=n)
    return z,boundary,image
events=[(length,'stable')]+[(n,k) for n in range(length) for k in ['I','O']]
for event in events:
    counts['models']+=1
    at,kind=event;z,boundary,image=model(event)
    tail=not(kind=='I' and cutoff<=at and at!=q)
    hit=z(q) and ((kind=='I' and at==q) or image(q)==0)
    binfinity=any(boundary(n) for n in range(length+1))
    if tail:
        counts['tail_models']+=1
        assert binfinity==hit;counts['exact_equivalences']+=1
        if z(cutoff) and image(cutoff)!=0:
            counts['nonzero_cutoff_cases']+=1
            if z(q):assert image(q)!=0
        if kind=='O':
            assert not binfinity
            counts['outgoing_death_cases']+=1
            if cutoff<=at<q:examples['outgoing_death_before_d9']=dict(event=event,E9_cycle=z(q),BInfinity=binfinity)
        if hit:
            counts['exceptional_hit_cases']+=1
            examples['remaining_incoming_hit']=dict(event=event,E9_cycle=z(q),BInfinity=binfinity)
    elif binfinity!=hit:
        counts['mutation_failures']+=1
        examples['missing_tail_assumption']=dict(event=event,E9_hit=hit,BInfinity=binfinity)
assert examples['outgoing_death_before_d9']['E9_cycle'] is False
assert examples['remaining_incoming_hit']['BInfinity'] is True
assert counts['mutation_failures']>0
# Finite proof of the stabilization argument for arbitrary monotone boundary
# sequences, including boundaries predating the cutoff.
counts['monotone_boundary_sequences']=0
for first in range(length+2):
    b=[n>=first for n in range(length+1)]
    after_tail=all(b[n+1]==b[n] for n in range(q+1,length))
    if after_tail:
        assert any(b)==b[q+1]
        counts['monotone_boundary_sequences']+=1

modules=(HERE/'modules.txt').read_text().splitlines();reports=0;empty=0;changes=[]
for module in modules:
    name=module.split('.')[-1];r=json.loads((HERE/(name+'-compile.json')).read_text())
    assert r['observed_exit_code']==0 and r['inputs_stable']
    assert sha(HERE/(name+'.lean'))==r['source_sha256']
    assert sha(HERE/r['log'])==r['log_sha256']
    assert sha(ROOT/'.lake/build/lib/lean'/(module.replace('.','/')+'.olean'))==r['olean_sha256']
    for path,digest in r['dependencies_sha256'].items():
        if sha(ROOT/path)!=digest:changes.append(dict(module=module,dependency=path))
    log=(HERE/r['log']).read_text();assert 'sorryAx' not in log and 'error:' not in log
    for a in re.findall(r'depends on axioms:\s*\[([^\]]*)\]',log):
        assert set(x.strip() for x in a.split(','))<={'propext','Classical.choice','Quot.sound'}
        reports+=1
    empty+=log.count('does not depend on any axioms')
    assert not re.search(r'\b(sorry|admit|axiom|unsafe|native_decide)\b',(HERE/(name+'.lean')).read_text())
counts.update(modules=len(modules),standard_axiom_reports=reports,empty_axiom_reports=empty)
result=dict(status='passed',counts=counts,examples=examples,historical_dependency_changes=changes,
    semantics='BInfinity requires an actual cycle trace into a boundary. Outgoing death never becomes BInfinity merely because a total advance function later returns zero.',
    indexing=dict(cutoff_index=3,cutoff_Adams_page=5,exception_index=7,exception_Adams_page=9,boundary_index=8,boundary_Adams_page=10),
    remaining_obligation='D9Exclusion is not proved; conditional constructor requires it explicitly.',
    claims='Exact reduction and conditional theorem, not completed Fact7.15.')
(HERE/'review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
