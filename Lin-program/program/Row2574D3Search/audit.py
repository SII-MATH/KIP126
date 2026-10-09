"""Independent finite replay of the old-chart bridge and complete d5 step."""
import collections
import hashlib
import itertools
import json
from pathlib import Path
import sqlite3

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
load=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
counts=collections.Counter()


def cols(bits,m,n):
    assert len(bits)==m*n and all(x in [0,1] for x in bits)
    return [sum(int(bits[i*n+j])<<i for i in range(m)) for j in range(n)]


def ev(columns,x):
    assert x >> len(columns)==0
    result=0
    for j,c in enumerate(columns):
        if x>>j&1:result^=c
    return result


def check(w):
    k,m,n,h=[w[x] for x in ['k','m','n','h']]
    o,inc,u,p,up,dn=[cols(w[x],a,b) for x,a,b in [
        ('outgoing',k,m),('incoming',m,n),('inclusion',m,h),
        ('projection',h,m),('up',n,m),('down',m,k)]]
    assert all(ev(o,x)==0 for x in inc+u)
    assert all(ev(p,x)==0 for x in inc)
    assert all(ev(p,x)==1<<j for j,x in enumerate(u))
    for j in range(m):assert ev(u,p[j])^ev(inc,up[j])^ev(dn,o[j])==1<<j
    boundaries={ev(inc,x) for x in range(1<<n)}
    cycles=[x for x in range(1<<m) if ev(o,x)==0]
    for a,b in itertools.product(cycles,repeat=2):
        assert (ev(p,a)==ev(p,b))==((a^b) in boundaries)
        counts['cycle_pairs']+=1
    counts['comparisons']+=1
    return o,inc,u,p


def mono(raw):
    values=list(map(int,raw.split(','))) if raw else []
    assert len(values)%2==0
    return tuple(sorted(g for g,n in zip(values[::2],values[1::2]) for _ in range(n)))


def parity(terms):
    result=set()
    for term in terms:
        term=tuple(sorted(term))
        result.symmetric_difference_update({term})
    return result


def poly(raw):
    return parity(mono(x) for x in raw.split(';')) if raw else set()


def multiply(a,b):
    return parity(x+y for x in a for y in b)


def sparse(raw,n):
    assert raw is not None
    indices=list(map(int,raw.split(','))) if raw else []
    assert indices==sorted(set(indices)) and all(0<=i<n for i in indices)
    return sum(1<<i for i in indices)


base=ROOT/'upstream/kervaire-49'
db=base/'S0_AdamsSS_t261.db'
c=sqlite3.connect('file:'+str(db)+'?mode=ro',uri=True)
old=ROOT/'Row2574Detector'
initial=load(ROOT/'Fact715Source2574/source.json')
assert sha(db)==initial['database_sha256']
assert c.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE id=2574').fetchone()==(2574,'0',None,9997)
assert c.execute('SELECT id,mon,s,t FROM S0_AdamsE2_basis WHERE id=2573').fetchone()==(2573,'368,1',6,132)
assert c.execute('SELECT id,mon,s,t FROM S0_AdamsE2_basis WHERE id=2574').fetchone()==(2574,'0,4,69,2',6,132)
assert c.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE id=2866').fetchone()==(2866,'0','3',9997)
meta=dict(c.execute('SELECT name,value FROM version'))
assert int(meta['t_max'])>=139 and int(meta['d2_t_max'])>=138

def degree_check(s,t,w):
    groups=[c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',d).fetchall()
      for d in [(s-2,t-1),(s,t),(s+2,t+1)]]
    assert [len(x) for x in groups]==[w['n'],w['m'],w['k']]
    o,inc,u,p=check(w)
    assert o==[sparse(row[2],w['k']) for row in groups[1]]
    assert inc==[sparse(row[2],w['m']) for row in groups[0]]
    counts['complete_SQL_groups']+=3
    counts['SQL_d2_columns']+=len(o)+len(inc)
    return o,inc,u,p

for b in initial['comparisons'].values():degree_check(*b['degree'],b['wire'])
cw=load(HERE/'wire/current2.json');uw=load(HERE/'wire/upper2.json')
degree_check(3,130,load(HERE/'wire/sourceIncoming2.json'))
co,ci,cu,cp=degree_check(9,134,cw);uo,ui,uu,up=degree_check(12,136,uw)
oldw=load(old/'target.json');_,_,oldu,oldp=degree_check(9,134,oldw)
change=[ev(cp,x) for x in oldu]
assert change==[4,1,2]
for x in range(8):
    assert ev(oldp,ev(cu,ev(change,x)))==x
    counts['exact_coordinate_changes']+=1

product_columns={}
for row in load(old/'products-h2-provenance.json'):
    bid=row['source_id'];s,t=row['source_degree'];ts,tt=row['target_degree']
    raw=c.execute('SELECT mon FROM S0_AdamsE2_basis WHERE id=?',(bid,)).fetchone()[0]
    target=c.execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(ts,tt)).fetchall()
    assert [bid for bid,_ in target]==row['target_basis_ids']
    w=load(old/'products_h2'/f'basis{bid}.json')
    expected=multiply({(2,)},{mono(raw)})
    assert expected==parity(w['input'])
    for j,rid in enumerate(row['relation_rowids']):
        rawrel,rs,rt=c.execute('SELECT rel,s,t FROM S0_AdamsE2_relations WHERE rowid=?',(rid,)).fetchone()
        assert w['relations'][j]==[list(mono(x)) for x in rawrel.split(';')]
        assert rs<=ts and rt<=tt
    for term in w['terms']:
        expected.symmetric_difference_update(multiply(parity(term['multiplier']),parity(w['relations'][term['relation']])))
        counts['polynomial_relation_steps']+=1
    assert expected==parity(w['output'])
    coords=row['target_coordinates']
    assert expected==parity(mono(target[j][1]) for j in coords)
    product_columns[bid]=sum(1<<j for j in coords)
    counts['full_h2_product_columns']+=1

detect=load(old/'detect.json')
assert detect['right']==oldw
assert detect['left']==initial['comparisons']['factor']['wire']
assert detect['target']==initial['comparisons']['target']['wire']
prodcols=[product_columns[j] for j in range(2695,2700)]
tp=cols(detect['target']['projection'],2,4)
tensor3=[ev(tp,ev(prodcols,x)) for x in cu]
assert tensor3==[0,2,0]
for x in range(2):
    for y in range(32):
        if ev(co,y)!=0:continue
        assert ev(tp,ev(prodcols,y) if x else 0)==ev(tensor3,ev(cp,y))*(x!=0)
        counts['all_cycle_product_inputs']+=1
assert ev(tp,8)==2
assert [i for i in range(8) if ev(tensor3,i)==2]==[2,3,6,7]

# The outgoing map from (9,134) retains the recorded nonzero third
# staircase column, the dc2h6 zero column, and the known zero prefix.
stairs=c.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=9 AND t=134 ORDER BY id').fetchall()
assert stairs==[(2695,'2',None,9000),(2696,'3',None,9993),(2697,'1','0',9997),
               (2698,'0','3,4',9998),(2699,'4','4',9998)]
assert ev(up,1)==1
out=[0,0,1]
survivors=[]
for y in range(8):
    accepted=ev(tensor3,y)==2 and ev(out,y)==0
    if accepted:survivors.append(y)
    counts['all_unknown_d3_values']+=1
assert survivors==[2,3]
for b in [0,1]:
    w=load(HERE/'wire'/f'current3_{b}.json')
    o,inc,u,p=check(w)
    assert o==out and inc==[2+b] and u==[1] and p==[1,b,0]
    source_wire=load(HERE/'wire'/f'source3_{b}.json')
    so,si,su,sp=check(source_wire)
    assert so==[2+b] and si==[0] and su==[] and sp==[0]
    assert source_wire['outgoing']==w['incoming']
    assert ev(o,1)==0 and ev(p,1)==1
    assert {ev(inc,x) for x in range(2)}=={0,2+b}
    counts['complete_unknown_branches']+=1
    for names in itertools.permutations(range(8)):
        zero=names.index(0);named=names.index(1)
        bound={names.index(0),names.index(2+b)}
        assert named not in bound and ev(p,names[named])!=ev(p,names[zero])
        counts['relabelled_full_E3_models']+=1

report=dict(status='two_complete_actual_d3_branches_checked',counts=dict(counts),
    source=dict(basis_id=2573,staircase_id=2574,raw_NULL=True,degree=[6,132]),
    target=dict(degree=[9,134],old_coordinates=['raw1','raw2','raw3'],
      current_coordinates=['raw2','raw3','raw1'],old_to_current_columns=change),
    h2_candidates=[2,3,6,7],d_squared_zero_candidates=survivors,
    branch_incoming_columns=[[False,True,False],[True,True,False]],
    branch_projection_rows=[[True,False,False],[True,True,False]],
    same_E2_input_local=2,complete_E4_dimension=1,
    source_assumptions=['full actual E2/d2/product meanings and quotient product transition',
      'recorded ss2866 d3 on constructed original E2 representatives',
      'complete outgoing (9,134) d3 map preserving existing source rules',
      'actual spectral sequence d3 squared zero and full canonical incoming source'],
    limitation='No selection of unknown d3 is claimed. Actual branch is defined from the actual differential; original topology is not constructed.',
    sources={str(p.relative_to(ROOT)):sha(p) for p in [db,old/'detect.json',old/'products-h2-provenance.json',
      ROOT/'Fact715Source2574/source.json']})
(HERE/'audit.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
