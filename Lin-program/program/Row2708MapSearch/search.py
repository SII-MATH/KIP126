"""Screen all configured S0 maps on exact staircase row2708, not E2 basis2708."""
import importlib.util
import json
import sqlite3
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
spec = importlib.util.spec_from_file_location('bounded_map_screen',ROOT/'Row3147MapSearch/search_lifted.py')
screen = importlib.util.module_from_spec(spec)
spec.loader.exec_module(screen)


def run():
    c=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
    raw=list(c.execute('select id,s,t,base,diff,level from S0_AdamsE2_ss where id=2708').fetchone())
    assert raw == [2708,7,134,'0,1',None,9997]
    source=screen.comparison(c,'S0',7,134,screen.metadata(c))
    target=screen.comparison(c,'S0',10,136,screen.metadata(c))
    sw,tw=source['wire'],target['wire']
    assert sw['h']==2 and tw['h']==1
    sv=[1,1,0,0,0]
    assert not any(screen.ev(sw['outgoing'],sw['k'],sw['m'],sv))
    tv=screen.ev(tw['inclusion'],tw['m'],tw['h'],[1])
    assert tv==[0,0,1,0,0]
    screen.HERE=HERE
    screen.SELECTED=[('source',7,134,[0,1]),('target',10,136,[2])]
    report=screen.run()
    aggregate=ROOT/'AggregateCnuConditional/source.json'
    eventpath=ROOT/'AggregateCnuConditional/event-results.json'
    events=json.loads(eventpath.read_text())
    blocked=[e['staircase_id'] for e in events if e['status']=='unresolved' and 'row2708' in e['reason']]
    assert blocked==[3151,3152]
    factorpath=ROOT/'AggregateThreeProductConditional/Remaining/screen.json'
    factors=json.loads(factorpath.read_text())
    factor_screen=next(x for x in factors['results'] if x['row'][0]==2708)
    assert factor_screen['joint_kernel']==[[0],[1]]
    report.update(schema='row2708_configured_map_screen/v1',row=raw,source_comparison=source,
        target_comparison=target,source_E2_coordinates=sv,
        source_E3_coordinates=screen.ev(sw['projection'],sw['h'],sw['m'],sv),
        target_E2_coordinates=tv,target_E3_coordinates=[1],
        source_basis_ids=[source['rows'][1][i]['id'] for i in [0,1]],
        target_basis_ids=[target['rows'][1][2]['id']],affected_events=blocked,
        aggregate_sha256=screen.digest(aggregate),event_results_sha256=screen.digest(eventpath),
        prior_factor_screen_sha256=screen.digest(factorpath),prior_factor_screen=factor_screen,
        wrapper_sha256=screen.digest(Path(__file__)),
        claim='Numerical source-annihilating detector screen only; NULL9997 is not a known nonzero d3.')
    (HERE/'lifted-search.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
    return report


if __name__=='__main__':
    run()
