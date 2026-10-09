"""Exhaustive subgroup/quotient oracle independent of Gaussian witness synthesis."""
import copy,hashlib,itertools,json,random,subprocess
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent;EXE=P/'filtered-extension-export'
encode=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
vectors=lambda n:list(itertools.product([False,True],repeat=n))
def xor(a,b):return tuple(x!=y for x,y in zip(a,b))
def apply(M,m,n,x):
    assert len(M)==m*n and len(x)==n
    return tuple(bool(sum(M[i*n+j] and x[j] for j in range(n))%2) for i in range(m))
def span(M,m,n):return {apply(M,m,n,x) for x in vectors(n)}
def at(d,name,i):
    m,k=(d['a'],d['ha']) if name=='source' else (d['b'],d['hb'])
    return d[name][i] if i<d['depth'] else [False]*(m*k)
def image(d,name,i):
    m,k=(d['a'],d['ha']) if name=='source' else (d['b'],d['hb'])
    return span(at(d,name,i),m,k)
def expected(d):
    F=lambda i:image(d,'source',i);G=lambda i:image(d,'target',i)
    f=lambda x:apply(d['f'],d['b'],d['a'],x)
    for i in range(d['depth']):
        if not F(i+1)<=F(i) or not G(i+1)<=G(i):return False
        if not {f(x) for x in F(i)}<=G(i):return False
    s,n=d['s'],d['n'];x,y=tuple(d['x']),tuple(d['y'])
    if x not in F(s) or f(x) not in G(s+n) or y not in G(s+n):return False
    # Evaluate the actual quotient equation: f(x)+y lies in G_(s+n+1)+f(H).
    H={h for h in F(s+1) if f(h) in G(s+n)}
    relation={xor(b,f(h)) for b in G(s+n+1) for h in H}
    return xor(f(x),y) in relation

def validate(wire,query):
    assert set(wire)=={'version','data','sourceFactors','targetFactors','mapFactors',
        'sourceMember','imageMember','targetMember','representative','sourceCorrection','targetCorrection'}
    assert wire['version']==1 and wire['data']==query['data']
    d=wire['data'];a,b,ha,hb,depth,s,n=(d[k] for k in ['a','b','ha','hb','depth','s','n'])
    for name in ['sourceFactors','targetFactors','mapFactors']:assert len(wire[name])==depth
    for i in range(depth):
        for name,m,k in [('source',a,ha),('target',b,hb)]:
            fac=wire[name+'Factors'][i];assert len(fac)==k*k
            for u in vectors(k):
                assert apply(at(d,name,i),m,k,apply(fac,k,k,u))==apply(at(d,name,i+1),m,k,u)
        fac=wire['mapFactors'][i];assert len(fac)==hb*ha
        for u in vectors(ha):
            assert apply(at(d,'target',i),b,hb,apply(fac,hb,ha,u))==apply(d['f'],b,a,apply(at(d,'source',i),a,ha,u))
    for name,size in [('sourceMember',ha),('imageMember',hb),('targetMember',hb),
        ('representative',a),('sourceCorrection',ha),('targetCorrection',hb)]:
        assert len(wire[name])==size and all(type(bit) is bool for bit in wire[name])
    assert apply(at(d,'source',s),a,ha,wire['sourceMember'])==tuple(d['x'])
    assert apply(at(d,'target',s+n),b,hb,wire['imageMember'])==apply(d['f'],b,a,d['x'])
    assert apply(at(d,'target',s+n),b,hb,wire['targetMember'])==tuple(d['y'])
    rep=wire['representative']
    assert apply(at(d,'source',s+1),a,ha,wire['sourceCorrection'])==xor(rep,d['x'])
    assert apply(at(d,'target',s+n+1),b,hb,wire['targetCorrection'])==xor(apply(d['f'],b,a,rep),d['y'])
    assert expected(d)

def run(lines):return subprocess.run([str(EXE),'-'],input='\n'.join(lines)+'\n',text=True,capture_output=True)
def query(d):return {'version':1,'data':d}
cases=[]
for vals in itertools.product([False,True],repeat=7):
    f,F0,F1,G0,G1,x,y=vals
    for s,n in itertools.product(range(3),repeat=2):
        cases.append(query(dict(a=1,b=1,ha=1,hb=1,depth=2,s=s,n=n,
            f=[f],source=[[F0],[F1]],target=[[G0],[G1]],x=[x],y=[y])))
rng=random.Random(764063)
for _ in range(1400):
    a,b,ha,hb=[rng.randrange(3) for _ in range(4)];depth=rng.randrange(4)
    bit=lambda length:[bool(rng.randrange(2)) for _ in range(length)]
    cases.append(query(dict(a=a,b=b,ha=ha,hb=hb,depth=depth,s=rng.randrange(5),n=rng.randrange(4),
        f=bit(a*b),source=[bit(a*ha) for _ in range(depth)],target=[bit(b*hb) for _ in range(depth)],
        x=bit(a),y=bit(b))))

# Nontrivial f(x)=x0+x1, higher-source span e1, target drops after level1.
sum_data=dict(a=2,b=1,ha=2,hb=1,depth=2,s=0,n=1,f=[True,True],
    source=[[True,False,False,True],[False,False,False,True]],target=[[True],[True]],
    x=[True,False],y=[False])
first_data=copy.deepcopy(sum_data);first_data['f']=[True,False];first_data['y']=[True]
zero_data=dict(a=0,b=0,ha=0,hb=0,depth=0,s=64,n=64,f=[],source=[],target=[],x=[],y=[])
named={'correction':query(sum_data),'nonzero':query(first_data),'empty':query(zero_data)}
cases.extend(named.values())
answers=[expected(c['data']) for c in cases]
mixed=run([encode(c) for c in cases]);assert mixed.returncode==1
outputs=mixed.stdout.splitlines();accepted=[c for c,ok in zip(cases,answers) if ok]
rejected_rows=[i for i,ok in enumerate(answers,1) if not ok]
assert len(outputs)==len(accepted)
for line,c in zip(outputs,accepted):assert line==encode(json.loads(line));validate(json.loads(line),c)
diagnostics=mixed.stderr.splitlines();assert len(diagnostics)==len(rejected_rows)
assert all(msg.startswith(f'stdin:{i}: ') for i,msg in zip(rejected_rows,diagnostics))
runs=[run([encode(c) for c in accepted]) for _ in range(3)]
assert all(r.returncode==0 and not r.stderr for r in runs)
assert len({r.stdout for r in runs})==1
(P/'valid.input.jsonl').write_text('\n'.join(encode(c) for c in accepted)+'\n')
(P/'valid.jsonl').write_text(runs[0].stdout)
for name,c in named.items():
    r=run([encode(c)]);assert r.returncode==0;validate(json.loads(r.stdout),c)
    (P/f'case_{name}.json').write_text(r.stdout)
correction=json.loads((P/'case_correction.json').read_text())
assert any(correction['sourceCorrection']) and correction['representative']==[True,True]

bad=[]
def mutate(name,change):
    c=copy.deepcopy(named['correction']);change(c);bad.append((name,encode(c)))
mutate('version',lambda c:c.__setitem__('version',2))
mutate('unknown field',lambda c:c.__setitem__('unknown',True))
mutate('missing data',lambda c:c.pop('data'))
for marker in [None,'?','[NULL]','possibly','external_input']:
    mutate('unknown entry '+str(marker),lambda c,v=marker:c['data']['x'].__setitem__(0,v))
for value in [0,1]:mutate('numeric bool '+str(value),lambda c,v=value:c['data']['f'].__setitem__(0,v))
for field in ['a','b','ha','hb','depth','s','n']:
    mutate(field+' limit',lambda c,k=field:c['data'].__setitem__(k,65))
mutate('boolean dimension',lambda c:c['data'].__setitem__('a',True))
mutate('negative dimension',lambda c:c['data'].__setitem__('a',-1))
mutate('depth length',lambda c:c['data']['source'].append(c['data']['source'][0]))
mutate('matrix length',lambda c:c['data']['target'][0].append(False))
mutate('vector length',lambda c:c['data']['x'].append(False))
base=encode(named['correction'])
bad.extend([('duplicate',base[:-1]+',"version":1}'),('blank',''),('trailing JSON',base+'{}'),
    ('trailing NUL',base+'\x00'),('NUL plus junk',base+'\x00junk'),
    ('leading zero',base.replace('"version":1','"version":01')),
    ('deep','['*34+'0'+']'*34),('oversized',' '*10000001)])
negative=[]
for name,line in bad:
    r=run([line]);assert r.returncode==1 and not r.stdout,(name,r.stdout)
    assert r.stderr.startswith('stdin:1: '),(name,r.stderr)
    negative.append(dict(name=name,error=r.stderr.strip()))
# Invalid records and blank physical lines must not prevent processing later records.
r=run([base,'',base+'\x00',base]);assert r.returncode==1 and len(r.stdout.splitlines())==2
assert [m.split(':')[1] for m in r.stderr.splitlines()]==['2','3']
empty=subprocess.run([str(EXE)],input='',text=True,capture_output=True)
assert empty.returncode==1 and not empty.stdout

# Limit-size full-rank filtration with redundant terminal-zero factors.
size=64;identity=[i==j for i in range(size) for j in range(size)]
large=dict(a=size,b=size,ha=size,hb=size,depth=1,s=0,n=0,f=identity,
    source=[identity],target=[identity],x=[i%2==0 for i in range(size)],y=[i%2==0 for i in range(size)])
r=run([encode(query(large))]);assert r.returncode==0 and not r.stderr
w=json.loads(r.stdout);assert w['mapFactors']==[identity]
assert w['sourceFactors']==[[False]*(size*size)] and w['targetFactors']==[[False]*(size*size)]
assert w['representative']==large['x'] and w['sourceMember']==large['x']
(P/'case_dimension64.json').write_text(r.stdout)

files=[P/'export.cpp',P/'Makefile',Path(__file__),R/'IndexedFamilyProducer/json.hpp']
report=dict(status='independent_quotient_oracle_passed',input_cases=len(cases),scalar_cases=1152,
    random_cases=1400,named_cases=3,accepted=len(accepted),rejected=len(rejected_rows),
    deterministic_runs=3,byte_identical=True,negative_cases=negative,
    dimension_limit_tested=64,depth_zero_and_index128_tested=True,
    source_sha256={str(p.relative_to(R)):sha(p) for p in files},executable_sha256=sha(EXE),
    valid_input_sha256=sha(P/'valid.input.jsonl'),valid_output_sha256=sha(P/'valid.jsonl'),
    scope='Actual finite quotient-equation semantics; Lean must still check each output and prove its soundness.')
(P/'audit.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print(f'{len(cases)} cases: {len(accepted)} accepted/{len(rejected_rows)} rejected; deterministic and strict negative checks passed')
