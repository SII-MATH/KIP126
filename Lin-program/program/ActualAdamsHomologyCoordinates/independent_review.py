"""Review quotient construction with nonsurjective targets and noninjective sources."""
from collections import Counter
from pathlib import Path
import hashlib
import json
import random
import re

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
load=lambda p:json.loads(p.read_text())
frozen=load(HERE/'frozen-source.json')
for name,digest in frozen['files'].items():assert sha(HERE/name)==digest
proofs={}
for name in ['Basic','Adapter']:
    record=load(HERE/(name+'-compile.json'))
    assert record['observed_exit_code']==0
    assert record['source_sha256']==sha(HERE/(name+'.lean'))
    log=HERE/(name+'.log');assert record['log_sha256']==sha(log)
    reports=re.findall(r"'[^']+' depends on axioms: \[([^\]]*)\]",log.read_text())
    reports+=['']*len(re.findall(r"'[^']+' does not depend on any axioms",log.read_text()))
    assert not re.search(r'\b(sorryAx|error|Lean\.ofReduceBool)\b',log.read_text())
    for report in reports:assert set(filter(None,map(str.strip,report.split(','))))<={'propext','Classical.choice','Quot.sound'}
    assert not re.search(r'\b(sorry|axiom|native_decide|unsafe)\b',(HERE/(name+'.lean')).read_text())
    proofs[name]=dict(record=record,reports=len(reports))
assert sum(p['reports'] for p in proofs.values())==14

def columns(bits,rows,cols):
    assert len(bits)==rows*cols and all(type(v) is bool for v in bits)
    return [sum(int(bits[r*cols+c])<<r for r in range(rows)) for c in range(cols)]

def apply(cs,x):
    result=0
    for c,v in enumerate(cs):
        if x&(1<<c):result^=v
    return result

family=load(ROOT/'Fact713NextComparisonFamily/family.json')['entries']
wires={json.dumps(e['wire'],sort_keys=True):e['wire'] for e in family}
wires=[w for w in wires.values() if w['m']<=5 and w['n']<=6 and w['k']<=6 and w['h']<=4]
assert wires
rng=random.Random(713)
counts=Counter()
for w in wires:
    k,m,n,h=(w[x] for x in ['k','m','n','h'])
    out=columns(w['outgoing'],k,m);inc=columns(w['incoming'],m,n)
    proj=columns(w['projection'],h,m);incl=columns(w['inclusion'],m,h)
    cycles=[x for x in range(1<<m) if apply(out,x)==0]
    boundaries={apply(inc,x) for x in range(1<<n)}
    assert boundaries<=set(cycles)
    current_basis=[1<<i for i in range(m)]
    for _ in range(3*m):
        if m>=2:
            a,b=rng.sample(range(m),2);current_basis[a]^=current_basis[b]
    current={x:apply(current_basis,x) for x in range(1<<m)}
    inverse={v:x for x,v in current.items()};assert len(inverse)==1<<m
    # Actual outgoing carrier is the image of the full finite outgoing map.
    # Its coordinate inclusion is faithful and may fail surjectivity to Vec k.
    outgoing_carrier={apply(out,x) for x in range(1<<m)}
    counts['proper_outgoing_coordinate_images']+=len(outgoing_carrier)<1<<k
    actual_d=lambda x:apply(out,current[x])
    actual_incoming=lambda x:inverse[apply(inc,x&((1<<n)-1))]
    actual_boundaries={actual_incoming(x) for x in range(1<<(n+1))}
    counts['noninjective_incoming_coordinate_maps']+=1
    assert {x&((1<<n)-1) for x in range(1<<(n+1))}==set(range(1<<n))
    actual_cycles=[x for x in range(1<<m) if actual_d(x)==0]
    quotient=lambda x:min(x^b for b in actual_boundaries)
    quotient_classes={quotient(x) for x in actual_cycles}
    coordinate=lambda q:apply(proj,current[q])
    reps={z:quotient(inverse[apply(incl,z)]) for z in range(1<<h)}
    assert len(quotient_classes)==1<<h
    assert set(reps.values())==quotient_classes
    for x in range(1<<m):
        assert (actual_d(x)==0)==(current[x] in cycles)
        assert (x in actual_boundaries)==(current[x] in boundaries)
        counts['whole_cycle_boundary_elements']+=1
    for x in actual_cycles:
        assert coordinate(quotient(x))==apply(proj,current[x])
        assert reps[coordinate(quotient(x))]==quotient(x)
        counts['quotient_representatives']+=1
        for y in actual_cycles:
            related=(x==y or x^y in actual_boundaries)
            assert related==(current[x]^current[y] in boundaries)
            assert related==(quotient(x)==quotient(y))
            assert related==(coordinate(quotient(x))==coordinate(quotient(y)))
            counts['related_iff_pairs']+=1
    for z,q in reps.items():assert coordinate(q)==z
    size=1<<h
    permutations=[list(range(size)),[z^(size-1) for z in range(size)]]
    random_permutation=list(range(size));rng.shuffle(random_permutation);permutations.append(random_permutation)
    if h>=3:
        nonlinear=list(range(size));nonlinear[1],nonlinear[2]=nonlinear[2],nonlinear[1]
        permutations.append(nonlinear)
    for perm in permutations:
        to_next=lambda q:perm[coordinate(q)]
        inv={v:i for i,v in enumerate(perm)}
        from_next=lambda y:reps[inv[y]]
        next_coord=lambda y:coordinate(from_next(y))
        assert all(from_next(to_next(q))==q for q in quotient_classes)
        assert all(to_next(from_next(y))==y for y in range(size))
        zero_law=to_next(quotient(0))==0
        add_law=all(to_next(quotient(x^y))==to_next(quotient(x))^to_next(quotient(y))
                    for x in actual_cycles for y in actual_cycles)
        assert (next_coord(0)==0)==zero_law
        assert all(next_coord(to_next(quotient(x)))==apply(proj,current[x]) for x in actual_cycles)
        counts['next_type_equivalences']+=1
        counts['zero_law_false']+=not zero_law
        counts['zero_preserving_but_nonadditive']+=zero_law and not add_law
        if zero_law:
            for x in actual_cycles:
                assert (to_next(quotient(x))!=0)==(apply(proj,current[x])!=0)
                counts['nonzero_equivalence_checks']+=1
        if zero_law and add_law:
            for x in range(size):
                for y in range(size):
                    assert next_coord(x^y)==next_coord(x)^next_coord(y)
                    counts['derived_additivity_pairs']+=1
        if not zero_law:
            assert next_coord(0)!=0
        if zero_law and not add_law:
            assert any(next_coord(x^y)!=next_coord(x)^next_coord(y) for x in range(size) for y in range(size))
    counts['whole_complex_models']+=1
assert counts['proper_outgoing_coordinate_images']>0
assert counts['zero_law_false']>0 and counts['zero_preserving_but_nonadditive']>0
report=dict(status='no_correctness_findings',findings=[],proof_evidence=proofs,counts=dict(counts),
            reviewed_minimal_premises=['Current whole zero-preserving additive coordinate equivalence',
                'Faithful outgoing coordinates and full differential meaning',
                'Surjective incoming coordinates and full incoming meaning',
                'Kernel-checked complete comparison',
                'Local zero law for next zero; local addition law for next additivity'],
            scope='Actual quotient and next coordinates are derived. The actual current meanings and certified page equivalence remain supplied; no sphere realization follows.',
            source_sha256={str(p.relative_to(ROOT)):sha(p) for p in
                [HERE/'Basic.lean',HERE/'Adapter.lean',ROOT/'Fact713NextComparisonFamily/family.json']})
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(dict(status=report['status'],axiom_reports=14,counts=dict(counts))))
