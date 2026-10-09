"""Complete shifted DC2h6 coefficient matrices with explicit relation provenance."""
import hashlib
import importlib.util
import json
import sqlite3
from pathlib import Path

p = Path(__file__).resolve().parent
r = p.parent
base = r / 'upstream/kervaire-49'
sc = sqlite3.connect(f'file:{base}/S0_AdamsSS_t261.db?mode=ro', uri=True)
tc = sqlite3.connect(f'file:{base}/DC2h6_AdamsSS_t200.db?mode=ro', uri=True)
spec = importlib.util.spec_from_file_location('helper', r / 'Row3147MapSearch/search_lifted.py')
helper = importlib.util.module_from_spec(spec)
spec.loader.exec_module(helper)
a = helper.alg
source_metadata, target_metadata = helper.metadata(sc), helper.metadata(tc)
degrees = [(7,133), (9,134), (11,135), (10,135), (12,136), (14,137)]
max_s, max_t = max(s for s,t in degrees), max(t for s,t in degrees)
ring_generators = dict((i,(s,t)) for i,s,t in sc.execute('select id,s,t from S0_AdamsE2_generators'))
module_generators = dict((i,(s,t)) for i,s,t in tc.execute('select id,s,t from DC2h6_AdamsE2_generators'))
relations = []
for rid,raw,s,t in tc.execute('select rowid,rel,s,t from DC2h6_AdamsE2_relations order by rowid'):
    if s <= max_s and t <= max_t:
        terms = [helper.module_mon(x) for x in raw.split(';')]
        relations.append((dict(kind='module', database='DC2h6_AdamsSS_t200.db',
                               table='DC2h6_AdamsE2_relations', rowid=rid, raw=raw, degree=[s,t]), terms))
ring_relations = list(sc.execute('select rowid,rel,s,t from S0_AdamsE2_relations where s<=? and t<=? order by rowid',(max_s,max_t)))
for g,(gs,gt) in module_generators.items():
    if gs > max_s or gt > max_t:
        continue
    for rid,raw,rs,rt in ring_relations:
        if rs+gs <= max_s and rt+gt <= max_t:
            terms = [(a.mono(x),g) for x in raw.split(';')]
            relations.append((dict(kind='ring_lift', database='S0_AdamsSS_t261.db',
                table='S0_AdamsE2_relations', rowid=rid, raw=raw, ring_degree=[rs,rt],
                module_generator=g, module_generator_degree=[gs,gt], degree=[rs+gs,rt+gt]), terms))
factor_rows = tc.execute('select id,mon from DC2h6_AdamsE2_basis where s=0 and t=0 order by id').fetchall()
assert factor_rows == [(0,'0')]
factor = helper.module_mon(factor_rows[0][1])
assert helper.monomial_degree(factor,module_generators,False,ring_generators) == (0,0)
lines = ['import ModuleToModuleCertificates.ShiftedImport',
         'set_option maxRecDepth 8192', 'set_option maxHeartbeats 4000000',
         'namespace Row2695Detector.Actual', 'open ModuleToModuleCertificates LinProgramCertificates']
audit = []
(p/'wire').mkdir(exist_ok=True)
for s,t in degrees:
    helper.require_basis_window(source_metadata,(s,t))
    helper.require_basis_window(target_metadata,(s,t))
    source = sc.execute('select id,mon from S0_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall()
    target_raw = tc.execute('select id,mon from DC2h6_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall()
    target = [(i,helper.module_mon(raw)) for i,raw in target_raw]
    lookup = {m:i for i,(_,m) in enumerate(target)}
    outputs, used, provenance, certificates = [], [], [], []
    for bid,raw in source:
        assert helper.monomial_degree(a.mono(raw),ring_generators,True,ring_generators) == (s,t)
        cur = {(tuple(sorted(a.mono(raw)+factor[0])),factor[1])}
        trace,seen = [],set()
        for _ in range(10000):
            bad = next((m for m in sorted(cur) if m not in lookup),None)
            if bad is None:
                break
            state = tuple(sorted(cur))
            if state in seen:
                raise ValueError('reduction cycle')
            seen.add(state)
            def divide(x,y):
                return a.divide(x[0],y[0]) if x[1] == y[1] else None
            chosen = next(((origin,terms,divide(bad,terms[0])) for origin,terms in relations
                           if terms and origin['degree'][0] <= s and origin['degree'][1] <= t
                           and divide(bad,terms[0]) is not None),None)
            if chosen is None:
                raise ValueError(f'no reduction for source basis {bid}: {bad}')
            origin,terms,q = chosen
            assert all(helper.monomial_degree(m,module_generators,False,ring_generators)
                       == tuple(origin['degree']) for m in terms)
            trace.append(dict(relation=len(used),multiplier=[q]))
            used.append(terms)
            provenance.append(origin)
            cur.symmetric_difference_update(a.parity((tuple(sorted(q+co)),g) for co,g in terms))
        else:
            raise ValueError('reduction step limit')
        outputs.append(cur)
        certificates.append(trace)
    generators = 1 + max([factor[1]]+[g for _,(_,g) in target]+[g for rel in used for _,g in rel])
    def expression(terms,n):
        result = [[] for _ in range(n)]
        for co,g in terms:
            result[g].append(list(co))
        return result
    algebra = dict(version=1,sourceS=0,sourceT=0,targetS=0,targetT=0,
                   sourceGenerators=1,targetGenerators=generators,rows=len(target),cols=len(source),
                   images=[expression([factor],generators)],
                   source=[expression([(a.mono(raw),0)],1) for _,raw in source],
                   target=[expression([m],generators) for _,m in target],
                   relations=[expression(rel,generators) for rel in used],
                   entries=[m in out for _,m in target for out in outputs],terms=certificates)
    wire = dict(version=1,filtration=0,suspension=0,sourceS=s,sourceT=t,targetS=s,targetT=t,algebra=algebra)
    filename = f'wire/s{s}t{t}.json'
    (p/filename).write_text(json.dumps(wire,sort_keys=True,separators=(',',':'))+'\n')
    lines += [f'def m{s}_{t} : ShiftedWire := shifted_module_map% "Row2695Detector/{filename}"',
              f'theorem m{s}_{t}_valid : m{s}_{t}.Valid := by lin_cert using ()']
    audit.append(dict(source_degree=[s,t],target_degree=[s,t],source=source,target=target_raw,
                      wire=wire,relation_sources=provenance))
lines += ['end Row2695Detector.Actual']
(p/'Actual.lean').write_text('\n'.join(lines)+'\n')
provenance = dict(map='S0__DC2h6',filtration=0,suspension=0,factor=dict(id=0,mon='0',degree=[0,0]),
                  raw_row=sc.execute('select id,s,t,base,diff,level from S0_AdamsE2_ss where id=2695').fetchone(),
                  sources={name:hashlib.sha256((base/name).read_bytes()).hexdigest()
                           for name in ['S0_AdamsSS_t261.db','DC2h6_AdamsSS_t200.db']},
                  source_metadata=source_metadata,target_metadata=target_metadata,
                  matrices=audit)
(p/'source.json').write_text(json.dumps(provenance,indent=2)+'\n')
print('six complete shifted matrices;',sum(len(b['source']) for b in audit),'columns;',
      sum(len(b['relation_sources']) for b in audit),'explicit reductions')
