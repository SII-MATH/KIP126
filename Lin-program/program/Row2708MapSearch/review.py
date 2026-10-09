"""Independent SQL/reduction/complete-quotient replay of the exact row2708 screen."""
import importlib.util
import json
import sqlite3
import subprocess
import sys
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent


def run():
    path=HERE/'lifted-search.json'
    before=path.read_bytes()
    subprocess.run([sys.executable,str(HERE/'search.py')],check=True)
    assert before==path.read_bytes(),'nondeterministic row2708 screen'
    report=json.loads(before)
    spec=importlib.util.spec_from_file_location('independent_map_review',ROOT/'Row3147MapSearch/review.py')
    audit=importlib.util.module_from_spec(spec)
    spec.loader.exec_module(audit)
    audit.HERE=HERE
    assert report['wrapper_sha256']==audit.sha(HERE/'search.py')
    assert (HERE/'search_lifted.py').resolve()==(ROOT/'Row3147MapSearch/search_lifted.py').resolve()
    result=audit.run(rerun=False)
    c=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
    raw=list(c.execute('select id,s,t,base,diff,level from S0_AdamsE2_ss where id=2708').fetchone())
    assert raw==report['row']==[2708,7,134,'0,1',None,9997]
    for key,(s,t) in [('source_comparison',(7,134)),('target_comparison',(10,136))]:
        saved=report[key]
        groups=[[dict(id=i,mon=mon,d2=d2) for i,mon,d2 in c.execute(
            'select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',degree)]
            for degree in [(s-2,t-1),(s,t),(s+2,t+1)]]
        assert groups==saved['rows']
        w=saved['wire']
        assert [len(g) for g in groups]==[w['n'],w['m'],w['k']]
        for field,rows,dim in [('incoming',groups[0],w['m']),('outgoing',groups[1],w['k'])]:
            columns=[]
            for row in rows:
                assert row['d2'] is not None
                indices=list(map(int,row['d2'].split(','))) if row['d2'] else []
                assert indices==sorted(set(indices)) and all(0<=i<dim for i in indices)
                columns.append(indices)
            assert w[field]==[i in col for i in range(dim) for col in columns]
        audit.check_wire(w)
    sw=report['source_comparison']['wire'];tw=report['target_comparison']['wire']
    assert report['source_E2_coordinates']==[1,1,0,0,0]
    assert report['source_basis_ids']==[2706,2707]
    assert audit.matmul(sw['outgoing'],report['source_E2_coordinates'],sw['k'],sw['m'],1)==[0]*sw['k']
    assert audit.matmul(sw['projection'],report['source_E2_coordinates'],sw['h'],sw['m'],1)==report['source_E3_coordinates']
    assert report['target_E2_coordinates']==[0,0,1,0,0]
    assert report['target_basis_ids']==[2857]
    assert audit.matmul(tw['projection'],report['target_E2_coordinates'],tw['h'],tw['m'],1)==[1]
    assert report['aggregate_sha256']==audit.sha(ROOT/'AggregateCnuConditional/source.json')
    assert report['event_results_sha256']==audit.sha(ROOT/'AggregateCnuConditional/event-results.json')
    assert report['prior_factor_screen_sha256']==audit.sha(ROOT/'AggregateThreeProductConditional/Remaining/screen.json')
    candidates=[x for x in report['maps'] if x['status']=='candidate_needs_full_map_compatibility']
    result.update(schema='row2708_independent_replay/v1',deterministic_rerun=True,row=raw,
        source_E2_coordinates=report['source_E2_coordinates'],source_E3_coordinates=report['source_E3_coordinates'],
        target_E2_coordinates=report['target_E2_coordinates'],source_basis_ids=[2706,2707],target_basis_ids=[2857],
        affected_events=report['affected_events'],
        candidate_details=[dict(map=x['map'],source_quotient=x['source']['quotient'],target_quotient=x['target']['quotient'],
            source_degree=x['source']['degree'],target_degree=x['target']['degree']) for x in candidates],
        premises='Each candidate still needs full map compatibility and actual d3 naturality/zero preservation.',
        wrapper_sha256=audit.sha(HERE/'search.py'),review_script_sha256=audit.sha(Path(__file__)),
        shared_reviewer_sha256=audit.sha(ROOT/'Row3147MapSearch/review.py'))
    (HERE/'review.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
    print('Exact staircase2708 source basis2706+2707, target basis2857; independent replay passed.')


if __name__=='__main__':
    run()
