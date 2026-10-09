"""Complete action of the degree (12,108) cycle on Cnu generator 30 and its differential target."""
import hashlib
import importlib.util
import itertools
import json
import sqlite3
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
BASE=ROOT/'upstream/kervaire-49'
spec=importlib.util.spec_from_file_location('helper',ROOT/'Row3147MapSearch/search_lifted.py')
h=importlib.util.module_from_spec(spec);spec.loader.exec_module(h)
spec=importlib.util.spec_from_file_location('audit',ROOT/'Row3147MapSearch/review.py')
a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
ring=h.alg.connection('S0_AdamsSS_t261.db')
module=h.alg.connection('Cnu_AdamsSS_t200.db')
mapping=h.alg.connection('map_AdamsSS_Cnu_to_S0_t200.db')
raw_images=dict(mapping.execute('SELECT id,map FROM map_AdamsE2_Cnu_to_S0'))
ring_gen=dict((i,(s,t)) for i,s,t in ring.execute('SELECT id,s,t FROM S0_AdamsE2_generators'))
module_gen=dict((i,(s,t)) for i,s,t in module.execute('SELECT id,s,t FROM Cnu_AdamsE2_generators'))
ring_relations=list(ring.execute('SELECT rowid,rel,s,t FROM S0_AdamsE2_relations ORDER BY rowid'))
module_relations=list(module.execute('SELECT rowid,rel,s,t FROM Cnu_AdamsE2_relations ORDER BY rowid'))
canonical=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
(HERE/'wire').mkdir(exist_ok=True)
records=[]
lines=['import ModuleToModuleCertificates.ShiftedImport','namespace Fact713Row3247ProductSearch.Maps',
       'open ModuleToModuleCertificates','set_option maxRecDepth 100000','set_option maxHeartbeats 8000000']
for kind,center in itertools.product(['factor'],[(10,55),(13,57)]):
    for ds,dt in [(-2,-1),(0,0),(2,1)]:
        s,t=center[0]+ds,center[1]+dt
        shift=(12,108)
        ts,tt=(s,t-4) if kind=='top' else (s+shift[0],t+shift[1])
        tc=ring if kind=='top' else module;tn='S0' if kind=='top' else 'Cnu'
        src=list(module.execute('SELECT id,mon FROM Cnu_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)))
        tgt=list(tc.execute(f'SELECT id,mon FROM {tn}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(ts,tt)))
        source=[h.module_mon(raw) for _,raw in src]
        target=[(h.alg.mono(raw),0) if kind=='top' else h.module_mon(raw) for _,raw in tgt]
        source_gens=sorted({g for _,g in source})
        si={g:i for i,g in enumerate(source_gens)}
        images=[]
        for g in source_gens:
            img=sorted((coeff,0) for coeff in h.alg.poly(raw_images[g])) if kind=='top' else [((212,),g),((3,178),g)]
            expected=(module_gen[g][0],module_gen[g][1]-4) if kind=='top' else (module_gen[g][0]+shift[0],module_gen[g][1]+shift[1])
            for term in img:
                assert h.monomial_degree(term,dict([(0,(0,0))]) if kind=='top' else module_gen,False,ring_gen)==expected
            images.append(img)
        rules=[]
        if kind=='top':
            for rid,raw,rs,rt in ring_relations:
                if rs<=ts and rt<=tt:rules.append((dict(kind='ring',rowid=rid,raw=raw,degree=[rs,rt]),[(h.alg.mono(x),0) for x in raw.split(';')]))
        else:
            for rid,raw,rs,rt in module_relations:
                if rs<=ts and rt<=tt:rules.append((dict(kind='module',rowid=rid,raw=raw,degree=[rs,rt]),[h.module_mon(x) for x in raw.split(';')]))
            for g,(gs,gt) in module_gen.items():
                if gs>ts or gt>tt:continue
                for rid,raw,rs,rt in ring_relations:
                    if gs+rs<=ts and gt+rt<=tt:rules.append((dict(kind='ring_lift',rowid=rid,raw=raw,module_generator=g,degree=[gs+rs,gt+rt]),[(h.alg.mono(x),g) for x in raw.split(';')]))
        used=[];origins=[];traces=[];outputs=[]
        for coeff,g in source:
            cur=h.alg.parity((tuple(sorted(coeff+c)),j) for c,j in images[si[g]])
            trace=[];seen=set()
            for _ in range(10000):
                bad=next((m for m in sorted(cur) if m not in target),None)
                if bad is None:break
                state=tuple(sorted(cur));assert state not in seen;seen.add(state)
                choice=next(((origin,terms,h.alg.divide(bad[0],terms[0][0])) for origin,terms in rules
                    if terms and bad[1]==terms[0][1] and h.alg.divide(bad[0],terms[0][0]) is not None),None)
                if choice is None:raise ValueError(f'{kind} {s},{t}: no reduction {bad}')
                origin,terms,q=choice
                trace.append(dict(relation=len(used),multiplier=[q]));used.append(terms);origins.append(origin)
                cur.symmetric_difference_update(h.alg.parity((tuple(sorted(q+c)),j) for c,j in terms))
            else:raise ValueError('10000 step limit')
            outputs.append(cur);traces.append(trace)
        target_gens=sorted({j for terms in [*images,*used,target] for _,j in terms})
        ti={g:i for i,g in enumerate(target_gens)}
        def expression(terms,indices):
            v=[[] for _ in indices]
            for coeff,g in terms:v[indices[g]].append(list(coeff))
            return v
        algebra=dict(version=1,sourceS=0,sourceT=0,targetS=0,targetT=0,
            sourceGenerators=len(si),targetGenerators=len(ti),rows=len(target),cols=len(source),
            images=[expression(terms,ti) for terms in images],source=[expression([mon],si) for mon in source],
            target=[expression([mon],ti) for mon in target],relations=[expression(terms,ti) for terms in used],
            entries=[mon in out for mon in target for out in outputs],terms=traces)
        wire=dict(version=1,filtration=0 if kind=='top' else shift[0],suspension=4 if kind=='top' else shift[0]-shift[1],
            sourceS=s,sourceT=t,targetS=ts,targetT=tt,algebra=algebra)
        name=f'{kind}_{s}_{t}'
        (HERE/'wire'/f'{name}.json').write_text(canonical(wire))
        lines += [f'def {name} : ShiftedWire := shifted_module_map% "Fact713Row3247ProductSearch/wire/{name}.json"',
                  f'theorem {name}_valid : {name}.Valid := by lin_cert using ()',f'#print axioms {name}_valid']
        records.append(dict(name=name,kind=kind,source_degree=[s,t],target_degree=[ts,tt],source=src,target=tgt,
            source_generators=source_gens,target_generators=target_gens,raw_images={g:raw_images[g] for g in source_gens} if kind=='top' else None,
            wire=wire,relation_sources=origins))
lines += ['end Fact713Row3247ProductSearch.Maps']
(HERE/'Maps.lean').write_text('\n'.join(lines)+'\n')
blocks={}
for obj,s,t in [('Cnu',10,55),('Cnu',13,57),('Cnu',22,163),('Cnu',25,165),('S0',12,108),('S0',15,110)]:
    c=ring if obj=='S0' else module
    b=h.comparison(c,obj,s,t,h.metadata(c));a.check_wire(b['wire'])
    b.update(object=obj,degree=[s,t],raw=[list(x) for x in c.execute(f'SELECT id,base,diff,level FROM {obj}_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t))])
    blocks[f'{obj}_{s}_{t}']=b
maps={}
for kind,(s,t) in itertools.product(['factor'],[(10,55),(13,57)]):
    source=blocks[f'Cnu_{s}_{t}']['wire']
    ds,dt=(12,108)
    tn,ts,tt=('S0',s,t-4) if kind=='top' else ('Cnu',s+ds,t+dt)
    target=blocks[f'{tn}_{ts}_{tt}']['wire']
    def mat(ds,dt):return next(r['wire']['algebra']['entries'] for r in records if r['name']==f'{kind}_{s+ds}_{t+dt}')
    M,U,L=mat(0,0),mat(2,1),mat(-2,-1)
    assert a.matmul(target['outgoing'],M,target['k'],target['m'],source['m'])==a.matmul(U,source['outgoing'],target['k'],source['k'],source['m'])
    assert a.matmul(M,source['incoming'],target['m'],source['m'],source['n'])==a.matmul(target['incoming'],L,target['m'],target['n'],source['n'])
    maps[f'{kind}_{s}_{t}']=dict(source=source['h'],target=target['h'],entries=a.matmul(target['projection'],a.matmul(M,source['inclusion'],target['m'],source['m'],source['h']),target['h'],target['m'],source['h']))
out=dict(matrices=records,comparisons=blocks,E3_maps=maps,
    source_sha256={name:sha(BASE/name) for name in ['S0_AdamsSS_t261.db','Cnu_AdamsSS_t200.db','map_AdamsSS_Cnu_to_S0_t200.db']})
(HERE/'provenance.json').write_text(json.dumps(out,indent=2)+'\n')
print(len(records),'full matrices',sum(len(x['source']) for x in records),'columns',sum(len(x['relation_sources']) for x in records),'reductions')
print(json.dumps(maps,indent=2))
