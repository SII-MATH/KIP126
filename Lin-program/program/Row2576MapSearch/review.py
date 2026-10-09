"""Replay the bounded residual screen independently; no theorem assertion."""
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
    assert before==path.read_bytes(), 'nondeterministic residual screen'
    report=json.loads(before)
    spec=importlib.util.spec_from_file_location('independent_map_review',ROOT/'Row3147MapSearch/review.py')
    audit=importlib.util.module_from_spec(spec)
    spec.loader.exec_module(audit)
    audit.HERE=HERE
    assert report['wrapper_sha256']==audit.sha(HERE/'search.py')
    assert report['factor_screen_sha256']==audit.sha(ROOT/'AggregateThreeProductConditional/Remaining/screen.json')
    assert report['ranking_sha256']==audit.sha(ROOT/'AggregateThreeProductConditional/Remaining/ranking.json')
    # The shared independent replay validates the producer identity using this
    # sibling filename, while actual code remains in its canonical directory.
    assert (HERE/'search_lifted.py').resolve()==(ROOT/'Row3147MapSearch/search_lifted.py').resolve()
    result=audit.run(rerun=False)
    c=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
    raw=list(c.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2576').fetchone())
    assert raw==report['row']==[2576,4,132,'0',None,9000]
    for key,(s,t) in [('source_comparison',(4,132)),('target_comparison',(7,134))]:
        saved=report[key]
        groups=[[dict(id=i,mon=raw,d2=d2) for i,raw,d2 in c.execute(
            'SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',deg)]
            for deg in [(s-2,t-1),(s,t),(s+2,t+1)]]
        assert groups==saved['rows']
        w=saved['wire']
        assert [len(g) for g in groups]==[w['n'],w['m'],w['k']]
        for field,rows,dim in [('incoming',groups[0],w['m']),('outgoing',groups[1],w['k'])]:
            cols=[]
            for row in rows:
                assert row['d2'] is not None
                xs=[] if row['d2']=='' else list(map(int,row['d2'].split(',')))
                assert xs==sorted(set(xs)) and all(0<=i<dim for i in xs)
                cols.append(xs)
            assert w[field]==[i in col for i in range(dim) for col in cols]
        audit.check_wire(w)
    w=report['target_comparison']['wire']
    assert w['h']==2 and report['residual_coordinates']==[0,1]
    representative=audit.matmul(w['inclusion'],[0,1],w['m'],2,1)
    assert representative==report['residual_E2_coordinates']==[0,0,1,0,0]
    assert audit.matmul(w['projection'],representative,2,w['m'],1)==[0,1]
    assert report['target_comparison']['rows'][1][2]['id']==2708
    candidates=[x for x in report['maps'] if x['status']=='candidate_needs_full_map_compatibility']
    candidate_details=[dict(map=x['map'],section=x['section'],ordinal=x['ordinal'],factor=x['factor'],
        source_degree=x['source']['degree'],target_degree=x['target']['degree'],
        source_E2_coordinates=x['source']['coordinates'],target_E2_coordinates=x['target']['coordinates'],
        source_quotient=x['source']['quotient'],target_quotient=x['target']['quotient']) for x in candidates]
    first=next(x for x in candidates if x['map']['name']=='S0__C2')
    assert first['source']['comparison']['wire']['h']==0 and first['source']['coordinates']==[0]
    assert first['target']['quotient']==[0,0,0,1]
    result.update(deterministic_rerun=True,schema='row2576_residual_review/v1',row=raw,
        residual_coordinates=[0,1],residual_E2_coordinates=representative,residual_basis_id=2708,
        candidate_details=candidate_details,
        recommendation='S0__C2: target residual detected; source comparison has zero E3 quotient. Full map compatibility and joint target detection with a prior factor remain to prove.',
        wrapper_sha256=audit.sha(HERE/'search.py'),review_script_sha256=audit.sha(Path(__file__)),
        shared_reviewer_sha256=audit.sha(ROOT/'Row3147MapSearch/review.py'))
    (HERE/'review.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
    print('Exact residual E3[0,1] = E2local2/basis2708; 11 reviewed numerical map candidates; C2 source quotient zero.')


if __name__=='__main__':
    run()
