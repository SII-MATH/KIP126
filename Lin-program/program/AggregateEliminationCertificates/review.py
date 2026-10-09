"""Replay exact105/95 correspondence, basis columns and missing-target obligations."""
import hashlib
import importlib.util
import json
import sqlite3
from pathlib import Path

P=Path(__file__).resolve().parent
R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
load=lambda p:json.loads(p.read_text())
inv=load(R/'AggregateTargetInventory/inventory.json')
rows={r['staircase_id']:r for r in inv['staircase']}
source=load(R/'AggregateD5Conditional/source.json')
events=load(R/'AggregateD5Conditional/event-results.json')
accepted={e['staircase_id']:e for e in events if e['status']=='finite_nonzero_event'}
mapping=load(P/'mapping.json')
database=R/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect(f'file:{database}?mode=ro',uri=True)
spec=importlib.util.spec_from_file_location('arithmetic',R/'Row2925Detector/source_independent_audit.py')
a=importlib.util.module_from_spec(spec)
spec.loader.exec_module(a)
assert len(rows)==len(inv['basis'])==105 and len(accepted)==95
assert len({e['staircase_id'] for e in mapping['matches']})==95
assert {e['staircase_id'] for e in mapping['matches']}==set(accepted)
assert set(rows)-set(accepted)==set(mapping['unresolved'])|set(mapping['sentinel'])
assert len(mapping['unresolved'])==6 and len(mapping['sentinel'])==4
assert not set(mapping['unresolved'])&set(mapping['sentinel'])
bound={pr['staircase_id']:json.loads(line) for pr,line in zip(
    load(R/'IndexedFamilyProducer/D5/provenance.json')['records'],
    (R/'IndexedFamilyProducer/D5/bound95.jsonl').read_text().splitlines(),strict=True)}
missing=[];supplied=[];counts={'stored_incoming':0,'stored_outgoing':0}
lean=(P/'Data.lean').read_text()
for row in rows.values():
    rid=row['staircase_id'];s=row['filtration'];t=row['total_degree']
    assert t-s==125
    assert list(c.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?',(rid,)).fetchone())==[rid,s,t,row['base'],row['diff'],row['level']]
    basis=[list(x) for x in c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))]
    assert [basis[i][0] for i in row['base_local_indices']]==row['base_global_ids']
    group=next(g for g in inv['filtration_groups'] if g['filtration']==s)
    position=group['staircase_ids'].index(rid)
    assert f'Bases.f{s}.basis i ⟨{position},by decide⟩ = row{rid}.raw[i.val]! := AggregateTargetInventory.Bases.row{rid}_coordinates' in lean
for record in mapping['matches']:
    rid=record['staircase_id'];row=rows[rid];event=accepted[rid];w=bound[rid];ix=w['event'];finite=ix['finite']
    assert record['role']==row['status'] and record['degree']==[row['filtration'],row['total_degree']]
    assert record['raw_local_indices']==row['base_local_indices'] and record['raw_global_ids']==row['base_global_ids']
    assert record['event_page']==event['event_page']==ix['eventPage'] and record['root']==event['root']
    role='source' if row['status']=='stored_outgoing' else 'target';counts[row['status']]+=1
    assert w['object']=='S0' and ix[role+'Degree']==dict(s=row['filtration'],t=row['total_degree'])
    assert [i for i,x in enumerate(finite['raw'+role.title()]) if x]==row['base_local_indices']
    wire=finite['event'];a.wire_laws(wire)
    assert a.matmul(wire['outgoing'],finite['source'],wire['k'],wire['m'],1)==finite['target']
    assert any(finite['target'])
    if role=='target':
        key=record['target_same_page_key'];assert key==f"S0:{row['filtration']},{row['total_degree']}:d{event['event_page']}"
        assert record['target_same_page_supplied']==(key in source['blocks'])
        if key in source['blocks']:
            target=source['blocks'][key]['wire'];a.wire_laws(target)
            assert target['incoming']==wire['outgoing'] and (target['m'],target['n'])==(wire['k'],wire['m'])
            assert not any(a.matmul(target['outgoing'],finite['target'],target['k'],target['m'],1))
            assert not any(a.matmul(target['projection'],finite['target'],target['h'],target['m'],1))
            supplied.append(rid)
            assert f'theorem row{rid}_target_projection_zero' in (P/'Targets.lean').read_text()
        else:missing.append(rid)
assert counts=={'stored_incoming':36,'stored_outgoing':59}
assert missing==mapping['missing_same_page_target_comparisons'] and len(missing)==13
assert supplied==mapping['available_same_page_target_comparisons'] and len(supplied)==23
assert a.matmul([1,1],[1,0],1,2,1)==[1] and a.matmul([1,1],[0,1],1,2,1)==[1]
assert a.matmul([1,1],[1,1],1,2,1)==[0]
a.wire_laws(dict(version=1,k=1,m=2,n=0,h=1,outgoing=[1,1],incoming=[],inclusion=[1,1],projection=[0,1],up=[],down=[1,0]))
files=[P/'mapping.json',P/'Basic.lean',P/'Counterexample.lean',P/'Data.lean',P/'Targets.lean',Path(__file__),
       R/'AggregateTargetInventory/inventory.json',R/'AggregateD5Conditional/source.json',R/'AggregateD5Conditional/event-results.json',
       R/'IndexedFamilyProducer/D5/bound95.jsonl',R/'IndexedFamilyProducer/D5/provenance.json',database]
result=dict(status='exact_named_obstruction_mapping_and_combination_counterexample_passed',findings=[],
            inventory=105,distinct_accepted_rows=95,accepted_incoming=36,accepted_outgoing=59,unresolved=6,sentinel=4,
            target_quotients_supplied=23,target_quotients_missing=missing,
            all23_supplied_target_projections_zero=True,cancellation_counterexample_checked=True,
            limitation='95 counts distinct named staircase rows, not independent dimension eliminations.13 incoming rows need an additional target quotient/complex interpretation. No proof of a10-dimensional survivor space is asserted.',
            inputs_sha256={str(f.relative_to(R)):sha(f) for f in files})
(P/'review.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
print('PASS:105 exact SQL/basis rows;95 matched named obstructions;59 outgoing/36 incoming;23 actual target projections zero;13 explicitly missing;combination counterexample')
