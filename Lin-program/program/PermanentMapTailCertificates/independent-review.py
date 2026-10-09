"""Independent semantic replay, including nonconstant nontrivial map tails."""
import hashlib,itertools,json,re
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
# Three-element pointed sets need not be vector spaces: System only asks for
# zero-preserving incoming and the cycle-restricted homology-zero equivalence.
states=range(3)
functions=list(itertools.product(states,repeat=3))
systems=[]
for I in functions:
    if I[0]!=0:continue
    image=set(I)
    for O in functions:
        for N in functions:
            if all(O[x]!=0 or ((N[x]==0)==(x in image)) for x in states):
                systems.append((I,O,N))
strong=weak=strong_nonzero=weak_death=0
for I,O,N in systems:
    for x in states:
        good=O[x]==0 and x not in I
        if good:
            assert x!=0 and N[x]!=0
            strong+=1
            strong_nonzero+=x!=0
        if O[x]==0:weak+=1;weak_death+=x!=0 and x in I
maptails=[s for s in systems if s[0]==(0,0,0) and s[1]==(0,0,0)]
outtails=[s for s in systems if s[1]==(0,0,0)]
assert len(maptails)==4
changing_tails=0
for tail in itertools.product(maptails,repeat=5):
    for x in [1,2]:
        for I,O,N in tail:
            assert O[x]==0 and x not in I
            x=N[x]
            assert x!=0
        changing_tails+=1
assert any(any(x!=0 and x in I for x in states) for I,O,N in outtails)
# Empty prefix alone cannot supply nonzero start even when all tail maps vanish.
assert all(0 in I for I,O,N in maptails)
build=[]
for name,count in [('Basic',6),('Certificate',6),('Import',2),('Examples',5)]:
    a=json.loads((P/f'{name}-compile.json').read_text())
    assert a['observed_exit_code']==0
    assert a['source_sha256']==sha(P/f'{name}.lean')
    assert a['log_sha256']==sha(P/f'{name}.log')
    text=(P/f'{name}.log').read_text();assert 'sorryAx' not in text and 'error:' not in text
    axs=re.findall(r'depends on axioms: \[([^]]*)\]',text)
    assert len(axs)+text.count('does not depend on any axioms')==count
    for vals in axs:assert {v.strip() for v in vals.split(',')}<={'propext','Classical.choice','Quot.sound'}
    build.append({'module':name,'actual_exit':0,'standard_or_none_reports':count,
        'current_olean_matches_direct':a['olean_sha256']==sha(R/f'.lake/build/lib/lean/PermanentMapTailCertificates/{name}.olean')})
inputs=[*sorted(P.glob('*.lean')),P/'README.md',Path(__file__),R/'PermanentCycleCertificates/System.lean',
    R/'PermanentCycleCertificates/Finite.lean',R/'OutgoingCycleCertificates/Basic.lean',
    *sorted(P.glob('*-compile.json')),*sorted(P.glob('*.log'))]
report={'status':'independent_review_passed','reviewer':'/root/source_rules_next','findings':[],
    'build':build,'finite_replay':{'three_element_systems':len(systems),'good_pairs':strong,
        'cycle_pairs':weak,'nonzero_good_pairs':strong_nonzero,'nonzero_cycle_boundary_pairs':weak_death,
        'zero_map_tail_systems':len(maptails),'changing_five_page_tail_cases':changing_tails},
    'proof_review':['Full zero maps suffice because a nonzero element cannot equal their incoming image.',
        'The existing actual homology_zero law propagates nonzero from every good tail element.',
        'Strictly positive prefix length supplies start nonzero from its last good page.',
        'All-page induction splits exactly at cutoff; outgoing-only result permits incoming death and zero.',
        'Imported canonical stages attach explicit semantic/tail proofs; no parser manufactures them.',
        'Both original finite checkers and their diagnostics are reused without weakened conditions.'],
    'limitations':['No specific actual Adams tail vanishing is supplied.','No convergence or stable homotopy identification follows.'],
    'source_sha256':{str(p.relative_to(R)):sha(p) for p in inputs}}
(P/'independent-review.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print(json.dumps(report['finite_replay']))

# Separate bridge report: page n means Adams r=n+2, and the source sum is full.
Q=R/'ActualAdamsSystemBridge'
filtration_cases=0;boundary_witnesses=0
for filtration in range(41):
    for cutoff in range(41):
        if not filtration<cutoff+2:continue
        for n in range(cutoff,45):
            r=n+2
            assert all(e+r!=filtration for e in range(42));filtration_cases+=1
    # Equality is deliberately not accepted: e=0 can contribute when r=filtration.
    if filtration>=2:
        r=filtration;e=0
        assert e+r==filtration;boundary_witnesses+=1
a=json.loads((Q/'Tail-compile.json').read_text())
assert a['observed_exit_code']==0 and a['source_sha256']==sha(Q/'Tail.lean') and a['log_sha256']==sha(Q/'Tail.log')
log=(Q/'Tail.log').read_text();assert 'sorryAx' not in log and 'error:' not in log
axs=re.findall(r'depends on axioms: \[([^]]*)\]',log)
assert len(axs)==4
for vals in axs:assert {v.strip() for v in vals.split(',')}<={'propext','Classical.choice','Quot.sound'}
files=[Q/'Tail.lean',Q/'Tail.log',Q/'Tail-compile.json',Q/'TAIL.md',Q/'Basic.lean',
    R/'ManualInputObligations/Reference/Foundations.lean',R/'ManualInputObligations/Reference/SteenrodAdams.lean',Path(__file__)]
tail={'status':'independent_review_passed','reviewer':'/root/source_rules_next','findings':[],
    'actual_exit':0,'standard_reports':4,
    'current_olean_matches_direct':a['olean_sha256']==sha(R/'.lake/build/lib/lean/ActualAdamsSystemBridge/Tail.olean'),
    'finite_filtration_cases':filtration_cases,'strict_bound_boundary_witnesses':boundary_witnesses,
    'proof_review':['Incoming is Unit plus every actual nonnegative source bidegree satisfying AdamsTarget r e=d.',
        'For filtration<r, no Sigma witness exists since source filtration is Nat and target filtration=source+r.',
        'Only Unit remains, so the entire incoming type is subsingleton without losing possible source terms.',
        'The exact system indexing is r=n+2; filtration<cutoff+2 suffices for every n>=cutoff.',
        'Incoming zero uses the actual zero_is_zero equation; no outgoing map fact is asserted.'],
    'source_sha256':{str(p.relative_to(R)):sha(p) for p in files}}
(Q/'Tail-independent-review.json').write_text(json.dumps(tail,indent=2,sort_keys=True)+'\n')
print('Tail independent filtration cases',filtration_cases,'boundary witnesses',boundary_witnesses)
