"""Root independent two-dimensional cycle/boundary filtration models."""
import hashlib
import itertools
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
frozen=json.loads((HERE/'frozen-source.json').read_text())
for name,digest in frozen['files'].items():
    assert sha(HERE/name)==digest,name
modules=(HERE/'modules.txt').read_text().splitlines()
for module in modules:
    record=json.loads((HERE/(module.split('.')[-1]+'-compile.json')).read_text())
    assert record['observed_exit_code']==0 and record['inputs_stable']
    assert sha(ROOT/'.lake/build/lib/lean'/(module.replace('.','/')+'.olean'))==record['olean_sha256']
V=frozenset(range(4))
zero=frozenset([0])
subspaces=[zero,*[frozenset([0,i]) for i in range(1,4)],V]
cutoff,q,last=1,2,5
counts=dict(sequences=0,tail_sequences=0,element_equivalences=0,
    nonzero_cutoff_checks=0,outgoing_deaths=0,genuine_hits=0,zero_hits=0,
    omitted_tail_counterexamples=0)
def visit(path):
    if len(path)==last+1:
        counts['sequences']+=1
        tail=all(path[n+1][1]==path[n][1] for n in range(cutoff,last) if n!=q)
        if tail:counts['tail_sequences']+=1
        for x in V:
            binfinity=any(x in B for Z,B in path)
            Zq,Bq=path[q]
            incoming={frozenset(y^b for b in Bq) for y in path[q+1][1]}
            image=frozenset(x^b for b in Bq)
            hit=x in Zq and image in incoming
            if tail:
                assert binfinity==hit
                counts['element_equivalences']+=1
                if hit:counts['zero_hits' if x in Bq else 'genuine_hits']+=1
                Zc,Bc=path[cutoff]
                if x in Zc and x not in Bc and x in Zq:
                    assert x not in Bq
                    counts['nonzero_cutoff_checks']+=1
            elif binfinity!=hit:
                counts['omitted_tail_counterexamples']+=1
            if any(x in path[n][0] and x not in path[n+1][0] for n in range(last)):
                assert not binfinity
                counts['outgoing_deaths']+=1
        return
    Z,B=path[-1]
    for Zn in subspaces:
        if not B<=Zn<=Z:continue
        for Bn in subspaces:
            if B<=Bn<=Zn:visit(path+[(Zn,Bn)])
visit([(V,zero)])
assert counts['genuine_hits'] and counts['zero_hits'] and counts['omitted_tail_counterexamples']
report=dict(status='passed',frozen_files=len(frozen['files']),modules=len(modules),counts=counts,
    manual_review=['BInfinity equivalence uses full tail stabilization after q+1.',
      'ExceptionalHit requires a genuine cycle at q; total advance returning zero after outgoing death is insufficient.',
      'Earlier boundaries give zero exceptional images; named cutoff nonzero separately rules these out.',
      'Actual indexing is cutoff3=E5, exceptional7=E9, next-boundary8=E10.',
      'All actual incoming sources except d9 are handled by previously checked complete source collapses.',
      'Certificate requires exact input binding and explicit D9Exclusion; it cannot synthesize the missing proof.'],
    remaining='The d9 exclusion itself is still unproved; this is an exact reduction.')
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report))
