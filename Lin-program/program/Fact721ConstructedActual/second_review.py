"""Second review: detector naming and the entire E3 change-of-coordinate chain."""
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3
P=Path(__file__).resolve().parent;R=P.parent
load=lambda f:json.loads(f.read_text())
sha=lambda f:hashlib.sha256(f.read_bytes()).hexdigest()
entries=load(R/'Fact713ComparisonBatches/Batch06.json')['entries']
counts=dict(all_coordinate_vectors=0,cycle_coordinate_checks=0,named_relabelings=0,wrong_binding_counterexamples=0)
results=[]
def ev(w,field,m,n,x):
 a=w[field];assert len(a)==m*n
 return tuple(sum(int(a[i*n+j])*x[j] for j in range(n))%2 for i in range(m))
def vectors(n):return list(itertools.product((0,1),repeat=n))
sql=sqlite3.connect(f'file:{R}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
for name,index,folder,raw_id,basis_id,e2 in [('First',18,'Fact713DC2h6Source',2622,2622,(0,1)),('Second',24,'Fact713NextSourceSearch',2684,2682,(1,0,0))]:
 stair=entries[index]['wire'];det={x['tag']:x['wire'] for x in load(R/f'{folder}/comparison-source.json')}['source']
 old=load(R/f'Fact721PageCertificates/{name.lower()}-comparison.json')
 assert all(stair[k]==det[k]==old[k] for k in ['m','n','k','h','incoming','outgoing'])
 def change(v):return ev(stair,'projection',stair['h'],stair['m'],ev(det,'inclusion',det['m'],det['h'],v))
 def inverse(v):return ev(det,'projection',det['h'],det['m'],ev(stair,'inclusion',stair['m'],stair['h'],v))
 change_values=[]
 for v in vectors(det['h']):
  assert inverse(change(v))==v and change(inverse(v))==v
  change_values.append([v,change(v)]);counts['all_coordinate_vectors']+=1
 for raw in vectors(stair['m']):
  if not any(ev(stair,'outgoing',stair['k'],stair['m'],raw)):
   canonical=ev(det,'projection',det['h'],det['m'],raw)
   chosen=ev(stair,'projection',stair['h'],stair['m'],raw)
   assert change(canonical)==chosen;counts['cycle_coordinate_checks']+=1
 canonical_named=ev(det,'projection',det['h'],det['m'],e2)
 named=ev(stair,'projection',stair['h'],stair['m'],e2)
 assert named==(0,1)
 assert canonical_named==((0,1) if name=='First' else (1,0))
 raw=sql.execute('select s,t,base,diff,level from S0_AdamsE2_ss where id=?',(raw_id,)).fetchone()
 assert raw[2:]==('1' if name=='First' else '0',None,9000)
 rows=sql.execute('select id from S0_AdamsE2_basis where s=? and t=? order by id',raw[:2]).fetchall()
 assert rows[e2.index(1)][0]==basis_id
 # Arbitrary relabellings of the complete actual E3 carrier. The naming
 # equation singles out exactly the derived named element only when supplied.
 vs=vectors(2)
 for perm in itertools.permutations(vs):
  inv={v:i for i,v in enumerate(perm)}
  actual_named=inv[named]
  detector_meaning={i:inverse(v) for i,v in enumerate(perm)}
  assert detector_meaning[actual_named]==canonical_named
  assert [i for i,v in detector_meaning.items() if v==canonical_named]==[actual_named]
  counts['named_relabelings']+=1
  swapped={i:(v[1],v[0]) for i,v in detector_meaning.items()}
  if swapped[actual_named]!=canonical_named:counts['wrong_binding_counterexamples']+=1
 text=(P/f'{name}.lean').read_text()
 assert 'binding : meaning.source (P.page3.coordinates.equivalence.symm named3)' in text
 assert 'known : S.differential 3 degree' in text
 assert 'D.known namedZero x' in text
 # This is premise-shape review, not a claim that string matching proves semantics.
 results.append(dict(name=name,raw_row=raw_id,basis_row=basis_id,canonical_named=canonical_named,
                     staircase_named=named,all_changes=change_values,
                     meaning='DetectorInput.binding is an explicit equation on the source class; it contains no differential value.'))
reports={}
for leaf in ['Basic','First','Second','Tactic']:
 record=load(P/f'{leaf}-compile.json');log=P/f'{leaf}.log';src=P/f'{leaf}.lean'
 assert record['observed_exit_code']==0 and record['source_sha256']==sha(src) and record['log_sha256']==sha(log)
 text=log.read_text();assert not re.search(r'error:|sorryAx|Lean\.ofReduceBool',text)
 axioms=re.findall(r'depends on axioms: \[([^\]]*)\]',text)
 for ax in axioms:assert set(filter(None,map(str.strip,ax.split(','))))<={'propext','Classical.choice','Quot.sound'}
 reports[leaf]=len(axioms)+text.count('does not depend on any axioms')
for name,h in load(P/'frozen-source.json')['files'].items():assert sha(P/name)==h
sources=[*sorted(P.glob('*.lean')),R/'Fact713DC2h6Source/Actual.lean',R/'Fact713DC2h6Source/Overlay.lean',R/'Fact713NextSourceSearch/Actual.lean',R/'Fact713NextSourceSearch/CoordinateBridge.lean',R/'Fact713ComparisonBatches/Batch06.json',R/'Fact713DC2h6Source/comparison-source.json',R/'Fact713NextSourceSearch/comparison-source.json',Path(__file__)]
report=dict(status='no_correctness_findings',findings=[],counts=counts,cases=results,axiom_reports=reports,
 reviewed=['The same derived E3 element is passed to the actual detector theorem.',
 'The naming equation is an explicit compatibility premise, not automatically discharged by the finite coordinate bridge.',
 'No global injectivity of the source-meaning function is required by the zero-reflection argument.',
 'Both basis columns are used before asserting that the whole actual d3 map is zero.',
 'Second D4 assembly uses an already-whole actual map theorem and cannot choose an unknown branch.'],
 limitations=['Actual realization, full initial/neighboring map meanings, naming equations and naturality remain premises.',
 'Finite canonical/staircase equivalence alone cannot establish equality to an arbitrary actual detector source meaning.',
 'First endpoint is E4, second E5; neither theorem establishes permanence.'],
 sources={str(f.relative_to(R)):sha(f) for f in sources})
(P/'second-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps({k:v for k,v in report.items() if k!='sources'},indent=2))
