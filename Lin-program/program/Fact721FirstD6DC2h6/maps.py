"""Whole bottom-cell maps and complete detector d2 neighborhoods."""
import importlib.util
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
spec = importlib.util.spec_from_file_location('helper',ROOT/'Row3147MapSearch/search_lifted.py')
h = importlib.util.module_from_spec(spec)
spec.loader.exec_module(h)
ring = h.alg.connection('S0_AdamsSS_t261.db')
module = h.alg.connection('DC2h6_AdamsSS_t200.db')
ring_relations = list(ring.execute('select rowid,rel,s,t from S0_AdamsE2_relations order by rowid'))
module_relations = list(module.execute('select rowid,rel,s,t from DC2h6_AdamsE2_relations order by rowid'))
module_generators = dict((i,(s,t)) for i,s,t in module.execute('select id,s,t from DC2h6_AdamsE2_generators'))
canonical = lambda value: json.dumps(value,sort_keys=True,separators=(',',':'))+'\n'
blocks,records = {},[]
lines = ['import Fact721FirstD6DC2h6.Data','namespace Fact721FirstD6DC2h6.Maps',
         'open LinearCertificates PageTransitionCertificates ModuleToModuleCertificates',
         'set_option maxRecDepth 16384','set_option maxHeartbeats 8000000']
for name,degree in [('first',(11,133)),('incoming4',(13,135)),('incoming5',(12,134)),('target',(17,138))]:
    for obj,c in [('S0',ring),('DC2h6',module)]:
        b = h.comparison(c,obj,*degree,h.metadata(c))
        key = name+('Sphere' if obj=='S0' else 'Detector')
        b.update(object=obj,degree=degree,staircase=[list(x) for x in c.execute(
            f'select id,base,diff,level from {obj}_AdamsE2_ss where s=? and t=? order by id',degree)])
        blocks[key] = b
        (HERE/'wire'/f'{key}.json').write_text(canonical(b['wire']))
        lines += [f'def {key} : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/{key}.json"',
                  f'theorem {key}_valid : {key}.Valid := by lin_cert using ()',f'#print axioms {key}_valid']
    for suffix,ds,dt in [('',0,0),('Upper',2,1),('Lower',-2,-1)]:
        s,t = degree[0]+ds,degree[1]+dt
        src = list(ring.execute('select id,mon from S0_AdamsE2_basis where s=? and t=? order by id',(s,t)))
        tgt = list(module.execute('select id,mon from DC2h6_AdamsE2_basis where s=? and t=? order by id',(s,t)))
        target = [h.module_mon(raw) for _,raw in tgt]
        source = [(h.alg.mono(raw),0) for _,raw in src]
        rules = [(dict(kind='module',rowid=i,raw=raw,degree=[rs,rt]),[h.module_mon(x) for x in raw.split(';')])
                 for i,raw,rs,rt in module_relations if rs<=s and rt<=t]
        for g,(gs,gt) in module_generators.items():
            if gs>s or gt>t: continue
            rules += [(dict(kind='ring_lift',rowid=i,raw=raw,module_generator=g,degree=[gs+rs,gt+rt]),
                       [(h.alg.mono(x),g) for x in raw.split(';')])
                      for i,raw,rs,rt in ring_relations if gs+rs<=s and gt+rt<=t]
        used,origins,traces,outputs = [],[],[],[]
        for mon in source:
            current,trace,seen = {mon},[],set()
            for _ in range(10000):
                bad = next((m for m in sorted(current) if m not in target),None)
                if bad is None: break
                state = tuple(sorted(current))
                if state in seen: raise ValueError('reduction cycle')
                seen.add(state)
                choice = next(((origin,terms,h.alg.divide(bad[0],terms[0][0])) for origin,terms in rules
                    if terms and bad[1]==terms[0][1] and h.alg.divide(bad[0],terms[0][0]) is not None),None)
                if choice is None: raise ValueError(f'no reduction {name}{suffix}: {bad}')
                origin,terms,q = choice
                trace.append(dict(relation=len(used),multiplier=[q]))
                used.append(terms)
                origins.append(origin)
                current.symmetric_difference_update(h.alg.parity((tuple(sorted(q+c)),g) for c,g in terms))
            else: raise ValueError('reduction bound')
            outputs.append(current)
            traces.append(trace)
        generators = sorted({0,*[g for terms in [target,*used] for _,g in terms]})
        ti = {g:i for i,g in enumerate(generators)}
        def expression(terms,indices):
            result = [[] for _ in indices]
            for coeff,g in terms: result[indices[g]].append(list(coeff))
            return result
        algebra = dict(version=1,sourceS=0,sourceT=0,targetS=0,targetT=0,sourceGenerators=1,
            targetGenerators=len(ti),rows=len(target),cols=len(source),images=[expression([((),0)],ti)],
            source=[[list(coeff)] for coeff,_ in source],target=[expression([mon],ti) for mon in target],
            relations=[expression(terms,ti) for terms in used],
            entries=[mon in output for mon in target for output in outputs],terms=traces)
        # A module expression contains one polynomial per source generator.
        algebra['source'] = [[[list(coeff)]] for coeff,_ in source]
        wire = dict(version=1,filtration=0,suspension=0,sourceS=s,sourceT=t,targetS=s,targetT=t,algebra=algebra)
        key = name+'Map'+suffix
        (HERE/'wire'/f'{key}.json').write_text(canonical(wire))
        records.append(dict(name=key,degree=[s,t],source=src,target=tgt,target_generators=generators,
                            wire=wire,relation_sources=origins))
        lines += [f'def {key} : ShiftedWire := shifted_module_map% "Fact721FirstD6DC2h6/wire/{key}.json"',
                  f'theorem {key}_valid : {key}.Valid := by lin_cert using ()',f'#print axioms {key}_valid']
    lines += [f'theorem {name}_compatible : CompatibleMap',
        f'    (matrixOf {name}Sphere.k {name}Sphere.m {name}Sphere.outgoing) (matrixOf {name}Sphere.m {name}Sphere.n {name}Sphere.incoming)',
        f'    (matrixOf {name}Detector.k {name}Detector.m {name}Detector.outgoing) (matrixOf {name}Detector.m {name}Detector.n {name}Detector.incoming)',
        f'    {name}Map.algebra.mat {name}MapUpper.algebra.mat {name}MapLower.algebra.mat := by lin_cert using ()',
        f'def {name}Map3 := coordinateMap {name}Sphere.comparison {name}Detector.comparison {name}Map.algebra.mat',
        f'#print axioms {name}_compatible']
for name,degree in [('incoming3',(14,136)),('incoming3prior',(11,134)),('incoming3out',(17,138))]:
    b = h.comparison(module,'DC2h6',*degree,h.metadata(module))
    b.update(object='DC2h6',degree=degree,staircase=[list(x) for x in module.execute(
        'select id,base,diff,level from DC2h6_AdamsE2_ss where s=? and t=? order by id',degree)])
    blocks[name] = b
    (HERE/'wire'/f'{name}.json').write_text(canonical(b['wire']))
    lines += [f'def {name} : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/{name}.json"',
              f'theorem {name}_valid : {name}.Valid := by lin_cert using ()',f'#print axioms {name}_valid']
lines += ['theorem incoming5_map3 : ∀ v : Vec 2, eval incoming5Map3 v = v := by decide',
          'theorem target_map3 : ∀ v : Vec 1, eval targetMap3 v = (fun _ => v ⟨0,by decide⟩) := by decide',
          'theorem first_map3_named : eval firstMap3 (fun i => i.val == 1) = zero := by decide',
          '#print axioms incoming5_map3','#print axioms target_map3','#print axioms first_map3_named',
          'end Fact721FirstD6DC2h6.Maps']
(HERE/'Maps.lean').write_text('\n'.join(lines)+'\n')
(HERE/'maps.json').write_text(json.dumps(dict(comparisons=blocks,matrices=records,
    source_sha256={p:h.digest(ROOT/'upstream/kervaire-49'/p) for p in ['S0_AdamsSS_t261.db','DC2h6_AdamsSS_t200.db']},
    limitation='Whole E2 bottom-cell matrices and finite induced E3 maps. Actual map meanings and quotient naturality remain premises.'),indent=2)+'\n')
print(len(blocks),'d2 comparisons;',len(records),'whole bottom-cell matrices')
