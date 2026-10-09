"""Independent SQL, column, quotient, and joint-detector replay."""
import importlib.util
import itertools
import json
import sqlite3
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('independent',ROOT/'Row2925Detector/source_independent_audit.py')
a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)


def run():
    source=json.loads((HERE/'source.json').read_text())
    comparisons=json.loads((HERE/'comparison-source.json').read_text())
    product_comparisons=json.loads((HERE/'product-comparisons.json').read_text())
    dbs={n:sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/{n}_AdamsSS_t{261 if n=="S0" else 200}.db?mode=ro',uri=True) for n in ['S0','C2']}
    meta={n:dict(c.execute('SELECT name,value FROM version')) for n,c in dbs.items()}
    assert list(dbs['S0'].execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2576').fetchone())==source['raw_row']==[2576,4,132,'0',None,9000]
    for fn,digest in source['sources'].items():assert a.sha(ROOT/'upstream/kervaire-49'/fn)==digest
    assert source['factor']==dict(id=0,mon='0',degree=[0,0])
    assert dbs['C2'].execute('SELECT id,mon FROM C2_AdamsE2_basis WHERE s=0 AND t=0 ORDER BY id').fetchall()==[(0,'0')]
    assert source['map']=='S0__C2'
    rg=dict((i,(s,t)) for i,s,t in dbs['S0'].execute('SELECT id,s,t FROM S0_AdamsE2_generators'))
    mg=dict((i,(s,t)) for i,s,t in dbs['C2'].execute('SELECT id,s,t FROM C2_AdamsE2_generators'))
    mats={};steps=0
    for b in source['matrices']:
        s,t=b['source_degree'];w=b['wire'];v=w['algebra']
        assert [w['filtration'],w['suspension'],w['sourceS'],w['sourceT'],w['targetS'],w['targetT']]==[0,0,s,t,s,t]
        assert t<=meta['S0']['t_max'] and t<=meta['C2']['t_max']
        sr=dbs['S0'].execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
        tr=dbs['C2'].execute('SELECT id,mon FROM C2_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
        assert b['source']==[list(x) for x in sr] and b['target']==[list(x) for x in tr]
        assert len(sr)==v['cols'] and len(tr)==v['rows']
        assert [a.expr(x) for x in v['source']]==[{(a.coeff(raw),0)} for _,raw in sr]
        assert [a.expr(x) for x in v['target']]==[{a.mon(raw)} for _,raw in tr]
        assert [a.expr(x) for x in v['images']]==[{((),0)}]
        relations=[]
        for enc,p in zip(v['relations'],b['relation_sources'],strict=True):
            n='C2' if p['kind']=='module' else 'S0'
            raw,rs,rt=dbs[n].execute(f"SELECT rel,s,t FROM {p['table']} WHERE rowid=?",(p['rowid'],)).fetchone()
            assert raw==p['raw']
            if p['kind']=='module':
                assert p['database']=='C2_AdamsSS_t200.db' and p['table']=='C2_AdamsE2_relations' and p['degree']==[rs,rt]
                terms=a.parity(a.mon(x) for x in raw.split(';'))
            else:
                assert p['kind']=='ring_lift' and p['database']=='S0_AdamsSS_t261.db' and p['table']=='S0_AdamsE2_relations'
                g=p['module_generator'];assert p['module_generator_degree']==list(mg[g]) and p['ring_degree']==[rs,rt]
                assert p['degree']==[rs+mg[g][0],rt+mg[g][1]]
                terms=a.parity((a.coeff(x),g) for x in raw.split(';'))
            assert a.expr(enc)==terms and all(a.degree(x,rg,mg)==tuple(p['degree']) for x in terms)
            relations.append(terms)
        for j,((_,raw),trace) in enumerate(zip(sr,v['terms'],strict=True)):
            cur={(a.coeff(raw),0)}
            for step in trace:
                cur.symmetric_difference_update(a.product(relations[step['relation']],[tuple(x) for x in step['multiplier']]))
                steps+=1
            assert cur=={a.mon(raw) for i,(_,raw) in enumerate(tr) if v['entries'][i*v['cols']+j]}
        mats[s,t]=v
    assert sorted(mats)==sorted([(2,131),(4,132),(6,133),(5,133),(7,134),(9,135)])
    comp={}
    def check_comparison(name,s,t,rec):
        assert t<=meta[name]['d2_t_max'] and t+1<=meta[name]['t_max']
        groups=[[dict(id=i,mon=raw,d2=d2) for i,raw,d2 in dbs[name].execute(f'SELECT id,mon,d2 FROM {name}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',d)] for d in [(s-2,t-1),(s,t),(s+2,t+1)]]
        assert groups==rec['rows'];w=rec['wire'];assert list(map(len,groups))==[w['n'],w['m'],w['k']]
        for field,rs,dim in [('incoming',groups[0],w['m']),('outgoing',groups[1],w['k'])]:
            cs=[]
            for row in rs:
                assert row['d2'] is not None
                ids=[] if row['d2']=='' else list(map(int,row['d2'].split(',')))
                assert ids==sorted(set(ids)) and all(0<=i<dim for i in ids)
                cs.append(ids)
            assert w[field]==[i in col for i in range(dim) for col in cs]
        a.wire_laws(w)
    for x in comparisons:
        check_comparison(x['object'],*x['degree'],x);comp[x['tag']]=x['wire']
    for x in product_comparisons:check_comparison('S0',*x['degree'],x)
    for source_tag,target_tag,s,t in [('source','target',4,132),('upperSource','upperTarget',7,134)]:
        S,T=comp[source_tag],comp[target_tag];F,U,L=mats[s,t],mats[s+2,t+1],mats[s-2,t-1]
        assert a.matmul(T['outgoing'],F['entries'],T['k'],T['m'],S['m'])==a.matmul(U['entries'],S['outgoing'],T['k'],S['k'],S['m'])
        assert a.matmul(F['entries'],S['incoming'],T['m'],S['m'],S['n'])==a.matmul(T['incoming'],L['entries'],T['m'],T['n'],S['n'])
    pro=json.loads((HERE/'products-h2-provenance.json').read_text());product_steps=0
    for b in pro:
        s,t=b['source_degree'];bid=b['source_id']
        sr=dbs['S0'].execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
        tr=dbs['S0'].execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s+1,t+4)).fetchall()
        j=b['source_local'];assert sr[j][0]==bid and b['factor_id']==7 and b['target_degree']==[s+1,t+4]
        assert b['target_basis_ids']==[i for i,_ in tr]
        bundle=json.loads((HERE/f'products_h2/basis{bid}.json').read_text())
        cur={tuple(sorted((2,)+a.coeff(sr[j][1])))}
        assert cur=={tuple(x) for x in bundle['input']}
        relations=[]
        for rid,encoded in zip(b['relation_rowids'],bundle['relations'],strict=True):
            raw=dbs['S0'].execute('SELECT rel FROM S0_AdamsE2_relations WHERE rowid=?',(rid,)).fetchone()[0]
            terms=[a.coeff(x) for x in raw.split(';')];assert [list(x) for x in terms]==encoded;relations.append(terms)
        for step in bundle['terms']:
            cur.symmetric_difference_update(a.parity(tuple(sorted(co+tuple(q))) for co in relations[step['relation']] for q in step['multiplier']));product_steps+=1
        assert cur=={tuple(x) for x in bundle['output']}=={a.coeff(tr[i][1]) for i in b['target_coordinates']}
    products={tag:json.loads((HERE/f'{tag}.json').read_text()) for tag in ['ann','detect']}
    def multiply(w,x,y):
        A,B,C=w['left']['m'],w['right']['m'],w['target']['m']
        return [sum(w['tensor'][(k*A+i)*B+j] and x[i] and y[j] for i in range(A) for j in range(B))%2 for k in range(C)]
    for tag,s,t in [('ann',4,132),('detect',7,134)]:
        w=products[tag];L,B,T=(w[k] for k in ['left','right','target'])
        for part in ['left','right','target']:a.wire_laws(w[part])
        cols=[x for x in pro if x['source_degree']==[s,t]]
        assert w['tensor']==[i in x['target_coordinates'] for i in range(T['m']) for x in cols]
        for x in itertools.product([0,1],repeat=L['m']):
            if any(a.matmul(L['outgoing'],x,L['k'],L['m'],1)):continue
            for y in itertools.product([0,1],repeat=B['m']):
                if any(a.matmul(B['outgoing'],y,B['k'],B['m'],1)):continue
                v=multiply(w,x,y)
                assert not any(a.matmul(T['outgoing'],v,T['k'],T['m'],1))
                if a.in_image(L['incoming'],L['m'],L['n'],x) or a.in_image(B['incoming'],B['m'],B['n'],y):
                    assert a.in_image(T['incoming'],T['m'],T['n'],v)
    assert products['ann']['right']==comp['source'] and products['detect']['right']==comp['upperSource']
    target=comp['upperSource'];c2=comp['upperTarget'];h2=products['detect']['target'];joint=[]
    for v in itertools.product([0,1],repeat=2):
        rep=a.matmul(target['inclusion'],v,target['m'],2,1)
        cv=a.matmul(mats[7,134]['entries'],rep,c2['m'],target['m'],1)
        cq=a.matmul(c2['projection'],cv,c2['h'],c2['m'],1)
        hv=multiply(products['detect'],[1],rep)
        hq=a.matmul(h2['projection'],hv,h2['h'],h2['m'],1)
        assert any(cq) or any(hq) or not any(v)
        joint.append(dict(input=v,c2=cq,h2=hq))
    assert joint[1]['input']==(0,1) and joint[1]['h2']==[0]
    source_image=a.matmul(mats[4,132]['entries'],[1],comp['target']['m'],1,1)
    assert a.in_image(comp['target']['incoming'],comp['target']['m'],comp['target']['n'],source_image)
    assert multiply(products['ann'],[1],[1])==[]
    inputs=[HERE/'source.json',HERE/'comparison-source.json',HERE/'product-comparisons.json',HERE/'products-h2-provenance.json',HERE/'ann.json',HERE/'detect.json']
    result=dict(status='independent_data_and_joint_detector_audit_passed',raw_row=source['raw_row'],matrices=6,columns=15,module_reduction_steps=steps,
        polynomial_columns=len(pro),polynomial_reduction_steps=product_steps,full_d2_comparisons=9,joint_table=joint,failures=[],
        metadata=meta,sources=source['sources'],inputs_sha256={str(x.relative_to(ROOT)):a.sha(x) for x in inputs},script_sha256=a.sha(Path(__file__)),
        limitations='Algebra relations and differential rows are imported; this audit does not prove topological realization or the local naturality/Leibniz premises.')
    (HERE/'review.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
    print('Row2576: 6 actual maps/15 columns, 6 polynomial columns, 9 complete comparisons; full joint detector table passed')

if __name__=='__main__':run()
