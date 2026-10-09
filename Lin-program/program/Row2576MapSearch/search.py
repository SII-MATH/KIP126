"""All configured S0 maps on the exact Row2576 residual [0,1]."""
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
    db = ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
    c = sqlite3.connect(f'file:{db}?mode=ro',uri=True)
    row = list(c.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2576').fetchone())
    assert row == [2576,4,132,'0',None,9000]
    rank_path=ROOT/'AggregateThreeProductConditional/Remaining/ranking.json'
    rank = next(x for x in json.loads(rank_path.read_text()) if x['row'][0]==2576 and x['page']==3)
    factor_path=ROOT/'AggregateThreeProductConditional/Remaining/screen.json'
    factor_screen=json.loads(factor_path.read_text())
    selected=next(x for x in factor_screen['results'] if x['row'][0]==2576)
    assert selected['row']==row and selected['joint_kernel']==[[0,0],[0,1]]
    target = screen.comparison(c,'S0',7,134,screen.metadata(c))
    source = screen.comparison(c,'S0',4,132,screen.metadata(c))
    w=target['wire'];assert w['h']==2
    residual=[0,1]
    vector=screen.ev(w['inclusion'],w['m'],w['h'],residual)
    assert vector==[0,0,1,0,0]
    assert not any(screen.ev(w['outgoing'],w['k'],w['m'],vector))
    target_ids=[i for i,x in enumerate(vector) if x]
    target_basis=c.execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=7 AND t=134 ORDER BY id').fetchall()
    assert [target_basis[i] for i in target_ids]==[(2708,'1,1,368,1')]
    screen.HERE=HERE
    screen.SELECTED=[('source',4,132,[0]),('target',7,134,target_ids)]
    report=screen.run()
    report.update(schema='row2576_residual_configured_map_screen/v1',row=row,
                  residual_coordinates=residual,residual_E2_coordinates=vector,
                  source_comparison=source,target_comparison=target,
                  factor_screen_sha256=screen.digest(factor_path),ranking_sha256=screen.digest(rank_path),
                  ranking=rank,wrapper_sha256=screen.digest(Path(__file__)),
                  claim='Numerical residual screen only. No differential, naturality, or topological realization theorem.')
    (HERE/'lifted-search.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
    return report


if __name__=='__main__':
    run()
