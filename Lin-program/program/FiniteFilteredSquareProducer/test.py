"""Independent finite-group oracle, witness equations and strict transport tests."""
import copy,hashlib,itertools,json,random,subprocess
from pathlib import Path
P=Path(__file__).resolve().parent
R=P.parent
EXE=P/'finite-filtered-square-export'
encode=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
vecs=lambda n:range(1<<n)
def integer(xs):return sum(int(x)<<i for i,x in enumerate(xs))
def bits(x,n):return [bool(x>>i&1) for i in range(n)]
def cols(raw,m,n):return [integer([raw[i*n+j] for i in range(m)]) for j in range(n)]
def ev(columns,v):
 out=0
 for j,c in enumerate(columns):
  if v>>j&1:out^=c
 return out
def span(columns):return {ev(columns,x) for x in vecs(len(columns))}
def context(d):
 maps={f:cols(d[f],d[b],d[a]) for f,a,b in [('f','a','b'),('p','a','c'),('q','b','d'),('g','c','d')]}
 def level(group,i):
  key=group.lower();m,n=d[key],d['h'+key]
  return cols(d['source'+group][i],m,n) if i<d['depth'] else [0]*n
 return maps,level

def expected(d,branch):
 maps,L=context(d);F=lambda g,i:span(L(g,i));s,n,m,l=(d[k] for k in ['s','n','m','l'])
 if n>m+l:return False
 for group in 'ABCD':
  for i in range(d['depth']):
   if not F(group,i+1)<=F(group,i):return False
 for name,a,b in [('f','A','B'),('p','A','C'),('q','B','D'),('g','C','D')]:
  for i in range(d['depth']):
   if not {ev(maps[name],x) for x in F(a,i)}<=F(b,i):return False
 if any(ev(maps['q'],ev(maps['f'],x))!=ev(maps['g'],ev(maps['p'],x)) for x in vecs(d['a'])):return False
 indexes=[s,s+n,s+m,s+m+l]
 for group,v,index in zip('ABCD','xyzw',indexes):
  if integer(d[v]) not in F(group,index):return False
 for name,a,b,x,y,low,high in [('f','A','B','x','y',s,s+n),('p','A','C','x','z',s,s+m),('g','C','D','z','w',s+m,s+m+l)]:
  # Actual representative extension: some corrected source is a cycle and gives the target quotient class.
  if not any(ev(maps[name],integer(d[x])^h)^integer(d[y]) in F(b,high+1) for h in F(a,low+1)):return False
 alongF={ev(maps['f'],x) for x in F('A',s+1)}<=F('B',s+n+1)
 alongP={ev(maps['p'],x) for x in F('A',s+1)}<=F('C',s+m+1)
 if not (alongF if branch=='f' else alongP if branch=='p' else alongF or alongP):return False
 if not {ev(maps['g'],x) for x in F('C',s+m+1)}<=F('D',s+m+l+1):return False
 # Independently check the resulting true quotient extension; do not assume raw y is a cycle.
 corrected=[integer(d['y'])^h for h in F('B',s+n+1)]
 H={h for h in F('B',s+n+1) if ev(maps['q'],h) in F('D',s+m+l)}
 relations={u^ev(maps['q'],h) for u in F('D',s+m+l+1) for h in H}
 assert any(ev(maps['q'],v) in F('D',s+m+l) and
   ev(maps['q'],v)^integer(d['w']) in relations for v in corrected)
 return True

def validate(w,query):
 d=query['data'];assert w['version']==1 and w['data']==d
 maps,L=context(d);s,n,m,l=(d[k] for k in ['s','n','m','l'])
 def factor(raw,h,k,mapping,rows):
  fac=cols(raw,rows,len(h))
  assert len(raw)==rows*len(h)
  for v in vecs(len(h)):assert ev(k,ev(fac,v))==ev(mapping,ev(h,v))
 for group in 'ABCD':
  assert len(w['descent'+group])==d['depth']
  for i,fac in enumerate(w['descent'+group]):factor(fac,L(group,i+1),L(group,i),[1<<j for j in range(d[group.lower()])],d['h'+group.lower()])
 for name,a,b in [('f','A','B'),('p','A','C'),('q','B','D'),('g','C','D')]:
  assert len(w['filtered'+name.upper()])==d['depth']
  for i,fac in enumerate(w['filtered'+name.upper()]):factor(fac,L(a,i),L(b,i),maps[name],d['h'+b.lower()])
 for group,v,index in zip('ABCD','xyzw',[s,s+n,s+m,s+m+l]):
  assert ev(L(group,index),integer(w['member'+v.upper()]))==integer(d[v])
 for label,name,a,b,x,y,low,high in [('first','f','A','B','x','y',s,s+n),('second','p','A','C','x','z',s,s+m),('third','g','C','D','z','w',s+m,s+m+l)]:
  rep=integer(w[label+'Rep'])
  assert ev(L(a,low+1),integer(w[label+'Source']))==rep^integer(d[x])
  assert ev(L(b,high+1),integer(w[label+'Target']))==ev(maps[name],rep)^integer(d[y])
 branch=w['firstBranch'];assert branch in ('f','p')
 if query['firstBranch']!='auto':assert branch==query['firstBranch']
 b,high=('B',s+n) if branch=='f' else ('C',s+m)
 factor(w['firstFactor'],L('A',s+1),L(b,high+1),maps[branch],d['h'+b.lower()])
 factor(w['lastFactor'],L('C',s+m+1),L('D',s+m+l+1),maps['g'],d['hd'])
 assert expected(d,branch)

def execute(text):return subprocess.run([str(EXE)],input=text,text=True,capture_output=True)
rng=random.Random(251119)
queries=[]
for row in (R/'FiniteFilteredSquareCertificates/examples.jsonl').read_text().splitlines():
 w=json.loads(row);queries.append(dict(version=1,data=w['data'],firstBranch=w['firstBranch']))
for values in itertools.product([False,True],repeat=8):
 f,p,q,g,x,y,z,w=values
 for ranks in itertools.product([0,1,2],repeat=4):
  d=dict(a=1,b=1,c=1,d=1,ha=1,hb=1,hc=1,hd=1,depth=2,s=0,n=1,m=1,l=0,
   f=[f],p=[p],q=[q],g=[g],x=[x],y=[y],z=[z],w=[w])
  for group,rank in zip('ABCD',ranks):d['source'+group]=[[rank>=1],[rank>=2]]
  queries.append(dict(version=1,data=d,firstBranch='auto'))
for _ in range(1500):
 d={key:rng.randrange(3) for key in ['a','b','c','d','ha','hb','hc','hd']}
 d.update(depth=rng.randrange(4),s=rng.randrange(3),n=rng.randrange(3),m=rng.randrange(3),l=rng.randrange(3))
 for f,a,b in [('f','a','b'),('p','a','c'),('q','b','d'),('g','c','d')]:d[f]=[bool(rng.randrange(2)) for _ in range(d[a]*d[b])]
 for group,v in zip('ABCD','xyzw'):
  a=group.lower();d['source'+group]=[[bool(rng.randrange(2)) for _ in range(d[a]*d['h'+a])] for _ in range(d['depth'])];d[v]=[bool(rng.randrange(2)) for _ in range(d[a])]
 queries.append(dict(version=1,data=d,firstBranch=rng.choice(['auto','f','p'])))
answers=[expected(q['data'],q['firstBranch']) for q in queries]
text=''.join(encode(q)+'\n' for q in queries)
runs=[execute(text) for _ in range(3)]
assert all(r.returncode==1 for r in runs)
assert len({r.stdout for r in runs})==1 and len({r.stderr for r in runs})==1
wires=[json.loads(line) for line in runs[0].stdout.splitlines()]
accepted=[q for q,yes in zip(queries,answers) if yes]
assert len(wires)==len(accepted),(len(wires),len(accepted))
for w,q in zip(wires,accepted):validate(w,q)
errors=runs[0].stderr.splitlines();assert len(errors)==answers.count(False)
for error,i in zip(errors,[i+1 for i,yes in enumerate(answers) if not yes]):assert error.startswith(f'stdin:{i}:')
(P/'valid.input.jsonl').write_text(''.join(encode(q)+'\n' for q in accepted))
(P/'valid.jsonl').write_text(runs[0].stdout)
for i,name in enumerate(['nonzero_f','nonzero_p','corrected','empty']):(P/('case_'+name+'.json')).write_text(encode(wires[i])+'\n')
base=queries[0];invalid=[]
for value in [None,'?','[NULL]','possibly',1]:
 q=copy.deepcopy(base);q['data']['f'][0]=value;invalid.append(encode(q))
for value in ['bad',None,0,True]:
 q=copy.deepcopy(base);q['firstBranch']=value;invalid.append(encode(q))
for key in ['version','data','firstBranch']:
 q=copy.deepcopy(base);del q[key];invalid.append(encode(q))
q=copy.deepcopy(base);q['extra']=0;invalid.append(encode(q))
q=copy.deepcopy(base);q['data']['extra']=0;invalid.append(encode(q))
q=copy.deepcopy(base);q['data']['a']=65;invalid.append(encode(q))
q=copy.deepcopy(base);q['data']['sourceA']=[];invalid.append(encode(q))
invalid += [encode(base)+'\x00',encode(base)+'\x00x','',encode(base).replace('"version":1','"version":1,"version":1'),'{'+ '"x":['*33+'0'+']'*33+'}']
for bad in invalid:
 r=execute(encode(base)+'\n'+bad+'\n'+encode(base)+'\n')
 assert r.returncode==1 and len(r.stdout.splitlines())==2 and len(r.stderr.splitlines())==1 and r.stderr.startswith('stdin:2:'),(bad,r.stderr)
# Large boundary is a producer transport/equation test, not a claimed Lean64 proof.
d=copy.deepcopy(queries[0]['data'])
for key in ['a','b','c','d','ha','hb','hc','hd']:d[key]=64
d.update(depth=1,s=0,n=0,m=0,l=0)
id64=[i==j for i in range(64) for j in range(64)]
for f in ['f','p','q','g']:d[f]=id64
for group in 'ABCD':d['source'+group]=[id64]
for v in 'xyzw':d[v]=[i%2==0 for i in range(64)]
r=execute(encode(dict(version=1,data=d,firstBranch='auto'))+'\n');assert r.returncode==0,r.stderr
(P/'case_dimension64.json').write_text(r.stdout)
audit=dict(status='passed',queries=len(queries),accepted=len(accepted),rejected=answers.count(False),deterministic_runs=3,strict_negative_cases=len(invalid),dimension64='producer accepted; no kernel claim',sources={f:sha(P/f) for f in ['export.cpp','test.py','Makefile']},outputs={f:sha(P/f) for f in ['valid.input.jsonl','valid.jsonl','case_nonzero_f.json','case_nonzero_p.json','case_corrected.json','case_empty.json','case_dimension64.json']})
(P/'audit.json').write_text(json.dumps(audit,indent=2)+'\n')
print(json.dumps({k:v for k,v in audit.items() if k not in ['sources','outputs']}))
