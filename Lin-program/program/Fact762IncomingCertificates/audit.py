"""Audit every possible incoming page; unknown entries remain unknown."""
import hashlib
import importlib.util
import json
import sqlite3
from pathlib import Path
p=Path(__file__).resolve().parent
r=p.parent
aggregate=r/'AggregateD5Conditional'
saved=json.loads((aggregate/'source.json').read_text())
dag=json.loads((aggregate/'dag.json').read_text())
db=r/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
meta=dict(c.execute('SELECT name,value FROM version'))
ns={'__file__':str(aggregate/'generate.py')}
exec(compile((aggregate/'generate.py').read_text().split('\ncandidates=[]')[0],str(aggregate/'generate.py'),'exec'),ns)
ns['cache']=dict(saved['blocks']);ns['failures']={};ns['dag']=dag
oldbuild=ns['build']
coverage={}
def ensure(o,s,t,q):
    key=f'{o}:{s},{t}:d{q}'
    if key not in dag['blocks']:
        for a,b in [(s-q,t-q+1),(s,t),(s+q,t+q-1)]:
            if b>meta['t_max']:raise ValueError('outside E2 window')
            degree=f'{o}:{a},{b}'
            record=dict(object=o,degree=[a,b],e2=[list(x) for x in c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(a,b))],staircase=[list(x) for x in c.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(a,b))])
            if degree in dag['degrees']:assert dag['degrees'][degree]==record
            dag['degrees'][degree]=record
        dag['blocks'][key]=dict(object=o,center=[s,t],page=q,predecessors=[] if q==2 else [f'{o}:{a},{b}:d{q-1}' for a,b in [(s-q,t-q+1),(s,t),(s+q,t+q-1)]])
    coverage[key]=dict(degree=[s,t],page=q,negative_filtration=s<0,negative_total_degree=t<0)
    if q==2 and t>meta['d2_t_max']:raise ValueError('outside d2 window')
    return oldbuild(o,s,t,q)
ns['build']=ensure
def attempt(s,t,end):
    basis=c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
    if not basis:return dict(status='empty_E2_basis_in_declared_window',page=2,dimension=0,requires_E2_basis_realization=True)
    stages=[]
    for q in range(2,end):
        try:
            b=ensure('S0',s,t,q);stages.append(dict(page=q,comparison=f'S0:{s},{t}:d{q}',dimension=b['wire']['h']))
            if b['wire']['h']==0:return dict(status='zero_quotient_at_earlier_page',page=q+1,dimension=0,stages=stages,requires_later_zero_propagation=q+1<end)
        except (ValueError,KeyError,AssertionError) as e:return dict(status='unresolved_complete_prefix',failed_page=q,reason=str(e),stages=stages)
    return dict(status='complete_prefix',page=end,dimension=len(basis) if end==2 else stages[-1]['dimension'],stages=stages)
target=attempt(14,139,15)
rows=[]
for page in range(2,15):
    s,t=14-page,140-page
    basis=[list(x) for x in c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))]
    raw=[list(x) for x in c.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t))]
    selected=[x for x in raw if page<=x[3]<5000 or 5000<=x[3]<=10000-page]
    values=[]
    for rid,base,diff,level in selected:
        if level==10000-page and diff is not None:status='stored_event_value_needs_semantics'
        elif 2<=level<5000 or 9000<level<10000-page:status='stored_prefix_or_boundary_needs_semantics'
        else:status='unknown'
        values.append(dict(row=[rid,base,diff,level],status=status))
    prefix=attempt(s,t,page)
    rows.append(dict(page=page,source_degree=[s,t],target_degree=[14,139],basis=basis,raw=raw,
        selected_at_page=values,source_prefix=prefix,
        potential_exception=page in [6,12],target_prefix=attempt(14,139,page)))
used={key:b for key,b in ns['cache'].items() if key in coverage or key in {st['comparison'] for row in rows for st in row['source_prefix'].get('stages',[])}}
negative=[key for key,value in coverage.items() if value['negative_filtration'] or value['negative_total_degree']]
report=dict(claim='Fact7.6(2) all incoming pages2..14',named_row=list(c.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=3080').fetchone()),
    pages=rows,target_global_prefix=target,comparisons=used,coverage=coverage,negative_degree_dependencies=negative,
    degree_data={key:dag['degrees'][key] for key in sorted(dag['degrees'])},failures=ns['failures'],
    scope='Complete finite comparisons only; selected lists and later prefixes require semantic realization. No unknown differential, no missing row and no negative-degree empty SQL query supplies a theorem.',
    tail='For r>14 the source filtration14-r is negative; actual absence is an explicit nonnegative-filtration hypothesis.',
    inputs_sha256={str(f.relative_to(r)):hashlib.sha256(f.read_bytes()).hexdigest() for f in [db,aggregate/'source.json',aggregate/'generate.py',p/'audit.py']})
(p/'audit.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
for row in rows:print(row['page'],row['source_degree'],row['source_prefix']['status'],row['source_prefix'].get('reason',''),row['selected_at_page'])
