"""Complete module-to-module quotients for both other direct CW_eta_nu maps."""
import importlib.util
import itertools
import json
import sqlite3
from pathlib import Path
HERE=Path(__file__).resolve().parent;ROOT=HERE.parent;BASE=ROOT/'upstream/kervaire-49'
spec=importlib.util.spec_from_file_location('helper',ROOT/'Row3147MapSearch/search_lifted.py')
h=importlib.util.module_from_spec(spec);spec.loader.exec_module(h);a=h.alg
name='CW_eta_nu';sc=sqlite3.connect(f'file:{BASE}/{name}_AdamsSS_t200.db?mode=ro',uri=True)
ring=sqlite3.connect(f'file:{BASE}/S0_AdamsSS_t261.db?mode=ro',uri=True)
ring_relations=list(ring.execute('select rowid,rel,s,t from S0_AdamsE2_relations where s<=26 and t<=145 order by rowid'))
results=[]
for target,sus in [('Cnu',2),('CW_eta_nu_sigma',0)]:
    tc=sqlite3.connect(f'file:{BASE}/{target}_AdamsSS_t200.db?mode=ro',uri=True)
    mc=sqlite3.connect(f'file:{BASE}/map_AdamsSS_{name}_to_{target}_t200.db?mode=ro',uri=True)
    images=dict(mc.execute(f'select id,map from map_AdamsE2_{name}_to_{target}'))
    relations=[]
    for rid,raw,s,t in tc.execute(f'select rowid,rel,s,t from {target}_AdamsE2_relations where s<=26 and t<=145 order by rowid'):
        relations.append((dict(kind='module',rowid=rid,raw=raw,degree=[s,t]),[h.module_mon(x) for x in raw.split(';')]))
    for g,gs,gt in tc.execute(f'select id,s,t from {target}_AdamsE2_generators where s<=26 and t<=145'):
        for rid,raw,ss,tt in ring_relations:
            if ss+gs<=26 and tt+gt<=145:
                relations.append((dict(kind='ring_lift',rowid=rid,raw=raw,generator=g,degree=[ss+gs,tt+gt]),[(a.mono(x),g) for x in raw.split(';')]))
    def matrix(s,t):
        source=list(sc.execute(f'select id,mon,d2 from {name}_AdamsE2_basis where s=? and t=? order by id',(s,t)))
        rows=list(tc.execute(f'select id,mon,d2 from {target}_AdamsE2_basis where s=? and t=? order by id',(s,t-sus)))
        lookup={h.module_mon(raw):j for j,(_,raw,_) in enumerate(rows)}
        columns=[];traces=[]
        for bid,raw,_ in source:
            co,g=h.module_mon(raw)
            if images[g] is None:raise ValueError('unknown generator map')
            image=[] if images[g]=='' else [h.module_mon(x) for x in images[g].split(';')]
            cur=a.parity((tuple(sorted(co+x)),y) for x,y in image);trace=[];seen=set()
            for _ in range(10000):
                bad=next((x for x in sorted(cur) if x not in lookup),None)
                if bad is None:break
                state=tuple(sorted(cur))
                if state in seen:raise ValueError('reduction cycle')
                seen.add(state)
                choice=next(((o,p,a.divide(bad[0],p[0][0])) for o,p in relations
                    if p and p[0][1]==bad[1] and o['degree'][0]<=s and o['degree'][1]<=t-sus
                    and a.divide(bad[0],p[0][0]) is not None),None)
                if choice is None:raise ValueError(f'no reducing relation {bad}')
                o,p,q=choice;cur.symmetric_difference_update(a.parity((tuple(sorted(x+q)),g) for x,g in p));trace.append(dict(origin=o,multiplier=q))
            else:raise ValueError('reduction limit')
            columns.append([lookup[x] for x in cur]);traces.append(trace)
        return dict(rows=len(rows),cols=len(source),entries=[int(i in col) for i in range(len(rows)) for col in columns],source=source,target=rows,traces=traces)
    item=dict(target=target,suspension=sus);results.append(item)
    try:
        for label,s,t in [('source',19,139),('target',22,141)]:
            sw=h.comparison(sc,name,s,t,h.metadata(sc))['wire'];tw=h.comparison(tc,target,s,t-sus,h.metadata(tc))['wire']
            lo,mid,up=[matrix(x,y) for x,y in [(s-2,t-1),(s,t),(s+2,t+1)]]
            ev=lambda m,x:h.ev(m['entries'],m['rows'],m['cols'],x)
            for j in range(sw['m']):
                x=[int(i==j) for i in range(sw['m'])]
                assert h.ev(tw['outgoing'],tw['k'],tw['m'],ev(mid,x))==ev(up,h.ev(sw['outgoing'],sw['k'],sw['m'],x))
            for j in range(sw['n']):
                x=[int(i==j) for i in range(sw['n'])]
                assert h.ev(tw['incoming'],tw['m'],tw['n'],ev(lo,x))==ev(mid,h.ev(sw['incoming'],sw['m'],sw['n'],x))
            cols=[]
            for j in range(sw['h']):
                x=[int(i==j) for i in range(sw['h'])];raw=h.ev(sw['inclusion'],sw['m'],sw['h'],x)
                cols.append(h.ev(tw['projection'],tw['h'],tw['m'],ev(mid,raw)))
            item[label]=dict(rows=tw['h'],cols=sw['h'],entries=[col[i] for i in range(tw['h']) for col in cols],
                comparisons=[sw,tw],matrices=[lo,mid,up],staircase=list(tc.execute(f'select id,base,diff,level from {target}_AdamsE2_ss where s=? and t=? order by id',(s,t-sus))))
        item['status']='complete'
        print(target,'source',item['source']['entries'],'target',item['target']['entries'],item['source']['staircase'])
    except (ValueError,AssertionError,sqlite3.Error) as error:item.update(status='unresolved',reason=str(error));print(target,error)
(HERE/'other-maps.json').write_text(json.dumps(dict(results=results),indent=2)+'\n')
