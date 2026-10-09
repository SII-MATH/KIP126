"""Search ordinary factors; never replace unavailable products or pages by zero."""
import importlib.util
import json
import runpy
from pathlib import Path

p=Path(__file__).resolve().parent
h=runpy.run_path(str(p/'audit.py'))
c=h['c'];r=h['r'];ns=h['ns'];visit=h['visit']
spec=importlib.util.spec_from_file_location('algebra',r/'RealMapCertificates/export.py')
a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
rels=[(i,[a.mono(x) for x in raw.split(';')],s,t)
      for i,raw,s,t in c.execute('select rowid,rel,s,t from S0_AdamsE2_relations order by rowid')]
def basis(s,t):
    return [(i,a.mono(raw)) for i,raw in c.execute(
        'select id,mon from S0_AdamsE2_basis where s=? and t=? order by id',(s,t))]
def product(f,s,t,j,fs,ft):
    source=basis(s,t);target=basis(s+fs,t+ft);idx={m:i for i,(_,m) in enumerate(target)}
    cur=a.multiply({f},{source[j][1]});seen=set();used=[]
    for _ in range(10000):
        bad=next((m for m in sorted(cur) if m not in idx),None)
        if bad is None:return dict(coordinates=sorted(idx[m] for m in cur),relation_rowids=used)
        state=tuple(sorted(cur))
        if state in seen:raise ValueError('reduction cycle')
        seen.add(state)
        z=next(((rr,a.divide(bad,rr[1][0])) for rr in rels
                if rr[2]<=s+fs and rr[3]<=t+ft and a.divide(bad,rr[1][0]) is not None),None)
        if z is None:raise ValueError('reduction unavailable')
        rr,mult=z;used.append(rr[0]);cur.symmetric_difference_update(a.multiply({mult},rr[1]))
    raise ValueError('reduction limit')

results=[]
for bid,raw,fs,ft,d2 in c.execute('select id,mon,s,t,d2 from S0_AdamsE2_basis where 0<t and t<=30 order by t,s,id'):
    entry=dict(id=bid,mon=raw,degree=[fs,ft],d2=d2)
    try:
        entry['source_product']=product(a.mono(raw),8,135,2,fs,ft)
        entry['target_product']=product(a.mono(raw),12,138,3,fs,ft)
        if entry['source_product']['coordinates']:entry['status']='source_not_literal_zero'
        elif not entry['target_product']['coordinates']:entry['status']='target_literal_zero'
        else:
            entry['status']='candidate_needs_E4'
            entry['E4_inputs']={}
            for name,(s,t) in dict(factor=(fs,ft),source_product=(8+fs,135+ft),target_product=(12+fs,138+ft)).items():
                visit(s,t,3)
                ns['dag']['degrees'].update(h['degrees'])
                ns['dag']['blocks'].update(h['nodes'])
                try:
                    w=ns['build']('S0',s,t,3)['wire']
                    entry['E4_inputs'][name]=dict(status='complete_finite_comparison',dimension=w['h'])
                except ValueError as e:entry['E4_inputs'][name]=dict(status='blocked',reason=str(e))
    except ValueError as e:entry.update(status='product_unknown',reason=str(e))
    results.append(entry)
from collections import Counter
report=dict(scope='all S0 E2 ring basis factors with 0<t<=30, no filtration restriction',
    database_sha256=h['dag']['summary']['database_sha256'],counts=dict(Counter(x['status'] for x in results)),factors=results)
(p/'search.json').write_text(json.dumps(report,indent=2)+'\n')
print(report['counts'])
