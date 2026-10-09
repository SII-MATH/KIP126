"""Independent exact SQL/reduction/full chain-map audit for the C2h5 detector."""
import hashlib
import importlib.util
import itertools
import json
from pathlib import Path
import sqlite3

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('detector_audit',ROOT/'Row2925Detector/source_independent_audit.py')
a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
source=json.loads((HERE/'source.json').read_text())
comparisons=json.loads((HERE/'comparison-source.json').read_text())
db={n:sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/{n}_AdamsSS_t{261 if n=="S0" else 200}.db?mode=ro',uri=True) for n in ['S0','C2h5']}
assert source['raw_row']==list(db['S0'].execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2684').fetchone())==[2684,12,134,'0',None,9000]
assert source['map']=='S0__C2h5' and source['factor']==dict(id=0,mon='0',degree=[0,0])
config=json.loads((ROOT/'upstream/category-inventory.json').read_text())
configured=next(x for x in config['records'] if x['section']=='maps_v2' and x['source']['name']=='S0__C2h5')
assert configured['source']==dict(factor=[0,0,0],**{'from':'S0','to':'C2h5','name':'S0__C2h5'})
meta={n:dict(c.execute('SELECT name,value FROM version')) for n,c in db.items()}
assert source['source_metadata']==meta['S0'] and source['target_metadata']==meta['C2h5']
rg={i:(s,t) for i,s,t in db['S0'].execute('SELECT id,s,t FROM S0_AdamsE2_generators')}
mg={i:(s,t) for i,s,t in db['C2h5'].execute('SELECT id,s,t FROM C2h5_AdamsE2_generators')}
matrices={};steps=lifts=0
for record in source['matrices']:
    s,t=record['source_degree'];wire=record['wire'];w=wire['algebra']
    assert record['target_degree']==[s,t]
    assert json.loads((HERE/f'wire/s{s}t{t}.json').read_text())==wire
    assert wire['filtration']==wire['suspension']==0 and [wire['sourceS'],wire['sourceT'],wire['targetS'],wire['targetT']]==[s,t,s,t]
    assert [w['sourceS'],w['sourceT'],w['targetS'],w['targetT']]==[0,0,0,0]
    assert t<=meta['S0']['t_max'] and t<=meta['C2h5']['t_max']
    sr=[list(x) for x in db['S0'].execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))]
    tr=[list(x) for x in db['C2h5'].execute('SELECT id,mon FROM C2h5_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))]
    assert sr==record['source'] and tr==record['target'] and len(sr)==w['cols'] and len(tr)==w['rows']
    assert [a.expr(x) for x in w['source']]==[{(a.coeff(raw),0)} for _,raw in sr]
    assert [a.expr(x) for x in w['target']]==[{a.mon(raw)} for _,raw in tr]
    assert [a.expr(x) for x in w['images']]==[{((),0)}]
    assert all(a.degree((a.coeff(raw),0),rg,mg)==(s,t) for _,raw in sr)
    assert all(a.degree(a.mon(raw),rg,mg)==(s,t) for _,raw in tr)
    relations=[]
    for encoded,origin in zip(w['relations'],record['relation_sources'],strict=True):
        n='C2h5' if origin['kind']=='module' else 'S0'
        raw,rs,rt=db[n].execute(f'SELECT rel,s,t FROM {origin["table"]} WHERE rowid=?',(origin['rowid'],)).fetchone()
        assert origin['raw']==raw
        if origin['kind']=='module':
            assert origin['degree']==[rs,rt]
            rel=a.parity(a.mon(x) for x in raw.split(';'))
        else:
            assert origin['kind']=='ring_lift';g=origin['module_generator']
            assert origin['degree']==[rs+mg[g][0],rt+mg[g][1]]
            rel=a.parity((a.coeff(x),g) for x in raw.split(';'));lifts+=1
        assert a.expr(encoded)==rel and all(a.degree(m,rg,mg)==tuple(origin['degree']) for m in rel)
        relations.append(rel)
    for j,((_,raw),trace) in enumerate(zip(sr,w['terms'],strict=True)):
        current={(a.coeff(raw),0)}
        for term in trace:
            assert 0<=term['relation']<len(relations)
            added=a.product(relations[term['relation']],[tuple(x) for x in term['multiplier']])
            assert all(a.degree(m,rg,mg)==(s,t) for m in added)
            current.symmetric_difference_update(added);steps+=1
        assert current=={a.mon(raw) for i,(_,raw) in enumerate(tr) if w['entries'][i*w['cols']+j]}
    matrices[s,t]=w
assert len(matrices)==6 and sum(w['cols'] for w in matrices.values())==15
blocks={}
for record in comparisons:
    name=record['object'];s,t=record['degree'];w=record['wire']
    assert t<=meta[name]['d2_t_max'] and t+1<=meta[name]['t_max']
    groups=[[dict(id=i,mon=m,d2=d2) for i,m,d2 in db[name].execute(f'SELECT id,mon,d2 FROM {name}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',degree)] for degree in [(s-2,t-1),(s,t),(s+2,t+1)]]
    assert groups==record['rows'] and [len(g) for g in groups]==[w['n'],w['m'],w['k']]
    for field,rows,dim in [('outgoing',groups[1],w['k']),('incoming',groups[0],w['m'])]:
        cs=[]
        for row in rows:
            assert row['d2'] is not None
            ids=list(map(int,row['d2'].split(','))) if row['d2'] else []
            assert ids==sorted(set(ids)) and all(0<=i<dim for i in ids);cs.append(ids)
        assert w[field]==[i in col for i in range(dim) for col in cs]
    a.wire_laws(w);blocks[record['tag']]=w
maps={}
for tag,s,t,L,R in [('source',12,134,'source','target'),('target',15,136,'upperSource','upperTarget')]:
    l,r=blocks[L],blocks[R];f,u,b=[matrices[d]['entries'] for d in [(s,t),(s+2,t+1),(s-2,t-1)]]
    assert a.matmul(r['outgoing'],f,r['k'],r['m'],l['m'])==a.matmul(u,l['outgoing'],r['k'],l['k'],l['m'])
    assert a.matmul(f,l['incoming'],r['m'],l['m'],l['n'])==a.matmul(r['incoming'],b,r['m'],r['n'],l['n'])
    maps[tag]=a.matmul(r['projection'],a.matmul(f,l['inclusion'],r['m'],l['m'],l['h']),r['h'],r['m'],l['h'])
assert maps['target']==[0,0,1,0,0,1]
assert a.rank(a.columns(maps['target'],3,2))==2
assert a.matmul(matrices[12,134]['entries'],[1,0,0],2,3,1)==[0,0]
assert a.matmul(blocks['source']['projection'],[1,0,0],2,3,1)==[1,0]
candidate=next(x for x in json.loads((HERE/'lifted-search.json').read_text())['maps'] if x['map']['name']=='S0__C2h5')
assert candidate['source']['quotient']==[0]
for label,v in [('target',[1,0]),('target1',[0,1]),('targetsum',[1,1])]:
    assert candidate[label]['quotient']==a.matmul(maps['target'],v,3,2,1)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
out=dict(status='complete_raw_c2h5_detector_audit_passed',matrices=6,columns=15,reductions=steps,
    lifted_relations=lifts,full_comparisons=4,full_compatible_maps=2,coordinate_maps=maps,
    source_dimension=2,source_named_coordinates=[1,0],source_basis_id=2682,staircase_row=2684,
    target_dimension=2,detector_target_dimension=3,target_injective=True,
    raw_unknown_retained=source['raw_row'],input_sha256={str(p.relative_to(ROOT)):sha(p) for p in
        [Path(__file__),HERE/'source.json',HERE/'comparison-source.json',ROOT/'upstream/category-inventory.json']},
    scope='Finite polynomial maps and complete quotient maps. Their actual meanings and d3 naturality remain explicit theorem premises.')
(HERE/'detector-audit.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
