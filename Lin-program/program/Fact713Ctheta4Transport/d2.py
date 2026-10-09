"""Reconstruct the absent Ctheta4 d2 column using the two-cell Leibniz rule."""
import hashlib
import importlib.util
import json
import sqlite3
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
BASE=ROOT/'upstream/kervaire-49'
spec=importlib.util.spec_from_file_location('map_helper',ROOT/'Row3147MapSearch/search_lifted.py')
helper=importlib.util.module_from_spec(spec)
spec.loader.exec_module(helper)
alg=helper.alg
sc=sqlite3.connect(f'file:{BASE}/S0_AdamsSS_t261.db?mode=ro',uri=True)
tc=sqlite3.connect(f'file:{BASE}/Ctheta4_AdamsSS_t200.db?mode=ro',uri=True)
gens=dict((i,(s,t)) for i,s,t in sc.execute('select id,s,t from S0_AdamsE2_generators'))
module_gens=dict((i,(s,t)) for i,s,t in tc.execute('select id,s,t from Ctheta4_AdamsE2_generators'))
assert module_gens=={0:(0,0),1:(0,31)}
ring_basis={}
for rid,raw,diff,s,t in sc.execute('select id,mon,d2,s,t from S0_AdamsE2_basis order by id'):
    ring_basis.setdefault((s,t),[]).append((rid,raw,diff))
module_basis={}
for rid,raw,s,t in tc.execute('select id,mon,s,t from Ctheta4_AdamsE2_basis order by id'):
    module_basis.setdefault((s,t),[]).append((rid,raw))
relations=[]
for rid,raw,s,t in tc.execute('select rowid,rel,s,t from Ctheta4_AdamsE2_relations order by rowid'):
    relations.append((dict(kind='module',rowid=rid,raw=raw,degree=[s,t]),[helper.module_mon(x) for x in raw.split(';')]))
for g,(gs,gt) in module_gens.items():
    for rid,raw,s,t in sc.execute('select rowid,rel,s,t from S0_AdamsE2_relations where t<=200 order by rowid'):
        relations.append((dict(kind='ring_lift',rowid=rid,raw=raw,ring_degree=[s,t],generator=g,degree=[s+gs,t+gt]),[(alg.mono(x),g) for x in raw.split(';')]))


def expression(poly):
    return [[list(co) for co,g in sorted(poly) if g==i] for i in range(2)]


def reconstruct(s,t):
    source=module_basis.get((s,t),[])
    target=module_basis.get((s+2,t+1),[])
    lookup={helper.module_mon(raw):j for j,(_,raw) in enumerate(target)}
    outputs=[]
    for bid,raw in source:
        co,g=helper.module_mon(raw)
        cs,ct=helper.monomial_degree(co,gens,True,gens)
        if ct>177:
            raise ValueError('coefficient d2 outside database coverage')
        row=next((x for x in ring_basis.get((cs,ct),[]) if alg.mono(x[1])==co),None)
        if row is None or row[2] is None:
            raise ValueError(f'missing exact coefficient d2 for module basis{bid}')
        target_ring=ring_basis.get((cs+2,ct+1),[])
        indices=[] if row[2]=='' else list(map(int,row[2].split(',')))
        if indices!=sorted(set(indices)) or any(j>=len(target_ring) or j<0 for j in indices):
            raise ValueError('invalid raw coefficient differential')
        deriv={(alg.mono(target_ring[j][1]),g) for j in indices}
        if g==1:
            deriv.symmetric_difference_update({(tuple(sorted(co+(7,7))),0)})
        current=set(deriv)
        used,terms,origins=[],[],[]
        seen=set()
        for _ in range(10000):
            bad=next((m for m in sorted(current) if m not in lookup),None)
            if bad is None:
                break
            state=tuple(sorted(current))
            if state in seen:
                raise ValueError('reduction cycle')
            seen.add(state)
            choice=next(((origin,rel,alg.divide(bad[0],rel[0][0])) for origin,rel in relations
                if rel and rel[0][1]==bad[1] and origin['degree'][0]<=s+2 and origin['degree'][1]<=t+1
                and alg.divide(bad[0],rel[0][0]) is not None),None)
            if choice is None:
                raise ValueError(f'no reducing relation for basis{bid} term{bad}')
            origin,rel,q=choice
            terms.append(dict(relation=len(used),multiplier=[list(q)]))
            used.append(expression(rel))
            origins.append(origin)
            current.symmetric_difference_update(alg.parity((tuple(sorted(q+a)),b) for a,b in rel))
        else:
            raise ValueError('reduction step limit')
        outputs.append(dict(id=bid,mon=raw,coefficient=dict(id=row[0],mon=row[1],d2=row[2],degree=[cs,ct],
            differential_rows=[target_ring[j] for j in indices]),generator=g,
            input=expression(deriv),output=expression(current),relations=used,terms=terms,
            relation_sources=origins,coordinates=[lookup[m] for m in sorted(current)]))
    matrix=[int(i in col['coordinates']) for i in range(len(target)) for col in outputs]
    return dict(source_degree=[s,t],target_degree=[s+2,t+1],source=source,target=target,columns=outputs,
                rows=len(target),cols=len(source),entries=matrix)


if __name__=='__main__':
    graph=json.loads((HERE/'ctheta-search.json').read_text())['graph']
    degrees=set()
    for node in graph['blocks'].values():
        if node['object']=='Ctheta4' and node['page']==2:
            s,t=node['center']
            degrees.update([(s,t),(s-2,t-1)])
    matrices={f'Ctheta4:{s},{t}':reconstruct(s,t) for s,t in sorted(degrees)}
    report=dict(matrices=matrices,module_generator0=dict(degree=[0,0],d2='complete empty target (2,1)'),
        module_generator1=dict(degree=[0,31],row=[99,'0','0',9998],target=[105,'7,2,0'],d2='h4 squared times bottom cell'),
        premise='Actual finite coefficient d2 values, module generator1 d2, module action Leibniz and relations; no NULL value is converted to zero.',
        source_sha256={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in
            [BASE/'Ctheta4_AdamsSS_t200.db',BASE/'S0_AdamsSS_t261.db']})
    (HERE/'ctheta-d2.json').write_text(json.dumps(report,indent=2)+'\n')
    print('complete d2 matrices',len(matrices),'columns',sum(x['cols'] for x in matrices.values()),
        'reductions',sum(len(c['terms']) for x in matrices.values() for c in x['columns']))
