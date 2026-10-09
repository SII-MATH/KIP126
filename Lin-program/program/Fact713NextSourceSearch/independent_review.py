"""Independent detector, raw relations, quotient coordinates and overlay audit."""
import hashlib
import itertools
import json
import re
import sqlite3
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
load=lambda p:json.loads(p.read_text())
source=load(HERE/'source.json')
db={name:sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/{name}_AdamsSS_t{261 if name=="S0" else 200}.db?mode=ro',uri=True) for name in ['S0','C2h5']}
raw_row=list(db['S0'].execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2684').fetchone())
assert raw_row==source['raw_row']==[2684,12,134,'0',None,9000]

def coeff(raw):
    a=list(map(int,raw.split(','))) if raw else []
    return tuple(sorted(x for x,n in zip(a[::2],a[1::2]) for _ in range(n)))
def module_mon(raw):
    a=raw.split(',');return coeff(','.join(a[:-1])),int(a[-1])
def expression(encoded):
    result=set()
    for gen,poly in enumerate(encoded):
        for mon in poly:result.symmetric_difference_update([(tuple(mon),gen)])
    return result
def multiply(poly,rel):
    result=set()
    for mon in poly:
        for coeffs,gen in rel:result.symmetric_difference_update([(tuple(sorted(tuple(mon)+coeffs)),gen)])
    return result
def matrix(bits,m,n):
    assert len(bits)==m*n
    return [sum(int(bits[r*n+c])<<r for r in range(m)) for c in range(n)]
def ev(cols,x):
    result=0
    for j,col in enumerate(cols):
        if x&(1<<j):result^=col
    return result
def decode(w):return {key:matrix(w[key],*dim) for key,dim in dict(outgoing=(w['k'],w['m']),incoming=(w['m'],w['n']),projection=(w['h'],w['m']),inclusion=(w['m'],w['h'])).items()}

config=load(ROOT/'upstream/category-inventory.json')
configured=next(x['source'] for x in config['records'] if x['section']=='maps_v2' and x['source']['name']=='S0__C2h5')
assert configured==dict(name='S0__C2h5',factor=[0,0,0],**{'from':'S0','to':'C2h5'})
maps={};column_count=reduction_count=0
for item in source['matrices']:
    s,t=item['source_degree'];w=item['wire'];a=w['algebra']
    assert [s,t]==item['target_degree'] and w['filtration']==w['suspension']==0
    assert load(HERE/f'wire/s{s}t{t}.json')==w
    sr=[list(r) for r in db['S0'].execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))]
    tr=[list(r) for r in db['C2h5'].execute('SELECT id,mon FROM C2h5_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))]
    assert sr==item['source'] and tr==item['target']
    assert [expression(x) for x in a['source']]==[{(coeff(raw),0)} for _,raw in sr]
    assert [expression(x) for x in a['target']]==[{module_mon(raw)} for _,raw in tr]
    assert [expression(x) for x in a['images']]==[{((),0)}]
    relations=[]
    for encoded,origin in zip(a['relations'],item['relation_sources'],strict=True):
        assert origin['kind']=='module'
        row=db['C2h5'].execute('SELECT rel,s,t FROM C2h5_AdamsE2_relations WHERE rowid=?',(origin['rowid'],)).fetchone()
        assert list(row)==[origin['raw'],*origin['degree']]
        actual={module_mon(raw) for raw in row[0].split(';')}
        assert actual==expression(encoded);relations.append(actual)
    for j,(_,raw) in enumerate(sr):
        result={(coeff(raw),0)}
        for term in a['terms'][j]:
            result.symmetric_difference_update(multiply(term['multiplier'],relations[term['relation']]))
            reduction_count+=1
        assert result=={module_mon(raw) for i,(_,raw) in enumerate(tr) if a['entries'][i*a['cols']+j]}
        column_count+=1
    maps[s,t]=matrix(a['entries'],a['rows'],a['cols'])
assert len(maps)==6 and column_count==15 and reduction_count==6

blocks={};quotient_pairs=0
def check_wire(w):
    global quotient_pairs
    a=decode(w);cycles=[x for x in range(1<<w['m']) if ev(a['outgoing'],x)==0]
    images={ev(a['incoming'],x) for x in range(1<<w['n'])}
    assert all(ev(a['outgoing'],x)==0 for x in images)
    for z in range(1<<w['h']):assert ev(a['outgoing'],ev(a['inclusion'],z))==0 and ev(a['projection'],ev(a['inclusion'],z))==z
    for x in cycles:
        assert x^ev(a['inclusion'],ev(a['projection'],x)) in images
        for y in cycles:
            assert (ev(a['projection'],x)==ev(a['projection'],y))==(x^y in images);quotient_pairs+=1
    return a
for item in load(HERE/'comparison-source.json'):
    name=item['object'];s,t=item['degree'];w=item['wire']
    groups=[[dict(id=i,mon=mon,d2=d2) for i,mon,d2 in db[name].execute(f'SELECT id,mon,d2 FROM {name}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',degree)] for degree in [(s-2,t-1),(s,t),(s+2,t+1)]]
    assert groups==item['rows'] and list(map(len,groups))==[w['n'],w['m'],w['k']]
    for field,rows,dim in [('incoming',groups[0],w['m']),('outgoing',groups[1],w['k'])]:
        supports=[]
        for row in rows:
            assert row['d2'] is not None
            ids=list(map(int,row['d2'].split(','))) if row['d2'] else []
            assert ids==sorted(set(ids)) and all(0<=i<dim for i in ids);supports.append(ids)
        assert w[field]==[i in c for i in range(dim) for c in supports]
    blocks[item['tag']]=(w,check_wire(w))
chain_evaluations=0;induced={}
for s,t,left,right in [(12,134,'source','target'),(15,136,'upperSource','upperTarget')]:
    wl,l=blocks[left];wr,r=blocks[right];mid,up,down=maps[s,t],maps[s+2,t+1],maps[s-2,t-1]
    for x in range(1<<wl['m']):assert ev(r['outgoing'],ev(mid,x))==ev(up,ev(l['outgoing'],x));chain_evaluations+=1
    for x in range(1<<wl['n']):assert ev(mid,ev(l['incoming'],x))==ev(r['incoming'],ev(down,x));chain_evaluations+=1
    induced[left]=[ev(r['projection'],ev(mid,ev(l['inclusion'],1<<j))) for j in range(wl['h'])]
assert induced['source']==[0,0] and induced['upperSource']==[2,4]
assert len({ev(induced['upperSource'],x) for x in range(4)})==4
assert ev(maps[12,134],1)==0
factors=[list(db['S0'].execute('SELECT id,mon,s,t,d2 FROM S0_AdamsE2_basis WHERE mon=?', (mon,)).fetchone()) for mon in ['18,1','188,1']]
assert all(row[-1]=='0' for row in factors)

old=load(ROOT/'Fact713Row2773Refinement/refined.json');new=load(HERE/'refined.json')
before=old['comparisons']|old['successor_closure'];after=new['comparisons']|new['successor_closure']
assert len(before)==1249 and len(after)==1257 and all(after[k]==v for k,v in before.items())
added=sorted(set(after)-set(before));assert len(added)==8
for key in added:
    obj,st,page=key.split(':');s,t=st.split(',')
    assert load(HERE/f'wires/b_{obj}_{s}_{t}_{page}.json')==after[key]['wire']
    check_wire(after[key]['wire'])
adjacent=consecutive=0
for entry in after.values():
    obj,s,t,r=entry['object'],*entry['center'],entry['page'];a=entry['wire']
    target=after.get(f'{obj}:{s+r},{t+r-1}:d{r}')
    if target:
        b=target['wire'];assert (a['k'],a['m'],a['outgoing'])==(b['m'],b['n'],b['incoming']);adjacent+=1
    nxt=after.get(f'{obj}:{s},{t}:d{r+1}')
    if nxt:assert a['h']==nxt['wire']['m'];consecutive+=1
trajectory=[];v=3
for r in range(2,7):
    w=after[f'S0:9,132:d{r}']['wire'];a=decode(w)
    assert ev(a['outgoing'],v)==0 and v not in {ev(a['incoming'],x) for x in range(1<<w['n'])}
    u=ev(a['projection'],v);trajectory.append([r,v,u]);v=u
assert v==1
old_source=decode(after['S0:12,134:d2']['wire']);detector_source=blocks['source'][1]
assert ev(old_source['projection'],1)==2 and ev(detector_source['projection'],1)==1
assert [ev(old_source['projection'],ev(detector_source['inclusion'],1<<j)) for j in range(2)]==[2,1]

modules=['Maps','Comparison','Naturality','MapSemantics','Actual','Overlay'];compiled={};reports=0
for name in modules:
    record=load(HERE/f'{name}-compile.json');log=HERE/f'{name}.log';src=HERE/f'{name}.lean'
    assert record['observed_exit_code']==0 and record['source_sha256']==sha(src) and record['log_sha256']==sha(log)
    assert 'sorryAx' not in log.read_text()
    reports+=sum(line.startswith("'Fact713NextSourceSearch.") for line in log.read_text().splitlines())
    compiled[name]=record
result=dict(status='no_correctness_findings',modules=modules,compiled=compiled,axiom_reports=reports,
    raw_row=raw_row,raw_factors_with_nonzero_d2=factors,maps=6,columns=column_count,reductions=reduction_count,
    full_comparisons=4,full_chainmap_evaluations=chain_evaluations,quotient_pair_checks=quotient_pairs,
    induced_source_columns=induced['source'],induced_target_columns=induced['upperSource'],
    target_zero_kernel_verified=True,detector_to_overlay_coordinate_columns=[2,1],
    old_preserved=1249,overlay_added=8,union=1257,graph_available=1254,graph_unresolved=166,
    adjacent_equalities=adjacent,consecutive_dimensions=consecutive,finite_E7_trajectory=trajectory,
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in [HERE/'source.json',HERE/'comparison-source.json',HERE/'refined.json',ROOT/'Fact713Row2773Refinement/refined.json']},
    scope='Actual quotient meanings and actual d3 naturality remain premises; overlay finite E7 is not an actual sphere survival theorem.')
(HERE/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k not in ['compiled','input_sha256']},indent=2))
