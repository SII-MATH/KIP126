"""Independent complete union/raw SQL/successor-kernel review."""
from collections import Counter
from itertools import product
from pathlib import Path
import hashlib
import json
import sqlite3
import re

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
load=lambda p:json.loads(p.read_text())
old=load(ROOT/'Fact713E12Search/successor-search.json')
new=load(HERE/'refined.json')
scan=load(HERE/'successors.json')
manifest=load(HERE/'manifest.json')
cache=dict(new['comparisons'])
for key,block in new['successor_closure'].items():
    if key in cache:assert cache[key]==block
    cache[key]=block
assert len(cache)==1239 and len(new['comparisons'])==1236
assert all(cache[key]==block for key,block in old['comparisons'].items())
new_keys=set(cache)-set(old['comparisons'])
assert new_keys==set(manifest['additional_comparison_keys']) and len(new_keys)==5
assert set(new['new_comparison_keys'])==set(manifest['new_e12_keys'])=={'S0:24,144:d4','S0:19,140:d5'}
assert new['unresolved_comparisons']==184
closure=set();pending=['S0:28,147:d4']
while pending:
    key=pending.pop()
    if key in closure:continue
    closure.add(key);pending.extend(cache[key]['predecessors'])
assert closure==set(new['successor_closure']) and len(closure)==13
assert set(new['successor_closure'])-set(new['comparisons'])=={
    'S0:28,147:d4','S0:32,150:d3','S0:35,152:d2'}


def columns(bits,m,n):
    assert len(bits)==m*n and all(type(x) is bool for x in bits)
    return [sum(int(bits[i*n+j])<<i for i in range(m)) for j in range(n)]


def evaluate(matrix,x):
    y=0
    for j,column in enumerate(matrix):
        if x>>j&1:y^=column
    return y


counts=Counter()
for key,b in cache.items():
    w=b['wire'];k,m,n,h=(w[x] for x in ['k','m','n','h'])
    d,inc,lift,proj,up,down=[columns(w[name],r,c) for name,r,c in [
        ('outgoing',k,m),('incoming',m,n),('inclusion',m,h),('projection',h,m),('up',n,m),('down',m,k)]]
    image={evaluate(inc,x) for x in range(1<<n)}
    kernel={x for x in range(1<<m) if evaluate(d,x)==0}
    assert image<=kernel and all(evaluate(proj,x)==0 for x in image)
    assert all(evaluate(d,evaluate(lift,x))==0 and evaluate(proj,evaluate(lift,x))==x for x in range(1<<h))
    for x in range(1<<m):
        assert evaluate(lift,evaluate(proj,x))^evaluate(inc,evaluate(up,x))^evaluate(down,evaluate(d,x))==x
        counts['homotopy_vectors']+=1
    for x,y in product(kernel,repeat=2):
        assert (evaluate(proj,x)==evaluate(proj,y))==(x^y in image)
        counts['cycle_pairs']+=1
    assert len(kernel)==len(image)*(1<<h)
    s,t=b['center'];r=b['page']
    expected=[] if r==2 else [f'S0:{a},{z}:d{r-1}' for a,z in [(s-r,t-r+1),(s,t),(s+r,t+r-1)]]
    assert b['predecessors']==expected
    assert all(p in cache for p in expected)
    if r>2:
        assert [cache[p]['wire']['h'] for p in expected]==[n,m,k]
        counts['predecessor_dimensions']+=3
    after=f'S0:{s+r},{t+r-1}:d{r}'
    if after in cache:
        v=cache[after]['wire']
        assert (k,m,w['outgoing'])==(v['m'],v['n'],v['incoming'])
        counts['adjacent_matches']+=1
    next_key=f'S0:{s},{t}:d{r+1}'
    if next_key in cache:
        assert h==cache[next_key]['wire']['m']
        counts['consecutive_matches']+=1

db=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
sql=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
unknown=list(sql.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=3476').fetchone())
successor=list(sql.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=3728').fetchone())
assert unknown==[3476,24,144,'0',None,9000]
assert successor==[3728,28,147,'2','0,2',9996]
for key,record in new['degree_data'].items():
    s,t=record['degree']
    assert record['e2']==[list(x) for x in sql.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))]
    assert record['staircase']==[list(x) for x in sql.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t))]
sql.close()


def project(degree,x):
    for r in [2,3]:
        w=cache[f'S0:{degree[0]},{degree[1]}:d{r}']['wire']
        assert evaluate(columns(w['outgoing'],w['k'],w['m']),x)==0
        x=evaluate(columns(w['projection'],w['h'],w['m']),x)
    return x


assert project((24,144),1)==2
assert project((28,147),4)==1
assert project((32,150),5)==1
successor_wire=cache['S0:28,147:d4']['wire']
assert (successor_wire['k'],successor_wire['m'],successor_wire['outgoing'])==(1,1,[True])
assert cache['S0:24,144:d4']['wire']['outgoing']==[False,False]
assert cache['S0:24,144:d4']['wire']['outgoing']==successor_wire['incoming']

# Complete scan coverage, including unchanged blocked cases.
expected={(tuple(x['source']),x['page'],tuple(x['row'])) for x in old['unknowns'] if x['resolution'].startswith('unresolved')}
found={(tuple(x['source']),x['page'],tuple(x['row'])) for x in scan['results']}
assert expected==found and len(found)==len(scan['results'])==36
forced=[]
for result in scan['results']:
    if result['status']=='blocked_successor':
        assert result['reason']
        continue
    assert result['status']=='complete_successor'
    m,k=result['domain'],result['codomain']
    mat=columns([bool(b) for row in result['matrix'] for b in row],k,m)
    kernel=[[(x>>i)&1 for i in range(m)] for x in range(1<<m) if evaluate(mat,x)==0]
    assert {tuple(v) for v in kernel}=={tuple(v) for v in result['kernel_candidates']}
    assert result['forced_zero']==(len(kernel)==1)
    if result['forced_zero']:forced.append(result['row'][0])
assert forced==[3476]

for key in new_keys:
    path=HERE/'wires'/('b_'+key.replace(':','_').replace(',','_')+'.json')
    assert load(path)==cache[key]['wire']
    assert path.read_text().strip()==json.dumps(load(path),separators=(',',':'))
for key,(batch,index) in manifest['reused_batch_bindings'].items():
    entry=load(ROOT/f'Fact713ComparisonBatches/Batch{batch:02}.json')['entries'][index]
    block=cache[key]
    assert entry==dict(key=dict(object='S0',page=block['page'],s=block['center'][0],t=block['center'][1]),wire=block['wire'])
assert len(manifest['reused_batch_bindings'])==5
assert new['source_row']==[3476,'0',None,9000]
conditionals=[u for b in cache.values() for u in b['uses'] if u['kind']=='conditional_row3728_injective_successor']
assert conditionals and all(u['row']==[3476,'0',None,9000] and u['successor_row']==3728 for u in conditionals)

# The actual implication needs no zero coordinate laws. Even arbitrary
# shifted faithful coordinates reflect equality of successor values.
for middle in [(0,1),(1,0)]:
    for actual_successor in [(0,1),(1,0)]:
        next_coords=tuple(middle[actual_successor.index(y)] for y in range(2))
        assert all(next_coords[actual_successor[x]]==middle[x] for x in range(2))
        assert len(set(actual_successor))==2
# Linearity supplies successor(0)=0, excluding the swapped actual map.
assert (0,1)[0]==0 and (1,0)[0]!=0
for width in range(7):
    for incoming in range(1<<width):
        values=[sum(((incoming>>j)&1)*((x>>j)&1) for j in range(width))%2 for x in range(1<<width)]
        if all(v==0 for v in values):assert incoming==0

records=[]
for name,expected_reports in [('Basic',5),('Data',9)]:
    source,log=HERE/(name+'.lean'),HERE/(name+'.log')
    observed=load(HERE/(name+'-compile.json'))
    assert observed['observed_exit_code']==0
    assert observed['source_sha256']==sha(source)
    assert observed['log_sha256']==sha(log)
    printed=re.findall(r"'([^']+)' depends on axioms: \[([^\]]*)\]",log.read_text(),re.S)
    assert len(printed)==expected_reports
    for _,deps in printed:
        assert {a.strip() for a in deps.split(',') if a.strip()}<={'propext','Classical.choice','Quot.sound'}
    records.append(dict(module=name,reviewed_source_sha256=sha(source),reviewed_log_sha256=sha(log),
        upstream_observed_exit=0,standard_reports=len(printed)))

report=dict(findings=[],baseline_preserved=1234,union_comparisons=1239,
    e12_comparisons=1236,e12_blocked=184,new_e12_keys=sorted(new['new_comparison_keys']),
    new_external_closure_keys=sorted(set(new['successor_closure'])-set(new['comparisons'])),
    successor_closure_size=13,counts=dict(counts),raw_unknown=unknown,raw_successor=successor,
    raw_support_projections=[[1,0,0],[0,1],[0,0,1],[1],[1,0,1],[1]],
    scanned_unresolved=36,only_scanned_injective_successor_row=3476,
    actual_premises=['full actual successor value equation','faithful middle coordinates','actual differential square zero'],
    zero_coordinate_laws_required=False,
    scope='conditional actual theorem; raw NULL retained; no full E12 or topology realization',
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in [
        HERE/'refined.json',HERE/'successors.json',HERE/'manifest.json',db,
        ROOT/'Fact713E12Search/successor-search.json']},
    source_freeze_review_pending=False,build_records=records,independent_recompilation=False,
    script_sha256=sha(Path(__file__)))
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps({k:v for k,v in report.items() if k!='input_sha256'},indent=2))
