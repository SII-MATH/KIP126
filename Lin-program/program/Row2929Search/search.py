"""Bounded full-target E3 map screen for the exact row2929 source."""
import importlib.util
import json
import sqlite3
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('bounded',ROOT/'Row3147MapSearch/search_lifted.py')
h=importlib.util.module_from_spec(spec);spec.loader.exec_module(h)

def run():
    c=h.alg.connection('S0_AdamsSS_t261.db')
    raw=list(c.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2929').fetchone())
    assert raw==[2929,10,137,'3',None,9000]
    source=h.comparison(c,'S0',10,137,h.metadata(c));target=h.comparison(c,'S0',13,139,h.metadata(c))
    w=target['wire'];assert w['h']==1
    vec=[int(x) for x in w['inclusion']];ids=[i for i,x in enumerate(vec) if x]
    assert not any(h.ev(source['wire']['outgoing'],source['wire']['k'],source['wire']['m'],[i==3 for i in range(source['wire']['m'])]))
    h.HERE=HERE;h.SELECTED=[('source',10,137,[3]),('target',13,139,ids)]
    report=h.run()
    report.update(schema='row2929_full_target_map_screen/v1',row=raw,source_comparison=source,target_comparison=target,
        target_E3_coordinates=[1],target_E2_indices=ids,wrapper_sha256=h.digest(Path(__file__)),
        claim='Numerical full-target screen only. No d3 value is assumed; local naturality and actual full map compatibility remain to prove.')
    (HERE/'lifted-search.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
    events=json.loads((ROOT/'AggregateC2D4Conditional/event-results.json').read_text())
    event=next(x for x in events if x['staircase_id']==3391);assert event['status']=='unresolved' and 'row2929' in event['reason']
    inventory=json.loads((ROOT/'AggregateTargetInventory/inventory.json').read_text())['staircase']
    row=next(x for x in inventory if x['staircase_id']==3391)
    assert list(c.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=3391').fetchone())==[3391,18,143,'0','0',5]
    audit=dict(event=event,inventory=row,raw_blocker=raw,source_basis=c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=10 AND t=137 ORDER BY id').fetchall(),
        exact_blocker_basis_id=2932,exact_blocker_monomial='1,2,375,1',
        event_source=[13,139],event_source_basis_id=3082,event_target=[18,143],event_target_basis_id=3391,
        aggregate_sha256=h.digest(ROOT/'AggregateC2D4Conditional/source.json'),
        event_results_sha256=h.digest(ROOT/'AggregateC2D4Conditional/event-results.json'))
    assert audit['source_basis'][3][0]==2932 and audit['source_basis'][3][1]=='1,2,375,1'
    (HERE/'event3391-input.json').write_text(json.dumps(audit,indent=2,sort_keys=True)+'\n')
    print('target E2 indices',ids)
if __name__=='__main__':run()
