"""Independently replay full complexes and enumerate all local linear maps."""
import hashlib
import importlib.util
import itertools
import json
import sqlite3
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('audit',ROOT/'Row3147MapSearch/review.py')
audit=importlib.util.module_from_spec(spec)
spec.loader.exec_module(audit)
data=json.loads((HERE/'candidates.json').read_text())
sql=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
meta=dict(sql.execute('SELECT name,value FROM version'))
for label,block in data['comparisons'].items():
    s,t=map(int,label.split(','));w=block['wire']
    assert t<=meta['d2_t_max'] and t+1<=meta['t_max']
    rows=[[dict(id=i,mon=mon,d2=d2) for i,mon,d2 in sql.execute(
        'SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',st)]
        for st in [(s-2,t-1),(s,t),(s+2,t+1)]]
    assert rows==block['rows']
    assert list(map(len,rows))==[w['n'],w['m'],w['k']]
    for field,group,dim in [('incoming',rows[0],w['m']),('outgoing',rows[1],w['k'])]:
        columns=[]
        for row in group:
            assert row['d2'] is not None
            indices=[] if row['d2']=='' else list(map(int,row['d2'].split(',')))
            assert indices==sorted(set(indices)) and all(0<=i<dim for i in indices)
            columns.append(indices)
        assert w[field]==[i in col for i in range(dim) for col in columns]
    raw=[list(row) for row in sql.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t))]
    assert raw==data['raw'][label]
    audit.check_wire(w)
ev=lambda a,m,n,v:audit.matmul(a,list(v),m,n,1)
W=data['comparisons']['26,144']['wire']
assert ev(W['projection'],1,2,[0,1])==[1]
assert [3306,'1','1',9997] in data['raw']['23,142']
sourceW=data['comparisons']['20,140']['wire']
assert ev(sourceW['projection'],2,3,[0,1,0])==[0,1]
assert ev(sourceW['projection'],2,3,[1,0,0])==[1,0]
params=[]
for u,a,b in itertools.product([0,1],repeat=3):
    matrix=[a,0,b,0]
    valid=all(ev([u,1],1,2,ev(matrix,2,2,x))==[0] for x in itertools.product([0,1],repeat=2))
    assert valid==(b==u*a)
    if valid:params.append((u,a,b))
assert params==[(0,0,0),(0,1,0),(1,0,0),(1,1,1)]
assert {(c['u'],c['a'],c['b']) for c in data['candidates']}==set(params)
for case in data['candidates']:
    S,T=case['source_d3_wire'],case['target_d3_wire']
    audit.check_wire(S);audit.check_wire(T)
    assert S['outgoing']==T['incoming']==case['source_d3']
    assert T['outgoing']==case['target_d3']==[case['u'],1]
    assert S['incoming']==case['source_incoming']
    assert S['incoming']==([0,0] if case['prior_row2994_branch']=='zero' else [0,1])
    assert S['h']==(2-case['a']-int(case['prior_row2994_branch']=='residual_rebased'))
    assert T['h']==1-case['a']
    for source in itertools.product([0,1],repeat=2):
        assert ev(T['outgoing'],1,2,ev(S['outgoing'],2,2,source))==[0]
models=0
for labels,nextlabels,u,a in itertools.product(itertools.permutations(range(4)),
        itertools.permutations(range(2)),[0,1],[0,1]):
    target_map={labels[x+2*y]:nextlabels[(u*x)^y] for x,y in itertools.product([0,1],repeat=2)}
    candidate=labels[a+2*(u*a)]
    assert target_map[candidate]==nextlabels[0]
    for proposed in labels:
        in_kernel=target_map[proposed]==nextlabels[0]
        assert in_kernel==(proposed in [labels[0],labels[1+2*u]])
    models+=1
result=dict(status='all_full_local_candidates_and_SQL_quotients_checked',complete_d2_quotients=4,
    complete_local_d3_quotients=16,parameter_triples=params,prior_incoming_branches=2,
    relabeled_actual_target_models=models,raw_row3136_unknown_preserved=True,
    raw_row3305_unknown_preserved=True,diagonal_nonzero_case_retained=True,
    sha256={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in [Path(__file__),HERE/'candidates.json']})
(HERE/'audit.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
