"""Independent raw C2 matrix, comparison, and arbitrary-target input audit."""
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
    db={n:sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/{n}_AdamsSS_t{261 if n=="S0" else 200}.db?mode=ro',uri=True) for n in ['S0','C2']}
    meta={n:dict(c.execute('SELECT name,value FROM version')) for n,c in db.items()}
    for p,v in source['sources'].items():assert a.sha(ROOT/'upstream/kervaire-49'/p)==v
    assert source['raw_row']==list(db['S0'].execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2576').fetchone())==[2576,4,132,'0',None,9000]
    assert source['map']=='S0__C2' and source['factor']==dict(id=0,mon='0',degree=[0,0])
    assert db['C2'].execute('SELECT id,mon FROM C2_AdamsE2_basis WHERE s=0 AND t=0 ORDER BY id').fetchall()==[(0,'0')]
    rg=dict((i,(s,t)) for i,s,t in db['S0'].execute('SELECT id,s,t FROM S0_AdamsE2_generators'))
    mg=dict((i,(s,t)) for i,s,t in db['C2'].execute('SELECT id,s,t FROM C2_AdamsE2_generators'))
    mats={};steps=0;lifted=0
    for b in source['matrices']:
        s,t=b['source_degree'];w=b['wire'];v=w['algebra']
        assert json.loads((HERE/f'wire/s{s}t{t}.json').read_text())==w
        assert [w['filtration'],w['suspension'],w['sourceS'],w['sourceT'],w['targetS'],w['targetT']]==[0,0,s,t,s,t]
        assert t<=meta['S0']['t_max'] and t<=meta['C2']['t_max']
        sr=db['S0'].execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
        tr=db['C2'].execute('SELECT id,mon FROM C2_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
        assert b['source']==[list(x) for x in sr] and b['target']==[list(x) for x in tr]
        assert len(sr)==v['cols'] and len(tr)==v['rows']
        assert [a.expr(x) for x in v['source']]==[{(a.coeff(raw),0)} for _,raw in sr]
        assert [a.expr(x) for x in v['target']]==[{a.mon(raw)} for _,raw in tr]
        assert [a.expr(x) for x in v['images']]==[{((),0)}]
        relations=[]
        for enc,p in zip(v['relations'],b['relation_sources'],strict=True):
            n='C2' if p['kind']=='module' else 'S0'
            raw,rs,rt=db[n].execute(f"SELECT rel,s,t FROM {p['table']} WHERE rowid=?",(p['rowid'],)).fetchone();assert raw==p['raw']
            if p['kind']=='module':
                assert p['database']=='C2_AdamsSS_t200.db' and p['table']=='C2_AdamsE2_relations' and p['degree']==[rs,rt]
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
    assert len(mats)==12 and sum(v['cols'] for v in mats.values())==43
    blocks={}
    for b in data['blocks']:
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
    for tag,s,t in [('named',4,132),('lower',5,133),('center',8,135),('upper',11,137)]:
        S,T=blocks[tag+'S'],blocks[tag+'T'];F,U,L=mats[s,t],mats[s+2,t+1],mats[s-2,t-1]
        assert a.matmul(T['outgoing'],F['entries'],T['k'],T['m'],S['m'])==a.matmul(U['entries'],S['outgoing'],T['k'],S['k'],S['m'])
        assert a.matmul(F['entries'],S['incoming'],T['m'],S['m'],S['n'])==a.matmul(T['incoming'],L['entries'],T['m'],T['n'],S['n'])
        maps[tag]=a.matmul(T['projection'],a.matmul(F['entries'],S['inclusion'],T['m'],S['m'],S['h']),T['h'],T['m'],S['h'])
    assert maps['center']==[True,False,False,True]+[False]*8
    assert blocks['namedT']['h']==0 and maps['named']==[]
    assert blocks['lowerS']['h']==0
    incoming=db['C2'].execute('SELECT id,base,diff,level FROM C2_AdamsE2_ss WHERE s=5 AND t=133 ORDER BY id').fetchall()
    assert incoming==[(2633,'0','2,3',9996)]
    assert data['raw_c2_incoming']['columns']==[[0]*6]
    unknown=db['C2'].execute('SELECT id,s,t,base,diff,level FROM C2_AdamsE2_ss WHERE id=2797').fetchone()
    assert unknown==(2797,8,135,'5',None,9000)
    agg=json.loads((ROOT/'AggregateC2H2Conditional/source.json').read_text())['blocks']
    for k,b in data['inherited_d3'].items():assert b==agg[k]
    result=dict(status='independent_actual_map_and_inherited_d3_audit_passed',matrices=12,columns=43,reduction_steps=steps,lifted_relations=lifted,
        complete_d2_comparisons=8,E3_coordinate_maps=maps,source_c2_E3_dimension=0,target_c2_incoming_d3_rows=[list(x) for x in incoming],
        target_unknown_retained=list(unknown),metadata=meta,inherited_d3_uses={k:b['uses'] for k,b in data['inherited_d3'].items()},failures=[],
        sources=source['sources'],input_sha256={str(p.relative_to(ROOT)):a.sha(p) for p in [HERE/'source.json',HERE/'comparison-source.json',ROOT/'AggregateC2H2Conditional/source.json']+sorted((HERE/'wire').glob('*.json'))},script_sha256=a.sha(Path(__file__)),
        limitations='The conditional source d3 identities, C2 earlier-page prefix semantics, local d3/d4 naturality and Adams interpretation remain explicit. Unknown C2 outgoing entries are not assigned by this audit.')
    (HERE/'review.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
    print('12 actual C2 matrices/43 columns, 8 full d2 comparisons, inherited d3 and zero incoming checked')
if __name__=='__main__':run()
