"""Independent augmented matrix, source and contraction audit."""
import collections, copy, hashlib, itertools, json, pathlib, subprocess, tempfile
HERE = pathlib.Path(__file__).resolve().parent

def run(data, aug, limit, out):
    return subprocess.run([str(HERE/'generic-augmented'), str(data), str(aug), str(limit), str(out)], capture_output=True, text=True)

def weight(m): return sum(v*((1 << (i+1))-1) for i,v in enumerate(m))
def multiply(a,b,m,k,n): return [sum(a[i*k+h] and b[h*n+j] for h in range(k)) % 2 == 1 for i in range(m) for j in range(n)]

def coproduct(m):
    rank=len(m); zero=(0,)*rank; terms=[(zero,zero)]
    for p,e in enumerate(m,1):
        g=[]
        for i in range(p+1):
            a,b=list(zero),list(zero)
            if p>i: a[p-i-1]=2**i
            if i: b[i-1]=1
            if i==0: pass
            g.append((tuple(a),tuple(b)))
        for _ in range(e):
            terms=[(tuple(x+y for x,y in zip(a,c)),tuple(x+y for x,y in zip(b,d))) for a,b in terms for c,d in g]
    return terms

reports=[]
for degree in (4,8):
    data=HERE/f'actual_t{degree}.input.jsonl'; d=json.loads(data.read_text()); n=d['n'];rank=d['rank']
    aug=HERE/f'actual_t{degree}_augmentation.json'; values=[i==0 for i in range(n)]
    aug.write_text(json.dumps(dict(values=values,version=1),sort_keys=True,separators=(',',':'))+'\n')
    out=HERE/f'actual_t{degree}_augmented.jsonl';r=run(data,aug,degree,out);assert r.returncode==0,r.stderr
    first=out.read_bytes();r=run(data,aug,degree,out);assert r.returncode==0 and first==out.read_bytes()
    rows=[json.loads(s) for s in out.read_text().splitlines()]; assert len(rows)==degree+1
    rawpath=HERE.parent/'ExtComplexCertificates/actual-s0/resolution.jsonl'
    raw=[json.loads(s) for s in rawpath.read_text().splitlines()]; raw=[r for r in raw if r['t']<=degree]
    assert [(r['s'],r['t']) for r in raw]==list(zip(d['homological'],d['internal']))
    index={(r['s'],r['local_id']):i for i,r in enumerate(raw)};edges=[[] for _ in range(n*n)]
    for i,r in enumerate(raw):
        for term in r['differential']:
            assert not any(term['milnor'][rank:]);edges[i*n+index[r['s']-1,term['target_local_id']]].append(term['milnor'][:rank])
    assert edges==d['edges']
    for row in rows:
        t=row['t'];c=row['incoming']
        coord=lambda s:[dict(generator=i,monomial=list(m)) for i in range(n) if d['homological'][i]==s for m in itertools.product(range(t+1),repeat=rank) if weight(m)+d['internal'][i]==t]
        assert c['source']==coord(1) and c['target']==coord(0)
        assert (c['rank'],c['n'],c['sourceS'],c['targetS'],c['targetKind'],c['t'])==(rank,n,1,0,'component',t)
        m=len(c['target']);upper=len(c['source']);k=int(t==0);matrix=[False]*(m*upper)
        for col,x in enumerate(c['source']):
            for g in range(n):
                cert=c['witnesses'][col*n+g];bound=cert['finite']['window']['degree'];basis=[q for q in itertools.product(range(bound+1),repeat=rank) if weight(q)<=bound]
                tensors=[coproduct(q) for q in basis]
                assert tensors==[[tuple(map(tuple,z)) for z in expansion] for expansion in cert['finite']['expansions']]
                right=collections.Counter(map(tuple,edges[x['generator']*n+g]));left=tuple(x['monomial'])
                output=[list(q) for q,ts in zip(basis,tensors) if sum((a==left)*right[b] for a,b in ts)%2]
                assert output==c['products'][col*n+g]
                for i,q in enumerate(c['target']):
                    if q['generator']==g:matrix[i*upper+col]=q['monomial'] in output
        assert matrix==c['entries']
        a=[values[q['generator']] and weight(q['monomial'])==0 for q in c['target']] if k else []
        assert len(row['up'])==upper*m and len(row['down'])==m*k
        assert not any(multiply(a,matrix,k,m,upper))
        one=multiply(matrix,row['up'],m,upper,m);two=multiply(row['down'],a,m,k,m)
        assert [x!=y for x,y in zip(one,two)]==[i==j for i in range(m) for j in range(m)]
    reports.append(dict(degree=degree,components=len(rows),input_sha256=hashlib.sha256(data.read_bytes()).hexdigest(),augmentation_sha256=hashlib.sha256(aug.read_bytes()).hexdigest(),output_sha256=hashlib.sha256(first).hexdigest(),source_sha256=hashlib.sha256(rawpath.read_bytes()).hexdigest()))
    if degree==4:
        assert out.read_text().splitlines()[0]+'\n'==(HERE.parent/'ExtComplexCertificates/generic_augmented_t0.json').read_text()
        (HERE/'actual_t4_augmented_t0.json').write_text(out.read_text().splitlines()[0]+'\n')

with tempfile.TemporaryDirectory(dir=HERE) as td:
    p=pathlib.Path(td); aug=p/'a.json';out=p/'out.jsonl';base=json.loads((HERE/'actual_t4_augmentation.json').read_text())
    cases=[dict(base,version=2),dict(base,extra=1),dict(base,values=[]),dict(base,values=[False]*8),dict(base,values=[False,True]+[False]*6),dict(base,values=[1]+[False]*7),dict(base,values=[None]+[False]*7)]
    for bad in cases:
        aug.write_text(json.dumps(bad));r=run(HERE/'actual_t4.input.jsonl',aug,4,out);assert r.returncode and r.stderr
    aug.write_text('{"version":1,'+json.dumps(base)[1:]);assert run(HERE/'actual_t4.input.jsonl',aug,4,out).returncode
    aug.write_text(json.dumps(base));bad=json.loads((HERE/'actual_t4.input.jsonl').read_text());bad['edges']=[[] for _ in bad['edges']];data=p/'d.json';data.write_text(json.dumps(bad))
    r=run(data,aug,4,out);assert r.returncode and 'no augmented contraction' in r.stderr
report=dict(status='independent source/coproduct/matrix/contraction audit passed',deterministic=True,negative_cases=9,runs=reports)
(HERE/'augmented_audit.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
