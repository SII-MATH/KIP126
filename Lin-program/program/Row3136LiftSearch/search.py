"""Screen every configured direct module-to-sphere map for exact E3 lifts."""
import hashlib
import importlib.util
import itertools
import json
from pathlib import Path
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
BASE = ROOT / 'upstream/kervaire-49'
spec = importlib.util.spec_from_file_location('bounded_map_helpers', ROOT / 'Row3147MapSearch/search_lifted.py')
helper = importlib.util.module_from_spec(spec)
spec.loader.exec_module(helper)
alg = helper.alg
config = json.loads((ROOT / 'upstream/category-inventory.json').read_text())
objects = {r['source']['name']: r['source'] for r in config['records'] if r['section'] in ['rings','modules']}
sphere = alg.connection(objects['S0']['path'])
relations = [(id,raw,s,t,[alg.mono(x) for x in raw.split(';')]) for id,raw,s,t in
    sphere.execute('SELECT rowid,rel,s,t FROM S0_AdamsE2_relations WHERE s<=22 AND t<=141 ORDER BY rowid')]
sphere_comparison = helper.comparison(sphere, 'S0', 20, 140, helper.metadata(sphere))
sw = sphere_comparison['wire']
assert sw['h'] == 2 and helper.ev(sw['projection'], 2, 3, [1,0,0]) == [1,0]
source_files = {objects['S0']['path']}
results = []
for record in config['records']:
    if record['section'] != 'maps' or record['source'].get('to') != 'S0':
        continue
    mp = record['source']; name = mp['from']; f = mp.get('fil', 0); sus = mp.get('sus', 0)
    ss,st = 20-f,140+sus-f
    result = dict(map=mp, source_degree=[ss,st], target_degree=[20,140])
    results.append(result)
    try:
        source = alg.connection(objects[name]['path']); meta = helper.metadata(source)
        helper.require_basis_window(meta, (ss+2,st+1))
        if st > mp['t_max']: raise ValueError('outside declared map window')
        source_files.update([objects[name]['path'], mp['path']])
        mc = alg.connection(mp['path'])
        tables = [r[0] for r in mc.execute("SELECT name FROM sqlite_master WHERE type='table' AND name LIKE 'map_AdamsE2_%'")]
        assert len(tables) == 1
        images = dict(mc.execute(f'SELECT id,map FROM {tables[0]}'))
        complete = []
        for s,t in [(ss-2,st-1),(ss,st),(ss+2,st+1)]:
            ts,tt = s+f,t-sus+f
            target = sphere.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(ts,tt)).fetchall()
            lookup = {alg.mono(raw):i for i,(_,raw,_) in enumerate(target)}
            rows = source.execute(f'SELECT id,mon,d2 FROM {name}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
            outputs,traces = [],[]
            for id,raw,d2 in rows:
                coefficient,generator = helper.module_mon(raw)
                if generator not in images or images[generator] is None: raise ValueError('unknown generator image')
                current = alg.multiply({coefficient}, alg.poly(images[generator]))
                trace,seen = [],set()
                for step in range(10000):
                    bad = next((x for x in sorted(current) if x not in lookup), None)
                    if bad is None: break
                    state = tuple(sorted(current))
                    if state in seen: raise ValueError('reduction cycle')
                    seen.add(state)
                    choice = next(((rid,raw,rs,rt,terms,alg.divide(bad,terms[0]))
                        for rid,raw,rs,rt,terms in relations if terms and rs<=ts and rt<=tt and alg.divide(bad,terms[0]) is not None), None)
                    if choice is None: raise ValueError('missing reducing relation')
                    rid,rel,rs,rt,terms,multiplier=choice
                    current.symmetric_difference_update(alg.multiply({multiplier},terms))
                    trace.append(dict(relation_row=rid,raw=rel,degree=[rs,rt],multiplier=multiplier))
                else: raise ValueError('reduction step limit')
                outputs.append([i for mon,i in lookup.items() if mon in current])
                traces.append(dict(source_basis=id,generator=generator,generator_image=images[generator],reductions=trace))
            matrix = [i in column for i in range(len(target)) for column in outputs]
            complete.append(dict(source_degree=[s,t],target_degree=[ts,tt],source_rows=rows,target_rows=target,matrix=matrix,traces=traces))
        comp = helper.comparison(source,name,ss,st,meta);cw=comp['wire']
        result.update(complete_maps=complete,source_comparison=comp)
        lower,middle,upper=complete
        for j in range(cw['n']):
            x=[int(i==j) for i in range(cw['n'])]
            left=helper.ev(middle['matrix'],sw['m'],cw['m'],helper.ev(cw['incoming'],cw['m'],cw['n'],x))
            right=helper.ev(sw['incoming'],sw['m'],sw['n'],helper.ev(lower['matrix'],sw['n'],cw['n'],x))
            assert left==right
        for j in range(cw['m']):
            x=[int(i==j) for i in range(cw['m'])]
            left=helper.ev(sw['outgoing'],sw['k'],sw['m'],helper.ev(middle['matrix'],sw['m'],cw['m'],x))
            right=helper.ev(upper['matrix'],sw['k'],cw['k'],helper.ev(cw['outgoing'],cw['k'],cw['m'],x))
            assert left==right
        lifts=[]
        for j in range(cw['h']):
            v=[int(i==j) for i in range(cw['h'])]
            raw=helper.ev(cw['inclusion'],cw['m'],cw['h'],v)
            mapped=helper.ev(middle['matrix'],sw['m'],cw['m'],raw)
            output=helper.ev(sw['projection'],sw['h'],sw['m'],mapped)
            if output==[1,0]: lifts.append(dict(source_E3=v,source_E2=raw,target_E2=mapped))
        staircase=source.execute(f'SELECT id,s,t,base,diff,level FROM {name}_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(ss,st)).fetchall()
        result.update(status='exact_E3_lift' if lifts else 'no_E3_lift',lifts=lifts,source_staircase=staircase)
    except (ValueError,AssertionError,sqlite3.Error,KeyError) as error:
        result.update(status='unknown',reason=str(error))
out=dict(status='bounded_finite_source_map_search',results=results,sphere_comparison=sphere_comparison,
    meaning='Complete finite E2 chain maps and their E3 image; no actual all-page map or source permanence supplied.',
    input_sha256={name:hashlib.sha256((BASE/name).read_bytes()).hexdigest() for name in sorted(source_files)})
(HERE/'map-sources.json').write_text(json.dumps(out,indent=2)+'\n')
for x in results:
    print(x['map']['name'],x['source_degree'],x['status'],x.get('source_staircase',x.get('reason')))
