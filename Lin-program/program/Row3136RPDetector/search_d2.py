"""Reconstruct complete high-degree RP1_8 d2 by low-degree generator Leibniz."""
import importlib.util
import json
import sqlite3
import subprocess
from pathlib import Path
HERE=Path(__file__).resolve().parent;ROOT=HERE.parent;BASE=ROOT/'upstream/kervaire-49'
spec=importlib.util.spec_from_file_location('helper',ROOT/'Row3147MapSearch/search_lifted.py')
h=importlib.util.module_from_spec(spec);spec.loader.exec_module(h);a=h.alg
name='RP1_8';c=sqlite3.connect(f'file:{BASE}/{name}_AdamsSS_t180.db?mode=ro',uri=True)
s=sqlite3.connect(f'file:{BASE}/S0_AdamsSS_t261.db?mode=ro',uri=True)
gens=dict((i,(ss,tt)) for i,ss,tt in c.execute(f'select id,s,t from {name}_AdamsE2_generators'))
ring_gens=dict((i,(ss,tt)) for i,ss,tt in s.execute('select id,s,t from S0_AdamsE2_generators'))
relations=[]
for rid,raw,ss,tt in c.execute(f'select rowid,rel,s,t from {name}_AdamsE2_relations where s<=28 and t<=155 order by rowid'):
    relations.append((dict(kind='module',rowid=rid,raw=raw,degree=[ss,tt]),[h.module_mon(x) for x in raw.split(';')]))
ring_rels=list(s.execute('select rowid,rel,s,t from S0_AdamsE2_relations where s<=28 and t<=155 order by rowid'))
for g,(gs,gt) in gens.items():
    if gs>28 or gt>155:continue
    for rid,raw,ss,tt in ring_rels:
        if ss+gs<=28 and tt+gt<=155:
            relations.append((dict(kind='ring_lift',rowid=rid,raw=raw,generator=g,degree=[ss+gs,tt+gt]),[(a.mono(x),g) for x in raw.split(';')]))
def basis(conn,obj,ss,tt):return list(conn.execute(f'select id,mon,d2 from {obj}_AdamsE2_basis where s=? and t=? order by id',(ss,tt)))
def image(raw,rows,decode):
    if raw is None:raise ValueError('unknown d2')
    ids=list(map(int,raw.split(','))) if raw else []
    assert ids==sorted(set(ids)) and all(0<=i<len(rows) for i in ids)
    return [decode(rows[i][1]) for i in ids]
cache={}
def matrix(ss,tt):
    if (ss,tt) in cache:return cache[ss,tt]
    source=basis(c,name,ss,tt);target=basis(c,name,ss+2,tt+1);lookup={h.module_mon(raw):j for j,(_,raw,_) in enumerate(target)}
    columns=[]
    for bid,raw,known in source:
        co,g=h.module_mon(raw);cs,ct=h.monomial_degree(co,ring_gens,True,ring_gens)
        ring_row=next((row for row in basis(s,'S0',cs,ct) if a.mono(row[1])==co),None)
        if ring_row is None or ct>177:raise ValueError('coefficient not covered')
        ring_image=image(ring_row[2],basis(s,'S0',cs+2,ct+1),a.mono)
        gs,gt=gens[g];generator=next(row for row in basis(c,name,gs,gt) if row[1]==str(g))
        if gt>126:raise ValueError('module generator above d2 window')
        gen_image=image(generator[2],basis(c,name,gs+2,gt+1),h.module_mon)
        original=a.parity([(x,g) for x in ring_image]+[(tuple(sorted(co+x)),gg) for x,gg in gen_image])
        current=set(original);trace=[];seen=set()
        for _ in range(10000):
            bad=next((x for x in sorted(current) if x not in lookup),None)
            if bad is None:break
            state=tuple(sorted(current))
            if state in seen:raise ValueError('reduction cycle')
            seen.add(state)
            choice=next(((o,p,a.divide(bad[0],p[0][0])) for o,p in relations
                if p and p[0][1]==bad[1] and o['degree'][0]<=ss+2 and o['degree'][1]<=tt+1
                and a.divide(bad[0],p[0][0]) is not None),None)
            if choice is None:raise ValueError(f'missing reduction {bad}')
            o,p,q=choice;current.symmetric_difference_update(a.parity((tuple(sorted(x+q)),gg) for x,gg in p));trace.append(dict(origin=o,polynomial=p,multiplier=q))
        else:raise ValueError('reduction limit')
        ids=sorted(lookup[x] for x in current)
        if known is not None:assert ids==([] if known=='' else list(map(int,known.split(','))))
        columns.append(dict(basis=[bid,raw,known],coefficient=ring_row,coefficient_degree=[cs,ct],
            coefficient_image=ring_image,generator=generator,generator_degree=[gs,gt],generator_image=gen_image,
            input=sorted(original),output=sorted(current),coordinates=ids,trace=trace))
    result=dict(degree=[ss,tt],source=source,target=target,columns=columns,rows=len(target),cols=len(source),
        entries=[int(i in col['coordinates']) for i in range(len(target)) for col in columns])
    cache[ss,tt]=result;return result
comparisons={}
for ss,tt in [(0,7),(3,9),(20,147),(23,149),(26,151)]:
    try:
        out=matrix(ss,tt);inc=matrix(ss-2,tt-1)
        args=[str(out['rows']),str(out['cols']),str(inc['cols']),''.join(map(str,out['entries'])) or '-', ''.join(map(str,inc['entries'])) or '-']
        p=subprocess.run([str(ROOT/'PageTransitionCertificates/page-transition-export'),*args],text=True,capture_output=True)
        assert p.returncode==0,p.stderr
        w=json.loads(p.stdout);comparisons[f'{ss},{tt}']=dict(status='complete',wire=w)
        print(ss,tt,{k:w[k] for k in ['k','m','n','h','projection','inclusion']})
    except (ValueError,AssertionError) as e:comparisons[f'{ss},{tt}']=dict(status='unresolved',reason=str(e));print(ss,tt,e)
(HERE/'d2.json').write_text(json.dumps(dict(matrices={f'{s},{t}':b for (s,t),b in cache.items()},comparisons=comparisons),indent=2)+'\n')
