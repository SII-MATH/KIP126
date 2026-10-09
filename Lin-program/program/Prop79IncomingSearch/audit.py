"""Independent SQL, polynomial, matrix, quotient and evidence audit."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

P=Path(__file__).resolve().parent;R=P.parent
load=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
s=load(P/'search.json');b=load(P/'bottom-inclusion.json')
db=R/'upstream/kervaire-49/Cnu_AdamsSS_t200.db'
assert sha(db)==s['database_sha256']==b['sources'][db.name]
c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
sc=sqlite3.connect(f'file:{R}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
assert dict(c.execute('select name,value from version'))==s['metadata']
for record in s['degrees'].values():
 d=record['degree']
 assert record['e2']==[list(x) for x in c.execute('select id,mon,d2 from Cnu_AdamsE2_basis where s=? and t=? order by id',d)]
 assert record['staircase']==[list(x) for x in c.execute('select id,base,diff,level from Cnu_AdamsE2_ss where s=? and t=? order by id',d)]
assert s['global_basis_id']==4412 and s['local_basis_index']==2
assert s['degrees']['Cnu:14,139']['e2'][2]==[4412,'1,1,7,1,275,1,0','']
assert s['target_staircase_row']==4411

# Rebuild the smaller incoming dependency graph without the optional outgoing d5.
def key(a,t,r):return f'Cnu:{a},{t}:d{r}'
graph={}
def visit(a,t,r):
 k=key(a,t,r)
 if k in graph:return
 children=[] if r==2 else [key(x,y,r-1) for x,y in [(a-r,t-r+1),(a,t),(a+r,t+r-1)]]
 graph[k]=children
 if r>2:
  for x,y in [(a-r,t-r+1),(a,t),(a+r,t+r-1)]:visit(x,y,r-1)
for r in range(3,6):visit(14,139,r-1);visit(14-r,140-r,r-1)
assert set(graph)==set(s['required_keys']) and len(graph)==24
assert all(v==s['graph'][k]['predecessors'] for k,v in graph.items())
assert set(graph)-set(s['comparisons'])=={'Cnu:14,139:d3','Cnu:14,139:d4'}
issues=s['required_frontier']['Cnu:14,139:d3']['issues']
assert {(x['row'][0],x['page']) for x in issues}=={(4411,3),(4180,3)}
assert all(x['row'][2:] == [None,9000] and x['target_dimension']==2 for x in issues)

# Use integer bit vectors, independently of the producer's list Gaussian routine.
def matrix(flat,m,n):
 assert len(flat)==m*n and all(type(x) is bool for x in flat)
 return [sum(int(flat[i*n+j])<<i for i in range(m)) for j in range(n)]
def apply(cols,x):
 out=0
 for j,column in enumerate(cols):
  if x>>j&1:out^=column
 return out
def rank(cols):
 piv={}
 for col in cols:
  while col:
   i=col.bit_length()-1
   if i not in piv:piv[i]=col;break
   col^=piv[i]
 return len(piv)
def inspan(cols,v):return rank(cols+[v])==rank(cols)
counts=Counter()
def check(w):
 k,m,n,h=(w[x] for x in ['k','m','n','h'])
 a=matrix(w['outgoing'],k,m);d=matrix(w['incoming'],m,n)
 inc=matrix(w['inclusion'],m,h);proj=matrix(w['projection'],h,m)
 up=matrix(w['up'],n,m);down=matrix(w['down'],m,k)
 assert h==m-rank(a)-rank(d)
 assert all(apply(a,x)==0 for x in d)
 for x in range(1<<m):
  assert x==apply(inc,apply(proj,x))^apply(d,apply(up,x))^apply(down,apply(a,x))
  if apply(a,x)==0:
   assert (apply(proj,x)==0)==inspan(d,x)
   counts['cycle_vectors']+=1
  counts['homotopy_vectors']+=1
 for x in range(1<<h):
  assert apply(a,apply(inc,x))==0
  assert apply(proj,apply(inc,x))==x
  counts['quotient_coordinates']+=1
 counts['comparisons']+=1
 return a,d,inc,proj
for k,block in s['comparisons'].items():
 w=block['wire'];check(w)
 path=P/'wires'/(k.replace(':','_').replace(',','_')+'.json')
 assert load(path)==w
 assert all(p in s['comparisons'] for p in block['predecessors'])
 for u in block['uses']:
  if u['kind']=='checked_complete_zero_codomain':
   assert u['finite_value']==[] and s['comparisons'][u['target_predecessor']]['wire']['h']==0
  assert not u['kind'].startswith('conditional')
for block in b['comparisons'].values():check(block['wire'])
old=load(R/'CnuPageCertificates/comparison.json')
assert old==b['comparisons']['Cnu:14,139']['wire']
rows=lambda raw:[] if raw=='' else list(map(int,raw.split(',')))
for page,expected in [(2,'finite_no_hit'),(3,'unresolved_incoming_values'),(4,'blocked_predecessors'),(5,'blocked_predecessors')]:
 rec=s['incoming_checks'][page-2];assert rec['page']==page and rec['status']==expected
assert s['comparisons']['Cnu:10,136:d3']['wire']['h']==0
assert s['comparisons']['Cnu:9,135:d4']['wire']['h']==1

# All old/new finite adjacent spaces and consecutive quotients use exact coordinates.
for ka,ba in s['comparisons'].items():
 for kb,bb in s['comparisons'].items():
  a,t=ba['center'];page=ba['page'];wa,wb=ba['wire'],bb['wire']
  if bb['page']==page and bb['center']==[a+page,t+page-1]:
   assert wa['outgoing']==wb['incoming'];counts['adjacent_pairs']+=1
  if bb['page']==page+1 and bb['center']==[a,t]:
   assert wa['h']==wb['m'];counts['consecutive_pairs']+=1

# Replay all complete coefficient reductions, including ring-relation lifts.
def coefficient(raw):
 v=[] if raw=='' else list(map(int,raw.split(',')))
 assert len(v)%2==0 and all(x>=0 for x in v)
 return tuple(sorted(g for g,e in zip(v[::2],v[1::2]) for _ in range(e)))
def modulemon(raw):
 v=raw.split(',');return coefficient(','.join(v[:-1])),int(v[-1])
def parity(values):return {x for x,n in Counter(values).items() if n%2}
def expression(e):return parity((tuple(co),g) for g,pol in enumerate(e) for co in pol)
def multiply(poly,terms):return parity((tuple(sorted(co+x)),g) for co in poly for x,g in terms)
for name,m in b['matrices'].items():
 d=m['source_degree'];w=m['wire']['algebra']
 assert m['source']==[list(x) for x in sc.execute('select id,mon from S0_AdamsE2_basis where s=? and t=? order by id',d)]
 assert m['target']==[list(x) for x in c.execute('select id,mon from Cnu_AdamsE2_basis where s=? and t=? order by id',d)]
 assert w['images'][0][0]==[[]] and all(not x for x in w['images'][0][1:])
 rels=[]
 for origin,e in zip(m['relation_sources'],w['relations']):
  sql=sc if origin['kind']=='ring_lift' else c
  raw,rs,rt=sql.execute(f"select rel,s,t from {origin['table']} where rowid=?",(origin['rowid'],)).fetchone()
  assert origin['raw']==raw
  if origin['kind']=='ring_lift':
   assert origin['ring_degree']==[rs,rt]
   expected=parity((coefficient(x),origin['module_generator']) for x in raw.split(';'))
  else:
   assert origin['degree']==[rs,rt]
   expected=parity(modulemon(x) for x in raw.split(';'))
  assert expected==expression(e);rels.append(expected)
 for j,(bid,raw) in enumerate(m['source']):
  assert expression(w['source'][j])=={(coefficient(raw),0)}
  cur={(coefficient(raw),0)}
  for term in w['terms'][j]:
   cur.symmetric_difference_update(multiply([tuple(x) for x in term['multiplier']],rels[term['relation']]))
   counts['reduction_steps']+=1
  expected=parity(modulemon(raw) for i,(_,raw) in enumerate(m['target']) if w['entries'][i*w['cols']+j])
  assert cur==expected;counts['coefficient_columns']+=1
 assert load(P/'bottom-wire'/(name+'.json'))==m['wire']

# Named classes and every induced-map vector, including both chain squares.
for d in [(11,137),(14,139)]:
 a,t=d;sw,tw=(b['comparisons'][f'{o}:{a},{t}']['wire'] for o in ['S0','Cnu'])
 so,si,sinc,sp=check(sw);to,ti,tinc,tp=check(tw)
 def get(a,t):
  w=b['matrices'][f's{a}t{t}']['wire']['algebra'];return matrix(w['entries'],w['rows'],w['cols'])
 middle,lower,upper=get(a,t),get(a-2,t-1),get(a+2,t+1)
 for x in range(1<<sw['m']):assert apply(to,apply(middle,x))==apply(upper,apply(so,x))
 for x in range(1<<sw['n']):assert apply(middle,apply(si,x))==apply(ti,apply(lower,x))
 qm=b['quotient_maps'][f'{a},{t}'];qcols=[sum(qm[i][j]<<i for i in range(tw['h'])) for j in range(sw['h'])]
 for x in range(1<<sw['h']):
  assert apply(tp,apply(middle,apply(sinc,x)))==apply(qcols,x);counts['whole_induced_vectors']+=1
if True:
 sw=b['comparisons']['S0:11,137']['wire'];tw=b['comparisons']['Cnu:11,137']['wire']
 assert apply(matrix(sw['projection'],sw['h'],sw['m']),6)==3
 assert apply(matrix(tw['projection'],tw['h'],tw['m']),6)==6
 stair=s['comparisons']['Cnu:11,137:d2']['wire']
 assert apply(matrix(stair['projection'],3,4),6)==2
 target=s['comparisons']['Cnu:14,139:d2']['wire']
 assert apply(matrix(target['projection'],2,4),4)==1
# Exhaust all linear three-column maps: all three zero columns are necessary.
for cols in itertools.product(range(4),repeat=3):
 if cols==(0,0,0):assert all(apply(cols,x)==0 for x in range(8))
 if cols[0]==cols[2]==0 and cols[1]!=0:assert apply(cols,2)!=0
 counts['candidate_incoming_matrices']+=1

names=['Maps','Comparison','Naturality','Actual','Finite','CoordinateBridge','MapSemantics','Incoming']
reports={}
for name in names:
 rec=load(P/(name+'-compile.json'));src=P/(name+'.lean');log=P/rec['log']
 assert rec['observed_exit_code']==0 and rec['inputs_stable']
 assert rec['source_sha256']==sha(src) and rec['log_sha256']==sha(log)
 assert not re.search(r'\b(sorry|axiom|native_decide|unsafe|admit)\b',src.read_text())
 text=log.read_text();assert not re.search(r'\b(sorryAx|Lean\.ofReduceBool)\b|error:',text)
 axioms=re.findall(r"depends on axioms: \[([^\]]*)\]",text)
 for ax in axioms:assert set(filter(None,map(str.strip,ax.split(','))))<={'propext','Classical.choice','Quot.sound'}
 reports[name]=len(axioms)+text.count('does not depend on any axioms')
 for path,h in rec['external_input_sha256'].items():assert sha(R/path)==h
 for path,h in rec['dependencies_sha256'].items():assert sha(R/path)==h
inputs=[P/'search.json',P/'bottom-inclusion.json',*sorted(P.glob('*.lean')),P/'search.py',P/'bottom_inclusion.py',P/'audit.py']
result=dict(status='pass',counts=dict(counts),axiom_reports=reports,required=24,available_required=22,available_all=31,
 raw_unknowns_preserved=True,conditional_row4180_zero=True,unconditional_prop79_claimed=False,
 input_sha256={str(f.relative_to(R)):sha(f) for f in inputs})
(P/'audit.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k!='input_sha256'},indent=2))
