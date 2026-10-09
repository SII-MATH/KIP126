"""Independent raw DC2h6 matrix, comparison, and arbitrary-target input audit."""
import importlib.util
import json
import sqlite3
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('independent',ROOT/'Row2925Detector/source_independent_audit.py')
a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)

def run():
    source=json.loads((HERE/'source.json').read_text());data=json.loads((HERE/'comparison-source.json').read_text())
    db={n:sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/{n}_AdamsSS_t{261 if n=="S0" else 200}.db?mode=ro',uri=True) for n in ['S0','DC2h6']}
    meta={n:dict(c.execute('SELECT name,value FROM version')) for n,c in db.items()}
    assert source['source_metadata']==meta['S0'] and source['target_metadata']==meta['DC2h6']
    for p,v in source['sources'].items():assert a.sha(ROOT/'upstream/kervaire-49'/p)==v
    assert source['raw_row']==list(db['S0'].execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2695').fetchone())==[2695,9,134,'2',None,9000]
    assert source['map']=='S0__DC2h6' and source['factor']==dict(id=0,mon='0',degree=[0,0])
    assert db['DC2h6'].execute('SELECT id,mon FROM DC2h6_AdamsE2_basis WHERE s=0 AND t=0 ORDER BY id').fetchall()==[(0,'0')]
    rg=dict((i,(s,t)) for i,s,t in db['S0'].execute('SELECT id,s,t FROM S0_AdamsE2_generators'))
    mg=dict((i,(s,t)) for i,s,t in db['DC2h6'].execute('SELECT id,s,t FROM DC2h6_AdamsE2_generators'))
    assert mg[0]==(0,0) and [source['filtration'],source['suspension']]==[0,0]
    mats={};steps=0;lifted=0
    for b in source['matrices']:
        s,t=b['source_degree'];w=b['wire'];v=w['algebra']
        assert (HERE/f'wire/s{s}t{t}.json').read_text()==json.dumps(w,sort_keys=True,separators=(',',':'))+'\n'
        assert b['target_degree']==[s,t] and w['version']==v['version']==1
        assert [v['sourceS'],v['sourceT'],v['targetS'],v['targetT']]==[0,0,0,0]
        assert v['sourceGenerators']==1 and len(v['entries'])==v['rows']*v['cols']
        assert all(type(x) is bool for x in v['entries'])
        assert [w['filtration'],w['suspension'],w['sourceS'],w['sourceT'],w['targetS'],w['targetT']]==[0,0,s,t,s,t]
        assert t<=meta['S0']['t_max'] and t<=meta['DC2h6']['t_max']
        sr=db['S0'].execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
        tr=db['DC2h6'].execute('SELECT id,mon FROM DC2h6_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
        assert b['source']==[list(x) for x in sr] and b['target']==[list(x) for x in tr]
        assert len(sr)==v['cols'] and len(tr)==v['rows']
        assert [a.expr(x) for x in v['source']]==[{(a.coeff(raw),0)} for _,raw in sr]
        assert [a.expr(x) for x in v['target']]==[{a.mon(raw)} for _,raw in tr]
        assert [a.expr(x) for x in v['images']]==[{((),0)}]
        assert all(a.degree((a.coeff(raw),0),rg,mg)==(s,t) for _,raw in sr)
        assert all(a.degree(a.mon(raw),rg,mg)==(s,t) for _,raw in tr)
        assert all(len(x)==v['sourceGenerators'] for x in v['source'])
        assert all(len(x)==v['targetGenerators'] for x in v['target']+v['relations']+v['images'])
        relations=[]
        for enc,p in zip(v['relations'],b['relation_sources'],strict=True):
            n='DC2h6' if p['kind']=='module' else 'S0'
            raw,rs,rt=db[n].execute(f"SELECT rel,s,t FROM {p['table']} WHERE rowid=?",(p['rowid'],)).fetchone();assert raw==p['raw']
            if p['kind']=='module':
                assert p['database']=='DC2h6_AdamsSS_t200.db' and p['table']=='DC2h6_AdamsE2_relations' and p['degree']==[rs,rt]
                terms=a.parity(a.mon(x) for x in raw.split(';'))
            else:
                assert p['kind']=='ring_lift' and p['database']=='S0_AdamsSS_t261.db' and p['table']=='S0_AdamsE2_relations'
                g=p['module_generator'];assert p['module_generator_degree']==list(mg[g]) and p['ring_degree']==[rs,rt] and p['degree']==[rs+mg[g][0],rt+mg[g][1]]
                terms=a.parity((a.coeff(x),g) for x in raw.split(';'));lifted+=1
            assert a.expr(enc)==terms and all(a.degree(x,rg,mg)==tuple(p['degree']) for x in terms);relations.append(terms)
        for j,((_,raw),trace) in enumerate(zip(sr,v['terms'],strict=True)):
            cur={(a.coeff(raw),0)}
            for step in trace:
                assert 0<=step['relation']<len(relations)
                multiplier=[tuple(x) for x in step['multiplier']]
                assert all(all(g in rg for g in mon) for mon in multiplier)
                added=a.product(relations[step['relation']],multiplier)
                assert all(a.degree(x,rg,mg)==(s,t) for x in added)
                cur.symmetric_difference_update(added);steps+=1
            assert cur=={a.mon(raw) for i,(_,raw) in enumerate(tr) if v['entries'][i*v['cols']+j]}
        mats[s,t]=v
    assert len(mats)==6 and sum(v['cols'] for v in mats.values())==25
    blocks={}
    for b in data:
        n=b['object'];s,t=b['degree'];w=b['wire'];assert t<=meta[n]['d2_t_max'] and t+1<=meta[n]['t_max']
        groups=[[dict(id=i,mon=raw,d2=d2) for i,raw,d2 in db[n].execute(f'SELECT id,mon,d2 FROM {n}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',degree)] for degree in [(s-2,t-1),(s,t),(s+2,t+1)]]
        assert groups==b['rows'] and list(map(len,groups))==[w['n'],w['m'],w['k']]
        for field,rows,dim in [('incoming',groups[0],w['m']),('outgoing',groups[1],w['k'])]:
            cols=[]
            for row in rows:
                assert row['d2'] is not None
                ids=[] if row['d2']=='' else list(map(int,row['d2'].split(',')));assert ids==sorted(set(ids)) and all(0<=i<dim for i in ids);cols.append(ids)
            assert w[field]==[i in col for i in range(dim) for col in cols]
        for field,size in [('outgoing',w['k']*w['m']),('incoming',w['m']*w['n']),
                           ('inclusion',w['m']*w['h']),('projection',w['h']*w['m']),
                           ('up',w['n']*w['m']),('down',w['m']*w['k'])]:
            assert len(w[field])==size and all(type(x) is bool for x in w[field])
        assert w['version']==1
        a.wire_laws(w);blocks[b['tag']]=w
    maps={}
    for tag,s,t,stag,ttag in [('source',9,134,'source','target'),('target',12,136,'upperSource','upperTarget')]:
        S,T=blocks[stag],blocks[ttag];F,U,L=mats[s,t],mats[s+2,t+1],mats[s-2,t-1]
        assert a.matmul(T['outgoing'],F['entries'],T['k'],T['m'],S['m'])==a.matmul(U['entries'],S['outgoing'],T['k'],S['k'],S['m'])
        assert a.matmul(F['entries'],S['incoming'],T['m'],S['m'],S['n'])==a.matmul(T['incoming'],L['entries'],T['m'],T['n'],S['n'])
        maps[tag]=a.matmul(T['projection'],a.matmul(F['entries'],S['inclusion'],T['m'],S['m'],S['h']),T['h'],T['m'],S['h'])
    assert blocks['source']['h']==3 and blocks['upperSource']['h']==1
    assert maps['target']==[0,1]
    named=[0,0,1,0,0]
    assert not any(a.matmul(blocks['source']['outgoing'],named,blocks['source']['k'],5,1))
    assert not a.in_image(blocks['source']['incoming'],5,blocks['source']['n'],named)
    assert a.matmul(blocks['source']['projection'],named,3,5,1)==[0,1,0]
    assert not any(a.matmul(mats[9,134]['entries'],named,3,5,1))
    source_ids=[x[0] for x in db['S0'].execute('SELECT id FROM S0_AdamsE2_basis WHERE s=9 AND t=134 ORDER BY id')]
    assert source_ids==[2695,2696,2697,2698,2699] and source_ids[2]==2697
    assert any(a.matmul(blocks['source']['outgoing'],[1,0,0,0,0],5,5,1)), 'same numeric E2 id2695 is not the staircase class'
    assert a.matmul(blocks['source']['inclusion'],[0,1,0],5,3,1)==named
    screen=json.loads((ROOT/'Row2695Search/lifted-search.json').read_text())
    candidate=next(x for x in screen['maps'] if x['map']['name']=='S0__DC2h6')
    assert candidate['status']=='candidate_needs_full_map_compatibility'
    assert candidate['source']['coordinates']==[] and candidate['target']['quotient']==maps['target']
    assert screen['row']==source['raw_row'] and candidate['source']['source_indices']==[2]
    assert candidate['target']['source_indices']==[0] and candidate['target']['coordinates']==[1]
    assert screen['source_comparison']['wire']==blocks['source']
    assert screen['target_comparison']['wire']==blocks['upperSource']
    assert candidate['source']['comparison']['wire']==blocks['target']
    assert candidate['target']['comparison']['wire']==blocks['upperTarget']
    search_review=json.loads((ROOT/'Row2695Search/review.json').read_text())
    assert search_review['report_sha256']==a.sha(ROOT/'Row2695Search/lifted-search.json')
    assert search_review['exact_source']==source['raw_row'] and len(screen['maps'])==70
    assert search_review['map_records']==70 and len(search_review['viable_candidates'])==4
    config=json.loads((ROOT/'upstream/category-inventory.json').read_text())
    registered=next(x for x in config['records'] if x['section']=='maps_v2' and x['ordinal']==66)
    assert registered['source']==candidate['map']==dict(factor=[0,0,0],**{'from':'S0','name':'S0__DC2h6','to':'DC2h6'})
    assert list(mats)==[(7,133),(9,134),(11,135),(10,135),(12,136),(14,137)]
    assert [(b['tag'],b['object'],b['degree']) for b in data]==[('source','S0',[9,134]),('target','DC2h6',[9,134]),('upperSource','S0',[12,136]),('upperTarget','DC2h6',[12,136])]
    comparison_lean=(HERE/'Comparison.lean').read_text()
    actual_lean=(HERE/'Actual.lean').read_text()
    for (s,t) in mats:
        assert f'def m{s}_{t} : ShiftedWire := shifted_module_map% "Row2695Detector/wire/s{s}t{t}.json"' in actual_lean
        assert f'theorem m{s}_{t}_valid : m{s}_{t}.Valid := by lin_cert using ()' in actual_lean
    for tag,w in blocks.items():
        encoded=','.join('['+','.join('true' if x else 'false' for x in w[field])+']'
                         for field in ['outgoing','incoming','inclusion','projection','up','down'])
        declaration=f'def {tag} : WireComparison := ⟨1,{w["k"]},{w["m"]},{w["n"]},{w["h"]},'+encoded+'⟩'
        assert declaration in comparison_lean
        assert f'theorem {tag}_complete : {tag}.Valid := by lin_cert using ()' in comparison_lean
    for tag,s,t in [('middleMap',9,134),('outMap',11,135),('inMap',7,133),
                    ('upperMiddleMap',12,136),('upperOutMap',14,137),('upperInMap',10,135)]:
        v=mats[s,t]
        assert f'def {tag} : Matrix {v["rows"]} {v["cols"]} := Actual.m{s}_{t}.algebra.mat' in comparison_lean
    assert steps==3 and lifted==0
    result=dict(status='independent_actual_map_and_full_d2_quotient_audit_passed',matrices=6,columns=25,reduction_steps=steps,lifted_relations=lifted,
        complete_d2_comparisons=4,E3_coordinate_maps=maps,source_E2_coordinates=named,source_E3_coordinates=[0,1,0],source_basis_id=2697,
        full_target_E3_dimension=1,unknown_retained=source['raw_row'],metadata=meta,failures=[],
        source_staircase_id=2695,distinct_same_id_E2_basis_is_noncycle=True,source_basis_ids=source_ids,
        sources=source['sources'],input_sha256={str(p.relative_to(ROOT)):a.sha(p) for p in [HERE/'source.json',HERE/'comparison-source.json',HERE/'Actual.lean',HERE/'Comparison.lean',HERE/'export.py',HERE/'generate_comparison.py',ROOT/'Row2695Search/lifted-search.json',ROOT/'Row2695Search/review.json',ROOT/'upstream/category-inventory.json',ROOT/'Row2925Detector/source_independent_audit.py']+sorted((HERE/'wire').glob('*.json'))},script_sha256=a.sha(Path(__file__)),
        limitations='Local d3 naturality, preservation of zero, interpretation of imported E2 relations and d2 values, and Adams realization remain explicit. Raw row2695 d3 is NULL.')
    (HERE/'review.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
    print('6 actual DC2h6 matrices/25 columns, 4 full d2 comparisons; exact source annihilated and whole target detected')
if __name__=='__main__':run()
