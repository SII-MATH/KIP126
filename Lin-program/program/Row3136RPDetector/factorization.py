"""Search complete d2 quotient multiplication detectors for the exact CW lift."""
import importlib.util
import itertools
import json
import sqlite3
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
BASE=ROOT/'upstream/kervaire-49'
spec=importlib.util.spec_from_file_location('helper',ROOT/'Row3147MapSearch/search_lifted.py')
h=importlib.util.module_from_spec(spec);spec.loader.exec_module(h);a=h.alg
name='RP1_8'
c=sqlite3.connect(f'file:{BASE}/{name}_AdamsSS_t180.db?mode=ro',uri=True)
s=sqlite3.connect(f'file:{BASE}/S0_AdamsSS_t261.db?mode=ro',uri=True)
meta=h.metadata(c)
gens=dict((i,(s,t)) for i,s,t in c.execute(f'select id,s,t from {name}_AdamsE2_generators'))
relations=[]
for rid,raw,ss,tt in c.execute(f'select rowid,rel,s,t from {name}_AdamsE2_relations where s<=32 and t<=180 order by rowid'):
    relations.append((dict(kind='module',rowid=rid,raw=raw,degree=[ss,tt]),[h.module_mon(x) for x in raw.split(';')]))
ring=list(s.execute('select rowid,rel,s,t from S0_AdamsE2_relations where s<=32 and t<=180 order by rowid'))
for g,(gs,gt) in gens.items():
    if gs>32 or gt>180:continue
    for rid,raw,ss,tt in ring:
        if ss+gs<=32 and tt+gt<=180:
            relations.append((dict(kind='ring_lift',rowid=rid,raw=raw,degree=[ss+gs,tt+gt],generator=g),[(a.mono(x),g) for x in raw.split(';')]))
comp_cache={}
def comp(ss,tt):
    if (ss,tt) not in comp_cache:comp_cache[ss,tt]=h.comparison(c,name,ss,tt,meta)
    return comp_cache[ss,tt]
def multiply(ss,tt,factor,fs,ft):
    source=list(c.execute(f'select id,mon,d2 from {name}_AdamsE2_basis where s=? and t=? order by id',(ss,tt)))
    target=list(c.execute(f'select id,mon,d2 from {name}_AdamsE2_basis where s=? and t=? order by id',(ss+fs,tt+ft)))
    lookup={h.module_mon(raw):j for j,(_,raw,_) in enumerate(target)}
    cols=[];traces=[]
    for bid,raw,_ in source:
        co,g=h.module_mon(raw);current={(tuple(sorted(co+factor)),g)};trace=[];seen=set()
        for _ in range(10000):
            bad=next((x for x in sorted(current) if x not in lookup),None)
            if bad is None:break
            state=tuple(sorted(current))
            if state in seen:raise ValueError('reduction cycle')
            seen.add(state)
            choice=next(((origin,poly,a.divide(bad[0],poly[0][0])) for origin,poly in relations
                if poly and poly[0][1]==bad[1] and origin['degree'][0]<=ss+fs and origin['degree'][1]<=tt+ft
                and a.divide(bad[0],poly[0][0]) is not None),None)
            if choice is None:raise ValueError(f'missing relation {bad}')
            origin,poly,q=choice
            current.symmetric_difference_update(a.parity((tuple(sorted(x+q)),g) for x,g in poly))
            trace.append(dict(origin=origin,multiplier=q))
        else:raise ValueError('reduction limit')
        cols.append([lookup[x] for x in current]);traces.append(trace)
    return dict(rows=len(target),cols=len(source),source=source,target=target,
        entries=[int(i in col) for i in range(len(target)) for col in cols],traces=traces)
def ev(w,x):return h.ev(w['entries'],w['rows'],w['cols'],x)
def quotient(ss,tt,factor,fs,ft):
    sw=comp(ss,tt)['wire'];tw=comp(ss+fs,tt+ft)['wire']
    lo,mid,up=[multiply(x,y,factor,fs,ft) for x,y in [(ss-2,tt-1),(ss,tt),(ss+2,tt+1)]]
    for j in range(sw['m']):
        x=[int(i==j) for i in range(sw['m'])]
        assert h.ev(tw['outgoing'],tw['k'],tw['m'],ev(mid,x))==ev(up,h.ev(sw['outgoing'],sw['k'],sw['m'],x))
    for j in range(sw['n']):
        x=[int(i==j) for i in range(sw['n'])]
        assert h.ev(tw['incoming'],tw['m'],tw['n'],ev(lo,x))==ev(mid,h.ev(sw['incoming'],sw['m'],sw['n'],x))
    cols=[]
    for j in range(sw['h']):
        v=[int(i==j) for i in range(sw['h'])]
        raw=h.ev(sw['inclusion'],sw['m'],sw['h'],v)
        cols.append(h.ev(tw['projection'],tw['h'],tw['m'],ev(mid,raw)))
    return dict(rows=tw['h'],cols=sw['h'],entries=[v[i] for i in range(tw['h']) for v in cols],
        comparisons=[sw,tw],maps=[lo,mid,up])
d2=json.loads((HERE/'d2.json').read_text())
results=[]
def mat_ev(a,m,n,x):return h.ev(a,m,n,x)
for bid,raw,fs,ft in s.execute("select id,mon,s,t from S0_AdamsE2_basis where s<=8 and t<=36 and t>0 and d2='' order by t,s,id"):
    item=dict(factor=[bid,raw,fs,ft]);results.append(item)
    try:
        factor=a.mono(raw)
        lower=multiply(20-fs,147-ft,factor,fs,ft)
        upper=multiply(23-fs,149-ft,factor,fs,ft)
        sw=d2['comparisons']['20,147']['wire'];tw=d2['comparisons']['23,149']['wire']
        lo_cols=[mat_ev(sw['projection'],sw['h'],sw['m'],ev(lower,[int(i==j) for i in range(lower['cols'])])) for j in range(lower['cols'])]
        up_cols=[mat_ev(tw['projection'],tw['h'],tw['m'],ev(upper,[int(i==j) for i in range(upper['cols'])])) for j in range(upper['cols'])]
        good=[]
        if lower['cols']>16:raise ValueError('bounded coefficient span too large')
        for x in itertools.product([0,1],repeat=lower['cols']):
            image=[sum(col[i]*v for col,v in zip(lo_cols,x))%2 for i in range(sw['h'])]
            if image==[0,1,0]:good.append(x)
        targetzero=all(not any(col) for col in up_cols)
        item.update(status='complete_E2_products',representatives=good,upper_columns=up_cols,targetzero=targetzero,source_map=lower,target_map=upper)
        if good:print('factorization',item['factor'],'reps',good,'alltargetzero',targetzero,flush=True)
    except (ValueError,AssertionError,sqlite3.Error) as error:item.update(status='unresolved',reason=str(error))
(HERE/'factorization.json').write_text(json.dumps(dict(results=results,scope='Untrusted product factorization; source cycles and full quotient meaning still required.'),indent=2)+'\n')
print('screened',len(results),'complete',sum(x['status']=='complete_E2_products' for x in results))
