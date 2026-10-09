"""Seek zero-product detection of Cnu generator 30 using low sphere cycles."""
import importlib.util
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('helper',ROOT/'Row3147MapSearch/search_lifted.py')
h=importlib.util.module_from_spec(spec);spec.loader.exec_module(h)
r=h.alg.connection('S0_AdamsSS_t261.db');m=h.alg.connection('Cnu_AdamsSS_t200.db')
gens=dict((i,(s,t)) for i,s,t in m.execute('SELECT id,s,t FROM Cnu_AdamsE2_generators'))
rr=list(r.execute('SELECT rowid,rel,s,t FROM S0_AdamsE2_relations ORDER BY rowid'))
mr=list(m.execute('SELECT rowid,rel,s,t FROM Cnu_AdamsE2_relations ORDER BY rowid'))
cache={}
def quotient(obj,s,t):
    key=obj,s,t
    if key not in cache:
        db=r if obj=='S0' else m
        cache[key]=h.comparison(db,obj,s,t,h.metadata(db))
    return cache[key]
def multiply(coeffs,mon,s,t):
    b=quotient('Cnu',s,t);target=[h.module_mon(x['mon']) for x in b['rows'][1]]
    cur=h.alg.parity((tuple(sorted(c+mon[0])),mon[1]) for c in coeffs)
    rules=[]
    for rid,raw,rs,rt in mr:
        if rs<=s and rt<=t:rules.append((rid,'module',[h.module_mon(x) for x in raw.split(';')]))
    for g,(gs,gt) in gens.items():
        if gs>s or gt>t:continue
        for rid,raw,rs,rt in rr:
            if gs+rs<=s and gt+rt<=t:rules.append((rid,'ring',[(h.alg.mono(x),g) for x in raw.split(';')]))
    trace=[];seen=set()
    for _ in range(10000):
        bad=next((x for x in sorted(cur) if x not in target),None)
        if bad is None:break
        state=tuple(sorted(cur));assert state not in seen;seen.add(state)
        choice=next(((rid,kind,terms,h.alg.divide(bad[0],terms[0][0])) for rid,kind,terms in rules
                    if terms and terms[0][1]==bad[1] and h.alg.divide(bad[0],terms[0][0]) is not None),None)
        if choice is None:raise ValueError(f'no reduction {bad}')
        rid,kind,terms,q=choice;trace.append(dict(rowid=rid,kind=kind,multiplier=q))
        cur.symmetric_difference_update(h.alg.parity((tuple(sorted(q+c)),g) for c,g in terms))
    else:raise ValueError('step bound')
    w=b['wire'];v=[x in cur for x in target]
    assert not any(h.ev(w['outgoing'],w['k'],w['m'],v))
    return dict(E2=v,E3=h.ev(w['projection'],w['h'],w['m'],v),trace=trace,
                raw=[list(x) for x in m.execute('SELECT id,base,diff,level FROM Cnu_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t))])
records=[]
for s,t in r.execute('SELECT DISTINCT s,t FROM S0_AdamsE2_basis WHERE t<=30 AND s>0 ORDER BY t,s'):
    b=quotient('S0',s,t);w=b['wire']
    if not w['h']:continue
    dt=quotient('S0',s+3,t+2)['wire']
    for j in range(w['h']):
        vector=[int(w['inclusion'][i*w['h']+j]) for i in range(w['m'])]
        coeff=[h.alg.mono(row['mon']) for row,bit in zip(b['rows'][1],vector) if bit]
        item=dict(degree=[s,t],coordinate=j,representative=vector,monomials=coeff,
            sphere_d3_target_dimension=dt['h'])
        try:
            item['source_product']=multiply(coeff,((),30),s+10,t+55)
            item['target_product']=multiply(coeff,((8,19),1),s+13,t+57)
            item['source_zero']=not any(item['source_product']['E3'])
            item['target_nonzero']=any(item['target_product']['E3'])
        except (AssertionError,ValueError) as e:item['failure']=str(e)
        records.append(item)
        if item.get('target_nonzero'):print(json.dumps(item),flush=True)
(HERE/'generator30-screen.json').write_text(json.dumps(records,indent=2)+'\n')
print('screened',len(records),'classes; detectors',sum(x.get('target_nonzero',False) for x in records))
