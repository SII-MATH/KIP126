"""Bounded ordinary-factor E4 image screen; complete comparisons required."""
import importlib.util
import json
import sqlite3
import collections
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
AGG=ROOT/'AggregateC2H2Conditional'
spec=importlib.util.spec_from_file_location('helper',ROOT/'Row3147MapSearch/search_lifted.py')
h=importlib.util.module_from_spec(spec);spec.loader.exec_module(h)


def run():
    data=json.loads((AGG/'source.json').read_text());dag=json.loads((AGG/'dag.json').read_text())
    prefix=(AGG/'generate.py').read_text().split('\ncandidates=[]')[0]
    ns={'__file__':str(AGG/'generate.py')};exec(compile(prefix,str(AGG/'generate.py'),'exec'),ns)
    ns.update(cache=dict(data['blocks']),failures={},dag=dag)
    c=h.alg.connection('S0_AdamsSS_t261.db');meta=h.metadata(c);seen=set()
    def visit(s,t,r):
        key=f'S0:{s},{t}:d{r}'
        if key in seen:return
        for a,b in [(s-r,t-r+1),(s,t),(s+r,t+r-1)]:
            h.require_basis_window(meta,(a,b))
            e2=c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(a,b)).fetchall()
            ss=c.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(a,b)).fetchall()
            value=dict(object='S0',degree=[a,b],e2=[list(x) for x in e2],staircase=[list(x) for x in ss])
            if f'S0:{a},{b}' in dag['degrees']:assert dag['degrees'][f'S0:{a},{b}']==value
            dag['degrees'][f'S0:{a},{b}']=value
        pred=[]
        if r>2:
            for a,b in [(s-r,t-r+1),(s,t),(s+r,t+r-1)]:visit(a,b,r-1);pred.append(f'S0:{a},{b}:d{r-1}')
        elif t>meta['d2_t_max']:raise ValueError('outside d2 coverage')
        dag['blocks'][key]=dict(object='S0',center=[s,t],page=r,predecessors=pred);seen.add(key)
    def project(s,t,v):
        visit(s,t,3);ns['build']('S0',s,t,3)
        w2=ns['cache'][f'S0:{s},{t}:d2']['wire'];w3=ns['cache'][f'S0:{s},{t}:d3']['wire']
        if any(h.ev(w2['outgoing'],w2['k'],w2['m'],v)):raise ValueError('not a d2 cycle')
        e3=h.ev(w2['projection'],w2['h'],w2['m'],v)
        if any(h.ev(w3['outgoing'],w3['k'],w3['m'],e3)):raise ValueError('not a d3 cycle')
        return h.ev(w3['projection'],w3['h'],w3['m'],e3)
    relations=[(rid,raw,[h.alg.mono(x) for x in raw.split(';')],s,t) for rid,raw,s,t in c.execute('SELECT rowid,rel,s,t FROM S0_AdamsE2_relations ORDER BY rowid')]
    def product(factor,s,t,indices,fs,ft):
        h.require_basis_window(meta,(s+fs,t+ft))
        source=c.execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
        target=c.execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s+fs,t+ft)).fetchall()
        lookup={h.alg.mono(raw):i for i,(_,raw) in enumerate(target)};cur=set();trace=[];states=set()
        for j in indices:cur.symmetric_difference_update(h.alg.multiply(factor,{h.alg.mono(source[j][1])}))
        initial=sorted(cur)
        for _ in range(10000):
            bad=next((m for m in sorted(cur) if m not in lookup),None)
            if bad is None:break
            state=tuple(sorted(cur))
            if state in states:raise ValueError('reduction cycle')
            states.add(state)
            choice=next(((rid,raw,terms,rs,rt,h.alg.divide(bad,terms[0])) for rid,raw,terms,rs,rt in relations if terms and rs<=s+fs and rt<=t+ft and h.alg.divide(bad,terms[0]) is not None),None)
            if choice is None:raise ValueError('no reducing relation')
            rid,raw,terms,rs,rt,q=choice
            trace.append(dict(rowid=rid,raw=raw,degree=[rs,rt],multiplier=q))
            cur.symmetric_difference_update(h.alg.multiply({q},terms))
        else:raise ValueError('reduction limit')
        coords=sorted(lookup[m] for m in cur)
        return dict(source_degree=[s,t],target_degree=[s+fs,t+ft],source_indices=indices,source_basis=source,target_basis=target,input=initial,trace=trace,coordinates=coords)
    prior=json.loads((ROOT/'AggregateThreeProductConditional/Remaining/screen.json').read_text())
    factors=next(x for x in prior['results'] if x['row'][0]==2576)['factors']
    assert len(factors)==91
    results=[]
    for f in factors:
        entry={k:f[k] for k in ['degree','basis_ids','basis_monomials']};fs,ft=f['degree'];results.append(entry)
        try:
            rows=c.execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(fs,ft)).fetchall()
            fv=[int(rid in f['basis_ids']) for rid,_ in rows]
            entry['factor_E4']=project(fs,ft,fv)
            factor={h.alg.mono(raw) for raw in f['basis_monomials']}
            for label,s,t,idx in [('source',4,132,[0]),('target0',8,135,[2]),('target1',8,135,[1])]:
                item=product(factor,s,t,idx,fs,ft);entry[label]=item
                n=len(item['target_basis']);v=[int(i in item['coordinates']) for i in range(n)]
                item['E4']=project(s+fs,t+ft,v)
            entry['status']='source_nonzero_E4' if any(entry['source']['E4']) else 'candidate_needs_full_product_compatibility' if any(entry['target0']['E4']) or any(entry['target1']['E4']) else 'target_zero_E4'
        except ValueError as exc:entry.update(status='unknown',reason=str(exc))
    output=dict(schema='row2576_d4_ordinary_factor_screen/v1',scope='91 nonzero homogeneous d2-cycle combinations from all S0 E2 factors 0<t<=30; only complete E4 quotients accepted',
        metadata=meta,counts=dict(collections.Counter(x['status'] for x in results)),results=results,
        comparisons={k:ns['cache'][k] for k in sorted(seen) if k in ns['cache']},failures=ns['failures'],degrees=dag['degrees'],
        source_sha256=data['database_sha256'],aggregate_sha256=h.digest(AGG/'source.json'),generator_sha256=h.digest(AGG/'generate.py'),
        factor_screen_sha256=h.digest(ROOT/'AggregateThreeProductConditional/Remaining/screen.json'),script_sha256=h.digest(Path(__file__)),
        claim='Numerical images only; no product descent or d4 conclusion asserted. Existing d3 conditional inputs retained.')
    (HERE/'products.json').write_text(json.dumps(output,indent=2,sort_keys=True)+'\n')
    print('products',output['counts'])
    print('candidates',[(x['degree'],x['basis_ids']) for x in results if x['status']=='candidate_needs_full_product_compatibility'])
if __name__=='__main__':run()
