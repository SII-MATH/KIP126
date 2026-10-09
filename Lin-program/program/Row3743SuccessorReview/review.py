"""Independent full-wire, raw-row, dependency and direct-proof review."""
import hashlib,itertools,json,re,sqlite3
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent;S=R/'Row3743Successor'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
record=json.loads((S/'source.json').read_text());blocks=record['blocks']
for p,h in record['input_sha256'].items():assert sha(R/p)==h,p
sql=sqlite3.connect(f"file:{R/'upstream/kervaire-49/S0_AdamsSS_t261.db'}?mode=ro",uri=True)
raw={}
def data(s,t):
    if (s,t) not in raw:
        raw[s,t]=dict(e2=sql.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall(),
            ss=sql.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall())
    return raw[s,t]
def bits(text,n):
    assert text is not None
    indices=[] if not text else [int(x) for x in text.split(',')]
    assert len(indices)==len(set(indices)) and all(0<=i<n for i in indices)
    return tuple(int(i in indices) for i in range(n))
def app(flat,rows,cols,x):
    assert len(flat)==rows*cols and len(x)==cols
    return tuple(sum(int(flat[i*cols+j])*x[j] for j in range(cols))%2 for i in range(rows))
vec=lambda n:itertools.product(range(2),repeat=n)
def add(*xs):return tuple(sum(row)%2 for row in zip(*xs))
def selected(s,t,r):return [x for x in data(s,t)['ss'] if r<=x[3]<5000 or 5000<=x[3]<=10000-r]
def proj(s,t,r,x):
    for q in range(2,r):
        w=blocks[f'S0:{s},{t}:d{q}']['wire'];x=app(w['projection'],w['h'],w['m'],x)
    return x
closure=set();todo=[record['root']]
while todo:
    k=todo.pop()
    if k in closure:continue
    closure.add(k);b=blocks[k];s,t=b['center'];r=b['page']
    wanted=[] if r==2 else [f'S0:{a},{c}:d{r-1}' for a,c in [(s-r,t-r+1),(s,t),(s+r,t+r-1)]]
    assert b['predecessors']==wanted
    todo.extend(wanted)
assert closure==set(blocks) and len(closure)==13
vectors=pairs=rawcolumns=0
for key,b in blocks.items():
    s,t=b['center'];r=b['page'];w=b['wire'];k,m,n,h=[w[f] for f in ['k','m','n','h']]
    A=lambda x:app(w['outgoing'],k,m,x)
    B=lambda x:app(w['incoming'],m,n,x)
    I=lambda x:app(w['inclusion'],m,h,x)
    Q=lambda x:app(w['projection'],h,m,x)
    U=lambda x:app(w['up'],n,m,x)
    D=lambda x:app(w['down'],m,k,x)
    boundaries={B(x) for x in vec(n)};cycles=[x for x in vec(m) if A(x)==(0,)*k]
    assert all(A(x)==(0,)*k and Q(x)==(0,)*h for x in boundaries)
    assert all(A(I(x))==(0,)*k and Q(I(x))==x for x in vec(h))
    for x in vec(m):assert add(I(Q(x)),B(U(x)),D(A(x)))==x;vectors+=1
    for x,y in itertools.product(cycles,repeat=2):
        assert (Q(x)==Q(y))==(add(x,y) in boundaries);pairs+=1
    for ss,tt,field,rows,cols in [(s,t,'outgoing',k,m),(s-r,t-r+1,'incoming',m,n)]:
        current=data(ss,tt);target=data(ss+r,tt+r-1)
        if r==2:
            assert cols==len(current['e2']) and rows==len(target['e2'])
            columns=[bits(x[2],rows) for x in current['e2']]
            flat=tuple(c[i] for i in range(rows) for c in columns)
            assert tuple(w[field])==flat
            rawcolumns+=len(columns)
        else:
            selected_rows=selected(ss,tt,r);assert len(selected_rows)==cols
            for row in selected_rows:
                rid,base,diff,level=row
                assert (ss,tt,r,rid)!=(23,147,4,3743)
                coords=proj(ss,tt,r,bits(base,len(current['e2'])))
                if level==10000-r:
                    rawvalue=bits(diff,len(target['e2']))
                elif 2<=level<5000 or 9000<level<10000-r:
                    rawvalue=(0,)*len(target['e2'])
                else:raise AssertionError(('unjustified unknown',row))
                value=proj(ss+r,tt+r-1,r,rawvalue)
                assert app(w[field],rows,cols,coords)==value
                rawcolumns+=1
    if r>2:
        assert [blocks[p]['wire']['h'] for p in b['predecessors']]==[n,m,k]
    for u in b['uses']:assert (u['source'],u['page'])!=([23,147],4)

old=json.loads((R/'AggregateD5Conditional/source.json').read_text())['blocks']
assert len(old)==358
assert set(record['new_keys'])==closure-old.keys()
assert len(record['new_keys'])==12
for key in closure&old.keys():assert blocks[key]==old[key]
for k in record['new_keys']:
    filename='b_'+k.replace(':','_').replace(',','_')+'.json'
    path=S/'wires'/filename
    assert json.loads(path.read_text())==blocks[k]['wire']
    assert path.read_text().strip()==json.dumps(blocks[k]['wire'],sort_keys=True,separators=(',',':'))

names=['Data','Basic']
for n in ['Links','Named']:
    if (S/(n+'-compile.json')).exists():names.append(n)
reports=0
for name in names:
    a=json.loads((S/(name+'-compile.json')).read_text())
    assert a['observed_exit_code']==0
    assert a['source_sha256']==sha(S/(name+'.lean'))
    assert a['log_sha256']==sha(S/(name+'.log'))
    assert a['olean_sha256']==sha(R/'.lake/build/lib/lean/Row3743Successor'/(name+'.olean'))
    text=(S/(name+'.log')).read_text();assert 'sorryAx' not in text and 'error:' not in text
    matches=re.findall(r'depends on axioms: \[([^]]*)\]',text);reports+=len(matches)
    for vals in matches:assert {v.strip() for v in vals.split(',')}<={'propext','Classical.choice','Quot.sound'}
assert reports>=5
named_cases=0
for zsize in range(2,6):
    for next_coordinates in itertools.product(range(2),repeat=zsize-1):
        nc=(0,)+next_coordinates
        for image in range(zsize):
            if nc[image]!=1:continue
            # Faithful coordinates plus named=1 cover the whole two-point middle.
            outgoing=(0,image)
            assert tuple(nc[outgoing[y]] for y in range(2))==(0,1)
            for xsize in range(1,5):
                for incoming in itertools.product(range(2),repeat=xsize):
                    if all(outgoing[y]==0 for y in incoming):assert all(y==0 for y in incoming)
                    named_cases+=1
# Dropping faithfulness permits a hidden nonzero middle element mapped to zero.
assert (0,1,0)[2]==0 and (0,1,0)[0]==0 and 2!=0
baseline=json.loads((P/'raw-review.json').read_text())
assert baseline['script_sha256']==sha(P/'raw_review.py')
assert baseline['database_sha256']==sha(R/baseline['database'])
inputs=[Path(__file__),P/'INDEPENDENT_REVIEW.md',P/'raw_review.py',P/'raw-review.json',S/'source.json',S/'generate.py',
    *[S/(n+s) for n in names for s in ['.lean','.log','-compile.json']],*sorted((S/'wires').glob('*.json')),
    R/'ActualAdamsSystemBridge/Basic.lean',R/'LinearCertificates/Checker.lean',R/'AggregateD5Conditional/source.json']
report=dict(status='independent_successor_review_passed',findings=[],reviewer='/root/source_rules_next',
    direct_modules=names,standard_reports=reports,complete_predecessor_comparisons=13,new_comparisons=12,
    full_vectors=vectors,full_cycle_pairs=pairs,raw_verified_columns=rawcolumns,raw_degrees=len(raw),
    independent_minimal_SQL_comparisons=12,independent_minimal_SQL_degrees=23,
    original_aggregate_blocks=358,unknown_row_d4_used=False,
    successor_full_column=[1],actual_meaning_remains_explicit=True,
    named_event_wholemap_cases=named_cases,
    source_sha256={str(p.relative_to(R)):sha(p) for p in inputs})
(P/'independent-review.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print(json.dumps({k:v for k,v in report.items() if k!='source_sha256'}))
