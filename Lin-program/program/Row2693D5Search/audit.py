"""Independent read-only SQL, polynomial and full-quotient bitset audit."""
import collections
import hashlib
import itertools
import json
from pathlib import Path
import sqlite3

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
load=lambda p:json.loads(p.read_text())
data=load(HERE/'source-products.json')
for p,h in data['input_sha256'].items():assert sha(ROOT/p)==h
c=sqlite3.connect('file:'+str(ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db')+'?mode=ro',uri=True)
meta=dict(c.execute('select name,value from version'))
assert meta==data['database_metadata']
gen={i:(s,t) for i,s,t in c.execute('select id,s,t from S0_AdamsE2_generators')}
def mon(raw):
 cells=list(map(int,raw.split(','))) if raw else []
 assert len(cells)%2==0
 return tuple(sorted(g for g,e in zip(cells[::2],cells[1::2]) for _ in range(e)))
def degree(m):return tuple(sum(gen[g][i] for g in m) for i in [0,1])
def parity(ms):return {m for m,n in collections.Counter(ms).items() if n%2}
def multiply(a,b):return parity(tuple(sorted(x+y)) for x in a for y in b)
def basis(d):
 assert d[1]<=meta['t_max']
 rows=c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',d).fetchall()
 assert all(degree(mon(raw))==d for _,raw,_ in rows)
 return [list(r) for r in rows]
def columns(w,f,r,n):
 v=w[f]
 assert len(v)==r*n and all(type(x) is bool for x in v)
 return [sum(int(v[i*n+j])<<i for i in range(r)) for j in range(n)]
def ev(cols,x):
 out=0
 for j,v in enumerate(cols):
  if x>>j&1:out^=v
 return out
def quotient(w):
 k,m,n,h=[w[x] for x in ['k','m','n','h']]
 a,b,u,p,up,down=[columns(w,f,r,cc) for f,r,cc in [('outgoing',k,m),('incoming',m,n),
  ('inclusion',m,h),('projection',h,m),('up',n,m),('down',m,k)]]
 boundary={ev(b,x) for x in range(1<<n)}
 cycles=[x for x in range(1<<m) if ev(a,x)==0]
 assert boundary<=set(cycles)
 for j,col in enumerate(u):assert ev(a,col)==0 and ev(p,col)==1<<j
 for j in range(m):assert ev(u,p[j])^ev(b,up[j])^ev(down,a[j])==1<<j
 for x,y in itertools.product(cycles,repeat=2):assert (ev(p,x)==ev(p,y))==((x^y) in boundary)
 return len(cycles)**2
families=[{tuple(e['key'][k] for k in ['page','s','t']):e['wire'] for e in
 load(ROOT/f'Fact713SquareContinuation/zero_b{b}-family.json')['entries']} for b in [0,1]]
pairs=0
for name,item in data['comparisons'].items():
 w=item['wire'];r=item['page'];d=tuple(item['degree'])
 assert w==load(HERE/'wire'/f'{name}.json')
 pairs+=quotient(w)
 if (r,*d) in families[0]:assert w==families[0][r,*d]==families[1][r,*d]
 if r==2:
  assert d[1]<=meta['d2_t_max']
  groups=[basis(dd) for dd in [(d[0]-2,d[1]-1),d,(d[0]+2,d[1]+1)]]
  n,m,k=map(len,groups);assert (k,m,n)==tuple(w[f] for f in ['k','m','n'])
  for field,rows,nn in [('outgoing',groups[1],k),('incoming',groups[0],m)]:
   expected=[]
   for _,_,raw in rows:
    assert raw is not None
    indices=[int(v) for v in raw.split(',') if v]
    assert len(indices)==len(set(indices)) and all(0<=i<nn for i in indices)
    expected.append(sum(1<<i for i in indices))
   assert columns(w,field,nn,len(rows))==expected
 elif name in ['h03','tower53','tower63']:
  assert not basis((d[0]+r,d[1]+r-1))
  assert not basis((d[0]-r,d[1]-r+1))
 elif name in ['left3','left4']:
  assert r in [3,4] and d==(1,2) and w['m']==w['h']==w['k']==1 and w['n']==0
  assert item['status'].startswith('derived by LowH1 detector')
for raw,rows in data['raw_staircases'].items():
 d=tuple(map(int,raw.split(',')))
 assert rows==[list(r) for r in c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',d)]
assert data['raw_staircases']['10,134'][3]==[2693,'4',None,9000]
assert data['raw_staircases']['10,134'][4]==[2694,'3','1',9995]
assert data['raw_staircases']['1,2']==[[3,'0',None,9000]]
for key,rows in data['empty_basis_groups'].items():assert rows==basis(tuple(map(int,key.split(','))))==[]
relation_count=0
for name,item in data['products'].items():
 a,b,d=[basis(tuple(item[k])) for k in ['left_degree','right_degree','target_degree']]
 assert (a,b,d)==tuple(item[k] for k in ['left_basis','right_basis','target_basis'])
 assert len(item['columns'])==len(a)*len(b)
 for col in item['columns']:
  w=load(HERE/'wire'/(col['name']+'.json'));assert w==col['bundle']
  assert parity(map(tuple,w['input']))==multiply({mon(a[col['left']][1])},{mon(b[col['right']][1])})
  combo=set()
  for rel,origin in zip(w['relations'],col['relations'],strict=True):
   row=c.execute('select rel,s,t from S0_AdamsE2_relations where rowid=?',(origin['rowid'],)).fetchone()
   assert (row[0],list(row[1:]))==(origin['raw'],origin['degree'])
   assert list(map(list,map(mon,row[0].split(';'))))==rel
   assert all(degree(tuple(m))==tuple(row[1:]) for m in rel)
   relation_count+=1
  for term in w['terms']:
   assert 0<=term['relation']<len(w['relations'])
   combo.symmetric_difference_update(multiply(list(map(tuple,term['multiplier'])),list(map(tuple,w['relations'][term['relation']]))))
  assert combo==parity(map(tuple,w['input']+w['output']))
  assert parity(map(tuple,w['output']))=={mon(d[i][1]) for i in col['coordinates']}
  assert all(degree(tuple(m))==tuple(item['target_degree']) for m in w['input']+w['output'])
 assert item['tensor']==[i in col['coordinates'] for i in range(len(d)) for col in item['columns']]
assert [x['coordinates'] for x in data['products']['main']['columns']]==[[2],[]]
assert [x['coordinates'] for x in data['products']['correction']['columns']]==[[],[]]

wire=lambda n:data['comparisons'][n]['wire']
project=lambda w,x:ev(columns(w,'projection',w['h'],w['m']),x)
kernel=lambda w,x:ev(columns(w,'outgoing',w['k'],w['m']),x)==0
tensors={2:lambda x,y:4 if x and y&1 else 0,3:lambda x,y:4 if x and y&1 else 0,
 4:lambda x,y:4 if x and y else 0,5:lambda x,y:1 if x and y else 0}
inputs=0
for r in [2,3,4]:
 a,b,d=[wire(n+str(r)) for n in ['left','right','product']]
 boundary={ev(columns(d,'incoming',d['m'],d['n']),v) for v in range(1<<d['n'])}
 for x,y in itertools.product(range(1<<a['m']),range(1<<b['m'])):
  inputs+=1
  assert project(d,tensors[r](x,y))==tensors[r+1](project(a,x),project(b,y))
  if kernel(a,x) and kernel(b,y):assert kernel(d,tensors[r](x,y))
 for u,y in itertools.product(range(1<<a['n']),range(1<<b['m'])):
  if kernel(b,y):assert tensors[r](ev(columns(a,'incoming',a['m'],a['n']),u),y) in boundary
 for x,v in itertools.product(range(1<<a['m']),range(1<<b['n'])):
  if kernel(a,x):assert tensors[r](x,ev(columns(b,'incoming',b['m'],b['n']),v)) in boundary
value=16;right=3;path=[]
for r in [2,3,4]:
 assert kernel(wire('product'+str(r)),value) and kernel(wire('right'+str(r)),right)
 value=project(wire('product'+str(r)),value);right=project(wire('right'+str(r)),right)
 path.append(dict(page=r+1,product=value,right=right))
assert value==right==1
assert tensors[5](1,right)==value
relabels=[cols for cols in itertools.product(range(4),repeat=2) if len({ev(cols,x) for x in range(4)})==4]
assert len(relabels)==6
for cols in relabels:
 for x,y in itertools.product(range(2),repeat=2):assert ev(cols,tensors[5](x,y))==(ev(cols,1) if x and y else 0)
report=dict(status='passed',comparisons=len(data['comparisons']),quotient_cycle_pairs=pairs,
 product_columns=6,relation_occurrences=relation_count,full_descent_inputs=inputs,
 product_path=path,full_E5_relabelings=len(relabels),relabeled_inputs=len(relabels)*4,
 scope='All finite algebra, complete comparison quotient identities and inherited coordinate bindings. '
 'Low h1 d3/d4 derive from full low detector meanings; no SQL NULL is treated as a theorem.',
 audit_source_sha256=sha(Path(__file__)))
(HERE/'audit.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report,indent=2))
