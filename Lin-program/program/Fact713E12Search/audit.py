"""Check all reconstructed comparisons and classify every original NULL use."""
import collections
import hashlib
import itertools
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
report = json.loads((HERE/'search.json').read_text())
for name,digest in report['input_sha256'].items():
    assert sha(ROOT/name)==digest,name
baseline=json.loads((ROOT/'Fact713TrajectoryAudit/dag.json').read_text())
vecs=lambda n: itertools.product([0,1],repeat=n)
def app(flat,rows,cols,x):
    assert len(flat)==rows*cols and len(x)==cols
    return tuple(sum(int(flat[i*cols+j])*x[j] for j in range(cols))%2 for i in range(rows))
def add(*vs):return tuple(sum(x)%2 for x in zip(*vs))
full_vectors=cycle_pairs=overlaps=0
for key,block in report['comparisons'].items():
    w=block['wire'];k,m,n,h=(w[f] for f in ['k','m','n','h'])
    A=lambda x:app(w['outgoing'],k,m,x)
    B=lambda x:app(w['incoming'],m,n,x)
    Q=lambda x:app(w['projection'],h,m,x)
    I=lambda x:app(w['inclusion'],m,h,x)
    U=lambda x:app(w['up'],n,m,x)
    D=lambda x:app(w['down'],m,k,x)
    boundaries={B(v) for v in vecs(n)}
    cycles=[v for v in vecs(m) if A(v)==(0,)*k]
    assert all(A(b)==(0,)*k and Q(b)==(0,)*h for b in boundaries)
    assert all(A(I(x))==(0,)*k and Q(I(x))==x for x in vecs(h))
    for x in vecs(m):
        assert add(I(Q(x)),B(U(x)),D(A(x)))==x,key
        full_vectors+=1
    for x,y in itertools.product(cycles,repeat=2):
        assert (Q(x)==Q(y))==(add(x,y) in boundaries),key
        cycle_pairs+=1
    s,t=block['center'];r=block['page']
    other=f'S0:{s-r},{t-r+1}:d{r}'
    if other in report['comparisons']:
        assert report['comparisons'][other]['wire']['outgoing']==w['incoming'],(key,other)
        overlaps+=1
    for pred in report['graph'][key]['predecessors']:
        assert pred in report['comparisons'],(key,pred)
    if r>2:
        preds=[report['comparisons'][p]['wire']['h'] for p in report['graph'][key]['predecessors']]
        assert preds==[n,m,k]
assert len(report['comparisons'])==1211

rows=baseline['differential_rows']
nulls=[]
for row in rows:
    if row['row'][2] is not None:
        continue
    obligation=dict(row)
    if row['classification']=='stored_earlier_zero_prefix':
        obligation['mathematical_status']='external_zero_prefix_provenance_required'
        obligation['explanation']='A later stored event level selects this row on earlier pages. Its NULL differential does not supply a Lean proof of earlier cycles; an actual page trajectory or independent source theorem is required.'
    else:
        resolution=next(x for x in report['unknowns'] if x['key']==row['key'])
        obligation['mathematical_status']=resolution['resolution']
        obligation['resolution']=resolution
    nulls.append(obligation)
assert len(nulls)==82
assert sum(x['classification']=='stored_earlier_zero_prefix' for x in nulls)==25
named_nulls=[x for x in nulls if x['source']==[9,132]]
assert len(named_nulls)==9 and [x['page'] for x in named_nulls]==list(range(3,12))
for x in named_nulls:assert x['row']==[2569,'0,1',None,9988]

paths={
 'conditional_ceta': ['Fact713TrajectoryCertificates/Row3076.lean','Fact715TrajectoryCertificates/Naturality.lean'],
 'conditional_c2_successor': ['Fact713C2Row3143/Matches.lean','Fact713C2Row3143/Naturality.lean'],
 'conditional_c2_prefix': ['Fact713C2Row3005/Matches.lean','Fact713C2Row3005/Naturality.lean'],
 'conditional_h0_h2_leibniz': ['Row2693Detector/Matches.lean','Row2693Detector/Combined.lean'],
 'conditional_dc2h6_d3': ['AggregateDC2h6Conditional/Matches.lean','Row2695Detector/Naturality.lean']}
known_proofs={}
for conditional in report['conditional_uses']:
    kind=conditional['use']['kind']
    known_proofs[kind]=dict(row_key=conditional['key'],
        source_files=[p for p in paths[kind] if (ROOT/p).is_file()],
        actual_adams_proof_supplied=False,
        scope='Existing theorem is conditional on local algebra/naturality, finite data interpretation and source hypotheses. The new search reuses its numeric column while retaining these obligations.')

result=dict(status='independent_finite_identity_and_NULL_audit_passed',
    comparison_count=1211,all_input_vectors=full_vectors,all_cycle_pairs=cycle_pairs,
    identical_adjacent_differentials=overlaps,complete_predecessor_closure=True,
    raw_differential_rows=len(rows),raw_NULL_row_pages=len(nulls),
    raw_NULL_classifications=dict(collections.Counter(x['classification'] for x in nulls)),
    named_NULL_prefix_pages=list(range(3,12)),conditional_sources=known_proofs,
    trust='All finite matrix identities checked independently. These computations do not instantiate any actual Adams meaning or prove the named NULL zero-prefix assumptions.',
    input_sha256={'Fact713E12Search/search.json':sha(HERE/'search.json'),
        'Fact713E12Search/audit.py':sha(Path(__file__)),
        'Fact713TrajectoryAudit/dag.json':sha(ROOT/'Fact713TrajectoryAudit/dag.json')})
(HERE/'NULL-obligations.json').write_text(json.dumps(dict(summary=result,rows=nulls),indent=2)+'\n')
(HERE/'audit.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
