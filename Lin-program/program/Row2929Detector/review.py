"""Independent raw CW_2_eta matrix, comparison, and arbitrary-target input audit."""
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
    db={n:sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/{n}_AdamsSS_t{261 if n=="S0" else 200}.db?mode=ro',uri=True) for n in ['S0','CW_2_eta']}
    meta={n:dict(c.execute('SELECT name,value FROM version')) for n,c in db.items()}
    for p,v in source['sources'].items():assert a.sha(ROOT/'upstream/kervaire-49'/p)==v
    assert source['raw_row']==list(db['S0'].execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2929').fetchone())==[2929,10,137,'3',None,9000]
    assert source['map']=='S0__CW_2_eta' and source['factor']==dict(id=0,mon='0',degree=[0,0])
    assert db['CW_2_eta'].execute('SELECT id,mon FROM CW_2_eta_AdamsE2_basis WHERE s=0 AND t=0 ORDER BY id').fetchall()==[(0,'0')]
    rg=dict((i,(s,t)) for i,s,t in db['S0'].execute('SELECT id,s,t FROM S0_AdamsE2_generators'))
    mg=dict((i,(s,t)) for i,s,t in db['CW_2_eta'].execute('SELECT id,s,t FROM CW_2_eta_AdamsE2_generators'))
    mats={};steps=0;lifted=0
    for b in source['matrices']:
        s,t=b['source_degree'];w=b['wire'];v=w['algebra']
        assert json.loads((HERE/f'wire/s{s}t{t}.json').read_text())==w
        assert [w['filtration'],w['suspension'],w['sourceS'],w['sourceT'],w['targetS'],w['targetT']]==[0,0,s,t,s,t]
        assert t<=meta['S0']['t_max'] and t<=meta['CW_2_eta']['t_max']
        sr=db['S0'].execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
        tr=db['CW_2_eta'].execute('SELECT id,mon FROM CW_2_eta_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
        assert b['source']==[list(x) for x in sr] and b['target']==[list(x) for x in tr]
        assert len(sr)==v['cols'] and len(tr)==v['rows']
        assert [a.expr(x) for x in v['source']]==[{(a.coeff(raw),0)} for _,raw in sr]
        assert [a.expr(x) for x in v['target']]==[{a.mon(raw)} for _,raw in tr]
        assert [a.expr(x) for x in v['images']]==[{((),0)}]
        relations=[]
        for enc,p in zip(v['relations'],b['relation_sources'],strict=True):
            n='CW_2_eta' if p['kind']=='module' else 'S0'
            raw,rs,rt=db[n].execute(f"SELECT rel,s,t FROM {p['table']} WHERE rowid=?",(p['rowid'],)).fetchone();assert raw==p['raw']
            if p['kind']=='module':
                assert p['database']=='CW_2_eta_AdamsSS_t200.db' and p['table']=='CW_2_eta_AdamsE2_relations' and p['degree']==[rs,rt]
                terms=a.parity(a.mon(x) for x in raw.split(';'))
            else:
                assert p['kind']=='ring_lift' and p['database']=='S0_AdamsSS_t261.db' and p['table']=='S0_AdamsE2_relations'
                g=p['module_generator'];assert p['module_generator_degree']==list(mg[g]) and p['ring_degree']==[rs,rt] and p['degree']==[rs+mg[g][0],rt+mg[g][1]]
                terms=a.parity((a.coeff(x),g) for x in raw.split(';'));lifted+=1
            assert a.expr(enc)==terms and all(a.degree(x,rg,mg)==tuple(p['degree']) for x in terms);relations.append(terms)
        for j,((_,raw),trace) in enumerate(zip(sr,v['terms'],strict=True)):
            cur={(a.coeff(raw),0)}
            for step in trace:cur.symmetric_difference_update(a.product(relations[step['relation']],[tuple(x) for x in step['multiplier']]));steps+=1
            assert cur=={a.mon(raw) for i,(_,raw) in enumerate(tr) if v['entries'][i*v['cols']+j]}
        mats[s,t]=v
    assert len(mats)==6 and sum(v['cols'] for v in mats.values())==24
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
        a.wire_laws(w);blocks[b['tag']]=w
    maps={}
    for tag,s,t,stag,ttag in [('source',10,137,'source','target'),('target',13,139,'upperSource','upperTarget')]:
        S,T=blocks[stag],blocks[ttag];F,U,L=mats[s,t],mats[s+2,t+1],mats[s-2,t-1]
        assert a.matmul(T['outgoing'],F['entries'],T['k'],T['m'],S['m'])==a.matmul(U['entries'],S['outgoing'],T['k'],S['k'],S['m'])
        assert a.matmul(F['entries'],S['incoming'],T['m'],S['m'],S['n'])==a.matmul(T['incoming'],L['entries'],T['m'],T['n'],S['n'])
        maps[tag]=a.matmul(T['projection'],a.matmul(F['entries'],S['inclusion'],T['m'],S['m'],S['h']),T['h'],T['m'],S['h'])
    assert blocks['source']['h']==3 and blocks['upperSource']['h']==1
    assert maps['target']==[0,1,0,0]
    named=[0,0,0,1,0,0]
    assert not any(a.matmul(blocks['source']['outgoing'],named,blocks['source']['k'],6,1))
    assert not a.in_image(blocks['source']['incoming'],6,blocks['source']['n'],named)
    assert a.matmul(blocks['source']['projection'],named,3,6,1)==[0,1,0]
    assert not any(a.matmul(mats[10,137]['entries'],named,5,6,1))
    screen=json.loads((ROOT/'Row2929Search/lifted-search.json').read_text())
    candidate=next(x for x in screen['maps'] if x['map']['name']=='S0__CW_2_eta')
    assert candidate['status']=='candidate_needs_full_map_compatibility'
    assert candidate['source']['coordinates']==[] and candidate['target']['quotient']==maps['target']
    config=json.loads((ROOT/'upstream/category-inventory.json').read_text())
    registered=next(x for x in config['records'] if x['section']=='maps_v2' and x['ordinal']==9)
    assert registered['source']==candidate['map']==dict(factor=[0,0,0],**{'from':'S0','name':'S0__CW_2_eta','to':'CW_2_eta'})
    assert list(mats)==[(8,136),(10,137),(12,138),(11,138),(13,139),(15,140)]
    assert [(b['tag'],b['object'],b['degree']) for b in data]==[('source','S0',[10,137]),('target','CW_2_eta',[10,137]),('upperSource','S0',[13,139]),('upperTarget','CW_2_eta',[13,139])]
    result=dict(status='independent_actual_map_and_full_d2_quotient_audit_passed',matrices=6,columns=24,reduction_steps=steps,lifted_relations=lifted,
        complete_d2_comparisons=4,E3_coordinate_maps=maps,source_E2_coordinates=named,source_E3_coordinates=[0,1,0],source_basis_id=2932,
        full_target_E3_dimension=1,unknown_retained=source['raw_row'],metadata=meta,failures=[],
        sources=source['sources'],input_sha256={str(p.relative_to(ROOT)):a.sha(p) for p in [HERE/'source.json',HERE/'comparison-source.json',ROOT/'Row2929Search/lifted-search.json',ROOT/'upstream/category-inventory.json']+sorted((HERE/'wire').glob('*.json'))},script_sha256=a.sha(Path(__file__)),
        limitations='Local d3 naturality, preservation of zero, interpretation of imported E2 relations and d2 values, and Adams realization remain explicit. Raw row2929 d3 is NULL.')
    (HERE/'review.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
    print('6 actual CW_2_eta matrices/24 columns, 4 full d2 comparisons; exact source annihilated and whole target detected')
if __name__=='__main__':run()
