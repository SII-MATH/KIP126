"""Independent earlier-target algebra and exact source-chart audit."""
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
data=json.loads((HERE/'source.json').read_text());db=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
assert sha(db)==data['database_sha256'];c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
def vectors(n):return itertools.product((0,1),repeat=n)
def ev(a,m,n,v):
    assert len(a)==m*n and len(v)==n
    return tuple(sum(a[i*n+j]*v[j] for j in range(n))%2 for i in range(m))
def mm(a,m,k,b,n):return [sum(a[i*k+l]*b[l*n+j] for l in range(k))%2 for i in range(m) for j in range(n)]
def xor(x,y):return tuple(a^b for a,b in zip(x,y))
def ident(n):return [int(i==j) for i in range(n) for j in range(n)]
def bits(raw,n):
    assert raw is not None
    ids=list(map(int,raw.split(','))) if raw else []
    return tuple(int(i in ids) for i in range(n))
counts=dict(comparisons=0,cycle_vectors=0,quotient_pairs=0,d2_columns=0,d3_columns=0,
            main_trace_steps=0,exact_source_comparisons=0,empty_incoming_degrees=0)
for name,b in data['blocks'].items():
    w=b['wire'];assert json.loads((HERE/'wire'/f'{name}.json').read_text())==w
    s,t=b['degree'];k,m,n,h=(w[f] for f in ['k','m','n','h'])
    if 'rows' in b:
        for degree,rows in zip([(s-2,t-1),(s,t),(s+2,t+1)],b['rows']):
            actual=c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',degree).fetchall()
            assert actual==[(r['id'],r['mon'],r['d2']) for r in rows]
        assert [list(r) for r in c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',(s,t))]==b['staircase']
        for rows,entries,dim in [(b['rows'][0],w['incoming'],m),(b['rows'][1],w['outgoing'],k)]:
            for j,row in enumerate(rows):
                assert ev(entries,dim,len(rows),tuple(int(i==j) for i in range(len(rows))))==bits(row['d2'],dim)
                counts['d2_columns']+=1
    o,i,u,p,up,dn=(w[x] for x in ['outgoing','incoming','inclusion','projection','up','down'])
    assert not any(mm(o,k,m,i,n)) and not any(mm(o,k,m,u,h)) and not any(mm(p,h,m,i,n))
    assert mm(p,h,m,u,h)==ident(h)
    assert xor(xor(mm(u,m,h,p,m),mm(i,m,n,up,m)),mm(dn,m,k,o,m))==tuple(ident(m))
    boundaries={ev(i,m,n,x) for x in vectors(n)}
    cycles=[x for x in vectors(m) if not any(ev(o,k,m,x))]
    for x in cycles:
        for y in cycles:
            assert (ev(p,h,m,x)==ev(p,h,m,y))==(xor(x,y) in boundaries)
            counts['quotient_pairs']+=1
    counts['comparisons']+=1;counts['cycle_vectors']+=len(cycles)
for side,source,target,entries in [('outgoing','d6target2','d6outgoing2','outgoing'),
                                   ('incoming','d6incoming2','d6target2','incoming')]:
    sw,tw=(data['blocks'][name]['wire'] for name in [source,target])
    d3=data['blocks']['d6target3'];records=d3[side+'_provenance']
    for row,x,y in zip(records['rows'],records['source_coordinates'],records['target_coordinates']):
        rid,base,diff,level=row
        assert x==list(ev(sw['projection'],sw['h'],sw['m'],bits(base,sw['m'])))
        raw=bits(diff,tw['m']) if level==9997 else (0,)*tw['m']
        assert level==9997 or level==3
        assert y==list(ev(tw['projection'],tw['h'],tw['m'],raw))
        assert tuple(y)==ev(d3['wire'][entries],tw['h'],sw['h'],x)
        counts['d3_columns']+=1
assert data['blocks']['d6target3']['wire']['h']==0
assert data['blocks']['d7target2']['wire']['h']==0
for degree,rows in data['empty_incoming_E2'].items():
    s,t=map(int,degree.strip('()').split(','));assert rows==[]
    assert c.execute('select count(*) from S0_AdamsE2_basis where s=? and t=?',(s,t)).fetchone()==(0,)
    counts['empty_incoming_degrees']+=1
# The old and new source comparisons are exactly equal, not equal only in dimension.
source=[json.loads((ROOT/'Row2684D5Search/wire'/f'source{r}.json').read_text()) for r in [2,3,4]]
old2=json.loads((ROOT/'Fact713ComparisonBatches/batch06.json').read_text()) if (ROOT/'Fact713ComparisonBatches/batch06.json').exists() else None
# Lean checks exact equality to Second.wire2/3/4. Here replay source trajectory
# and comparison linkage to the continuation's strict wire.
v=(1,0,0)
for w in source:
    assert not any(ev(w['outgoing'],w['k'],w['m'],v))
    assert v not in {ev(w['incoming'],w['m'],w['n'],x) for x in vectors(w['n'])}
    v=ev(w['projection'],w['h'],w['m'],v)
    counts['main_trace_steps']+=1;counts['exact_source_comparisons']+=1
assert v==(1,)
w=json.loads((ROOT/'Fact713SquareContinuation/wire/b_S0_12_134_d5.json').read_text())
assert w['m']==1 and w['h']==1 and w['n']==0 and w['outgoing']==[False]
assert ev(w['projection'],1,1,v)==(1,);counts['main_trace_steps']+=1
assert c.execute('select mon from S0_AdamsE2_basis where id=2682').fetchone()==('18,1,188,1',)
assert c.execute('select base from S0_AdamsE2_ss where id=2684').fetchone()==('0',)
bridge=(HERE/'Bridge.lean').read_text()
for name in ['raw_exact','page3_exact','page4_exact','page5_exact','endpoint5_exact']:
    assert re.search(r'theorem '+name+r'\b[\s\S]*?:= rfl',bridge)
reports=0;empty=0;changes=[]
modules=(HERE/'modules.txt').read_text().splitlines()
for module in modules:
    name=module.split('.')[-1];record=json.loads((HERE/(name+'-compile.json')).read_text())
    assert record['observed_exit_code']==0 and record['inputs_stable']
    assert sha(HERE/(name+'.lean'))==record['source_sha256']
    assert sha(HERE/record['log'])==record['log_sha256']
    assert sha(ROOT/'.lake/build/lib/lean'/(module.replace('.','/')+'.olean'))==record['olean_sha256']
    for dep,digest in record['dependencies_sha256'].items():
        if sha(ROOT/dep)!=digest:changes.append(dict(module=module,dependency=dep))
    for dep,digest in record['external_input_sha256'].items():assert sha(ROOT/dep)==digest
    log=(HERE/record['log']).read_text();assert 'sorryAx' not in log and 'error:' not in log
    for a in re.findall(r'depends on axioms:\s*\[([^\]]*)\]',log):
        assert set(x.strip() for x in a.split(','))<={'propext','Classical.choice','Quot.sound'}
        reports+=1
    empty+=log.count('does not depend on any axioms')
    assert not re.search(r'\b(sorry|admit|axiom|unsafe|native_decide)\b',(HERE/(name+'.lean')).read_text())
counts.update(modules=len(modules),standard_axiom_reports=reports,empty_axiom_reports=empty)
(HERE/'review.json').write_text(json.dumps(dict(status='passed',counts=counts,historical_dependency_changes=changes,
    exact_binding='same initial chart and definitional equality of E3,E4,E5 charts and E5 endpoint',
    continuation='same-input nonzero E6, plus same-input nonzero E8 under complete earlier target meanings',
    earlier_targets={'d6':'(18,139) E3 dim2 -> E4 dim0 by full incoming/outgoing d3',
                     'd7':'(19,140) E2 dim1 -> E3 dim0 by nonzero d2'},
    limitations='No permanence asserted. Initial basis/recorded maps/square/quotient meanings remain explicit mathematical premises.'),indent=2)+'\n')
print(json.dumps(counts,indent=2))
