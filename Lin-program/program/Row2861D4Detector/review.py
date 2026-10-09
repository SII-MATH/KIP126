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
    for p,v in source['sources'].items():assert a.sha(ROOT/'upstream/kervaire-49'/p)==v
    assert source['raw_row']==list(db['S0'].execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2861').fetchone())==[2861,9,136,'1',None,9000]
    assert source['map']=='S0__DC2h6' and source['factor']==dict(id=0,mon='0',degree=[0,0])
    assert db['DC2h6'].execute('SELECT id,mon FROM DC2h6_AdamsE2_basis WHERE s=0 AND t=0 ORDER BY id').fetchall()==[(0,'0')]
    rg=dict((i,(s,t)) for i,s,t in db['S0'].execute('SELECT id,s,t FROM S0_AdamsE2_generators'))
    mg=dict((i,(s,t)) for i,s,t in db['DC2h6'].execute('SELECT id,s,t FROM DC2h6_AdamsE2_generators'))
    mats={};steps=0;lifted=0
    for b in source['matrices']:
        s,t=b['source_degree'];w=b['wire'];v=w['algebra']
        assert json.loads((HERE/f'wire/s{s}t{t}.json').read_text())==w
        assert [w['filtration'],w['suspension'],w['sourceS'],w['sourceT'],w['targetS'],w['targetT']]==[0,0,s,t,s,t]
        assert t<=meta['S0']['t_max'] and t<=meta['DC2h6']['t_max']
        sr=db['S0'].execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
        tr=db['DC2h6'].execute('SELECT id,mon FROM DC2h6_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
        assert b['source']==[list(x) for x in sr] and b['target']==[list(x) for x in tr]
        assert len(sr)==v['cols'] and len(tr)==v['rows']
        assert [a.expr(x) for x in v['source']]==[{(a.coeff(raw),0)} for _,raw in sr]
        assert [a.expr(x) for x in v['target']]==[{a.mon(raw)} for _,raw in tr]
        assert [a.expr(x) for x in v['images']]==[{((),0)}]
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
            for step in trace:cur.symmetric_difference_update(a.product(relations[step['relation']],[tuple(x) for x in step['multiplier']]));steps+=1
            assert cur=={a.mon(raw) for i,(_,raw) in enumerate(tr) if v['entries'][i*v['cols']+j]}
        mats[s,t]=v
    assert len(mats)==16 and sum(v['cols'] for v in mats.values())==63
    original=json.loads((ROOT/'AggregateCW2EtaConditional/source.json').read_text())['blocks']
    extra=json.loads((ROOT/'Row2861D4Search/comparisons.json').read_text())['blocks']
    expected=dict(original);expected.update(extra)
    blocks={}
    for b in data['d2']:
        n=b['object'];s,t=b['center'];w=b['wire'];assert t<=meta[n]['d2_t_max'] and t+1<=meta[n]['t_max']
        assert b==expected[f'{n}:{s},{t}:d2']
        groups=[db[n].execute(f'SELECT id,mon,d2 FROM {n}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',degree).fetchall() for degree in [(s-2,t-1),(s,t),(s+2,t+1)]]
        assert list(map(len,groups))==[w['n'],w['m'],w['k']]
        for field,rows,dim in [('incoming',groups[0],w['m']),('outgoing',groups[1],w['k'])]:
            cols=[]
            for rid,mon,raw in rows:
                assert raw is not None
                ids=[] if raw=='' else list(map(int,raw.split(',')));assert ids==sorted(set(ids)) and all(0<=i<dim for i in ids);cols.append(ids)
            assert w[field]==[i in col for i in range(dim) for col in cols]
        a.wire_laws(w);blocks[n,s,t]=w
    maps={}
    centers=[(6,134),(9,136),(12,138),(10,137),(13,139),(16,141)]
    for s,t in centers:
        S,T=blocks['S0',s,t],blocks['DC2h6',s,t];F,U,L=mats[s,t],mats[s+2,t+1],mats[s-2,t-1]
        assert a.matmul(T['outgoing'],F['entries'],T['k'],T['m'],S['m'])==a.matmul(U['entries'],S['outgoing'],T['k'],S['k'],S['m'])
        assert a.matmul(F['entries'],S['incoming'],T['m'],S['m'],S['n'])==a.matmul(T['incoming'],L['entries'],T['m'],T['n'],S['n'])
        maps[s,t]=a.matmul(T['projection'],a.matmul(F['entries'],S['inclusion'],T['m'],S['m'],S['h']),T['h'],T['m'],S['h'])
    d3={};conditional=[];prefixes=[]
    for b in data['d3']:
        n=b['object'];s,t=b['center'];w=b['wire'];key=f'{n}:{s},{t}:d3'
        assert {k:v for k,v in b.items() if k!='tag'}==expected[key]
        a.wire_laws(w);d3[b['tag']]=w
        for u in b['uses']:
            ss,tt=u['source'];rid,base,diff,level=u['row']
            assert list(db[n].execute(f'SELECT id,base,diff,level FROM {n}_AdamsE2_ss WHERE id=? AND s=? AND t=?',(rid,ss,tt)).fetchone())==u['row']
            if u['kind'].startswith('conditional'):assert n=='S0';conditional.append(dict(block=key,**u))
            elif u['kind']=='stored_zero_prefix_or_boundary':assert 2<=level<5000 or 9000<level<9997;prefixes.append(dict(block=key,**u))
            else:raise AssertionError(u)
    E4={}
    for tag,s,t,stag,ttag in [('source',9,136,'source','target'),('target',13,139,'upperSource','upperTarget')]:
        S,T=d3[stag],d3[ttag];F,U,L=maps[s,t],maps[s+3,t+2],maps[s-3,t-2]
        assert a.matmul(T['outgoing'],F,T['k'],T['m'],S['m'])==a.matmul(U,S['outgoing'],T['k'],S['k'],S['m'])
        assert a.matmul(F,S['incoming'],T['m'],S['m'],S['n'])==a.matmul(T['incoming'],L,T['m'],T['n'],S['n'])
        E4[tag]=a.matmul(T['projection'],a.matmul(F,S['inclusion'],T['m'],S['m'],S['h']),T['h'],T['m'],S['h'])
    assert E4['source']==[0,1,0,0] and E4['target']==[1,0]
    named=[0,1,0,0,0];w=blocks['S0',9,136]
    assert not any(a.matmul(w['outgoing'],named,w['k'],w['m'],1))
    assert not a.in_image(w['incoming'],w['m'],w['n'],named)
    assert a.matmul(w['projection'],named,w['h'],w['m'],1)==[1,0]
    assert not any(a.matmul(E4['source'],[1,0],2,2,1))
    assert d3['upperSource']['h']==1
    screen=json.loads((ROOT/'Row2861D4Search/lifted-search.json').read_text())
    candidate=next(x for x in screen['maps'] if x['map']['name']=='S0__DC2h6')
    assert candidate['E4']['status']=='candidate_needs_full_map_compatibility'
    assert candidate['E4']['stages']['source']['coordinates']==[0,0] and candidate['E4']['stages']['target']['coordinates']==[1,0]
    config=json.loads((ROOT/'upstream/category-inventory.json').read_text())
    registered=next(x for x in config['records'] if x['section']=='maps_v2' and x['ordinal']==66)
    assert registered['source']==candidate['map']==dict(factor=[0,0,0],**{'from':'S0','name':'S0__DC2h6','to':'DC2h6'})
    assert list(mats)==sorted({(s+ds,t+dt) for s,t in centers for ds,dt in [(-2,-1),(0,0),(2,1)]})
    result=dict(status='independent_actual_map_and_two_stage_quotient_audit_passed',matrices=16,columns=63,reduction_steps=steps,lifted_relations=lifted,
        complete_d2_comparisons=12,complete_d3_comparisons=4,E3_coordinate_maps={str(k):v for k,v in maps.items()},E4_coordinate_maps=E4,
        source_E2_coordinates=named,source_E3_and_E4_coordinates=[1,0],source_basis_id=2861,full_target_E4_dimension=1,
        unknown_retained=source['raw_row'],conditional_d3=conditional,imported_d3_prefixes=prefixes,metadata=meta,failures=[],
        sources=source['sources'],input_sha256={str(p.relative_to(ROOT)):a.sha(p) for p in [HERE/'source.json',HERE/'comparison-source.json',ROOT/'Row2861D4Search/lifted-search.json',ROOT/'Row2861D4Search/comparisons.json',ROOT/'AggregateCW2EtaConditional/source.json',ROOT/'upstream/category-inventory.json']+sorted((HERE/'wire').glob('*.json'))},script_sha256=a.sha(Path(__file__)),
        limitations='DC2h6 higher-prefix meanings, inherited S0 conditional d3 identities, local d4 naturality, preservation of zero, E2/d2 interpretation and Adams realization remain explicit. Raw row2861 d4 is NULL.')
    (HERE/'review.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
    print('16 actual DC2h6 matrices/63 columns, 12 full d2 and 4 full d3 comparisons; exact source annihilated and entire E4 target detected')
if __name__=='__main__':run()
