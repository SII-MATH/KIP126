"""Recheck raw columns and all comparison identities independently of Lean generation."""
import hashlib,json,sqlite3
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
x=json.loads((P/'search.json').read_text())
for p,h in x['input_sha256'].items():assert sha(R/p)==h,p
db=R/'upstream/kervaire-49/S0_AdamsSS_t261.db';sql=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
old=json.loads((R/'AggregateD5Conditional/source.json').read_text())['blocks']
blocks={**old,**x['new_blocks']};degrees=x['all_requested_degree_data']
def cols(w,f,m,n):
    a=w[f];assert len(a)==m*n
    return [sum(int(a[i*n+j])<<i for i in range(m)) for j in range(n)]
def apply(a,v):
    out=0
    for i,c in enumerate(a):
        if v>>i&1:out^=c
    return out
def bits(s):
    assert s is not None
    return sum(1<<int(a) for a in s.split(',')) if s else 0
def degree(s,t):return degrees[f'S0:{s},{t}']
def selected(s,t,r):return [a for a in degree(s,t)['staircase'] if r<=a[3]<5000 or 5000<=a[3]<=10000-r]
def project(s,t,r,v):
    for q in range(2,r):
        w=blocks[f'S0:{s},{t}:d{q}']['wire']
        assert apply(cols(w,'outgoing',w['k'],w['m']),v)==0
        v=apply(cols(w,'projection',w['h'],w['m']),v)
    return v
checked_degrees=set();raw_cols=higher_cols=pairs=0
for key,b in x['new_blocks'].items():
    s,t=b['center'];r=b['page'];w=b['wire'];m,n,k,h=(w[f] for f in ['m','n','k','h'])
    for u,v in [(s-r,t-r+1),(s,t),(s+r,t+r-1)]:
        d=degree(u,v)
        assert d['e2']==[list(z) for z in sql.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(u,v))]
        assert d['staircase']==[list(z) for z in sql.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(u,v))]
        checked_degrees.add((u,v))
    A=cols(w,'outgoing',k,m);B=cols(w,'incoming',m,n)
    I=cols(w,'inclusion',m,h);Q=cols(w,'projection',h,m)
    U=cols(w,'up',n,m);D=cols(w,'down',m,k)
    assert all(apply(A,c)==0 for c in B+I)
    assert all(apply(Q,c)==0 for c in B)
    assert [apply(Q,c) for c in I]==[1<<i for i in range(h)]
    for v in range(1<<m):
        assert apply(I,apply(Q,v))^apply(B,apply(U,v))^apply(D,apply(A,v))==v
    cycles=[v for v in range(1<<m) if apply(A,v)==0];boundaries={apply(B,v) for v in range(1<<n)}
    for a in cycles:
        for c in cycles:
            assert (apply(Q,a)==apply(Q,c))==(a^c in boundaries);pairs+=1
    for field,u,v,tu,tv,actual in [('outgoing',s,t,s+r,t+r-1,A),('incoming',s-r,t-r+1,s,t,B)]:
        if r==2:
            assert actual==[bits(z[2]) for z in degree(u,v)['e2']];raw_cols+=len(actual)
        else:
            expected=[]
            for row in selected(u,v,r):
                rid,base,diff,level=row
                use=[z for z in b['uses'] if z['source']==[u,v] and z['row']==row]
                assert len(use)==1
                if level==10000-r and diff is not None:
                    assert use[0]['kind']=='stored_event';val=project(tu,tv,r,bits(diff))
                elif 2<=level<5000 or 9000<level<10000-r:
                    assert use[0]['kind']=='stored_zero_prefix_or_boundary';val=0
                else:
                    assert use[0]['kind']=='checked_zero_codomain'
                    assert blocks[use[0]['target_predecessor']]['wire']['h']==0;val=0
                expected.append(val);higher_cols+=1
            assert actual==expected
    if r>2:assert I==[project(s,t,r,bits(row[1])) for row in selected(s,t,r+1)]
for s,t in [(6,25),(7,26),(8,27),(11,55),(12,56),(13,57)]:assert x['degrees'][f'{s},{t}']['basis']==[]
assert any('row279' in y.get('reason','') for y in x['outcomes'])
assert any('row1125' in y.get('reason','') for y in x['outcomes'])
assert any('row1060' in y.get('reason','') for y in x['outcomes'])
assert len(old)==358 and len(x['new_blocks'])==34
sources=[Path(__file__),P/'search.json',*sorted(P.glob('*.lean')),R/'AggregateD5Conditional/source.json']
report={'status':'full_finite_review_passed','new_blocks':34,'old_blocks_preserved':358,
    'raw_degrees':len(checked_degrees),'raw_d2_columns':raw_cols,'higher_columns':higher_cols,
    'full_cycle_pairs':pairs,'unknowns_preserved':[279,1125,1060],
    'source_sha256':{str(p.relative_to(R)):sha(p) for p in sources},
    'limitation':'Actual graded multiplicative realization, name transport and zero-coordinate completeness are hypotheses.'}
(P/'review.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print(json.dumps({k:v for k,v in report.items() if k not in ['source_sha256']}))
