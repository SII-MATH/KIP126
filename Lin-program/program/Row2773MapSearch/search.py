"""Bounded all-configured-S0-map screen of the whole row2773 d3 target."""
import importlib.util
import itertools
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('screen2773',ROOT/'Row3147MapSearch/search_lifted.py')
screen=importlib.util.module_from_spec(spec)
spec.loader.exec_module(screen)
VECTORS=[('target',[1,0]),('target1',[0,1]),('targetsum',[1,1])]

def run():
    connection=screen.alg.connection('S0_AdamsSS_t261.db')
    row=list(connection.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2773').fetchone())
    assert row==[2773,13,135,'1',None,9000]
    source=screen.comparison(connection,'S0',13,135,screen.metadata(connection))
    target=screen.comparison(connection,'S0',16,137,screen.metadata(connection))
    sw,tw=source['wire'],target['wire']
    assert sw['h']==2 and tw['h']==2
    named=[0,1,0]
    assert screen.ev(sw['projection'],2,3,named)==[0,1]
    selected=[('source',13,135,[1])]
    for label,vector in VECTORS:
        raw=screen.ev(tw['inclusion'],tw['m'],2,vector)
        assert screen.ev(tw['projection'],2,tw['m'],raw)==vector
        selected.append((label,16,137,[i for i,b in enumerate(raw) if b]))
    screen.HERE=HERE
    screen.SELECTED=selected
    report=screen.run()
    report.update(schema='row2773_complete_target_map_screen/v1',row=row,
        source_comparison=source,target_comparison=target,
        source_E2_vector=named,source_E3_vector=[0,1],target_vectors=VECTORS,
        wrapper_sha256=screen.digest(Path(__file__)),
        claim='Bounded search only: no missing d3 coefficient or actual naturality is assumed.')
    (HERE/'lifted-search.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
    eligible=[]
    for entry in report['maps']:
        if any(entry.get(label,{}).get('status')!='computed_cycle_quotient' for label,*_ in selected):continue
        images=[entry[label]['quotient'] for label,_ in VECTORS]
        assert images[2]==[a^b for a,b in zip(images[0],images[1])]
        eligible.append(dict(map=entry['map']['name'],section=entry['section'],ordinal=entry['ordinal'],
            source_zero=not any(entry['source']['quotient']),target_images=images,
            detects=[any(v) for v in images],full_target_injective=all(any(v) for v in images)))
    zero=[x for x in eligible if x['source_zero']]
    summary=dict(configured_maps=len(report['maps']),complete_quotient_maps=len(eligible),
        source_zero_maps=len(zero),single_source_zero_injective=[x['map'] for x in zero if x['full_target_injective']],
        pairs_source_zero_injective=[[a['map'],b['map']] for a,b in itertools.combinations(zero,2)
            if not a['full_target_injective'] and not b['full_target_injective']
            and all(x or y for x,y in zip(a['detects'],b['detects']))],
        eligible=eligible,raw_report_sha256=screen.digest(HERE/'lifted-search.json'))
    (HERE/'candidates.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps({k:v for k,v in summary.items() if k!='eligible'},indent=2),flush=True)

if __name__=='__main__':run()
