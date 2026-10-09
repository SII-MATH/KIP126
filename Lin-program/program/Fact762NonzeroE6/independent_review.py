"""Independent tuple-vector replay and frozen artifact audit."""
import hashlib,itertools,json,pathlib,re,sqlite3
HERE=pathlib.Path(__file__).resolve().parent;ROOT=HERE.parent
load=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
frozen=load(HERE/'frozen-source.json')['files']
for path,digest in frozen.items():assert sha(HERE/path)==digest
blocks=dict(load(ROOT/'AggregateD5Conditional/source.json')['blocks'])
for k,v in load(ROOT/'Fact762IncomingCertificates/audit.json')['comparisons'].items():
    assert k not in blocks or blocks[k]==v
    blocks[k]=v
needed=set()
def visit(k):
    if k in needed:return
    needed.add(k)
    for x in blocks[k]['predecessors']:visit(x)
for r in [2,3,4]:visit(f'S0:9,135:d{r}')
def vectors(n):return itertools.product((0,1),repeat=n)
def ev(a,m,n,v):
    assert len(a)==m*n and len(v)==n
    return tuple(sum(a[i*n+j]*v[j] for j in range(n))%2 for i in range(m))
def xor(x,y):return tuple(a^b for a,b in zip(x,y))
def bits(raw,n):
    assert raw is not None
    ids=list(map(int,raw.split(','))) if raw else []
    assert ids==sorted(set(ids)) and all(0<=i<n for i in ids)
    return tuple(int(i in ids) for i in range(n))
counts=dict(comparisons=0,cycles=0,pairs=0,d2_columns=0,higher_columns=0,explicit_prefix_columns=0)
c=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
def basis(d):return c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',d).fetchall()
def project(d,r,v):
    for q in range(2,r):
        w=blocks[f'S0:{d[0]},{d[1]}:d{q}']['wire']
        assert not any(ev(w['outgoing'],w['k'],w['m'],v))
        v=ev(w['projection'],w['h'],w['m'],v)
    return v
for key in sorted(needed):
    b=blocks[key];w=b['wire'];k,m,n,h=(w[z] for z in ['k','m','n','h'])
    cycles=[x for x in vectors(m) if not any(ev(w['outgoing'],k,m,x))]
    boundaries={ev(w['incoming'],m,n,x) for x in vectors(n)}
    assert boundaries<=set(cycles)
    assert len({ev(w['projection'],h,m,x) for x in cycles})==2**h
    for v in vectors(h):
        lift=ev(w['inclusion'],m,h,v)
        assert lift in cycles and ev(w['projection'],h,m,lift)==v
    for x,y in itertools.product(cycles,repeat=2):
        assert (ev(w['projection'],h,m,x)==ev(w['projection'],h,m,y))==(xor(x,y) in boundaries)
        counts['pairs']+=1
    s,t=b['center'];r=b['page']
    for field,source,target,dim,srcdim in [('outgoing',(s,t),(s+r,t+r-1),k,m),('incoming',(s-r,t-r+1),(s,t),m,n)]:
        matrix=w[field]
        if r==2:
            rows=basis(source);assert len(rows)==srcdim and len(basis(target))==dim
            for j,row in enumerate(rows):
                assert ev(matrix,dim,srcdim,tuple(int(i==j) for i in range(srcdim)))==bits(row[2],dim)
                counts['d2_columns']+=1
        else:
            rows=[list(row) for row in c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',source) if r<=row[3]<5000 or 5000<=row[3]<=10000-r]
            xs=[]
            for row in rows:
                use=[u for u in b['uses'] if u['row']==row and u['source']==list(source)]
                assert len(use)==1
                x=project(source,r,bits(row[1],len(basis(source))));xs.append(x)
                if use[0]['kind']=='stored_event':
                    assert row[3]==10000-r
                    y=project(target,r,bits(row[2],len(basis(target))))
                else:
                    assert use[0]['kind'] in ['stored_zero_prefix_or_boundary','conditional_leibniz']
                    y=(0,)*dim;counts['explicit_prefix_columns']+=1
                assert ev(matrix,dim,srcdim,x)==y
                counts['higher_columns']+=1
            span={(0,)*srcdim}
            for x in xs:span|={xor(v,x) for v in list(span)}
            assert span==set(vectors(srcdim))
    counts['comparisons']+=1;counts['cycles']+=len(cycles)
assert [blocks[f'S0:9,135:d{r}']['wire']['h'] for r in [2,3,4]]==[4,2,0]
final=blocks['S0:9,135:d4']['wire'];assert final['incoming']==[] and final['outgoing']==[True,False,False,True]
assert (14-5,139-5+1)==(9,135)
reports=0;warnings=[]
for module in (HERE/'modules.txt').read_text().split():
    name=module.split('.')[-1];record=load(HERE/(name+'-compile.json'))
    assert record['observed_exit_code']==0 and record['inputs_stable']
    assert sha(HERE/(name+'.lean'))==record['source_sha256']
    assert sha(HERE/record['log'])==record['log_sha256']
    assert sha(ROOT/'.lake/build/lib/lean'/(module.replace('.','/')+'.olean'))==record['olean_sha256']
    log=(HERE/record['log']).read_text();assert 'sorryAx' not in log and 'error:' not in log
    warnings.extend(x for x in log.splitlines() if 'warning:' in x)
    for report in re.findall(r'depends on axioms:\s*\[([^]]*)\]',log):
        assert {x.strip() for x in report.split(',')}<={'propext','Quot.sound','Classical.choice'};reports+=1
    assert not re.search(r'\b(sorry|admit|axiom|unsafe|native_decide)\b',(HERE/(name+'.lean')).read_text())
actual=(HERE/'Actual.lean').read_text();assert 'c.previous.endpoint6.value' in actual and 'c.previous.fixed_trace6 input binding' in actual
request=load(HERE/'request.json');assert request['source']==[False,True,False] and request['output']==[True]
for line in (HERE/'requests.jsonl').read_text().splitlines():assert json.loads(line)==request
for path,digest in frozen.items():assert sha(HERE/path)==digest
report=dict(status='passed',findings=[],counts=counts,frozen_files=len(frozen),modules=4,standard_axiom_reports=reports,warnings=warnings,
    semantic_checks=['same previous E6 endpoint and fixed E2 input','full incoming source (9,135) with complete E2->E5 charts','quotient-zero iff plus whole incoming zero proves endpoint nonzero','output true is nonvanishing flag, not fabricated E6 chart'],
    limitation='Prefix meanings including NULL row2858 and future events remain explicit actual Step premises; no permanence or original topology asserted.')
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report,indent=2))
