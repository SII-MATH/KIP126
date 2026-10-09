"""Enumerate complete local maps at the minimal unresolved frontier.

Known imported prefix values remain conditional inputs. We impose d*d=0,
not the next dimension selected by the database, so possible outcomes remain
visible and are never selected to agree with the intended claim.
"""
import hashlib
import itertools
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
report=json.loads((HERE/'search.json').read_text())
baseline=json.loads((ROOT/'Fact713TrajectoryAudit/dag.json').read_text())
blocks={b['key']:b for b in baseline['blocks']}
events={e['key']:e for e in baseline['differential_rows']}
cache=report['comparisons']
resolved={x['key']:x for x in report['unknowns']}
vecs=lambda n:list(itertools.product([0,1],repeat=n))
def app(flat,rows,cols,x):
    return tuple(sum(int(flat[i*cols+j])*x[j] for j in range(cols))%2 for i in range(rows))
def project(s,t,page,x):
    for p in range(2,page):
        w=cache[f'S0:{s},{t}:d{p}']['wire']
        x=app(w['projection'],w['h'],w['m'],x)
    return x
def rank(columns):
    span={(0,)*len(columns[0])} if columns else {()}
    for c in columns:span|={tuple(x^y for x,y in zip(a,c)) for a in list(span)}
    return (len(span)).bit_length()-1
def matrix(columns,rows):
    return [bool(columns[j][i]) for i in range(rows) for j in range(len(columns))]

results=[]
for k in sorted(report['frontier']):
    block=blocks[k.removeprefix('S0:').replace(':d',',d')]
    s,t=block['center'];r=block['page']
    predecessor=report['graph'][k]['predecessors']
    n,m,z=[cache[p]['wire']['h'] for p in predecessor]
    column_sets=[];conditions=[]
    for role,(a,b),dimension in [('incoming',(s-r,t-r+1),m),('outgoing',(s,t),z)]:
        space=block['spaces'][0 if role=='incoming' else 1]
        source_count=n if role=='incoming' else m
        selected=space['selected'];assert len(selected)==source_count
        dest=(a+r,b+r-1)
        targetspace=block['spaces'][1 if role=='incoming' else 2]
        for j,row in enumerate(selected):
            rid,base,diff,level=row
            ek=f'{a},{b},d{r},row{rid}'
            event=events[ek]
            if event['classification']=='known_event':
                indexes=[] if diff=='' else list(map(int,diff.split(',')))
                raw=tuple(int(i in indexes) for i in range(len(targetspace['e2'])))
                possibilities=[project(*dest,r,raw)]
                status='imported_known_event_requires_actual_meaning'
            elif not event['unknown']:
                possibilities=[(0,)*dimension]
                status='imported_prefix_or_boundary_requires_actual_meaning'
            elif resolved[ek]['resolution']=='explicit_conditional_source_theorem':
                possibilities=[(0,)*dimension]
                status=resolved[ek]['reused_value']['use']['kind']
            else:
                possibilities=vecs(dimension)
                status='all_possible_unknown_coordinates'
            column_sets.append(possibilities)
            conditions.append(dict(role=role,column=j,row_key=ek,raw=row,status=status,possible_coordinates=possibilities))
    accepted=[];tested=0
    for columns in itertools.product(*column_sets):
        tested+=1
        inc=list(columns[:n]);out=list(columns[n:])
        B=matrix(inc,m);A=matrix(out,z)
        if not all(app(A,z,m,c)==(0,)*z for c in inc):continue
        rankA=rank(out) if out else 0
        rankB=rank(inc) if inc else 0
        h=m-rankA-rankB
        accepted.append(dict(incoming=B,outgoing=A,homology_dimension=h,
            row_values={c['row_key']:list(v) for c,v in zip(conditions,columns)
                        if c['status']=='all_possible_unknown_coordinates'}))
    results.append(dict(key=k,dimensions=dict(n=n,m=m,k=z),conditions=conditions,
        full_maps_tested=tested,complex_maps=accepted,
        possible_homology_dimensions=sorted({x['homology_dimension'] for x in accepted})))
assert len(results)==20
row_values={}
for b in results:
    for choice in b['complex_maps']:
        for name,value in choice['row_values'].items():row_values.setdefault(name,set()).add(tuple(value))
result=dict(status='complete_local_frontier_enumeration',blocks=results,
    distinct_unknown_rows={k:sorted(v) for k,v in sorted(row_values.items())},
    full_maps_tested=sum(b['full_maps_tested'] for b in results),
    complex_maps=sum(len(b['complex_maps']) for b in results),
    scope='Exact local choices subject to fixed imported/conditional known columns and complex law. Shared row choices and higher-page compatibility require a global joint solution; local choices are not asserted jointly realizable.',
    forbidden_inference='No candidate is selected by matching the database next-page dimension or the desired E12 result. Imported NULL-prefix zero assumptions remain listed.',
    source_sha256=hashlib.sha256((HERE/'search.json').read_bytes()).hexdigest())
(HERE/'frontier.json').write_text(json.dumps(result,indent=2)+'\n')
print('20local blocks:',result['full_maps_tested'],'fullmaps;',result['complex_maps'],'complexes;',len(row_values),'unknownrows')
for b in results:print(b['key'],len(b['complex_maps']),b['possible_homology_dimensions'])
