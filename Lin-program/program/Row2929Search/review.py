"""Replay the bounded row2929 screen independently; no theorem assertion."""
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
    assert before==path.read_bytes(), 'nondeterministic row2929 screen'
    report=json.loads(before)
    spec=importlib.util.spec_from_file_location('independent_map_review',ROOT/'Row3147MapSearch/review.py')
    audit=importlib.util.module_from_spec(spec)
    spec.loader.exec_module(audit)
    audit.HERE=HERE
    assert report['wrapper_sha256']==audit.sha(HERE/'search.py')
    # The shared independent replay validates the producer identity using this
    # sibling filename, while actual code remains in its canonical directory.
    assert (HERE/'search_lifted.py').resolve()==(ROOT/'Row3147MapSearch/search_lifted.py').resolve()
    result=audit.run(rerun=False)
    c=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
    raw=list(c.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2929').fetchone())
    assert raw==report['row']==[2929,10,137,'3',None,9000]
    for key,(s,t) in [('source_comparison',(10,137)),('target_comparison',(13,139))]:
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
    assert w['h']==1 and report['target_E3_coordinates']==[1]
    representative=audit.matmul(w['inclusion'],[1],w['m'],1,1)
    assert representative==[1,0,0] and report['target_E2_indices']==[0]
    assert audit.matmul(w['projection'],representative,1,w['m'],1)==[1]
    assert report['source_comparison']['rows'][1][3]['id']==2932
    assert report['source_comparison']['rows'][1][3]['mon']=='1,2,375,1'
    assert report['target_comparison']['rows'][1][0]['id']==3082
    candidates=[x for x in report['maps'] if x['status']=='candidate_needs_full_map_compatibility']
    candidate_details=[dict(map=x['map'],section=x['section'],ordinal=x['ordinal'],factor=x['factor'],
        source_degree=x['source']['degree'],target_degree=x['target']['degree'],
        source_E2_coordinates=x['source']['coordinates'],target_E2_coordinates=x['target']['coordinates'],
        source_quotient=x['source']['quotient'],target_quotient=x['target']['quotient']) for x in candidates]
    first=next(x for x in candidates if x['map']['name']=='S0__CW_2_eta')
    assert first['source']['coordinates']==[] and first['source']['quotient']==[0,0,0,0]
    assert first['target']['quotient']==[0,1,0,0]
    result.update(deterministic_rerun=True,schema='row2929_full_target_review/v1',row=raw,
        target_coordinates=[1],target_E2_coordinates=representative,source_basis_id=2932,
        candidate_details=candidate_details,
        recommendation='S0__CW_2_eta: source annihilated in E2; the full one-dimensional E3 target is detected. Actual full map compatibility and naturality remain to prove.',
        wrapper_sha256=audit.sha(HERE/'search.py'),review_script_sha256=audit.sha(Path(__file__)),
        shared_reviewer_sha256=audit.sha(ROOT/'Row3147MapSearch/review.py'))
    (HERE/'review.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
    print('Exact row2929 = E2local3/basis2932; full E3 target dimension1; 3 independently replayed candidates.')


if __name__=='__main__':
    run()
