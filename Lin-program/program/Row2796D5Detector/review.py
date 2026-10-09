"""Independent SQL and full higher-page matrix replay; unknown source is not completed."""
import importlib.util
import json
import re
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
    assert source['raw_row']==list(db['S0'].execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2796').fetchone())==[2796,8,135,'2',None,9000]
    assert source['map']=='S0__DC2h6' and source['factor']==dict(id=0,mon='0',degree=[0,0])
    inventory=json.loads((ROOT/'upstream/category-inventory.json').read_text())
    configured=[r for r in inventory['records'] if r['section']=='maps_v2' and r['ordinal']==66]
    assert len(configured)==1 and configured[0]['source']==dict(factor=[0,0,0],**{'from':'S0','name':'S0__DC2h6','to':'DC2h6'})
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
    assert len(mats)==24 and sum(v['cols'] for v in mats.values())==81 and steps==4
    actual=(HERE/'Actual.lean').read_text()
    imports=re.findall(r'def m(\d+)_(\d+) : ShiftedWire := shifted_module_map% "([^"]+)"',actual)
    assert imports==[(str(s),str(t),f'Row2796D5Detector/wire/s{s}t{t}.json') for s,t in mats]
    for s,t in mats:
        assert f'theorem m{s}_{t}_valid : m{s}_{t}.Valid := by lin_cert using ()' in actual
    centers=sorted({(8,135)}|{(s+ds,t+dt) for s,t in [(9,136),(13,139),(17,142)]
                   for ds,dt in [(-3,-2),(0,0),(3,2)]})
    assert data['centers']==[list(x) for x in centers]
    assert sorted(mats)==sorted({(s+ds,t+dt) for s,t in centers for ds,dt in [(-2,-1),(0,0),(2,1)]})
    aggregate=json.loads((ROOT/'AggregateC2Row3019Conditional/source.json').read_text())['blocks']
    search=json.loads((ROOT/'Row2796D5Search/comparisons.json').read_text())
    union=dict(aggregate);union.update(search['blocks'])
    blocks=data['blocks']
    assert len(blocks)==30
    for key,b in blocks.items():
        assert b==union[key]
        a.wire_laws(b['wire'])

    def basis(n,s,t):
        assert t<=meta[n]['t_max']
        return [list(x) for x in db[n].execute(
            f'SELECT id,mon,d2 FROM {n}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))]

    def vector(raw,size):
        assert isinstance(raw,str)
        ids=list(map(int,raw.split(','))) if raw else []
        assert ids==sorted(set(ids)) and all(0<=i<size for i in ids)
        return [int(i in ids) for i in range(size)]

    def project(n,s,t,page,raw):
        value=raw
        for q in range(2,page):
            w=union[f'{n}:{s},{t}:d{q}']['wire']
            value=a.matmul(w['projection'],value,w['h'],w['m'],1)
        return value

    for key,b in blocks.items():
        n=b['object'];s,t=b['center'];page=b['page'];w=b['wire']
        if page==2:
            assert t<=meta[n]['d2_t_max']
            groups=[basis(n,*d) for d in [(s-2,t-1),(s,t),(s+2,t+1)]]
            assert list(map(len,groups))==[w['n'],w['m'],w['k']]
            for field,rows,size in [('incoming',groups[0],w['m']),('outgoing',groups[1],w['k'])]:
                cols=[vector(raw,size) for _,_,raw in rows]
                assert w[field]==[col[i] for i in range(size) for col in cols]
        else:
            for field,ss,tt,rowsize,colsize in [('outgoing',s,t,w['k'],w['m']),
                                               ('incoming',s-page,t-page+1,w['m'],w['n'])]:
                stairs=[list(x) for x in db[n].execute(
                    f'SELECT id,base,diff,level FROM {n}_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(ss,tt))]
                selected=[x for x in stairs if page<=x[3]<5000 or 5000<=x[3]<=10000-page]
                assert len(selected)==colsize
                cols=[]
                for j,row in enumerate(selected):
                    use=next(u for u in b['uses'] if u['source']==[ss,tt] and u['row']==row)
                    assert use['page']==page and use['object']==n
                    if use['kind']=='stored_event':
                        assert row[2] is not None and row[3]==10000-page
                        image=project(n,ss+page,tt+page-1,page,
                            vector(row[2],len(basis(n,ss+page,tt+page-1))))
                    elif use['kind']=='stored_zero_prefix_or_boundary':
                        assert 2<=row[3]<5000 or 9000<row[3]<10000-page
                        image=[0]*rowsize
                    elif use['kind'].startswith('conditional'):
                        assert n=='S0' and key in aggregate and use in aggregate[key]['uses']
                        image=[0]*rowsize
                    elif use['kind']=='checked_zero_codomain':
                        assert rowsize==0 and union[use['target_predecessor']]['wire']['h']==0
                        image=[]
                    else:raise AssertionError(use['kind'])
                    assert len(image)==rowsize
                    cols.append(image)
                    represented=project(n,ss,tt,page,vector(row[1],len(basis(n,ss,tt))))
                    assert represented==[int(i==j) for i in range(colsize)]
                assert w[field]==[col[i] for i in range(rowsize) for col in cols]
        selected=[list(x) for x in db[n].execute(
            f'SELECT id,base,diff,level FROM {n}_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t))
                  if page+1<=x[3]<5000 or 5000<=x[3]<=9999-page]
        columns=[project(n,s,t,page,vector(row[1],len(basis(n,s,t)))) for row in selected]
        assert len(columns)==w['h'] and w['inclusion']==[col[i] for i in range(w['m']) for col in columns]

    def compatible(S,T,F,U,L):
        assert a.matmul(T['outgoing'],F,T['k'],T['m'],S['m'])==a.matmul(U,S['outgoing'],T['k'],S['k'],S['m'])
        assert a.matmul(F,S['incoming'],T['m'],S['m'],S['n'])==a.matmul(T['incoming'],L,T['m'],T['n'],S['n'])

    def coordinates(S,T,F):
        return a.matmul(T['projection'],a.matmul(F,S['inclusion'],T['m'],S['m'],S['h']),T['h'],T['m'],S['h'])

    e3={};e4={}
    for s,t in centers:
        S=blocks[f'S0:{s},{t}:d2']['wire'];T=blocks[f'DC2h6:{s},{t}:d2']['wire']
        F,U,L=[mats[s+ds,t+dt]['entries'] for ds,dt in [(0,0),(2,1),(-2,-1)]]
        compatible(S,T,F,U,L);e3[s,t]=coordinates(S,T,F)
        assert e3[s,t]==data['E3'][str((s,t))]
    for s,t in [(9,136),(13,139),(17,142)]:
        S=blocks[f'S0:{s},{t}:d3']['wire'];T=blocks[f'DC2h6:{s},{t}:d3']['wire']
        F,U,L=[e3[s+ds,t+dt] for ds,dt in [(0,0),(3,2),(-3,-2)]]
        compatible(S,T,F,U,L);e4[s,t]=coordinates(S,T,F)
        assert e4[s,t]==data['E4'][str((s,t))]
    S=blocks['S0:13,139:d4']['wire'];T=blocks['DC2h6:13,139:d4']['wire']
    compatible(S,T,e4[13,139],e4[17,142],e4[9,136])
    e5=coordinates(S,T,e4[13,139]);assert e5==data['target_E5']==[1]
    assert (S['h'],T['h'])==(1,1)
    assert e3[8,135]==[0,1,0,0,0,0]
    assert a.matmul(e3[8,135],[1,0],3,2,1)==[0,0,0]
    assert a.matmul(e3[8,135],[0,1],3,2,1)==[1,0,0]
    value=[0,0,1,0,0,0,0];trace=[]
    for page in [2,3,4]:
        w=blocks[f'S0:8,135:d{page}']['wire']
        assert not any(a.matmul(w['outgoing'],value,w['k'],w['m'],1))
        projected=a.matmul(w['projection'],value,w['h'],w['m'],1)
        assert projected==[1,0]
        trace.append(dict(page=page,raw_or_coordinates=value,projection=projected));value=projected
    assert trace==data['source_exact_raw_trace']
    target=[1,0,0]
    for page in [2,3,4]:
        w=blocks[f'S0:13,139:d{page}']['wire']
        assert not any(a.matmul(w['outgoing'],target,w['k'],w['m'],1))
        target=a.matmul(w['projection'],target,w['h'],w['m'],1)
    assert target==[1]
    assert 'DC2h6:8,135:d3' not in blocks and 'DC2h6:8,135:d4' not in blocks
    assert data['source_map_is_not_zero'] and data['named_source_image_E3']==[0,0,0]
    assert data['target_conditional_uses']==[dict(block=k,**u) for k,b in blocks.items() for u in b['uses']] or sorted(
        json.dumps(x,sort_keys=True) for x in data['target_conditional_uses'])==sorted(
        json.dumps(dict(block=k,**u),sort_keys=True) for k,b in blocks.items() for u in b['uses'])

    def check_definition(text,name,w):
        encoded=','.join('['+','.join('true' if x else 'false' for x in w[field])+']'
                         for field in ['outgoing','incoming','inclusion','projection','up','down'])
        declaration=f'def {name} : WireComparison := ⟨1,{w["k"]},{w["m"]},{w["n"]},{w["h"]},'+encoded+'⟩'
        assert declaration in text

    text=(HERE/'Comparison.lean').read_text();higher=(HERE/'Higher.lean').read_text()
    for s,t in centers:
        for suffix,n in [('S','S0'),('T','DC2h6')]:check_definition(text,f'c{s}_{t}{suffix}',blocks[f'{n}:{s},{t}:d2']['wire'])
        for tag,ds,dt in [('Map',0,0),('Upper',2,1),('Lower',-2,-1)]:
            assert f'def c{s}_{t}{tag} := Actual.m{s+ds}_{t+dt}.algebra.mat' in text
    for s,t in [(9,136),(13,139),(17,142)]:
        for suffix,n in [('S','S0'),('T','DC2h6')]:check_definition(higher,f'p{s}_{t}{suffix}',blocks[f'{n}:{s},{t}:d3']['wire'])
    for name,key in [('source3','S0:8,135:d3'),('source4','S0:8,135:d4'),('targetS','S0:13,139:d4'),('targetT','DC2h6:13,139:d4')]:
        check_definition(higher,name,blocks[key]['wire'])
    source_lean=(HERE/'Source.lean').read_text()
    assert 'structure Completion3 where' in source_lean and 'valid : HomologyComparison outgoing incoming comparison' in source_lean
    assert 'structure Completion4 (c : Completion3) where' in source_lean
    assert 'compatible : CompatibleMap out3 in3 outgoing incoming Comparison.c8_135E3 upper lower' in source_lean
    assert 'compatible : CompatibleMap out4 in4 outgoing incoming (map4 c) upper lower' in source_lean
    assert '(c : Completion3) (d : Completion4 c)' in source_lean
    assert '(naturality : ∀ x, dt (f c d x) = Target.g (ds x))' in source_lean
    inputs=[HERE/'source.json',HERE/'comparison-source.json',HERE/'export.py',HERE/'generate_comparison.py',Path(__file__),
        ROOT/'Row2796D5Search/comparisons.json',ROOT/'Row2796D5Search/review.json',ROOT/'AggregateC2Row3019Conditional/source.json',
        ROOT/'Row2925Detector/source_independent_audit.py',ROOT/'upstream/category-inventory.json']+sorted(HERE.glob('*.lean'))+sorted((HERE/'wire').glob('*.json'))
    result=dict(status='independent_SQL_full_matrix_and_higher_target_audit_passed',failures=[],raw=source['raw_row'],
        matrices=24,columns=81,relation_steps=steps,lifted_ring_relations=lifted,
        comparison_blocks=30,d2_comparisons=20,target_d3_comparisons=6,target_d4_comparisons=2,source_d3_d4_comparisons=2,
        E3_maps=10,E4_maps=3,E5_target_matrix=e5,actual_compatibility_squares=28,
        source_E3_matrix=e3[8,135],source_map_nonzero=True,named_source_image=[0,0,0],source_trace=trace,
        target_E5_coordinate=target,source_unknown_completed=False,
        semantic_premises=['Completion3 with full HomologyComparison and actual E3 CompatibleMap',
            'Completion4 with actual induced E4 CompatibleMap','local d5 naturality and zero preservation',
            'inherited finite source and target staircase meanings','Adams realization when required'],
        limitations='No existence of either source completion is asserted. Completion4 provides an induced quotient relation, not a proved Adams E5 realization; an actual complex interpretation remains external. No arbitrary unknown entries are set to zero.',
        source_database_sha256=source['sources'],inputs_sha256={str(p.relative_to(ROOT)):a.sha(p) for p in inputs})
    (HERE/'review.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
    print('PASS:24 maps/81cols/4 reductions;30 full comparisons;28 chain-map squares;targetE5 identity;source only namedzero with explicit completions')

if __name__=='__main__':run()
