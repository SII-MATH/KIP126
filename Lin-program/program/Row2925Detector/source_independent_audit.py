"""Independent SQL/reduction/F2 audit of the Row2925 shifted Cnu detector.

Read-only apart from source_independent_audit.json. No producer, search, or Lean
build is run. Database differential NULL stays unknown throughout this audit.
"""
import collections
import hashlib
import json
import sqlite3
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
BASE = ROOT/'upstream/kervaire-49'


def require(ok, message):
    if not ok:
        raise ValueError(message)


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def coeff(raw):
    xs = [] if raw == '' else list(map(int, raw.split(',')))
    require(len(xs) % 2 == 0, 'odd coefficient encoding')
    require(all(0 <= g < 4294967295 and e >= 0 for g, e in zip(xs[::2], xs[1::2])), 'unknown coefficient')
    return tuple(sorted(g for g, e in zip(xs[::2], xs[1::2]) for _ in range(e)))


def mon(raw):
    xs = raw.split(',')
    g = int(xs[-1])
    require(0 <= g < 4294967295, 'unknown module generator')
    return coeff(','.join(xs[:-1])), g


def parity(xs):
    return {x for x, n in collections.Counter(xs).items() if n % 2}


def degree(m, rg, mg):
    co, g = m
    return tuple(sum(rg[i][k] for i in co)+mg[g][k] for k in range(2))


def expr(raw):
    return parity((tuple(co), g) for g, pol in enumerate(raw) for co in pol)


def product(p, q):
    return parity((tuple(sorted(co+c)), g) for co, g in p for c in q)


def matmul(a, b, m, k, n):
    require(len(a) == m*k and len(b) == k*n, 'matrix shape')
    return [sum(a[i*k+q] and b[q*n+j] for q in range(k)) % 2 for i in range(m) for j in range(n)]


def rank(columns):
    pivots = {}
    for col in columns:
        v = sum(int(x) << i for i, x in enumerate(col))
        while v:
            p = v.bit_length()-1
            if p not in pivots:
                pivots[p] = v
                break
            v ^= pivots[p]
    return len(pivots)


def columns(a, m, n):
    return [[a[i*n+j] for i in range(m)] for j in range(n)]


def in_image(a, m, n, v):
    cs = columns(a, m, n)
    return rank(cs) == rank(cs+[v])


def wire_laws(w):
    k,m,n,h = (w[x] for x in ['k','m','n','h'])
    a,b,i,p = (w[x] for x in ['outgoing','incoming','inclusion','projection'])
    require(not any(matmul(a,b,k,m,n)), 'd2 squared nonzero')
    require(not any(matmul(a,i,k,m,h)), 'inclusion is not cycle')
    require(not any(matmul(p,b,h,m,n)), 'projection does not kill boundaries')
    require(matmul(p,i,h,m,h) == [int(x==y) for x in range(h) for y in range(h)], 'projection inclusion')
    pieces = [matmul(i,p,m,h,m), matmul(b,w['up'],m,n,m), matmul(w['down'],a,m,k,m)]
    require([sum(x)%2 for x in zip(*pieces)] == [int(x==y) for x in range(m) for y in range(m)], 'homotopy identity')


def run():
    inputs = [ROOT/'AggregateThreeProductConditional/Remaining/maps2925/lifted-search.json',
              HERE/'source.json', HERE/'comparison-source.json']
    report, actual, comps = [json.loads(p.read_text()) for p in inputs]
    dbs = {n: sqlite3.connect(f'file:{BASE}/{n}_AdamsSS_t{261 if n=="S0" else 200}.db?mode=ro', uri=True)
           for n in ['S0','Cnu']}
    metas = {n:dict(c.execute('SELECT name,value FROM version')) for n,c in dbs.items()}
    for path, digest in actual['sources'].items():
        require(sha(BASE/path) == digest, 'actual source DB digest changed')
        require(report['sources'][path] == digest, 'search source DB digest changed')
    raw_row = list(dbs['S0'].execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2925').fetchone())
    require(raw_row == [2925,11,137,'1,2',None,9000] == actual['raw_row'] == report['row'], 'Row2925 identity mismatch')
    config = json.loads((ROOT/'upstream/category-inventory.json').read_text())
    configured = [x for x in config['records'] if x['section']=='maps_v2' and x['ordinal']==22]
    require(len(configured)==1 and configured[0]['source']=={'factor':[5,1,0],'from':'S0','name':'S0__Cnu_by_eta','to':'Cnu'}, 'configured map changed')
    candidates = [x for x in report['maps'] if x['status']=='candidate_needs_full_map_compatibility']
    require(len(candidates)==1, 'expected sole candidate')
    candidate = candidates[0]
    require(candidate['map']==configured[0]['source'], 'wrong search candidate')
    factor = dbs['Cnu'].execute('SELECT id,mon FROM Cnu_AdamsE2_basis WHERE s=1 AND t=6 ORDER BY id').fetchall()
    require(factor==[(9,'1')] and actual['factor']==dict(id=9,mon='1',degree=[1,6]), 'wrong shifted factor')
    rg = dict((i,(s,t)) for i,s,t in dbs['S0'].execute('SELECT id,s,t FROM S0_AdamsE2_generators'))
    mg = dict((i,(s,t)) for i,s,t in dbs['Cnu'].execute('SELECT id,s,t FROM Cnu_AdamsE2_generators'))
    require(mg[1]==(1,6), 'wrong module-generator degree')
    expected_degrees = [(9,136),(11,137),(13,138),(12,138),(14,139),(16,140)]
    require([tuple(x['source_degree']) for x in actual['matrices']]==expected_degrees, 'not all six adjacent matrices')
    matrices, uses, lifted = {}, 0, 0
    for entry in actual['matrices']:
        s,t = entry['source_degree']
        w,a = entry['wire'],entry['wire']['algebra']
        require([w['filtration'],w['suspension'],w['sourceS'],w['sourceT'],w['targetS'],w['targetT']]
                ==[1,-5,s,t,s+1,t+6], 'wrong signed shift')
        require(t<=metas['S0']['t_max'] and t+6<=metas['Cnu']['t_max'], 'actual degree outside E2 coverage')
        sr = dbs['S0'].execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
        tr = dbs['Cnu'].execute('SELECT id,mon FROM Cnu_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s+1,t+6)).fetchall()
        require(entry['source']==[list(x) for x in sr] and entry['target']==[list(x) for x in tr], 'actual basis changed')
        require(a['cols']==len(sr) and a['rows']==len(tr), 'actual dimensions')
        require([expr(x) for x in a['source']]==[{(coeff(raw),0)} for _,raw in sr], 'actual source encoding')
        require([expr(x) for x in a['target']]==[{mon(raw)} for _,raw in tr], 'actual target encoding')
        require([expr(x) for x in a['images']]==[{((),1)}], 'actual factor encoding')
        relations=[]
        require(len(a['relations'])==len(entry['relation_sources']), 'missing relation provenance')
        for encoded,p in zip(a['relations'],entry['relation_sources']):
            if p['kind']=='module':
                require(p['database']=='Cnu_AdamsSS_t200.db' and p['table']=='Cnu_AdamsE2_relations', 'wrong module source')
                rr,rs,rt = dbs['Cnu'].execute('SELECT rel,s,t FROM Cnu_AdamsE2_relations WHERE rowid=?',(p['rowid'],)).fetchone()
                terms = parity(mon(x) for x in rr.split(';'))
                require(p['degree']==[rs,rt], 'module relation degree')
            else:
                require(p['kind']=='ring_lift' and p['database']=='S0_AdamsSS_t261.db' and p['table']=='S0_AdamsE2_relations', 'wrong lift source')
                rr,rs,rt = dbs['S0'].execute('SELECT rel,s,t FROM S0_AdamsE2_relations WHERE rowid=?',(p['rowid'],)).fetchone()
                g = p['module_generator']
                require(p['ring_degree']==[rs,rt] and p['module_generator_degree']==list(mg[g]), 'lift degree mismatch')
                require(p['degree']==[rs+mg[g][0],rt+mg[g][1]], 'lift total degree')
                terms=parity((coeff(x),g) for x in rr.split(';'))
                lifted+=1
            require(p['raw']==rr and expr(encoded)==terms, 'relation differs from raw source')
            require(all(degree(x,rg,mg)==tuple(p['degree']) for x in terms), 'inhomogeneous relation')
            relations.append(terms)
        require(len(a['terms'])==len(sr), 'missing column traces')
        for j,(_,raw) in enumerate(sr):
            current={(coeff(raw),1)}
            for step in a['terms'][j]:
                require(0<=step['relation']<len(relations), 'trace relation index')
                current.symmetric_difference_update(product(relations[step['relation']], [tuple(x) for x in step['multiplier']]))
                uses+=1
            require(current=={mon(raw) for i,(_,raw) in enumerate(tr) if a['entries'][i*a['cols']+j]}, 'failed independent column replay')
        matrices[s,t]=a
    expected=[('source','S0',11,137),('target','Cnu',12,143),('upperSource','S0',14,139),('upperTarget','Cnu',15,145)]
    require([(x['tag'],x['object'],*x['degree']) for x in comps]==expected, 'not all four complete quotients')
    for c in comps:
        name=c['object'];s,t=c['degree'];m=metas[name]
        require(t<=m['d2_t_max'] and t+1<=m['t_max'], 'quotient outside declared coverage')
        groups=[[dict(id=i,mon=raw,d2=d2) for i,raw,d2 in dbs[name].execute(
            f'SELECT id,mon,d2 FROM {name}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',d)]
            for d in [(s-2,t-1),(s,t),(s+2,t+1)]]
        require(groups==c['rows'], 'complete quotient rows changed')
        w=c['wire'];require([len(x) for x in groups]==[w['n'],w['m'],w['k']], 'quotient dimensions')
        for key,rows,dim in [('incoming',groups[0],w['m']),('outgoing',groups[1],w['k'])]:
            cs=[]
            for row in rows:
                require(row['d2'] is not None, 'unknown full d2 column')
                ids=[] if row['d2']=='' else list(map(int,row['d2'].split(',')))
                require(ids==sorted(set(ids)) and all(0<=i<dim for i in ids), 'invalid full d2 column')
                cs.append(ids)
            require(w[key]==[i in col for i in range(dim) for col in cs], 'wrong complete d2 matrix')
        wire_laws(w)
    cw={x['tag']:x['wire'] for x in comps}
    for prefix,s,t in [('',11,137),('upper',14,139)]:
        S,T=cw['source' if not prefix else 'upperSource'],cw['target' if not prefix else 'upperTarget']
        F,U,L=matrices[s,t],matrices[s+2,t+1],matrices[s-2,t-1]
        require(matmul(T['outgoing'],F['entries'],T['k'],T['m'],S['m'])==matmul(U['entries'],S['outgoing'],T['k'],S['k'],S['m']), 'outgoing map square')
        require(matmul(F['entries'],S['incoming'],T['m'],S['m'],S['n'])==matmul(T['incoming'],L['entries'],T['m'],T['n'],S['n']), 'incoming map square')
    witnesses=[]
    for label,tag,ttag,deg,indices in [('source','source','target',(11,137),[1,2]),('target','upperSource','upperTarget',(14,139),[1])]:
        S,T,F=cw[tag],cw[ttag],matrices[deg]
        v=[int(i in indices) for i in range(S['m'])]
        require(not any(matmul(S['outgoing'],v,S['k'],S['m'],1)), 'selected source is not a cycle')
        require(not in_image(S['incoming'],S['m'],S['n'],v), 'selected class is an incoming boundary')
        image=matmul(F['entries'],v,T['m'],S['m'],1)
        require(not any(matmul(T['outgoing'],image,T['k'],T['m'],1)), 'selected image not a cycle')
        quotient=matmul(T['projection'],image,T['h'],T['m'],1)
        boundary=in_image(T['incoming'],T['m'],T['n'],image)
        require(boundary==(label=='source'), 'candidate does not annihilate/detect as expected')
        require(candidate[label]['coordinates']==[i for i,x in enumerate(image) if x] and candidate[label]['quotient']==quotient, 'search candidate differs from actual matrix')
        witnesses.append(dict(label=label,degree=list(deg),coordinates=indices,source_nonboundary=True,image=image,quotient=quotient,image_boundary=boundary))
    require(cw['upperSource']['h']==1, 'target is not one-dimensional')
    result=dict(status='independent_SQL_and_F2_replay_passed_not_a_topological_theorem',raw_row=raw_row,
        selected_source_basis_indices=[1,2],selected_source_basis_ids=[2924,2925],
        factor=dict(database_basis_id=9,module_generator=1,degree=[1,6],map='S0__Cnu_by_eta'),
        metadata=metas,matrices=len(matrices),columns=sum(a['cols'] for a in matrices.values()),relation_steps=uses,lifted_ring_relations=lifted,
        full_quotients=[dict(tag=x['tag'],object=x['object'],degree=x['degree'],basis_degrees=[[x['degree'][0]-2,x['degree'][1]-1],x['degree'],[x['degree'][0]+2,x['degree'][1]+1]],dimension=x['wire']['h']) for x in comps],
        witnesses=witnesses,failures=[],limitations='Raw d3 differential remains NULL. Naturality, preservation of zero, and Adams realization are not inferred by this audit.',
        inputs_sha256={str(p.relative_to(ROOT)):sha(p) for p in inputs},database_sha256=actual['sources'],script_sha256=sha(Path(__file__)))
    (HERE/'source_independent_audit.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
    print(f"Row2925 independent audit: {len(matrices)} matrices, {result['columns']} columns, 4 full quotients; source [1,2] annihilated, target nonzero; raw NULL retained")


if __name__=='__main__':
    run()
