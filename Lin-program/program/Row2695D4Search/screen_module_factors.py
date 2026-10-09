"""Bounded E3 annihilator searches for the remaining actual d3 columns.

Only complete d2 quotients are accepted. Outputs are search evidence, not
actual module actions or theorems of differential compatibility.
"""
import importlib.util
import itertools
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
spec = importlib.util.spec_from_file_location('helper', ROOT/'Row3147MapSearch/search_lifted.py')
h = importlib.util.module_from_spec(spec)
spec.loader.exec_module(h)
ring = h.alg.connection('S0_AdamsSS_t261.db')
ring_rel = list(ring.execute('SELECT rowid,rel,s,t FROM S0_AdamsE2_relations ORDER BY rowid'))
factors = [f for f in json.loads((HERE/'products-screen.json').read_text())['results']
           if 'factor_E3' in f and any(f['factor_E3']) and f['degree'][1] <= 30]
results = []
for obj, ss, st, indices in [('DC2h6',10,135,[1]), ('Ceta',10,135,[0,1]), ('C2',8,71,[0,1])]:
    mod = h.alg.connection(obj+'_AdamsSS_t200.db')
    meta = h.metadata(mod)
    gens = dict((i,(s,t)) for i,s,t in mod.execute(f'SELECT id,s,t FROM {obj}_AdamsE2_generators'))
    rules = [(dict(kind='module',rowid=i,raw=raw), [h.module_mon(x) for x in raw.split(';')],s,t)
             for i,raw,s,t in mod.execute(f'SELECT rowid,rel,s,t FROM {obj}_AdamsE2_relations ORDER BY rowid')]
    lift_cache = {}
    comparisons = {}
    def comparison(s,t):
        if (s,t) not in comparisons:
            comparisons[s,t] = h.comparison(mod,obj,s,t,meta)
        return comparisons[s,t]
    def product(factor,s,t,v,fs,ft):
        source = comparison(s,t)['rows'][1]
        target = comparison(s+fs,t+ft)['rows'][1]
        lookup = {h.module_mon(row['mon']):i for i,row in enumerate(target)}
        current = set()
        for bit,row in zip(v,source):
            if bit:
                co,g = h.module_mon(row['mon'])
                current.symmetric_difference_update(h.alg.parity((tuple(sorted(co+c)),g) for c in factor))
        initial = sorted(current)
        trace,seen = [],set()
        for _ in range(10000):
            bad = next((x for x in sorted(current) if x not in lookup),None)
            if bad is None: break
            if tuple(sorted(current)) in seen: raise ValueError('reduction cycle')
            seen.add(tuple(sorted(current)))
            g = bad[1]
            if g not in lift_cache:
                gs,gt = gens[g]
                lift_cache[g] = [(dict(kind='ring_lift',rowid=i,raw=raw,generator=g),
                    [(h.alg.mono(x),g) for x in raw.split(';')],rs+gs,rt+gt)
                    for i,raw,rs,rt in ring_rel]
            choice = next(((origin,terms,h.alg.divide(bad[0],terms[0][0]))
                for origin,terms,rs,rt in itertools.chain(rules,lift_cache[g])
                if terms and rs<=s+fs and rt<=t+ft and terms[0][1]==g
                and h.alg.divide(bad[0],terms[0][0]) is not None),None)
            if choice is None: raise ValueError('no reducing relation')
            origin,terms,q = choice
            current.symmetric_difference_update(h.alg.parity((tuple(sorted(q+c)),j) for c,j in terms))
            trace.append(dict(origin=origin,multiplier=q))
        else: raise ValueError('reduction step limit')
        raw = [int(h.module_mon(row['mon']) in current) for row in target]
        w = comparison(s+fs,t+ft)['wire']
        if any(h.ev(w['outgoing'],w['k'],w['m'],raw)): raise ValueError('not a d2 cycle')
        return dict(initial=initial,trace=trace,raw=raw,E3=h.ev(w['projection'],w['h'],w['m'],raw))
    entry = dict(object=obj,degree=[ss,st],source_indices=indices,factors=[])
    results.append(entry)
    src = comparison(ss,st)['wire']
    tgt = comparison(ss+3,st+2)['wire']
    for f in factors:
        fs,ft = f['degree']
        rec = {k:f[k] for k in ['degree','basis_ids','basis_monomials']}
        entry['factors'].append(rec)
        try:
            factor = {h.alg.mono(x) for x in f['basis_monomials']}
            rec['source'] = product(factor,ss,st,[int(i in indices) for i in range(src['m'])],fs,ft)
            rec['targets'] = [product(factor,ss+3,st+2,
                [tgt['inclusion'][i*tgt['h']+j] for i in range(tgt['m'])],fs,ft) for j in range(tgt['h'])]
            rec['status'] = 'candidate' if not any(rec['source']['E3']) and any(any(x['E3']) for x in rec['targets']) else 'no_detection'
        except (ValueError,AssertionError) as error:
            rec.update(status='unknown',reason=str(error))
    entry['comparisons'] = {f'{s},{t}':v for (s,t),v in comparisons.items()}
    print(obj, len(entry['factors']), 'factors',flush=True)
    for x in entry['factors']:
        if x['status']=='candidate': print(x['degree'],x['basis_ids'],[v['E3'] for v in x['targets']],flush=True)
(HERE/'module-factors.json').write_text(json.dumps(dict(results=results,
    scope='All previously enumerated nonzero E3 low factors with 0<t<=30; no d3 semantic conclusion'),indent=2)+'\n')
