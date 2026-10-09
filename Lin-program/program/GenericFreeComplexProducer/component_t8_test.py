"""Independently check coordinate completeness, actual products and contractions."""
import collections,importlib.util,itertools,json,pathlib,subprocess,tempfile,copy,hashlib
HERE=pathlib.Path(__file__).resolve().parent
spec=importlib.util.spec_from_file_location('tensor_oracle',HERE/'audit_t8.py');oracle=importlib.util.module_from_spec(spec);spec.loader.exec_module(oracle)
w=json.loads((HERE/'actual_t8.input.jsonl').read_text());n=w['n'];rank=w['rank'];weight=oracle.weight
run=subprocess.run([str(HERE/'generic-components'),str(HERE/'actual_t8.input.jsonl'),'0','8','0','8'],capture_output=True,text=True,check=True);path=HERE/'actual_t8_components.jsonl';assert run.stdout==path.read_text();records=[json.loads(x) for x in run.stdout.splitlines()]
def coords(s,t):return [dict(generator=g,monomial=list(m)) for g in range(n) if w['homological'][g]==s for m in itertools.product(range(t+1),repeat=rank) if weight(m)+w['internal'][g]==t]
def multiply(a,b,m,k,n):return [sum(a[i*k+h] and b[h*n+j] for h in range(k))%2==1 for i in range(m) for j in range(n)]
for row in records:
 for c in (row['incoming'],row['outgoing']):
  assert c['source']==coords(c['sourceS'],c['t']) and c['target']==(coords(c['targetS'],c['t']) if c['targetKind']=='component' else []);cols=len(c['source']);rows=len(c['target']);expected=[False]*(rows*cols)
  assert len(c['products'])==len(c['witnesses'])==cols*n
  for j,x in enumerate(c['source']):
   for g in range(n):
    idx=j*n+g;p=c['products'][idx];certificate=c['witnesses'][idx];bound=certificate['finite']['window']['degree'];left=tuple(x['monomial']);right=collections.Counter(map(tuple,w['edges'][x['generator']*n+g]));out=[list(m) for m in itertools.product(range(bound+1),repeat=rank) if weight(m)<=bound and sum((a==left)*right[b] for a,b in oracle.coproduct(m))%2];assert p==out
    for i,y in enumerate(c['target']):
     if y['generator']==g:expected[i*cols+j]=p.count(y['monomial'])%2==1
  assert expected==c['entries']
 inc,out=row['incoming'],row['outgoing'];m=len(out['source']);k=len(out['target']);upper=len(inc['source']);assert inc['target']==out['source'];assert not any(multiply(out['entries'],inc['entries'],k,m,upper))
 if row['status']=='exact':
  a=multiply(inc['entries'],row['up'],m,upper,m);b=multiply(row['down'],out['entries'],m,k,m);assert [x!=y for x,y in zip(a,b)]==[i==j for i in range(m) for j in range(m)]
 else:assert (row['s'],row['t'],row['status'])==(0,0,'nonexact')
assert len(records)==81
r=dict(input_sha256=hashlib.sha256((HERE/'actual_t8.input.jsonl').read_bytes()).hexdigest(),output_sha256=hashlib.sha256((HERE/'actual_t8_components.jsonl').read_bytes()).hexdigest(),components=81,exact=80,nonexact=[dict(s=0,t=0,reason='unaugmented complex retains sphere unit')],status='independent actual Milnor matrix and contraction audit passed');(HERE/'component_t8_audit.json').write_text(json.dumps(r,indent=2)+'\n');print(r)

