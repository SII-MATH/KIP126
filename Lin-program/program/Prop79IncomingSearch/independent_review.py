"""Read-only independent raw-data, coordinate and whole-map review.

No producer code is imported and no original source, wire or log is modified.
"""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
load=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
frozen=load(HERE/'frozen-source.json')
for name,digest in frozen['source_sha256'].items():assert sha(ROOT/name)==digest
search=load(HERE/'search.json');bottom=load(HERE/'bottom-inclusion.json')
db={name:sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/{name}_AdamsSS_t{limit}.db?mode=ro',uri=True)
    for name,limit in [('S0',261),('Cnu',200)]}
for name,digest in bottom['sources'].items():assert sha(ROOT/'upstream/kervaire-49'/name)==digest
counts=Counter()
for record in search['degrees'].values():
    assert record['e2']==[list(x) for x in db['Cnu'].execute(
        'SELECT id,mon,d2 FROM Cnu_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',record['degree'])]
    assert record['staircase']==[list(x) for x in db['Cnu'].execute(
        'SELECT id,base,diff,level FROM Cnu_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',record['degree'])]
    counts['complete_raw_degrees']+=1
assert search['degree']==[14,139] and search['global_basis_id']==4412 and search['target_staircase_row']==4411
assert search['degrees']['Cnu:14,139']['e2'][2]==[4412,'1,1,7,1,275,1,0','']
source_rows=search['degrees']['Cnu:11,137']['staircase']
assert source_rows==[[4178,'3','3',2],[4179,'0','0',3],[4180,'1,2',None,9000],[4181,'2',None,9986]]
assert [4411,'2',None,9000] in search['degrees']['Cnu:14,139']['staircase']

def ev(bits,m,n,v):
    assert len(bits)==m*n
    return sum((sum(int(bits[i*n+j])*((v>>j)&1) for j in range(n))%2)<<i for i in range(m))
def support(raw,n):
    assert raw is not None
    indices=list(map(int,raw.split(','))) if raw else []
    assert indices==sorted(set(indices)) and all(0<=i<n for i in indices)
    return sum(1<<i for i in indices)
def check(w):
    k,m,n,h=(w[key] for key in ['k','m','n','h'])
    images={ev(w['incoming'],m,n,v) for v in range(1<<n)}
    cycles=[v for v in range(1<<m) if ev(w['outgoing'],k,m,v)==0]
    assert images<=set(cycles)
    for z in range(1<<h):
        lift=ev(w['inclusion'],m,h,z)
        assert lift in cycles and ev(w['projection'],h,m,lift)==z
    for x,y in itertools.product(cycles,repeat=2):
        assert (ev(w['projection'],h,m,x)==ev(w['projection'],h,m,y)) == (x^y in images)
        counts['quotient_pairs']+=1
    for x in range(1<<m):
        assert x==ev(w['inclusion'],m,h,ev(w['projection'],h,m,x)) ^ \
            ev(w['incoming'],m,n,ev(w['up'],n,m,x)) ^ \
            ev(w['down'],m,k,ev(w['outgoing'],k,m,x))
        counts['homotopy_vectors']+=1
    counts['complete_quotients']+=1
    return cycles,images

blocks=search['comparisons']
for name,block in blocks.items():
    w=block['wire'];check(w)
    assert load(HERE/'wires'/(name.replace(':','_').replace(',','_')+'.json'))==w
    assert all(key in blocks for key in block['predecessors'])
    for field,src,dim,width in [('outgoing',block['center'],w['k'],w['m']),
        ('incoming',[block['center'][0]-block['page'],block['center'][1]-block['page']+1],w['m'],w['n'])]:
        uses=[u for u in block['uses'] if u['source']==src]
        assert len(uses)==width and [u['local'] for u in uses]==list(range(width))
        for j,u in enumerate(uses):
            assert [w[field][i*width+j] for i in range(dim)]==u['finite_value']
            if u['kind']=='stored_d2':assert support(u['row'][2],dim)==sum(int(x)<<i for i,x in enumerate(u['finite_value']))
            elif u['kind']=='checked_complete_zero_codomain':
                assert dim==0 and blocks[u['target_predecessor']]['wire']['h']==0
            elif u['kind']=='incoming_boundary_zero_requires_meaning':assert 2<=u['row'][3]<5000 and not any(u['finite_value'])
            elif u['kind']=='future_outgoing_zero_prefix_requires_meaning':assert 9000<u['row'][3]<10000-block['page'] and not any(u['finite_value'])
            elif u['kind']=='stored_event':assert u['row'][3]==10000-block['page'] and u['row'][2] is not None
            else:raise AssertionError(u['kind'])
    if block['page']>2:
        for key in block['predecessors']:assert blocks[key]['page']==block['page']-1
assert len(blocks)==31 and len(search['required_keys'])==24
assert set(search['required_keys'])-set(blocks)=={'Cnu:14,139:d3','Cnu:14,139:d4'}
assert blocks['Cnu:10,136:d3']['wire']['h']==0
assert blocks['Cnu:9,135:d4']['wire']['h']==1

for name,block in bottom['comparisons'].items():
    obj,st=name.split(':');s,t=map(int,st.split(','));w=block['wire']
    groups=[[dict(id=i,mon=mon,d2=d2) for i,mon,d2 in db[obj].execute(
        f'SELECT id,mon,d2 FROM {obj}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',d)]
        for d in [(s-2,t-1),(s,t),(s+2,t+1)]]
    assert groups==block['rows']
    assert list(map(len,groups))==[w['n'],w['m'],w['k']]
    for rows,n,field in [(groups[0],w['m'],'incoming'),(groups[1],w['k'],'outgoing')]:
        columns=[support(row['d2'],n) for row in rows]
        assert w[field]==[bool(col>>i&1) for i in range(n) for col in columns]
    check(w)

def coeff(raw):
    xs=list(map(int,raw.split(','))) if raw else []
    assert len(xs)%2==0
    return tuple(sorted(g for g,e in zip(xs[::2],xs[1::2]) for _ in range(e)))
def mon(raw):
    co,_,gen=raw.rpartition(',');return coeff(co),int(gen)
def parity(xs):return {x for x,n in Counter(xs).items() if n%2}
def expression(e):return parity((tuple(co),g) for g,p in enumerate(e) for co in p)
rg={i:(s,t) for i,s,t in db['S0'].execute('SELECT id,s,t FROM S0_AdamsE2_generators')}
mg={i:(s,t) for i,s,t in db['Cnu'].execute('SELECT id,s,t FROM Cnu_AdamsE2_generators')}
def degree(term):
    co,g=term;return tuple(sum(rg[i][k] for i in co)+mg[g][k] for k in range(2))
for name,item in bottom['matrices'].items():
    wire=item['wire'];w=wire['algebra'];st=tuple(item['source_degree'])
    assert wire['filtration']==wire['suspension']==0
    assert item['target_degree']==list(st)
    assert item['source']==[list(x) for x in db['S0'].execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',st)]
    assert item['target']==[list(x) for x in db['Cnu'].execute('SELECT id,mon FROM Cnu_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',st)]
    assert w['cols']==len(item['source']) and w['rows']==len(item['target'])
    assert [expression(e) for e in w['images']]==[{((),0)}]
    assert [expression(e) for e in w['source']]==[{(coeff(raw),0)} for _,raw in item['source']]
    assert [expression(e) for e in w['target']]==[{mon(raw)} for _,raw in item['target']]
    rels=[]
    for origin,e in zip(item['relation_sources'],w['relations'],strict=True):
        assert origin['kind']=='module'
        raw,s,t=db['Cnu'].execute('SELECT rel,s,t FROM Cnu_AdamsE2_relations WHERE rowid=?',(origin['rowid'],)).fetchone()
        assert raw==origin['raw'] and [s,t]==origin['degree']
        rel=parity(mon(x) for x in raw.split(';'))
        assert expression(e)==rel and all(degree(x)==(s,t) for x in rel)
        rels.append(rel)
    for j,(_,raw) in enumerate(item['source']):
        value={(coeff(raw),0)}
        assert all(degree(x)==st for x in value)
        for term in w['terms'][j]:
            delta=parity((tuple(sorted(co+tuple(mult))),g) for co,g in rels[term['relation']] for mult in term['multiplier'])
            assert all(degree(x)==st for x in delta)
            value.symmetric_difference_update(delta);counts['relation_steps']+=1
        assert value=={mon(raw) for i,(_,raw) in enumerate(item['target']) if w['entries'][i*w['cols']+j]}
        counts['whole_matrix_columns']+=1
assert counts['whole_matrix_columns']==29 and counts['relation_steps']==8

for s,t in [(11,137),(14,139)]:
    sw=bottom['comparisons'][f'S0:{s},{t}']['wire'];tw=bottom['comparisons'][f'Cnu:{s},{t}']['wire']
    def map_at(a,b,x):
        w=bottom['matrices'][f's{a}t{b}']['wire']['algebra'];return ev(w['entries'],w['rows'],w['cols'],x)
    for x in range(1<<sw['m']):
        assert ev(tw['outgoing'],tw['k'],tw['m'],map_at(s,t,x))==map_at(s+2,t+1,ev(sw['outgoing'],sw['k'],sw['m'],x))
        counts['chain_square_vectors']+=1
    for x in range(1<<sw['n']):
        assert map_at(s,t,ev(sw['incoming'],sw['m'],sw['n'],x))==ev(tw['incoming'],tw['m'],tw['n'],map_at(s-2,t-1,x))
        counts['chain_square_vectors']+=1
    for x in range(1<<sw['h']):
        result=ev(tw['projection'],tw['h'],tw['m'],map_at(s,t,ev(sw['inclusion'],sw['m'],sw['h'],x)))
        qm=bottom['quotient_maps'][f'{s},{t}']
        assert result==ev(sum(qm,[]),tw['h'],sw['h'],x)
        counts['full_induced_coordinates']+=1

changes={}
for s,t in [(11,137),(14,139)]:
    canonical=bottom['comparisons'][f'Cnu:{s},{t}']['wire']
    stair=blocks[f'Cnu:{s},{t}:d2']['wire']
    for key in ['k','m','n','h','incoming','outgoing']:assert canonical[key]==stair[key]
    m,h=canonical['m'],canonical['h']
    forward=lambda x:ev(stair['projection'],h,m,ev(canonical['inclusion'],m,h,x))
    backward=lambda x:ev(canonical['projection'],h,m,ev(stair['inclusion'],m,h,x))
    table=[]
    for x in range(1<<h):
        assert backward(forward(x))==x and forward(backward(x))==x
        table.append(forward(x));counts['two_way_coordinate_vectors']+=1
    cycles,_=check(canonical)
    for x in cycles:
        assert forward(ev(canonical['projection'],h,m,x))==ev(stair['projection'],h,m,x)
        counts['all_cycle_coordinate_equations']+=1
    changes[f'{s},{t}']=table
assert changes['11,137']==[0,1,6,7,4,5,2,3]
assert changes['14,139']==[0,2,1,3]
assert changes['11,137'][6]==2 and changes['14,139'][2]==1
# Every actual incoming basis representative is checked, not only e1.
cs=blocks['Cnu:11,137:d2']['wire'];ct=blocks['Cnu:14,139:d2']['wire']
for j,row in enumerate(source_rows[1:]):
    assert ev(cs['projection'],3,4,support(row[1],4))==1<<j
assert ev(ct['projection'],2,4,4)==1

# Enumerate all functions, not just chosen linear matrices. Only the 64
# zero-preserving additive functions obey the column reconstruction law.
for values in itertools.product(range(4),repeat=8):
    if values[0]!=0:continue
    if not all(values[x^y]==values[x]^values[y] for x in range(8) for y in range(8)):continue
    counts['linear_functions']+=1
    for x in range(8):
        expected=(values[1] if x&1 else 0)^(values[2] if x&2 else 0)^(values[4] if x&4 else 0)
        assert values[x]==expected;counts['three_column_reconstructions']+=1
    if values[1]==values[2]==values[4]==0:
        assert all(v==0 for v in values);counts['accepted_zero_maps']+=1
    if values[1]==values[4]==0 and values[2]!=0:counts['missing_named_column_countermodels']+=1
assert counts['linear_functions']==64 and counts['accepted_zero_maps']==1
assert counts['missing_named_column_countermodels']==3

reports={}
for module in frozen['modules']:
    name=module.rsplit('.',1)[1];rec=load(HERE/(name+'-compile.json'))
    assert rec==frozen['direct_compile'][name] and rec['observed_exit_code']==0 and rec['inputs_stable']
    assert rec['source_sha256']==sha(HERE/(name+'.lean')) and rec['log_sha256']==sha(HERE/rec['log'])
    for path,digest in rec['external_input_sha256'].items():assert sha(ROOT/path)==digest
    text=(HERE/rec['log']).read_text()
    assert not re.search(r'\b(sorry|admit|axiom|native_decide|unsafe)\b',(HERE/(name+'.lean')).read_text())
    assert not re.search(r'\b(sorryAx|Lean\.ofReduceBool)\b|error:',text)
    axs=re.findall(r'depends on axioms: \[([^\]]*)\]',text)
    for ax in axs:assert set(filter(None,map(str.strip,ax.split(','))))<={'propext','Classical.choice','Quot.sound'}
    reports[name]=len(axs)+text.count('does not depend on any axioms')
assert sum(reports.values())==32
report=dict(status='no_correctness_findings',counts=dict(counts),canonical_to_staircase_tables=changes,
    raw_source_columns=source_rows[1:],raw_target=[4411,'2',None,9000],target_basis_id=4412,
    actual_degree_squares=dict(sphere=[[11,137],[14,139]],eta_shifted_cnu=[[12,143],[15,145]],bottom_cnu=[[11,137],[14,139]]),
    axiom_reports=reports,
    actual_non_circular_chain=['eta named source map is zero by finite whole-map theorem',
        'eta d3 naturality and actual differential zero preservation imply eta target image zero',
        'finite eta target map reflection and faithful actual target coordinates imply S0 named d3 zero',
        'bottom map source lifting, bottom d3 naturality and bottom zero preservation imply Cnu named d3 zero'],
    limitations=['Actual named-zero theorem retains full actual map meanings and both naturality squares.',
        'Complete no-hit theorem concerns the supplied finite homology dc; actual all-column no-hit needs its coordinate/differential interpretation.',
        'Boundary and future-prefix columns retain explicit premises; target outgoing row4411 remains unknown.',
        'No target survival, all-pages permanence, synthetic extension contradiction, or unconditional Proposition7.9.'],
    source_sha256={str(p.relative_to(ROOT)):sha(p) for p in [Path(__file__),HERE/'frozen-source.json',HERE/'search.json',HERE/'bottom-inclusion.json',*[HERE/(m.rsplit('.',1)[1]+'.lean') for m in frozen['modules']]]})
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps({k:v for k,v in report.items() if k!='source_sha256'},indent=2))
