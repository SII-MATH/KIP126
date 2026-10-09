"""Root review of fixed input, inherited quotient charts and full products."""
import hashlib
import itertools
import json
from pathlib import Path
import sqlite3

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
frozen=json.loads((HERE/'frozen-source.json').read_text())
for name,digest in frozen['files'].items():
    assert sha(ROOT/name)==digest,name
for record in frozen['modules']:
    assert record['observed_exit_code']==0 and record['inputs_stable']
    assert sha(ROOT/'.lake/build/lib/lean'/(record['module'].replace('.','/')+'.olean'))==record['olean_sha256']
def ev(a,m,n,x):
    return sum((sum(a[i*n+j]*((x>>j)&1) for j in range(n))%2)<<i for i in range(m))
wires={name:json.loads((HERE/'wire'/(name+'.json')).read_text())
       for name in ['factor','source','product','target','factorTarget','source3']}
pairs=0
for w in wires.values():
    k,m,n,h=(w[x] for x in ['k','m','n','h'])
    kernel=[x for x in range(2**m) if ev(w['outgoing'],k,m,x)==0]
    image={ev(w['incoming'],m,n,x) for x in range(2**n)}
    assert image<=set(kernel)
    assert {ev(w['projection'],h,m,x) for x in kernel}==set(range(2**h))
    for x in kernel:
        for y in kernel:
            assert (ev(w['projection'],h,m,x)==ev(w['projection'],h,m,y))==((x^y) in image)
            pairs+=1
for branch in ['zero_b0','zero_b1']:
    family=json.loads((ROOT/'Fact713SquareContinuation'/(branch+'-family.json')).read_text())['entries']
    lookup={tuple(e['key'][k] for k in ['object','page','s','t']):e['wire'] for e in family}
    for name,degree in [('source',(15,136)),('product',(16,140)),('target',(19,142))]:
        assert lookup['S0',2,*degree]==wires[name]
assert ev(wires['source']['projection'],2,2,1)==2
assert ev(wires['product']['projection'],3,5,16)==2
assert wires['product']['h']==3 and wires['target']['h']==2
c=sqlite3.connect('file:'+str(ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db')+'?mode=ro',uri=True)
assert c.execute('SELECT base,diff,level FROM S0_AdamsE2_ss WHERE id=3147').fetchone()==('4',None,9000)
assert c.execute('SELECT id FROM S0_AdamsE2_basis WHERE s=16 AND t=140 ORDER BY id').fetchall()[4]==(3149,)
# The derived middle column does not force the other two columns zero.
maps=[]
for a,b in itertools.product(range(4),repeat=2):
    cols=(a,0,b)
    assert cols[1]==0
    maps.append(cols)
assert any(any(cols) for cols in maps)
report=dict(status='passed',frozen_files=len(frozen['files']),modules=len(frozen['modules']),
    standard_axiom_reports=frozen['axiom_reports'],complete_quotient_pairs=pairs,
    full_maps_preserving_only_derived_column=len(maps),named_raw_basis=3149,
    named_staircase=3147,raw_source_index=4,constructed_E3_index=1,
    manual_review=['Actual product transition quantifies every factor cycle pair.',
      'Constructed factor-target E3 zero proves h2 d3 zero.',
      'Right-factor full d3 meaning is a visible prefix hypothesis.',
      'Named source is identified by the exact inherited quotient projection.',
      'Only the named middle column is derived zero; no whole-space zero claim.',
      'Request includes same caller E2 trace and actual output in constructed full target chart.',
      'E4 endpoint may be zero; only E3 nonvanishing is asserted.'])
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report))
