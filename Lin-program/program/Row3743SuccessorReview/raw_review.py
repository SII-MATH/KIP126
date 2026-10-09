"""Independent SQL-to-small-F2 quotient calculation; no comparison producer used."""
import hashlib,itertools,json,sqlite3
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
db=R/'upstream/kervaire-49/S0_AdamsSS_t261.db'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
sql=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
metadata=dict(sql.execute('SELECT name,value FROM version'))
raw={}
def data(degree):
    if degree not in raw:
        assert degree[1]<=metadata['t_max']
        raw[degree]=dict(e2=[list(x) for x in sql.execute(
            'SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',degree)],
            staircase=[list(x) for x in sql.execute(
            'SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',degree)])
    return raw[degree]
def bits(text,dimension):
    assert text is not None
    indices=[] if text=='' else [int(x) for x in text.split(',')]
    assert len(set(indices))==len(indices) and all(0<=x<dimension for x in indices)
    return sum(1<<i for i in indices)
def apply(columns,x):
    result=0
    for i,col in enumerate(columns):
        if (x>>i)&1:result^=col
    return result
def span(columns):return {apply(columns,x) for x in range(1<<len(columns))}
def selected(degree,page):
    return [x for x in data(degree)['staircase']
            if page<=x[3]<5000 or 5000<=x[3]<=10000-page]
def quotient(outgoing,incoming,reps):
    m=len(outgoing);boundary=span(incoming)
    cycles={x for x in range(1<<m) if apply(outgoing,x)==0}
    assert boundary<=cycles
    assert set(reps)<=cycles
    coords={}
    for code in range(1<<len(reps)):
        coset={apply(reps,code)^b for b in boundary}
        assert not (coset & coords.keys())
        coords.update({x:code for x in coset})
    assert set(coords)==cycles
    return coords,cycles,boundary
cache={};audit=[]
def e3(degree):
    if degree in cache:return cache[degree]
    s,t=degree;lower=(s-2,t-1);upper=(s+2,t+1)
    current=data(degree);source=data(lower);target=data(upper)
    assert t<=metadata['d2_t_max'] and t-1<=metadata['d2_t_max']
    outgoing=[bits(x[2],len(target['e2'])) for x in current['e2']]
    incoming=[bits(x[2],len(current['e2'])) for x in source['e2']]
    reps=[bits(x[1],len(current['e2'])) for x in selected(degree,3)]
    coords,cycles,boundary=quotient(outgoing,incoming,reps)
    cache[degree]=(coords,len(reps))
    audit.append(dict(degree=list(degree),page=2,input_dimension=len(outgoing),
        output_dimension=len(reps),outgoing_columns=outgoing,incoming_columns=incoming,
        chosen_representatives=reps,cycle_count=len(cycles),boundary_count=len(boundary),
        cycle_coordinates={str(x):q for x,q in sorted(coords.items())}))
    return cache[degree]
centers=[(23,147),(27,150),(31,153)]
e4={}
for degree in centers:
    s,t=degree;lower=(s-3,t-2);upper=(s+3,t+2)
    c3,m=e3(degree);i3,n=e3(lower);o3,k=e3(upper)
    assert k==0
    # The whole d3 codomain is zero, so no NULL/prefix value is guessed.
    outgoing=[0]*m
    if n:
        rows=selected(lower,3)
        assert len(rows)==n
        incoming=[]
        for rid,base,diff,level in rows:
            assert level==9997 and diff is not None
            v=bits(diff,len(data(degree)['e2']))
            incoming.append(c3[v])
    else:incoming=[]
    reps=[c3[bits(x[1],len(data(degree)['e2']))] for x in selected(degree,4)]
    coords,cycles,boundary=quotient(outgoing,incoming,reps)
    e4[degree]={v:coords[q] for v,q in c3.items() if q in coords}
    audit.append(dict(degree=list(degree),page=3,input_dimension=m,
        output_dimension=len(reps),outgoing_columns=outgoing,incoming_columns=incoming,
        zero_codomain_degree=list(upper),zero_codomain_dimension=k,
        chosen_representatives=reps,cycle_count=len(cycles),boundary_count=len(boundary),
        cycle_coordinates={str(x):q for x,q in sorted(coords.items())}))

unknown=selected((23,147),4);successor=selected((27,150),4);target=selected((31,153),4)
assert unknown==[[3743,'0',None,9000]]
assert successor==[[3986,'3','0',9996]]
assert target==[[4256,'0','3',4]]
assert e4[(23,147)][1]==1
assert e4[(27,150)][1<<3]==1
assert e4[(31,153)][1]==1
successor_column=e4[(31,153)][bits(successor[0][2],len(data((31,153))['e2']))]
assert successor_column==1
solutions=[a for a in [0,1] if apply([successor_column],a)==0]
assert solutions==[0]
for x in [0,1]:assert apply([successor_column],x)==0 if x==0 else apply([successor_column],x)!=0
assert len(audit)==12 and len(raw)==23
# No comparison at page4 is used to determine either E4 space or its known column.
assert max(x['page'] for x in audit)==3
source_degree_trace={str(c):{str(v):q for v,q in sorted(e4[c].items())} for c in centers}
report=dict(status='independent_raw_successor_passed',database=str(db.relative_to(R)),
    database_sha256=sha(db),reviewer='/root/source_rules_next',comparison_count=len(audit),
    raw_degree_count=len(raw),all_d2_columns_present=True,
    unknown_row=unknown[0],successor_row=successor[0],target_row=target[0],
    source_dimensions_E4=[1,1,1],successor_full_matrix=[[1]],forced_unknown_columns=solutions,
    e2_to_e4_cycle_coordinates=source_degree_trace,
    raw_degrees={f'{s},{t}':v for (s,t),v in sorted(raw.items())},comparisons=audit,
    d3_zero_reason='All three whole outgoing E3 target groups have zero quotient, independently checked from full raw d2 maps.',
    dependency_note='Only nine d2 comparisons and three d3 comparisons. No unknown row3743 d4 or target d4 homology is assumed.',
    actual_semantics_note='SQL matrices and full coordinate interpretations still require mathematical actual-Adams meaning; no SQL record is itself a theorem.',
    script_sha256=sha(Path(__file__)))
(P/'raw-review.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print(json.dumps({k:v for k,v in report.items() if k not in ['raw_degrees','comparisons','e2_to_e4_cycle_coordinates']}))
