"""Complete d2 charts and d0-action reductions for the extra DC2h6 d4 source."""
import importlib.util
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
spec = importlib.util.spec_from_file_location('helper', ROOT/'Row3147MapSearch/search_lifted.py')
h = importlib.util.module_from_spec(spec)
spec.loader.exec_module(h)
ring = h.alg.connection('S0_AdamsSS_t261.db')
module = h.alg.connection('DC2h6_AdamsSS_t200.db')
ring_relations = list(ring.execute('select rowid,rel,s,t from S0_AdamsE2_relations order by rowid'))
module_relations = list(module.execute('select rowid,rel,s,t from DC2h6_AdamsE2_relations order by rowid'))
generators = dict((i,(s,t)) for i,s,t in module.execute('select id,s,t from DC2h6_AdamsE2_generators'))
canonical = lambda value: json.dumps(value,sort_keys=True,separators=(',',':'))+'\n'
blocks = {}
lines = ['import ModuleToModuleCertificates.ShiftedImport',
         'import PageTransitionCertificates.Import', 'import PageTransitionCertificates.InducedMap',
         'namespace Fact721FirstD6DC2h6.Data',
         'open LinearCertificates PageTransitionCertificates ModuleToModuleCertificates',
         'set_option maxRecDepth 16384', 'set_option maxHeartbeats 8000000']
for name,obj,degree in [
        ('d0','S0',(4,18)), ('d0Out3','S0',(7,20)), ('d0Out4','S0',(8,21)),
        ('y','DC2h6',(9,117)), ('yOut3','DC2h6',(12,119)),
        ('yOutOut3','DC2h6',(15,121)), ('z','DC2h6',(13,120)),
        ('source','DC2h6',(13,135)), ('target','DC2h6',(17,138))]:
    c = ring if obj=='S0' else module
    b = h.comparison(c,obj,*degree,h.metadata(c))
    b.update(object=obj,degree=degree,staircase=[list(x) for x in c.execute(
        f'select id,base,diff,level from {obj}_AdamsE2_ss where s=? and t=? order by id',degree)])
    blocks[name] = b
    (HERE/'wire'/f'{name}.json').write_text(canonical(b['wire']))
    lines += [f'def {name} : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/{name}.json"',
              f'theorem {name}_valid : {name}.Valid := by lin_cert using ()', f'#print axioms {name}_valid']
records = []
for label,center in [('sourceAction',(9,117)),('targetAction',(13,120))]:
    for suffix,ds,dt in [('',0,0),('Upper',2,1),('Lower',-2,-1)]:
        s,t = center[0]+ds,center[1]+dt
        ts,tt = s+4,t+18
        src = list(module.execute('select id,mon from DC2h6_AdamsE2_basis where s=? and t=? order by id',(s,t)))
        tgt = list(module.execute('select id,mon from DC2h6_AdamsE2_basis where s=? and t=? order by id',(ts,tt)))
        source = [h.module_mon(raw) for _,raw in src]
        target = [h.module_mon(raw) for _,raw in tgt]
        source_gens = sorted({g for _,g in source})
        si = {g:i for i,g in enumerate(source_gens)}
        images = [[((8,),g)] for g in source_gens]
        rules = []
        for rid,raw,rs,rt in module_relations:
            if rs<=ts and rt<=tt:
                rules.append((dict(kind='module',rowid=rid,raw=raw,degree=[rs,rt]),[h.module_mon(x) for x in raw.split(';')]))
        for g,(gs,gt) in generators.items():
            if gs>ts or gt>tt: continue
            for rid,raw,rs,rt in ring_relations:
                if gs+rs<=ts and gt+rt<=tt:
                    rules.append((dict(kind='ring_lift',rowid=rid,raw=raw,module_generator=g,
                                       degree=[gs+rs,gt+rt]),[(h.alg.mono(x),g) for x in raw.split(';')]))
        used,origins,traces,outputs = [],[],[],[]
        for coeff,g in source:
            cur = {(tuple(sorted((8,)+coeff)),g)}
            trace,seen = [],set()
            for _ in range(10000):
                bad = next((m for m in sorted(cur) if m not in target),None)
                if bad is None: break
                state = tuple(sorted(cur))
                if state in seen: raise ValueError('reduction cycle')
                seen.add(state)
                choice = next(((origin,terms,h.alg.divide(bad[0],terms[0][0])) for origin,terms in rules
                    if terms and bad[1]==terms[0][1] and h.alg.divide(bad[0],terms[0][0]) is not None),None)
                if choice is None: raise ValueError(f'no reduction {label} {s},{t}: {bad}')
                origin,terms,q = choice
                trace.append(dict(relation=len(used),multiplier=[q]))
                used.append(terms)
                origins.append(origin)
                cur.symmetric_difference_update(h.alg.parity((tuple(sorted(q+c)),j) for c,j in terms))
            else: raise ValueError('reduction limit')
            outputs.append(cur)
            traces.append(trace)
        target_gens = sorted({g for terms in [*images,*used,target] for _,g in terms})
        ti = {g:i for i,g in enumerate(target_gens)}
        def expression(terms,indices):
            value = [[] for _ in indices]
            for coeff,g in terms: value[indices[g]].append(list(coeff))
            return value
        algebra = dict(version=1,sourceS=0,sourceT=0,targetS=0,targetT=0,
            sourceGenerators=len(si),targetGenerators=len(ti),rows=len(target),cols=len(source),
            images=[expression(terms,ti) for terms in images],source=[expression([m],si) for m in source],
            target=[expression([m],ti) for m in target],relations=[expression(terms,ti) for terms in used],
            entries=[m in out for m in target for out in outputs],terms=traces)
        wire = dict(version=1,filtration=4,suspension=-14,sourceS=s,sourceT=t,targetS=ts,targetT=tt,algebra=algebra)
        name = label+suffix
        (HERE/'wire'/f'{name}.json').write_text(canonical(wire))
        records.append(dict(name=name,source_degree=[s,t],target_degree=[ts,tt],source=src,target=tgt,
                            source_generators=source_gens,target_generators=target_gens,
                            wire=wire,relation_sources=origins))
        lines += [f'def {name} : ShiftedWire := shifted_module_map% "Fact721FirstD6DC2h6/wire/{name}.json"',
                  f'theorem {name}_valid : {name}.Valid := by lin_cert using ()',f'#print axioms {name}_valid']
for name,src,tgt in [('sourceAction','y','source'),('targetAction','z','target')]:
    lines += [f'theorem {name}_compatible : CompatibleMap',
        f'    (matrixOf {src}.k {src}.m {src}.outgoing) (matrixOf {src}.m {src}.n {src}.incoming)',
        f'    (matrixOf {tgt}.k {tgt}.m {tgt}.outgoing) (matrixOf {tgt}.m {tgt}.n {tgt}.incoming)',
        f'    {name}.algebra.mat {name}Upper.algebra.mat {name}Lower.algebra.mat := by lin_cert using ()',
        f'def {name}3 := coordinateMap {src}.comparison {tgt}.comparison {name}.algebra.mat',
        f'#print axioms {name}_compatible']
lines += ['theorem source_action3 : ∀ v : Vec 1, eval sourceAction3 v = (fun i => if i.val = 0 then v ⟨0,by decide⟩ else false) := by decide',
          'theorem target_action3 : ∀ v : Vec 1, eval targetAction3 v = zero := by decide',
          '#print axioms source_action3', '#print axioms target_action3',
          'end Fact721FirstD6DC2h6.Data']
(HERE/'Data.lean').write_text('\n'.join(lines)+'\n')
(HERE/'source.json').write_text(json.dumps(dict(comparisons=blocks,matrices=records,
    source_sha256={p:h.digest(ROOT/'upstream/kervaire-49'/p) for p in ['S0_AdamsSS_t261.db','DC2h6_AdamsSS_t200.db']},
    scripts_sha256={str(p.relative_to(ROOT)):h.digest(p) for p in [Path(__file__),ROOT/'Row3147MapSearch/search_lifted.py',ROOT/'RealMapCertificates/export.py']},
    recorded_nonzero_d3=[1966,12,119,'0','0,1',9997],
    unknown_preserved=[1893,2952,2953,3219],
    limitation='Finite d2 quotients and whole module-action matrices only; actual E2, relations, map equations, quotient transitions, and recorded d3 meaning remain explicit.'),indent=2)+'\n')
print(len(blocks),'complete d2 comparisons;',len(records),'full action matrices')
for name,b in blocks.items(): print(name,{k:b['wire'][k] for k in ['n','m','k','h']})
for record in records: print(record['name'],record['wire']['algebra']['entries'],record['relation_sources'])
