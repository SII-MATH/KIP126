"""Bounded configured-map E4 availability screen for Row2858 d4.

Exact existing conditional comparisons are reused; no d4 or permanence assumed.
Candidates are numerical until complete map compatibility is verified.
"""
import importlib.util
import json
import sqlite3
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('bounded_maps',ROOT/'Row3147MapSearch/search_lifted.py')
h=importlib.util.module_from_spec(spec);spec.loader.exec_module(h)
AGG=ROOT/'AggregateD5Conditional'


def run():
    source=json.loads((AGG/'source.json').read_text())
    dag=json.loads((AGG/'dag.json').read_text())
    cfg=json.loads((ROOT/'upstream/category-inventory.json').read_text())
    objects={x['source']['name']:x['source'] for x in cfg['records'] if x['section'] in ['rings','modules']}
    connections={}
    def db(n):
        if n not in connections:connections[n]=h.alg.connection(objects[n]['path'])
        return connections[n]
    raw=list(db('S0').execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2858').fetchone())
    assert raw==[2858,10,136,'2',None,9000]
    target2=source['blocks']['S0:14,139:d2']['wire']
    target3=source['blocks']['S0:14,139:d3']['wire']
    assert target3['h']==1
    target_reps=[]
    for j in range(1):
        e3=[target3['inclusion'][i*target3['h']+j] for i in range(target3['m'])]
        e2=h.ev(target2['inclusion'],target2['m'],target2['h'],e3)
        target_reps.append([i for i,v in enumerate(e2) if v])
    assert target_reps==[[1]]
    h.HERE=HERE
    h.SELECTED=[('source',10,136,[2]),('target',14,139,target_reps[0])]
    report=h.run()
    prefix=(AGG/'generate.py').read_text().split('\ncandidates=[]')[0]
    ns={'__file__':str(AGG/'generate.py')}
    exec(compile(prefix,str(AGG/'generate.py'),'exec'),ns)
    ns['cache']=dict(source['blocks']);ns['failures']={};ns['dag']=dag
    coverage={}
    def visit(n,s,t,page):
        key=f'{n}:{s},{t}:d{page}'
        if key in coverage:return
        meta=h.metadata(db(n))
        for a,b in [(s-page,t-page+1),(s,t),(s+page,t+page-1)]:
            h.require_basis_window(meta,(a,b))
            columns=[x[1] for x in db(n).execute(f'PRAGMA table_info({n}_AdamsE2_basis)')]
            if 'd2' not in columns:raise ValueError('no d2 column')
            e2=db(n).execute(f'SELECT id,mon,d2 FROM {n}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(a,b)).fetchall()
            ss=db(n).execute(f'SELECT id,base,diff,level FROM {n}_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(a,b)).fetchall()
            value=dict(object=n,degree=[a,b],e2=[list(x) for x in e2],staircase=[list(x) for x in ss])
            old=dag['degrees'].get(f'{n}:{a},{b}')
            if old is not None:assert old==value
            dag['degrees'][f'{n}:{a},{b}']=value
        pred=[]
        if page>2:
            for a,b in [(s-page,t-page+1),(s,t),(s+page,t+page-1)]:
                visit(n,a,b,page-1);pred.append(f'{n}:{a},{b}:d{page-1}')
        else:
            if t>meta['d2_t_max']:raise ValueError(f"d2 t={t} exceeds d2_t_max={meta['d2_t_max']}")
        dag['blocks'][key]=dict(object=n,center=[s,t],page=page,predecessors=pred)
        coverage[key]=dict(object=n,center=[s,t],page=page,metadata=meta)
    def project(n,s,t,e2):
        w2=ns['cache'][f'{n}:{s},{t}:d2']['wire']
        w3=ns['cache'][f'{n}:{s},{t}:d3']['wire']
        if any(h.ev(w2['outgoing'],w2['k'],w2['m'],e2)):raise ValueError('not a d2 cycle')
        e3=h.ev(w2['projection'],w2['h'],w2['m'],e2)
        if any(h.ev(w3['outgoing'],w3['k'],w3['m'],e3)):raise ValueError('not a d3 cycle')
        return h.ev(w3['projection'],w3['h'],w3['m'],e3)
    for record in report['maps']:
        n=record['map']['to'];stages={}
        for label in ['source','target']:
            item=record.get(label)
            if not item or 'coordinates' not in item:
                stages[label]=dict(status='unknown',reason=(item or record).get('reason','missing coefficient reduction'));continue
            s,t=item['degree']
            try:
                visit(n,s,t,3);ns['build'](n,s,t,3)
                w2=ns['cache'][f'{n}:{s},{t}:d2']['wire']
                e2=[int(i in item['coordinates']) for i in range(w2['m'])]
                coords=project(n,s,t,e2)
                stages[label]=dict(status='complete_E4_image',coordinates=coords,degree=[s,t])
            except (ValueError,KeyError,sqlite3.Error) as error:
                stages[label]=dict(status='unknown',reason=str(error),degree=[s,t])
        if all(x['status']=='complete_E4_image' for x in stages.values()):
            status='source_nonzero_E4' if any(stages['source']['coordinates']) else 'candidate_needs_full_map_compatibility' if any(stages['target']['coordinates']) else 'target_not_injective_E4'
        else:status='unknown'
        record['E4']=dict(status=status,stages=stages)
    import collections
    report.update(schema='fact762_source4_configured_E4_screen/v1',row=raw,target_E4_basis_E2_indices=target_reps,
        inherited_source_blocks=['S0:10,136:d2','S0:14,139:d3'],
        E4_counts=dict(collections.Counter(x['E4']['status'] for x in report['maps'])),
        aggregate_sha256=h.digest(AGG/'source.json'),generator_sha256=h.digest(AGG/'generate.py'),
        wrapper_sha256=h.digest(Path(__file__)),
        claim='Numerical E4 image availability only, inherited conditional d3 premises retained; no full map compatibility or d4 theorem asserted.')
    (HERE/'lifted-search.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
    used={k:ns['cache'][k] for k in sorted(coverage) if k in ns['cache']}
    (HERE/'comparisons.json').write_text(json.dumps(dict(blocks=used,coverage=coverage,failures=ns['failures'],degrees=dag['degrees']),indent=2,sort_keys=True)+'\n')
    print('E4:',report['E4_counts'])
    print('E4 candidates:',[x['map']['name'] for x in report['maps'] if x['E4']['status']=='candidate_needs_full_map_compatibility'])

if __name__=='__main__':run()
