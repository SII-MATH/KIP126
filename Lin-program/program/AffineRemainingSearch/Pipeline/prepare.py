"""C++ export and separate family binding for both exhaustive branches."""
import hashlib,json,subprocess
from pathlib import Path
P=Path(__file__).resolve().parent;A=P.parent;R=A.parent
canonical=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
finite=[json.loads((A/f'event2697-branch{b}.json').read_text()) for b in [0,1]]
def degree(s,t):return dict(s=s,t=t)
def label(s,t):return dict(page=2,center=degree(s,t),incoming=degree(s-2,t-1),outgoing=degree(s+2,t+1))
indexed=[dict(version=1,sourceDegree=degree(9,134),targetDegree=degree(12,136),eventPage=3,sourceLabels=[label(9,134)],targetLabels=[label(12,136)],finite=f) for f in finite]
for name,rows,exe in [('finite2',finite,R/'FiniteEventProducer/finite-event-export'),('indexed2',indexed,R/'FiniteEventProducer/indexed-event-export')]:
 (P/f'{name}.input.jsonl').write_text(''.join(map(canonical,rows)))
 with (P/f'{name}.jsonl').open('w') as out:subprocess.run([str(exe),str(P/f'{name}.input.jsonl')],stdout=out,check=True)
for b in [0,1]:
 for name in ['finite','indexed']:
  (P/f'{name}-branch{b}.json').write_text((P/f'{name}2.jsonl').read_text().splitlines(keepends=True)[b])
 family=dict(version=1,entries=[dict(key=dict(object='S0',page=page,s=s,t=t),wire=w) for page,s,t,w in [(2,9,134,finite[b]['sourceStages'][0]['wire']),(2,12,136,finite[b]['targetStages'][0]['wire']),(3,9,134,finite[b]['event'])]])
 (P/f'family{b}.input.json').write_text(canonical(family))
 with (P/f'family{b}.json').open('w') as out:subprocess.run([str(R/'IndexedFamilyProducer/indexed-family-export'),'--family',str(P/f'family{b}.input.json')],stdout=out,check=True)
 with (P/f'bound{b}.json').open('w') as out:subprocess.run([str(R/'IndexedFamilyProducer/indexed-family-export'),'--bind',str(P/f'family{b}.json'),'S0',str(P/f'indexed-branch{b}.json')],stdout=out,check=True)
report=json.loads((A/'audit.json').read_text())
manifest=dict(schema='affine_branch2697_pipeline/v1',event=2697,branches=[0,1],distinct_paper_events=1,branch_certificates=2,family_entries_each=3,
 requested_keys=[dict(object='S0',page=q,s=s,t=t) for q,s,t in [(2,9,134),(2,12,136),(3,9,134)]],
 missing_neighbors=[dict(object='S0',page=q,s=s,t=t) for q,s,t in [(3,6,132),(3,12,136),(4,9,134)]],
 raw_staircase=report['raw_rows']['2697'],source_E2_basis_id=2696,target_E2_basis_id=2845,
 conditional_premises=['row2574 two-product affine restriction','row2695 zero d3 detector semantics','row2696 earlier d3 prefix semantics','stored row2697 nonzero d3 value semantics'],
 branch_provenance=report['row2574_branches'],
 scope='Separate branch families contain exactly the event comparison and both required complete d2 paths. Their pairwise coherence does not cover absent neighboring comparisons or an Adams realization. Neither branch is added unconditionally to the prior94-event snapshot.',
 incompatibility='Both branch E4 quotients have dimension1; the older selected next-page list has two vectors and cannot be an independent complete basis. The sparse existing351family does not itself contain that conflicting d3/d4 block, so a pairwise merged-family failure is not asserted.',
 prior94_sha256={str(f.relative_to(R)):sha(f) for f in [R/'FiniteEventProducer/HighD2/all94.jsonl',R/'FiniteEventProducer/HighD2/indexed94.jsonl',R/'AggregateHighD2Conditional/source.json',R/'AggregateHighD2Conditional/event-results.json']},
 input_sha256={str(f.relative_to(R)):sha(f) for f in [A/'audit.json',A/'Data.lean',A/'Branches.lean',A/'Links.lean']+[A/f'event2697-branch{b}.json' for b in [0,1]]},
 executables_sha256={str(f.relative_to(R)):sha(f) for f in [R/'FiniteEventProducer/finite-event-export',R/'FiniteEventProducer/indexed-event-export',R/'IndexedFamilyProducer/indexed-family-export']})
(P/'provenance.json').write_text(json.dumps(manifest,indent=2,sort_keys=True)+'\n')
print('2 finite,2 indexed,2 separately bound family certificates;1 common event2697;3 explicit keys per branch')
