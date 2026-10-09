"""Independent SQL and finite event-model review of cumulative boundary exclusion."""
import hashlib
import json
from pathlib import Path
import re
import sqlite3

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
PACKAGE=ROOT/'Fact763NoHit'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
load=lambda p:json.loads(p.read_text())
manifest=load(PACKAGE/'frozen-source.json')
for path,digest in manifest['files'].items():assert sha(PACKAGE/path)==digest
source=load(PACKAGE/'source.json')
db=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
assert sha(db)==source['database_sha256']
connection=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
version=dict(connection.execute('select name,value from version'))
assert version['t_max']==261 and version['d2_t_max']==177
degrees=[]
for page in range(6,11):
    degree=(10-page,134-page+1)
    assert source['empty_sources'][str(degree)]==[]
    assert connection.execute('select count(*) from S0_AdamsE2_basis where s=? and t=?',degree).fetchone()==(0,)
    degrees.append(dict(page=page,degree=degree))
assert set(source['empty_sources'])=={str((10-r,135-r)) for r in range(6,11)}


def event_model(kind,event_page,initial,page_limit=15):
    """One F2 class may be hit, support a differential, or persist forever."""
    at=initial
    cycles=True
    boundaries=[]
    trajectory=[]
    for page in range(2,page_limit+1):
        alive=event_page is None or page<=event_page
        assert alive or at==0
        boundary=cycles and at==0
        boundaries.append(boundary)
        outgoing=at if alive and kind=='outgoing' and page==event_page else 0
        incoming_image={0,1} if alive and kind=='incoming' and page==event_page else {0}
        trajectory.append(dict(page=page,value=at,cycles=cycles,boundary=boundary,
                               outgoing=outgoing,incoming=sorted(incoming_image)))
        if outgoing:
            cycles=False
            at=0
        elif at in incoming_image:
            at=0
    return trajectory,boundaries


checked=0
later_outgoing_examples=[]
for kind in ['none','incoming','outgoing']:
    for event in ([None] if kind=='none' else range(2,13)):
        for initial in [0,1]:
            timeline,boundaries=event_model(kind,event,initial)
            at6=timeline[4]
            tail=all(row['incoming']==[0] for row in timeline if row['page']>=6)
            nonzero6=at6['cycles'] and at6['value']!=0
            if tail:
                assert all(boundary==boundaries[4] for boundary in boundaries[4:])
            if tail and nonzero6:
                assert not any(boundaries)
                if kind=='outgoing' and event>=6:
                    assert not timeline[-1]['cycles'] and timeline[-1]['value']==0
                    later_outgoing_examples.append(event)
            checked+=1
assert later_outgoing_examples==list(range(6,13))
hit,hit_boundaries=event_model('incoming',6,1)
assert hit[4]['value']==1 and not hit_boundaries[4] and hit_boundaries[5]
out,out_boundaries=event_model('outgoing',6,1)
assert out[5]['value']==0 and not out[5]['cycles'] and not any(out_boundaries)
# Zero after an outgoing differential must not be mistaken for a boundary:
# Boundary requires membership in the decreasing cycle filtration as well.
assert any(row['value']==0 for row in out) and not any(out_boundaries)

reports=[]
for module in ['Fact763NoHit.Basic','Fact763NoHit.Tactic','ActualFiniteNoHit.Basic']:
    folder,name=module.split('.');directory=ROOT/folder;r=load(directory/(name+'-compile.json'))
    assert r['observed_exit_code']==0 and r['inputs_stable']
    assert sha(directory/(name+'.lean'))==r['source_sha256']
    assert sha(directory/r['log'])==r['log_sha256']
    for path,digest in r['external_input_sha256'].items():assert sha(ROOT/path)==digest
    text=(directory/r['log']).read_text();assert 'sorryAx' not in text and 'error:' not in text
    axioms=re.findall(r'depends on axioms:\s*\[([^]]*)\]',text)
    for ax in axioms:assert set(a.strip() for a in ax.split(',') if a.strip())<={'propext','Classical.choice','Quot.sound'}
    reports.append(dict(module=module,axiom_reports=len(axioms)+text.count('does not depend on any axioms')))
result=dict(status='passed',frozen_files=len(manifest['files']),empty_E2_degrees=degrees,
            finite_event_models=checked,later_outgoing_counterexamples_to_permanence=later_outgoing_examples,
            missing_tail_counterexample='Incoming d6 hits an E6 nonzero class: BInfinity becomes true, showing tail hypothesis is necessary.',
            cutoff='system index 4 is actual page 6; the theorem reuses the same original E2 trace and does not assume subsequent cycle conditions.',
            infinite_tail='Lean splits r<=10 into the five checked degrees; r>10 has no legal source by filtration.',
            records=reports,review_source_sha256=sha(Path(__file__)),
            limitation='No outgoing permanence. Actual input meanings remain explicit; SQL identity and empty rows are not original-spectrum proofs.')
(HERE/'review.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result,indent=2))
