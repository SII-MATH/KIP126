"""Independent SQL, polynomial reduction and full bilinear quotient replay."""
import hashlib
import importlib.util
import itertools
import json
import sqlite3
from pathlib import Path

p=Path(__file__).resolve().parent
r=p.parent
spec=importlib.util.spec_from_file_location('oracle',r/'Row2925Detector/source_independent_audit.py')
a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
db=r/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
sha=lambda f:hashlib.sha256(f.read_bytes()).hexdigest()
raw={rid:list(c.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?',(rid,)).fetchone()) for rid in [3,3395,3564]}
assert raw[3395]==[3395,17,143,'0',None,9992]
assert raw[3564]==[3564,18,145,'1',None,9000]
assert raw[3]==[3,1,2,'0',None,9000]
provenance={}
columns=steps=0
for tag,fid,fs,ft,factor in [('h1',3,1,2,(1,)),('h04',5,4,4,(0,0,0,0))]:
    fr=c.execute('SELECT mon,s,t FROM S0_AdamsE2_basis WHERE id=?',(fid,)).fetchone()
    assert a.coeff(fr[0])==factor and list(fr[1:])==[fs,ft]
    pro=json.loads((p/f'products-{tag}-provenance.json').read_text())
    provenance[tag]=pro
    seen={}
    for row in pro:
        s,t=row['source_degree'];seen.setdefault((s,t),[]).append(row['source_local'])
        sr=c.execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
        tr=c.execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s+fs,t+ft)).fetchall()
        assert sr[row['source_local']][0]==row['source_id'] and row['factor_id']==fid
        assert row['target_degree']==[s+fs,t+ft] and row['target_basis_ids']==[i for i,_ in tr]
        wire=json.loads((p/f'products_{tag}/basis{row["source_id"]}.json').read_text())
        cur={tuple(sorted(factor+a.coeff(sr[row['source_local']][1])))}
        assert cur=={tuple(x) for x in wire['input']}
        rels=[]
        for rid,encoded in zip(row['relation_rowids'],wire['relations'],strict=True):
            sql=c.execute('SELECT rel FROM S0_AdamsE2_relations WHERE rowid=?',(rid,)).fetchone()[0]
            terms=[a.coeff(x) for x in sql.split(';')]
            assert encoded==[list(x) for x in terms];rels.append(terms)
        for step in wire['terms']:
            cur.symmetric_difference_update(a.parity(tuple(sorted(co+tuple(q))) for co in rels[step['relation']] for q in step['multiplier']))
            steps+=1
        assert cur=={tuple(x) for x in wire['output']}=={a.coeff(tr[i][1]) for i in row['target_coordinates']}
        columns+=1
    for (s,t),ids in seen.items():
        assert ids==list(range(c.execute('SELECT COUNT(*) FROM S0_AdamsE2_basis WHERE s=? AND t=?',(s,t)).fetchone()[0]))
assert columns==11 and steps==11
meta=dict(c.execute('SELECT name,value FROM version'))
comparisons={}
for b in json.loads((p/'comparisons.json').read_text()):
    s,t=b['degree'];assert t<=meta['d2_t_max'] and t+1<=meta['t_max']
    groups=[[dict(id=i,mon=mon,d2=d2) for i,mon,d2 in c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',deg)] for deg in [(s-2,t-1),(s,t),(s+2,t+1)]]
    assert b['rows']==groups;w=b['wire'];a.wire_laws(w)
    assert list(map(len,groups))==[w['n'],w['m'],w['k']]
    for field,rs,dim in [('incoming',groups[0],w['m']),('outgoing',groups[1],w['k'])]:
        cols=[]
        for row in rs:
            assert row['d2'] is not None
            ids=[] if row['d2']=='' else list(map(int,row['d2'].split(',')))
            assert ids==sorted(set(ids)) and all(0<=i<dim for i in ids);cols.append(ids)
        assert w[field]==[i in col for i in range(dim) for col in cols]
    comparisons[b['tag']]=w
def product(w,x,y):
    A,B,C=w['left']['m'],w['right']['m'],w['target']['m']
    return [sum(w['tensor'][(k*A+i)*B+j]*x[i]*y[j] for i in range(A) for j in range(B))%2 for k in range(C)]
products={}
for name,tag,deg,L,B,T in [('namedProduct','h1',[17,143],'h1','x','named'),('leftTerm','h04',[17,143],'dh1','x','target'),('rightTerm','h1',[20,145],'h1','dx','target')]:
    w=json.loads((p/f'{name}.json').read_text());products[name]=w
    assert [w[k] for k in ['left','right','target']]==[comparisons[k] for k in [L,B,T]]
    cols=[x for x in provenance[tag] if x['source_degree']==deg]
    assert w['tensor']==[i in col['target_coordinates'] for i in range(w['target']['m']) for col in cols]
    l,b,t=(w[k] for k in ['left','right','target'])
    for x in itertools.product([0,1],repeat=l['m']):
        if any(a.matmul(l['outgoing'],x,l['k'],l['m'],1)):continue
        for y in itertools.product([0,1],repeat=b['m']):
            if any(a.matmul(b['outgoing'],y,b['k'],b['m'],1)):continue
            value=product(w,x,y)
            assert not any(a.matmul(t['outgoing'],value,t['k'],t['m'],1))
            if a.in_image(l['incoming'],l['m'],l['n'],x) or a.in_image(b['incoming'],b['m'],b['n'],y):
                assert a.in_image(t['incoming'],t['m'],t['n'],value)
assert product(products['namedProduct'],[1],[1,0,0,0])==[0,1,0,0,0]
assert all(product(products['leftTerm'],[v],[1,0,0,0])==[0,0,0] for v in [0,1])
assert product(products['rightTerm'],[1],[0,0,0])==[0,0,0]
assert c.execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=18 AND t=145 ORDER BY id').fetchall()[1]==(3562,'1,1,493,1')
files=sorted(p.glob('*.lean'))+sorted(p.glob('*.py'))+sorted(f for f in p.glob('*.json') if f.name not in ['review.json','compile-audit.json'])+sorted(p.glob('products_*/*.json'))+[db]
report=dict(status='independent_SQL_polynomial_and_full_bilinear_replay_passed',raw_rows=raw,
    polynomial_columns=columns,polynomial_steps=steps,full_d2_comparisons=6,full_bilinear_products=3,
    x493_prefix='row3395 level9992 is retained as an explicit supplied d3-prefix semantic premise; no NULL-derived zero theorem',
    h1_differential='arbitrary element of the whole E3(4,4), annihilated by actual h0^4*x493 product',
    no_later_event_used=True,limitations=['Imported polynomial relations and d2 values require mathematical realization.','The x493 d3-prefix and full Leibniz law are explicit hypotheses.'],
    inputs_sha256={str(f.relative_to(r)):sha(f) for f in files})
(p/'review.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print('11 actual polynomial columns/11 reductions;6 full d2 quotients;3 full product tensors; arbitrary dh1 term vanishes')
