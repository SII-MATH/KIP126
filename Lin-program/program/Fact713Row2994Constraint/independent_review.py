"""Second-reader raw SQL, polynomial, full quotient and coordinate audit."""
from pathlib import Path
import hashlib,json,sqlite3,re
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
load=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
source=load(HERE/'source.json')
db={name:sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/{name}_AdamsSS_t{261 if name=="S0" else 200}.db?mode=ro',uri=True) for name in ['S0','CW_nu_eta_2']}
raw_row=list(db['S0'].execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2994').fetchone())
assert raw_row==source['raw_row']==[2994,17,138,'0,1,2',None,9000]
config=load(ROOT/'upstream/category-inventory.json')
configured=next(x['source'] for x in config['records'] if x['section']=='maps_v2' and x['source']['name']=='S0__CW_nu_eta_2')
assert configured==dict(name='S0__CW_nu_eta_2',factor=[0,0,0],**{'from':'S0','to':'CW_nu_eta_2'})

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
mg={i:(s,t) for i,s,t in db['CW_nu_eta_2'].execute('SELECT id,s,t FROM CW_nu_eta_2_AdamsE2_generators')}
def degree(m):
    cs,g=m
    return tuple(mg[g][i]+sum(rg[c][i] for c in cs) for i in range(2))

maps={};columns=reductions=0
for item in source['matrices']:
    s,t=item['source_degree'];wire=item['wire'];a=wire['algebra']
    assert [s,t]==item['target_degree'] and wire['filtration']==wire['suspension']==0
    assert wire==load(HERE/f'wire/s{s}t{t}.json')
    sr=[list(r) for r in db['S0'].execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))]
    tr=[list(r) for r in db['CW_nu_eta_2'].execute('SELECT id,mon FROM CW_nu_eta_2_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))]
    assert sr==item['source'] and tr==item['target']
    assert [expr(x) for x in a['source']]==[{(coeff(raw),0)} for _,raw in sr]
    assert [expr(x) for x in a['target']]==[{mon(raw)} for _,raw in tr]
    assert [expr(x) for x in a['images']]==[{((),0)}]
    relations=[]
    for encoded,origin in zip(a['relations'],item['relation_sources'],strict=True):
        assert origin['kind']=='module'
        relation,rs,rt=db['CW_nu_eta_2'].execute('SELECT rel,s,t FROM CW_nu_eta_2_AdamsE2_relations WHERE rowid=?',(origin['rowid'],)).fetchone()
        assert relation==origin['raw'] and [rs,rt]==origin['degree']
        actual=set()
        for term in relation.split(';'):actual.symmetric_difference_update([mon(term)])
        assert actual==expr(encoded) and all(degree(v)==(rs,rt) for v in actual)
        relations.append(actual)
    for j,(_,raw) in enumerate(sr):
        actual={(coeff(raw),0)}
        assert degree(next(iter(actual)))==(s,t)
        for term in a['terms'][j]:
            added=set()
            for multiplier in term['multiplier']:
                for cs,g in relations[term['relation']]:
                    added.symmetric_difference_update([(tuple(sorted(tuple(multiplier)+cs)),g)])
            assert all(degree(v)==(s,t) for v in added)
            actual.symmetric_difference_update(added);reductions+=1
        assert actual=={mon(raw) for i,(_,raw) in enumerate(tr) if a['entries'][i*a['cols']+j]}
        columns+=1
    assert all(degree(mon(raw))==(s,t) for _,raw in tr)
    maps[s,t]=matrix(a['entries'],a['rows'],a['cols'])
assert len(maps)==6 and columns==18 and reductions==7

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
for s,t,L,R in [(17,138,'source','target'),(20,140,'upperSource','upperTarget')]:
    wl,l=blocks[L];wr,r=blocks[R];mid,up,down=maps[s,t],maps[s+2,t+1],maps[s-2,t-1]
    for x in range(1<<wl['m']):assert ev(r['outgoing'],ev(mid,x))==ev(up,ev(l['outgoing'],x));chain_checks+=1
    for x in range(1<<wl['n']):assert ev(mid,ev(l['incoming'],x))==ev(r['incoming'],ev(down,x));chain_checks+=1
    induced[L]=[ev(r['projection'],ev(mid,ev(l['inclusion'],1<<j))) for j in range(wl['h'])]
assert induced['source']==[0] and induced['upperSource']==[2,0]
assert ev(maps[17,138],7)==7 and ev(blocks['target'][1]['incoming'],1)==7
assert records['target']['rows'][0][0]==dict(id=2803,mon='64,1,55',d2='0,1,2')
assert ev(blocks['source'][1]['projection'],7)==1
kernel=[v for v in range(4) if ev(induced['upperSource'],v)==0]
assert kernel==[0,2]
for v in range(4):
    for u in range(4):assert (ev(induced['upperSource'],v)==ev(induced['upperSource'],u))==(v==u or v==(u^2))
entries=load(ROOT/'Fact713ComparisonBatches/Batch07.json')['entries']
changes=[]
for tag,index,h,expected in [('source',11,1,[1]),('upperSource',25,2,[2,1])]:
    nw,n=blocks[tag];ow=entries[index]['wire'];o=decode(ow)
    assert all(nw[k]==ow[k] for k in ['k','m','n','h','outgoing','incoming'])
    f=[ev(o['projection'],ev(n['inclusion'],1<<j)) for j in range(h)]
    g=[ev(n['projection'],ev(o['inclusion'],1<<j)) for j in range(h)]
    assert f==g==expected
    for v in range(1<<h):assert ev(g,ev(f,v))==v
    cycles=[v for v in range(1<<nw['m']) if ev(n['outgoing'],v)==0]
    for v in cycles:assert ev(f,ev(n['projection'],v))==ev(o['projection'],v)
    changes.append(dict(tag=tag,index=index,forward=f,inverse=g,cycles=len(cycles)))
assert ev(decode(entries[11]['wire'])['projection'],7)==1
assert ev(changes[1]['forward'],2)==1
modules=['Maps','Comparison','Naturality','MapSemantics','Actual','CoordinateBridge'];compiled={};reports=0
for name in modules:
    record=load(HERE/f'{name}-compile.json');log=HERE/f'{name}.log';src=HERE/f'{name}.lean'
    assert record['observed_exit_code']==0 and record['source_sha256']==sha(src) and record['log_sha256']==sha(log)
    assert 'sorryAx' not in log.read_text()
    assert not re.search(r'\b(sorry|admit|axiom|native_decide)\b',src.read_text())
    reports+=sum(line.startswith("'Fact713Row2994Constraint.") for line in log.read_text().splitlines())
    compiled[name]=record
result=dict(status='no_correctness_findings',modules=modules,compiled=compiled,axiom_reports=reports,
    raw_row=raw_row,matrices=6,columns=columns,reductions=reductions,full_comparisons=4,
    quotient_cycle_pairs=pair_count,full_input_vectors=vector_count,whole_chainmap_vectors=chain_checks,
    named_raw_image=7,named_boundary_preimage=1,boundary_preimage_basis=2803,
    induced_source_columns=induced['source'],induced_target_columns=induced['upperSource'],target_kernel=kernel,
    affine_pairs=16,quotient_coordinate_changes=changes,staircase_residual=1,
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in [HERE/'source.json',HERE/'comparison-source.json',ROOT/'Fact713ComparisonBatches/Batch07.json']},
    scope='Actual whole coordinate meanings and actual d3 naturality are premises. The detector restricts the differential to zero or the nonzero residual; neither branch is selected. Raw NULL is retained and this does not prove E8 survival.')
(HERE/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k not in ['compiled','input_sha256']},indent=2))
