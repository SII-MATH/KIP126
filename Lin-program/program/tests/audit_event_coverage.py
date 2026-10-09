#!/usr/bin/env python3
"""Audit the 90-event DAG against SQLite coverage, columns, and provenance.

No generator or Lean build runs. The output is a consistency audit, not proof
of Adams realization or of the imported staircase-prefix interpretation.
"""
import collections
import hashlib
import json
import sqlite3
from functools import lru_cache
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
AGGREGATE = ROOT/'AggregateThreeProductConditional'
OUTPUT = ROOT/'tests/output/event-coverage-audit.json'


def require(ok, message):
    if not ok:
        raise ValueError(message)


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def indices(raw, dimension):
    require(raw is not None and raw not in ['[NULL]', '?', '-1'], 'unknown column')
    xs = [] if raw == '' else list(map(int, raw.split(',')))
    require(xs == sorted(set(xs)) and all(0 <= i < dimension for i in xs), 'invalid column coordinates')
    return xs


def coverage_kind(t, meta, groups, wire):
    require(t+1 <= meta['t_max'], 'basis outside E2 coverage')
    if t <= meta['d2_t_max']:
        return 'within_declared_d2_window'
    require(all(not rows for rows in groups), 'nonempty block outside d2 coverage')
    require(all(wire[k] == 0 for k in ['k','m','n','h']), 'empty block has nonzero dimension')
    require(all(wire[k] == [] for k in ['incoming','outgoing','inclusion','projection','up','down']),
            'empty block has nonempty matrix data')
    return 'structurally_empty_E2_spaces_within_E2_window'


def negative_checks():
    zero = dict(k=0,m=0,n=0,h=0,incoming=[],outgoing=[],inclusion=[],projection=[],up=[],down=[])
    meta = dict(t_max=261,d2_t_max=177)
    require(coverage_kind(179,meta,[[],[],[]],zero).startswith('structurally_empty'), 'structural zero rejected')
    tests = [lambda: coverage_kind(179,meta,[[],[[1,'',None]],[]],zero),
             lambda: coverage_kind(261,meta,[[],[],[]],zero),
             lambda: coverage_kind(179,meta,[[],[],[]],dict(zero,m=1)),
             lambda: indices(None,0),lambda: indices('4294967295',1)]
    for i,test in enumerate(tests):
        try:
            test()
        except ValueError:
            continue
        raise ValueError(f'negative audit test {i} passed')
    return len(tests)


def run():
    negative = negative_checks()
    paths = [AGGREGATE/'source.json',AGGREGATE/'dag.json',AGGREGATE/'event-results.json']
    source,dag,events = [json.loads(p.read_text()) for p in paths]
    database = ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
    c = sqlite3.connect(f'file:{database}?mode=ro',uri=True)
    meta = dict(c.execute('SELECT name,value FROM version'))
    digest = sha(database)
    require(source['database_sha256']==dag['summary']['database_sha256']=={'S0':digest}, 'database digest mismatch')
    require(len(source['blocks'])==333 and len(dag['blocks'])==391 and len(dag['rows'])==101,
            'aggregate scope changed; review counts')
    snapshots = {}
    null_basis_rows = {}
    for key,item in dag['degrees'].items():
        name = item['object'];s,t = item['degree']
        require(name=='S0' and key==f'S0:{s},{t}', 'degree identity mismatch')
        require(t<=meta['t_max'], 'DAG degree outside E2 coverage')
        e2 = c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
        ss = c.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
        require(item['e2']==[list(x) for x in e2] and item['staircase']==[list(x) for x in ss], f'snapshot changed: {key}')
        snapshots[s,t]=item
        for rid,mon,d2 in e2:
            if d2 is None:
                null_basis_rows[rid]=dict(id=rid,degree=[s,t],mon=mon)

    @lru_cache(None)
    def closure(key):
        require(key in dag['blocks'], 'event root outside DAG')
        return frozenset([key]).union(*(closure(x) for x in dag['blocks'][key]['predecessors']))

    complete_d2=[];structural=[];unique_columns={};null_dependencies={}
    for key,node in dag['blocks'].items():
        name=node['object'];s,t=node['center'];page=node['page']
        require(name=='S0' and key==f'S0:{s},{t}:d{page}', 'block identity mismatch')
        expected=[] if page==2 else [f'S0:{a},{b}:d{page-1}' for a,b in [(s-page,t-page+1),(s,t),(s+page,t+page-1)]]
        require(node['predecessors']==expected, 'wrong predecessor neighborhood')
        if key in source['blocks']:
            b=source['blocks'][key]
            require(b['predecessors']==expected and b['center']==[s,t] and b['page']==page and b['object']==name,
                    'complete block does not match DAG')
            require(all(x in source['blocks'] for x in expected), 'complete block has incomplete predecessor')
        if page!=2:
            continue
        groups=[snapshots[a,b]['e2'] for a,b in [(s-2,t-1),(s,t),(s+2,t+1)]]
        nulls=[x[0] for group in groups[:2] for x in group if x[2] is None]
        if nulls:
            require(key not in source['blocks'], 'NULL raw d2 included in completed comparison')
            null_dependencies[key]=nulls
        if key not in source['blocks']:
            require(key in source['failures'], 'uncompleted block lacks failure reason')
            continue
        b=source['blocks'][key];w=b['wire']
        require(b['uses']==[], 'd2 comparison has a conditional override')
        require([len(g) for g in groups]==[w['n'],w['m'],w['k']], 'complete d2 dimensions')
        kind=coverage_kind(t,meta,groups,w)
        entry=dict(key=key,center=[s,t],basis_degrees=[[s-2,t-1],[s,t],[s+2,t+1]],
                   dimensions=dict(k=w['k'],m=w['m'],n=w['n'],h=w['h']),coverage=kind)
        for field,rows,dim,degree in [('incoming',groups[0],w['m'],[s-2,t-1]),('outgoing',groups[1],w['k'],[s,t])]:
            cs=[]
            for rid,mon,raw in rows:
                xs=indices(raw,dim)
                cs.append(xs)
                col=dict(id=rid,degree=degree,mon=mon,raw=raw,target_dimension=dim)
                require(rid not in unique_columns or unique_columns[rid]==col, 'inconsistent duplicated raw column')
                unique_columns[rid]=col
            require(w[field]==[i in col for i in range(dim) for col in cs], 'raw d2 column matrix mismatch')
        complete_d2.append(entry)
        if kind.startswith('structurally_empty'):
            structural.append(entry)
    require(len(complete_d2)==214, 'unexpected completed d2 count')
    require([x['key'] for x in structural]==['S0:55,179:d2'], 'structural-empty exception changed')

    allowed={
        (3076,3):('conditional_ceta',[15,139],'1,3'),
        (2858,3):('conditional_leibniz',[10,136],'2'),
        (3143,3):('conditional_c2_successor',[17,140],'0'),
        (3005,3):('conditional_c2_prefix',[14,138],'2'),
        (2693,3):('conditional_h0_h2_leibniz',[10,134],'4'),
        (2861,3):('conditional_csigma',[9,136],'1'),
        (2796,3):('conditional_h3_d0',[8,135],'2'),
        (2796,4):('conditional_d4_module',[8,135],'2'),
        (3325,3):('conditional_three_products',[15,142],'2'),
    }
    kinds=collections.Counter();null_kinds=collections.Counter();conditional=[];prefix_null=[]
    for key,b in source['blocks'].items():
        for u in b['uses']:
            o=u['object'];s,t=u['source'];r=u['page'];rid,base,diff,level=u['row'];kind=u['kind']
            require(r>2 and o=='S0', 'conditional at raw d2 level')
            raw=c.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE id=? AND s=? AND t=?',(rid,s,t)).fetchone()
            require(list(raw)==u['row'], 'staircase-use source changed')
            pred=f'S0:{s+r},{t+r-1}:d{r-1}'
            require(u['target_predecessor']==pred and pred in source['blocks'], 'missing use codomain predecessor')
            kinds[kind]+=1
            if diff is None:
                null_kinds[kind]+=1
            if kind.startswith('conditional'):
                require((rid,r) in allowed and allowed[rid,r]==(kind,[s,t],base) and diff is None and level==9000,
                        'unrecognized conditional override')
                conditional.append(dict(block=key,**u))
            elif kind=='stored_event':
                require(level==10000-r and diff is not None, 'unknown stored event')
                indices(diff,len(snapshots[s+r,t+r-1]['e2']))
            elif kind=='stored_zero_prefix_or_boundary':
                require(2<=level<5000 or 9000<level<10000-r, 'invalid earlier-page prefix rule')
                if diff is None:
                    prefix_null.append(dict(block=key,**u))
            elif kind=='checked_zero_codomain':
                require(source['blocks'][pred]['wire']['h']==0, 'unknown replaced by zero with nonzero codomain')
            else:
                raise ValueError('unrecognized event use '+kind)
    for u in source['attempted_overrides']:
        rid,base,diff,level=u['row'];r=u['page']
        require((rid,r) in allowed and allowed[rid,r]==(u['kind'],u['source'],base) and diff is None and level==9000,
                'unrecognized attempted conditional override')
    require(sum(kinds.values())==218 and len(conditional)==11, 'conditional provenance scope changed')
    accepted=[x for x in events if x['status']=='finite_nonzero_event']
    unresolved=[x for x in events if x['status']=='unresolved']
    require(len(events)==101 and len(accepted)==90 and len(unresolved)==11, 'event status counts changed')
    accepted_closure=set()
    for e in accepted:
        ancestors=closure(e['root'])
        require(ancestors <= source['blocks'].keys(), 'accepted event has incomplete ancestor')
        d2keys=[k for k in ancestors if dag['blocks'][k]['page']==2]
        require(all(dag['blocks'][k]['center'][1]<=meta['d2_t_max'] for k in d2keys),
                'accepted event depends on outside-window d2 comparison')
        accepted_closure.update(ancestors)
    for x in structural:
        depend=[e for e in events if x['key'] in closure(e['root'])]
        require([e['staircase_id'] for e in depend]==[6651] and all(e['status']=='unresolved' for e in depend),
                'structural empty block now enters accepted events')
        x['dependent_events']=[dict(id=e['staircase_id'],status=e['status'],reason=e['reason']) for e in depend]
    outside=[]
    for key,node in dag['blocks'].items():
        if node['page']==2 and node['center'][1]>meta['d2_t_max']:
            outside.append(dict(key=key,center=node['center'],completed=key in source['blocks'],
                                reason=source['failures'].get(key),raw_null_ids=null_dependencies.get(key,[])))
    for e in unresolved:
        require(e['root'] not in source['blocks'], 'unresolved event has completed root')
    result=dict(schema='aggregate_three_product_event_coverage/v1',status='source_consistency_audit_passed',metadata=meta,
        scope='333 finite comparison blocks / 101 event candidates; all recorded E2 and staircase rows reread without regenerating outputs.',
        total_degrees=len(snapshots),raw_unknown_d2_rows=list(null_basis_rows.values()),
        complete_d2_blocks=len(complete_d2),within_declared_d2_window=len(complete_d2)-len(structural),
        unique_checked_d2_columns=len(unique_columns),complete_d2_details=complete_d2,
        structural_empty_exceptions=structural,outside_d2_window=outside,blocked_by_raw_null_d2=null_dependencies,
        event_counts=dict(finite_nonzero=90,unresolved=11),accepted_dependency_blocks=len(accepted_closure),
        accepted_dependency_d2_blocks=sum(dag['blocks'][k]['page']==2 for k in accepted_closure),
        accepted_max_d2_center_t=max(dag['blocks'][k]['center'][1] for k in accepted_closure if dag['blocks'][k]['page']==2),
        use_counts=dict(sorted(kinds.items())),raw_null_use_counts=dict(sorted(null_kinds.items())),
        explicit_conditional_uses=conditional,raw_null_prefix_uses=prefix_null,
        negative_tests=negative,failures=[],
        limitations='Raw NULL d2 columns are never accepted. Higher-page prefix/boundary encodings and 11 conditional uses remain explicitly imported interpretations or premises. The isolated outside-d2-window block has three empty E2 spaces inside E2 coverage and enters only unresolved event6651. No topological or unconditional event conclusion is established here.',
        input_sha256={str(p.relative_to(ROOT)):sha(p) for p in paths},database_sha256=digest,script_sha256=sha(Path(__file__)))
    OUTPUT.parent.mkdir(exist_ok=True)
    OUTPUT.write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
    print(f'Event coverage passed: 214 d2 blocks / {len(unique_columns)} raw columns, 213 within d2 window + 1 structural-empty exception; 90 accepted events entirely within window; 11 explicit conditional uses, 30 NULL prefix uses retained; {negative} rejection tests.')


if __name__=='__main__':
    try:
        run()
    except (ValueError,KeyError,sqlite3.Error) as exc:
        raise SystemExit('event coverage audit failed: '+str(exc)) from exc
