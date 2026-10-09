"""Second-reader raw SQL, polynomial, full quotient and coordinate audit."""
from pathlib import Path
import hashlib,json,sqlite3,re
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
load=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
source=load(HERE/'source.json')
db={name:sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/{name}_AdamsSS_t{261 if name=="S0" else 200}.db?mode=ro',uri=True) for name in ['S0','DC2h6']}
raw_row=list(db['S0'].execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2622').fetchone())
assert raw_row==source['raw_row']==[2622,11,133,'1',None,9000]
config=load(ROOT/'upstream/category-inventory.json')
configured=next(x['source'] for x in config['records'] if x['section']=='maps_v2' and x['source']['name']=='S0__DC2h6')
assert configured==dict(name='S0__DC2h6',factor=[0,0,0],**{'from':'S0','to':'DC2h6'})

def coeff(raw):
    a=list(map(int,raw.split(','))) if raw else []
    return tuple(sorted(x for x,n in zip(a[::2],a[1::2]) for _ in range(n)))
def mon(raw):
    a=raw.split(',');return coeff(','.join(a[:-1])),int(a[-1])
def expr(encoded):
    result=set()
    for gen,poly in enumerate(encoded):
        for c in poly:result.symmetric_difference_update([(tuple(c),gen)])
    return result
def matrix(bits,m,n):
    assert len(bits)==m*n
    return [sum(int(bits[i*n+j])<<i for i in range(m)) for j in range(n)]
def ev(cols,x):
    result=0
    for j,col in enumerate(cols):
        if x&(1<<j):result^=col
    return result
def decode(w):return {key:matrix(w[key],*dim) for key,dim in dict(outgoing=(w['k'],w['m']),incoming=(w['m'],w['n']),projection=(w['h'],w['m']),inclusion=(w['m'],w['h']),up=(w['n'],w['m']),down=(w['m'],w['k'])).items()}
rg={i:(s,t) for i,s,t in db['S0'].execute('SELECT id,s,t FROM S0_AdamsE2_generators')}
mg={i:(s,t) for i,s,t in db['DC2h6'].execute('SELECT id,s,t FROM DC2h6_AdamsE2_generators')}
def degree(m):
    cs,g=m
    return tuple(mg[g][i]+sum(rg[c][i] for c in cs) for i in range(2))

maps={};columns=0
for item in source['matrices']:
    s,t=item['source_degree'];wire=item['wire'];a=wire['algebra']
    assert [s,t]==item['target_degree'] and wire['filtration']==wire['suspension']==0
    assert wire==load(HERE/f'wire/s{s}t{t}.json')
    sr=[list(r) for r in db['S0'].execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))]
    tr=[list(r) for r in db['DC2h6'].execute('SELECT id,mon FROM DC2h6_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))]
    assert sr==item['source'] and tr==item['target']
    assert [expr(x) for x in a['source']]==[{(coeff(raw),0)} for _,raw in sr]
    assert [expr(x) for x in a['target']]==[{mon(raw)} for _,raw in tr]
    assert [expr(x) for x in a['images']]==[{((),0)}]
    assert a['relations']==[] and item['relation_sources']==[] and all(not x for x in a['terms'])
    for j,(_,raw) in enumerate(sr):
        actual={(coeff(raw),0)}
        assert degree(next(iter(actual)))==(s,t)
        assert actual=={mon(raw) for i,(_,raw) in enumerate(tr) if a['entries'][i*a['cols']+j]}
        columns+=1
    assert all(degree(mon(raw))==(s,t) for _,raw in tr)
    maps[s,t]=matrix(a['entries'],a['rows'],a['cols'])
assert len(maps)==6 and columns==11

pair_count=vector_count=0
def check_wire(w):
    global pair_count,vector_count
    a=decode(w)
    cycles=[x for x in range(1<<w['m']) if ev(a['outgoing'],x)==0]
    images={ev(a['incoming'],x) for x in range(1<<w['n'])}
    assert all(ev(a['outgoing'],x)==0 and ev(a['projection'],x)==0 for x in images)
    for z in range(1<<w['h']):assert ev(a['outgoing'],ev(a['inclusion'],z))==0 and ev(a['projection'],ev(a['inclusion'],z))==z
    for x in range(1<<w['m']):
        assert ev(a['inclusion'],ev(a['projection'],x))^ev(a['incoming'],ev(a['up'],x))^ev(a['down'],ev(a['outgoing'],x))==x
        vector_count+=1
    for x in cycles:
        for y in cycles:
            assert (ev(a['projection'],x)==ev(a['projection'],y))==(x^y in images);pair_count+=1
    return a
blocks={};records={}
for item in load(HERE/'comparison-source.json'):
    name=item['object'];s,t=item['degree'];w=item['wire']
    groups=[[dict(id=i,mon=mon,d2=d2) for i,mon,d2 in db[name].execute(f'SELECT id,mon,d2 FROM {name}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',deg)] for deg in [(s-2,t-1),(s,t),(s+2,t+1)]]
    assert groups==item['rows'] and list(map(len,groups))==[w['n'],w['m'],w['k']]
    for field,rows,dim in [('incoming',groups[0],w['m']),('outgoing',groups[1],w['k'])]:
        supports=[]
        for row in rows:
            assert row['d2'] is not None
            ids=list(map(int,row['d2'].split(','))) if row['d2'] else []
            assert ids==sorted(set(ids)) and all(0<=i<dim for i in ids);supports.append(ids)
        assert w[field]==[i in c for i in range(dim) for c in supports]
    blocks[item['tag']]=(w,check_wire(w));records[item['tag']]=item
induced={};chain_checks=0
for s,t,L,R in [(11,133,'source','target'),(14,135,'upperSource','upperTarget')]:
    wl,l=blocks[L];wr,r=blocks[R];mid,up,down=maps[s,t],maps[s+2,t+1],maps[s-2,t-1]
    for x in range(1<<wl['m']):assert ev(r['outgoing'],ev(mid,x))==ev(up,ev(l['outgoing'],x));chain_checks+=1
    for x in range(1<<wl['n']):assert ev(mid,ev(l['incoming'],x))==ev(r['incoming'],ev(down,x));chain_checks+=1
    induced[L]=[ev(r['projection'],ev(mid,ev(l['inclusion'],1<<j))) for j in range(wl['h'])]
assert induced['source']==[1,0] and induced['upperSource']==[2]
assert ev(maps[11,133],2)==2 and ev(blocks['target'][1]['incoming'],1)==2
assert records['target']['rows'][0][0]==dict(id=2722,mon='80,1,1',d2='1')
assert ev(induced['source'],2)==0 and ev(induced['source'],1)==1
assert len({ev(induced['upperSource'],x) for x in range(2)})==2

old=load(ROOT/'Fact713NextSourceSearch/refined.json');new=load(HERE/'refined.json')
before=old['comparisons']|old['successor_closure'];after=new['comparisons']|new['successor_closure']
assert len(before)==1257 and len(after)==1272 and all(after[k]==v for k,v in before.items())
assert len(new['comparisons'])==1269 and new['unresolved_comparisons']==151
assert sorted(set(after)-set(before))==sorted(new['new_comparison_keys']) and len(new['new_comparison_keys'])==15
local_pairs,local_vectors=pair_count,vector_count
for key,item in after.items():
    check_wire(item['wire'])
    if key not in before:
        assert item['wire']==load(HERE/'wires'/('b_'+key.replace(':','_').replace(',','_').replace('-','neg')+'.json'))
overlay_pairs,overlay_vectors=pair_count-local_pairs,vector_count-local_vectors
adjacent=dimensions=0
for key,item in after.items():
    s,t=item['center'];r=item['page'];w=item['wire']
    if r>2:
        for dim,ss,tt in [(w['n'],s-r,t-r+1),(w['m'],s,t),(w['k'],s+r,t+r-1)]:
            assert after[f'S0:{ss},{tt}:d{r-1}']['wire']['h']==dim;dimensions+=1
    target=after.get(f'S0:{s+r},{t+r-1}:d{r}')
    if target:
        tw=target['wire'];assert (w['k'],w['m'],w['outgoing'])==(tw['m'],tw['n'],tw['incoming']);adjacent+=1

changes=[]
for tag,key,h,expected in [('source','S0:11,133:d2',2,[3,2]),('upperSource','S0:14,135:d2',1,[1])]:
    nw,n=blocks[tag];ow=after[key]['wire'];o=decode(ow)
    assert all(nw[k]==ow[k] for k in ['k','m','n','h','outgoing','incoming'])
    f=[ev(o['projection'],ev(n['inclusion'],1<<j)) for j in range(h)]
    g=[ev(n['projection'],ev(o['inclusion'],1<<j)) for j in range(h)]
    assert f==g==expected
    for v in range(1<<h):assert ev(g,ev(f,v))==v
    for v in range(1<<nw['m']):
        if ev(n['outgoing'],v)==0:assert ev(f,ev(n['projection'],v))==ev(o['projection'],v)
    changes.append(dict(key=key,forward=f,inverse=g))
assert ev(decode(after['S0:11,133:d2']['wire'])['projection'],2)==2
zero=after['S0:11,133:d3'];assert zero['wire']['outgoing']==[False,False]
assert zero['uses'][1]['row']==[2622,'1',None,9000]
assert zero['uses'][1]['kind']=='conditional_row2622_dc2h6_naturality'
assert zero['uses'][0]['row']==[2621,'0,1','0',3]
v=3;trajectory=[]
for r in range(2,7):
    w=after[f'S0:9,132:d{r}']['wire'];a=decode(w)
    assert ev(a['outgoing'],v)==0 and v not in {ev(a['incoming'],z) for z in range(1<<w['n'])}
    z=ev(a['projection'],v);trajectory.append([r,v,z]);v=z
assert v==1
modules=['Maps','Comparison','Naturality','MapSemantics','Actual','Overlay','CoordinateBridge'];compiled={};reports=0
for name in modules:
    record=load(HERE/f'{name}-compile.json');log=HERE/f'{name}.log';src=HERE/f'{name}.lean'
    assert record['observed_exit_code']==0 and record['source_sha256']==sha(src) and record['log_sha256']==sha(log)
    assert 'sorryAx' not in log.read_text()
    assert not re.search(r'\b(sorry|admit|axiom|native_decide)\b',src.read_text())
    reports+=sum(line.startswith("'Fact713DC2h6Source.") for line in log.read_text().splitlines())
    compiled[name]=record
result=dict(status='no_correctness_findings',modules=modules,compiled=compiled,axiom_reports=reports,
    raw_row=raw_row,matrices=6,columns=columns,reductions=0,full_comparisons=4,whole_chainmap_vectors=chain_checks,
    named_raw_image=2,named_boundary_preimage=1,boundary_preimage_basis=2722,induced_source_columns=induced['source'],
    induced_target_columns=induced['upperSource'],target_injective=True,quotient_coordinate_changes=changes,
    local_quotient_pairs=local_pairs,baseline_preserved=1257,added=15,union=1272,graph=1269,blocked=151,
    overlay_quotient_pairs=overlay_pairs,overlay_vectors=overlay_vectors,adjacent=adjacent,predecessor_dimensions=dimensions,
    finite_E7_trajectory=trajectory,
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in [HERE/'source.json',HERE/'comparison-source.json',HERE/'refined.json',ROOT/'Fact713NextSourceSearch/refined.json']},
    scope='Actual whole coordinate meanings and actual d3 naturality are premises. The named source image is a nonzero E2 boundary, not literal zero; the whole source quotient map is nonzero. Inherited zero-prefix interpretation remains a premise. Finite E7 is not actual sphere E7/E12 survival.')
(HERE/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k not in ['compiled','input_sha256']},indent=2))
