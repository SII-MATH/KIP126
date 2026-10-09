"""Complete module-to-module quotients for both other direct CW_eta_nu maps."""
import importlib.util
import itertools
import json
import sqlite3
from pathlib import Path
HERE=Path(__file__).resolve().parent;ROOT=HERE.parent;BASE=ROOT/'upstream/kervaire-49'
spec=importlib.util.spec_from_file_location('helper',ROOT/'Row3147MapSearch/search_lifted.py')
h=importlib.util.module_from_spec(spec);spec.loader.exec_module(h);a=h.alg
name='RP1_6';sc=sqlite3.connect(f'file:{BASE}/{name}_AdamsSS_t183.db?mode=ro',uri=True)
ring=sqlite3.connect(f'file:{BASE}/S0_AdamsSS_t261.db?mode=ro',uri=True)
ring_relations=list(ring.execute('select rowid,rel,s,t from S0_AdamsE2_relations where s<=26 and t<=155 order by rowid'))
results=[]
for target,sus in [('RP1_8',-8)]:
    tc=sqlite3.connect(f'file:{BASE}/{target}_AdamsSS_t180.db?mode=ro',uri=True)
    mc=sqlite3.connect(f'file:{BASE}/map_AdamsSS_RP9_16_to_RP1_8_t156.db?mode=ro',uri=True)
    bock=dict(mc.execute('select id,map from map_AdamsE2_RP9_16_to_RP1_8'))
    sk=sqlite3.connect(f'file:{BASE}/map_AdamsSS_RP1_6_to_RP1_8_t175.db?mode=ro',uri=True)
    images={}
    needed={h.module_mon(raw)[1] for s,t in [(19,139),(22,141)] for _,raw in
        sc.execute('select id,mon from RP1_6_AdamsE2_basis where s=? and t=?',(s,t))}
    for g,raw in sk.execute('select id,map from map_AdamsE2_RP1_6_to_RP1_8'):
        if g not in needed:continue
        if raw is None:images[g]=None;continue
        out=[]
        for term in raw.split(';') if raw else []:
            co,gen=h.module_mon(term)
            if bock.get(gen) is None:raise ValueError('unknown composite image')
            out.extend((tuple(sorted(co+x)),y) for x,y in [h.module_mon(t) for t in bock[gen].split(';') if t])
        images[g]=a.parity(out)

    relations=[]
    for rid,raw,s,t in tc.execute(f'select rowid,rel,s,t from {target}_AdamsE2_relations where s<=26 and t<=155 order by rowid'):
        relations.append((dict(kind='module',rowid=rid,raw=raw,degree=[s,t]),[h.module_mon(x) for x in raw.split(';')]))
    for g,gs,gt in tc.execute(f'select id,s,t from {target}_AdamsE2_generators where s<=26 and t<=155'):
        for rid,raw,ss,tt in ring_relations:
            if ss+gs<=26 and tt+gt<=155:
                relations.append((dict(kind='ring_lift',rowid=rid,raw=raw,generator=g,degree=[ss+gs,tt+gt]),[(a.mono(x),g) for x in raw.split(';')]))
    def matrix(s,t):
        source=list(sc.execute(f'select id,mon,d2 from {name}_AdamsE2_basis where s=? and t=? order by id',(s,t)))
        rows=list(tc.execute(f'select id,mon,d2 from {target}_AdamsE2_basis where s=? and t=? order by id',(s+1,t-sus)))
        lookup={h.module_mon(raw):j for j,(_,raw,_) in enumerate(rows)}
        columns=[];traces=[]
        for bid,raw,_ in source:
            co,g=h.module_mon(raw)
            if images[g] is None:raise ValueError('unknown generator map')
            image=images[g]
            cur=a.parity((tuple(sorted(co+x)),y) for x,y in image);trace=[];seen=set()
            for _ in range(10000):
                bad=next((x for x in sorted(cur) if x not in lookup),None)
                if bad is None:break
                state=tuple(sorted(cur))
                if state in seen:raise ValueError('reduction cycle')
                seen.add(state)
                choice=next(((o,p,a.divide(bad[0],p[0][0])) for o,p in relations
                    if p and p[0][1]==bad[1] and o['degree'][0]<=s+1 and o['degree'][1]<=t-sus
                    and a.divide(bad[0],p[0][0]) is not None),None)
                if choice is None:raise ValueError(f'no reducing relation {bad}')
                o,p,q=choice;cur.symmetric_difference_update(a.parity((tuple(sorted(x+q)),g) for x,g in p));trace.append(dict(origin=o,multiplier=q))
            else:raise ValueError('reduction limit')
            columns.append([lookup[x] for x in cur]);traces.append(trace)
        return dict(rows=len(rows),cols=len(source),entries=[int(i in col) for i in range(len(rows)) for col in columns],source=source,target=rows,traces=traces)
    comparison=json.loads((HERE/'d2.json').read_text())['comparisons']
    for ss,tt in [(19,139),(22,141)]:
        mid=matrix(ss,tt)
        tw=comparison[f'{ss+1},{tt+8}']['wire']
        projections=[]
        for j in range(mid['cols']):
            v=[int(i==j) for i in range(mid['cols'])]
            mv=h.ev(mid['entries'],mid['rows'],mid['cols'],v)
            projections.append(h.ev(tw['projection'],tw['h'],tw['m'],mv))
        results.append(dict(source_degree=[ss,tt],matrix=mid,projected_columns=projections))
        print(ss,tt,projections)
(HERE/'composite-map.json').write_text(json.dumps(dict(results=results),indent=2)+'\n')
