"""Independent exact SQL/reduction/full chain-map audit for the CW_nu_eta_2 detector."""
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
db={n:sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/{n}_AdamsSS_t{261 if n=="S0" else 200}.db?mode=ro',uri=True) for n in ['S0','CW_nu_eta_2']}
assert source['raw_row']==list(db['S0'].execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2994').fetchone())==[2994,17,138,'0,1,2',None,9000]
assert source['map']=='S0__CW_nu_eta_2' and source['factor']==dict(id=0,mon='0',degree=[0,0])
config=json.loads((ROOT/'upstream/category-inventory.json').read_text())
configured=next(x for x in config['records'] if x['section']=='maps_v2' and x['source']['name']=='S0__CW_nu_eta_2')
assert configured['source']==dict(factor=[0,0,0],**{'from':'S0','to':'CW_nu_eta_2','name':'S0__CW_nu_eta_2'})
meta={n:dict(c.execute('SELECT name,value FROM version')) for n,c in db.items()}
assert source['source_metadata']==meta['S0'] and source['target_metadata']==meta['CW_nu_eta_2']
rg={i:(s,t) for i,s,t in db['S0'].execute('SELECT id,s,t FROM S0_AdamsE2_generators')}
mg={i:(s,t) for i,s,t in db['CW_nu_eta_2'].execute('SELECT id,s,t FROM CW_nu_eta_2_AdamsE2_generators')}
matrices={};steps=lifts=0
for record in source['matrices']:
    s,t=record['source_degree'];wire=record['wire'];w=wire['algebra']
    assert record['target_degree']==[s,t]
    assert json.loads((HERE/f'wire/s{s}t{t}.json').read_text())==wire
    assert wire['filtration']==wire['suspension']==0 and [wire['sourceS'],wire['sourceT'],wire['targetS'],wire['targetT']]==[s,t,s,t]
    assert [w['sourceS'],w['sourceT'],w['targetS'],w['targetT']]==[0,0,0,0]
    assert t<=meta['S0']['t_max'] and t<=meta['CW_nu_eta_2']['t_max']
    sr=[list(x) for x in db['S0'].execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))]
    tr=[list(x) for x in db['CW_nu_eta_2'].execute('SELECT id,mon FROM CW_nu_eta_2_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))]
    assert sr==record['source'] and tr==record['target'] and len(sr)==w['cols'] and len(tr)==w['rows']
    assert [a.expr(x) for x in w['source']]==[{(a.coeff(raw),0)} for _,raw in sr]
    assert [a.expr(x) for x in w['target']]==[{a.mon(raw)} for _,raw in tr]
    assert [a.expr(x) for x in w['images']]==[{((),0)}]
    assert all(a.degree((a.coeff(raw),0),rg,mg)==(s,t) for _,raw in sr)
    assert all(a.degree(a.mon(raw),rg,mg)==(s,t) for _,raw in tr)
    relations=[]
    for encoded,origin in zip(w['relations'],record['relation_sources'],strict=True):
        n='CW_nu_eta_2' if origin['kind']=='module' else 'S0'
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
assert len(matrices)==6 and sum(w['cols'] for w in matrices.values())==18
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
for tag,s,t,L,R in [('source',17,138,'source','target'),('target',20,140,'upperSource','upperTarget')]:
    l,r=blocks[L],blocks[R];f,u,b=[matrices[d]['entries'] for d in [(s,t),(s+2,t+1),(s-2,t-1)]]
    assert a.matmul(r['outgoing'],f,r['k'],r['m'],l['m'])==a.matmul(u,l['outgoing'],r['k'],l['k'],l['m'])
    assert a.matmul(f,l['incoming'],r['m'],l['m'],l['n'])==a.matmul(r['incoming'],b,r['m'],r['n'],l['n'])
    maps[tag]=a.matmul(r['projection'],a.matmul(f,l['inclusion'],r['m'],l['m'],l['h']),r['h'],r['m'],l['h'])
assert maps['source']==[0] and maps['target']==[0,0,1,0]
assert a.matmul(matrices[17,138]['entries'],[1,1,1,0],4,4,1)==[1,1,1,0]
assert a.matmul(blocks['target']['incoming'],[1,0,0,0],4,4,1)==[1,1,1,0]
assert a.matmul(blocks['source']['projection'],[1,1,1,0],1,4,1)==[1]
vecs=list(itertools.product([0,1],repeat=2))
ev=lambda v:tuple(a.matmul(maps['target'],list(v),2,2,1))
kernel=[list(v) for v in vecs if ev(v)==(0,0)]
assert kernel==[[0,0],[0,1]]
for v,w in itertools.product(vecs,repeat=2):
    assert (ev(v)==ev(w))==(v==w or v==(w[0],w[1]^1))
entries=json.loads((ROOT/'Fact713ComparisonBatches/Batch07.json').read_text())['entries']
changes={}
for name,index,tag in [('source',11,'source'),('target',25,'upperSource')]:
    left,right=blocks[tag],entries[index]['wire']
    assert all(left[k]==right[k] for k in ['k','m','n','h','incoming','outgoing'])
    change=a.matmul(right['projection'],left['inclusion'],right['h'],right['m'],left['h'])
    inverse=a.matmul(left['projection'],right['inclusion'],left['h'],left['m'],right['h'])
    for v in itertools.product([0,1],repeat=left['h']):
        assert a.matmul(inverse,a.matmul(change,list(v),right['h'],left['h'],1),left['h'],right['h'],1)==list(v)
    changes[name]=change
assert changes=={'source':[1],'target':[0,1,1,0]}
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
out=dict(status='complete_raw_row2994_constraint_audit_passed',matrices=6,columns=18,reductions=steps,
    lifted_relations=lifts,full_comparisons=4,full_compatible_maps=2,coordinate_maps=maps,
    source_dimension=1,source_named_coordinates=[1],staircase_row=2994,
    target_dimension=2,detector_target_dimension=2,target_kernel=kernel,
    affine_pairs_checked=16,coordinate_changes=changes,staircase_residual=[1,0],
    raw_unknown_retained=source['raw_row'],input_sha256={str(p.relative_to(ROOT)):sha(p) for p in
        [Path(__file__),HERE/'source.json',HERE/'comparison-source.json',ROOT/'upstream/category-inventory.json']},
    scope='Finite two-candidate restriction only. No d3-zero claim. Lean sources are prepared, not compiled during root audit.')
(HERE/'detector-audit.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps({k:v for k,v in out.items() if k!='input_sha256'},indent=2))
