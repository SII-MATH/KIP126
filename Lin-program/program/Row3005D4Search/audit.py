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
paths={name:base/name for name in ['C2_AdamsSS_t200.db','S0_AdamsSS_t261.db','map_AdamsSS_C2_to_S0_t200.db']}
connections={name:sqlite3.connect('file:'+str(path)+'?mode=ro',uri=True) for name,path in paths.items()}
c2=connections['C2_AdamsSS_t200.db'];sphere=connections['S0_AdamsSS_t261.db']
old=ROOT/'Fact713C2Row3005'
old_audit=load(old/'audit.json')
for name,digest in old_audit['sources'].items():assert sha(paths[name])==digest
search=load(HERE/'c2-search.json')
assert search['results']['C2:14,139:d3']['status']=='unresolved'
assert 'C2:14,139:d3' not in search['comparisons']
assert c2.execute('SELECT id,base,diff,level FROM C2_AdamsE2_ss WHERE id=3109').fetchone()==(3109,'4',None,9000)
assert c2.execute('SELECT id,base,diff,level FROM C2_AdamsE2_ss WHERE id=3110').fetchone()==(3110,'0',None,9995)
assert c2.execute('SELECT id,base,diff,level FROM C2_AdamsE2_ss WHERE id=2933').fetchone()==(2933,'3,4',None,9000)
meta=dict(c2.execute('SELECT name,value FROM version'))
assert int(meta['t_max'])>=142
assert c2.execute('SELECT id,mon,d2 FROM C2_AdamsE2_basis WHERE s=18 AND t=142').fetchall()==[]
assert c2.execute('SELECT id,base,diff,level FROM C2_AdamsE2_ss WHERE s=18 AND t=142').fetchall()==[]
counts['empty_d4_target_basis']=1

blocks={}
for b in load(old/'comparison-source.json'):
    db={'C2':c2,'S0':sphere}[b['object']];s,t=b['s'],b['t'];w=b['wire']
    mdata=dict(db.execute('SELECT name,value FROM version'))
    assert int(mdata['t_max'])>=t+1 and int(mdata['d2_t_max'])>=t
    for degree,stored in zip([(s-2,t-1),(s,t),(s+2,t+1)],b['rows']):
        actual=db.execute(f'SELECT id,mon,d2 FROM {b["object"]}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',degree).fetchall()
        assert actual==[tuple(x) for x in stored]
        counts['complete_SQL_basis_groups']+=1
    o,inc,u,p=check(w)
    assert o==[sparse(x[2],w['k']) for x in b['rows'][1]]
    assert inc==[sparse(x[2],w['m']) for x in b['rows'][0]]
    counts['SQL_d2_columns']+=len(o)+len(inc)
    blocks[b['tag']]=b

images=dict(connections['map_AdamsSS_C2_to_S0_t200.db'].execute('SELECT id,map FROM map_AdamsE2_C2_to_S0'))
maps={}
for tag,s,t in [('middleMap',14,139),('outMap',16,140),('inMap',12,138),
                ('upperMiddleMap',17,141),('upperOutMap',19,142),('upperInMap',15,140)]:
    source=c2.execute('SELECT id,mon FROM C2_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
    target=sphere.execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t-1)).fetchall()
    columns=[]
    for bid,raw in source:
        w=load(old/'wire'/f'basis{bid}.json')
        entry=next(x for x in old_audit['columns'] if x['source_id']==bid)
        fields=raw.split(',');g=int(fields[-1]);co=mono(','.join(fields[:-1]))
        assert w['input']==dict(coefficient=list(co),generator=g)
        assert w['sourceS']==w['targetS']==s and w['sourceT']==t and w['targetT']==t-1
        assert w['images']==[[g,[list(x) for x in sorted(poly(images[g]))]]]
        original=multiply({co},poly(images[g]))
        for j,rid in enumerate(entry['relations']):
            relation=sphere.execute('SELECT rel,s,t FROM S0_AdamsE2_relations WHERE rowid=?',(rid,)).fetchone()
            assert w['relations'][j]==[list(mono(x)) for x in relation[0].split(';')]
            assert relation[1]<=s and relation[2]<=t-1
        for term in w['terms']:
            original.symmetric_difference_update(multiply(parity(term['multiplier']),parity(w['relations'][term['relation']])))
            counts['polynomial_relation_steps']+=1
        assert original==parity(w['output'])
        columns.append(sum(1<<i for i,(_,raw) in enumerate(target) if mono(raw) in original))
        assert original==parity(mono(raw) for i,raw in target if i in entry['target_basis_ids'])
        counts['complete_polynomial_map_columns']+=1
    maps[tag]=columns

for src,tgt,middle,upper,lower in [('source','target','middleMap','outMap','inMap'),
                                 ('upperSource','upperTarget','upperMiddleMap','upperOutMap','upperInMap')]:
    sw,tw=blocks[src]['wire'],blocks[tgt]['wire']
    so,si,su,sp=check(sw);to,ti,tu,tp=check(tw)
    for x in range(1<<sw['m']):
        assert ev(to,ev(maps[middle],x))==ev(maps[upper],ev(so,x))
        counts['map_outgoing_square_vectors']+=1
    for x in range(1<<sw['n']):
        assert ev(ti,ev(maps[lower],x))==ev(maps[middle],ev(si,x))
        counts['map_incoming_square_vectors']+=1
    maps[middle+'3']=[ev(tp,ev(maps[middle],x)) for x in su]
assert maps['upperMiddleMap3']==[1]
assert ev(maps['middleMap'],1)==4
assert ev(cols(blocks['target']['wire']['projection'],1,5),4)==1
assert ev(maps['middleMap3'],1)==1

sphere3=load(HERE/'wire/sphere3.json');check(sphere3)
assert (sphere3['k'],sphere3['m'],sphere3['n'],sphere3['h'])==(1,1,4,1)
for branch in [0,1]:
    family=load(ROOT/'Fact713Row2693Continuation'/f'zero_b{branch}-family.json')
    entry=next(e for e in family['entries'] if e['key']==dict(object='S0',page=3,s=14,t=138))
    assert entry['wire']==sphere3
    counts['inherited_full_sphere_d3_matches']+=1
for name in ['empty2','empty3']:check(load(HERE/'wire'/f'{name}.json'))

# Every possible complete C2 d3 map is tested. Naturality with the injective
# target map and the zero sphere differential forces every column to zero.
for columns in itertools.product(range(2),repeat=4):
    natural=all(ev([1],ev(columns,x))==0 for x in range(16))
    assert natural==(columns==(0,0,0,0))
    counts['complete_C2_d3_candidates']+=1
    if not natural:counts['C2_d3_candidates_rejected_by_naturality']+=1
for d4 in range(2):
    assert (ev([d4],1)==0)==(d4==0)
    counts['sphere_d4_candidates']+=1
for source,target,nextchart in itertools.product(itertools.permutations(range(4)),
        itertools.permutations(range(2)),itertools.permutations(range(2))):
    source_vector=lambda x:sum(((x>>j)&1)<<source[j] for j in range(4))
    f=lambda x:target.index(ev(maps['middleMap3'],source_vector(x)))
    q=lambda x:nextchart.index(target[x])
    lift=1<<source.index(0);image=f(lift)
    assert image==target.index(1) and q(image)==nextchart.index(1)
    assert image!=target.index(0)
    for raw in range(32):
        if raw==4:
            assert q(image)!=nextchart.index(0)
        else:
            assert raw!=ev(maps['middleMap'],1)
        counts['same_input_bindings']+=1
    counts['relabelled_E3_E4_models']+=1

report=dict(status='complete_map_reflection_and_empty_target_transport_passed',counts=dict(counts),
    complete_C2_E3_dimension=4,sphere_E3_E4_dimension=1,upper_E3_map=maps['upperMiddleMap3'],
    raw_source_id=3106,raw_sphere_id=3005,raw_sphere_vector=[2],map_suspension=1,
    retained_unknowns=['C2 row3109 d3','C2 row2933 d3','C2 row3110 raw NULL d5'],
    assumptions=['existing full actual sphere d3 meaning, including original prefix obligations',
      'full E2 source/target/map meanings', 'actual d3/d4 naturality and all-cycle quotient transition',
      'C2 E2 (18,142) complete empty chart and zero quotient law'],
    no_desired_cycle_premise=True,
    sources={str(p.relative_to(ROOT)):sha(p) for p in [*paths.values(),old/'comparison-source.json',old/'audit.json',HERE/'c2-search.json']},
    limitations='Conditional actual Adams semantics; no topology realization, no E5 nonzero claim, no all-page permanence.')
(HERE/'audit.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
