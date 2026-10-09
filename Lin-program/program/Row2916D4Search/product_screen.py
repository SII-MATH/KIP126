"""Screen the two Leibniz terms for exact Ceta and C2 lifts."""
import importlib.util
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sp=importlib.util.spec_from_file_location('helper',ROOT/'Row3147MapSearch/search_lifted.py')
h=importlib.util.module_from_spec(sp);sp.loader.exec_module(h)
ring=h.alg.connection('S0_AdamsSS_t261.db')
records=[]
for obj,gid,t in [('Ceta',15,38),('C2',16,37)]:
    mod=h.alg.connection(obj+'_AdamsSS_t200.db')
    gens=dict((i,(s,t)) for i,s,t in mod.execute(f'SELECT id,s,t FROM {obj}_AdamsE2_generators'))
    rules=[]
    for rid,raw,s,t0 in mod.execute(f'SELECT rowid,rel,s,t FROM {obj}_AdamsE2_relations ORDER BY rowid'):
        if s<=16 and t0<=t+103:rules.append((dict(kind='module',rowid=rid,raw=raw),[h.module_mon(x) for x in raw.split(';')],s,t0))
    for g,(gs,gt) in gens.items():
        if gs>16 or gt>t+103:continue
        for rid,raw,rs,rt in ring.execute('SELECT rowid,rel,s,t FROM S0_AdamsE2_relations WHERE s<=? AND t<=? ORDER BY rowid',(16-gs,t+103-gt)):
            rules.append((dict(kind='ring_lift',rowid=rid,raw=raw,generator=g),[(h.alg.mono(x),g) for x in raw.split(';')],rs+gs,rt+gt))
    for label,coeff,source_degree in [('source',(181,),(5,t)),('rightTerm',(181,),(8,t+2)),('leftTerm',(23,76),(5,t)),('leftTermOther',(0,189),(5,t))]:
        shift=(11,103) if label.startswith('leftTerm') else (8,101)
        target_degree=(source_degree[0]+shift[0],source_degree[1]+shift[1])
        comp=h.comparison(mod,obj,*target_degree,h.metadata(mod));wire=comp['wire']
        target=[h.module_mon(x['mon']) for x in comp['rows'][1]]
        source=h.comparison(mod,obj,*source_degree,h.metadata(mod))
        columns=[]
        for row in source['rows'][1]:
            co,g=h.module_mon(row['mon']);cur={(tuple(sorted(coeff+co)),g)};trace=[];seen=set()
            for _ in range(10000):
                bad=next((x for x in sorted(cur) if x not in target),None)
                if bad is None:break
                assert tuple(sorted(cur)) not in seen;seen.add(tuple(sorted(cur)))
                choice=next(((origin,terms,h.alg.divide(bad[0],terms[0][0])) for origin,terms,rs,rt in rules
                    if rs<=target_degree[0] and rt<=target_degree[1] and terms and bad[1]==terms[0][1]
                    and h.alg.divide(bad[0],terms[0][0]) is not None),None)
                if choice is None:raise ValueError((obj,label,bad))
                origin,terms,q=choice;trace.append(dict(origin=origin,multiplier=q))
                cur.symmetric_difference_update(h.alg.parity((tuple(sorted(q+c)),j) for c,j in terms))
            raw=[int(mon in cur) for mon in target]
            columns.append(dict(source=row,output=raw,projection=h.ev(wire['projection'],wire['h'],wire['m'],raw),trace=trace))
        rec=dict(object=obj,label=label,coefficient=coeff,source_degree=source_degree,target_degree=target_degree,
            source_comparison=source,target_comparison=comp,columns=columns)
        records.append(rec)
        print(obj,label,[(x['source']['id'],x['projection']) for x in columns])
(HERE/'product-screen.json').write_text(json.dumps(records,indent=2)+'\n')
