"""Root review: exact dependency closure, full quotient trace and actual premises."""
from pathlib import Path
from collections import Counter
import hashlib
import itertools
import json
import re
import sqlite3
P=Path(__file__).resolve().parent;R=P.parent
load=lambda f:json.loads(f.read_text())
sha=lambda f:hashlib.sha256(f.read_bytes()).hexdigest()
s=load(P/'search.json');b=load(P/'bottom-inclusion.json');old=load(R/'Prop79IncomingSearch/search.json')
def vec(n):return list(itertools.product((0,1),repeat=n))
def ev(a,m,n,x):
 assert len(a)==m*n and len(x)==n
 return tuple(sum(a[i*n+j]*x[j] for j in range(n))%2 for i in range(m))
def xor(x,y):return tuple(a^b for a,b in zip(x,y,strict=True))
counts=Counter()
def quotient(w):
 n,m,k,h=(w[t] for t in ['n','m','k','h'])
 boundaries={ev(w['incoming'],m,n,x) for x in vec(n)}
 cycles=[x for x in vec(m) if not any(ev(w['outgoing'],k,m,x))]
 assert boundaries<=set(cycles)
 for x,y in itertools.product(cycles,repeat=2):
  assert (ev(w['projection'],h,m,x)==ev(w['projection'],h,m,y))==(xor(x,y) in boundaries)
  counts['quotient_pairs']+=1
 for y in vec(h):
  x=ev(w['inclusion'],m,h,y)
  assert x in cycles and ev(w['projection'],h,m,x)==y
 counts['complete_quotients']+=1
 return cycles,boundaries
for key,block in old['comparisons'].items():assert s['comparisons'][key]['wire']==block['wire']
graph={}
def visit(a,t,r):
 key=f'Cnu:{a},{t}:d{r}'
 if key in graph:return
 children=[] if r==2 else [(a-r,t-r+1,r-1),(a,t,r-1),(a+r,t+r-1,r-1)]
 graph[key]=[f'Cnu:{x},{y}:d{p}' for x,y,p in children]
 for x,y,p in children:visit(x,y,p)
for r in range(3,6):visit(14,139,r-1);visit(14-r,140-r,r-1)
assert len(graph)==24 and set(graph)==set(s['required_keys'])
assert set(graph)<=set(s['comparisons'])
assert all(children==s['graph'][key]['predecessors'] for key,children in graph.items())
conditional=set()
for key,block in s['comparisons'].items():
 quotient(block['wire'])
 for use in block['uses']:
  if use['kind'].startswith('conditional'):
   assert use['row'][2:]==[None,9000]
   conditional.add((tuple(use['source']),use['page'],use['row'][0]))
assert conditional=={((11,137),3,4180),((14,139),3,4411)}
for block in b['comparisons'].values():quotient(block['wire'])
assert b['comparisons']['S0:17,141']['wire']['h']==0
for key in ['Cnu:10,136:d3','Cnu:18,142:d3']:assert s['comparisons'][key]['wire']['h']==0
assert s['comparisons']['Cnu:9,135:d4']['wire']['h']==1
named=(0,0,1,0)
for page in range(2,5):
 w=s['comparisons'][f'Cnu:14,139:d{page}']['wire']
 cycles,boundaries=quotient(w)
 assert named in cycles and named not in boundaries
 named=ev(w['projection'],w['h'],w['m'],named)
 assert named==(1,0)
 counts['same_raw_steps']+=1
assert all(not any(x) for x in [ev([False,False],2,1,v) for v in vec(1)])
# Omitting one incoming column admits a hit of the named vector.
for columns in itertools.product(vec(2),repeat=3):
 flat=[columns[j][i] for i in range(2) for j in range(3)]
 if not any(columns[0]) and not any(columns[2]) and any(columns[1]):
  assert ev(flat,2,3,(0,1,0))==columns[1]
  counts['missing_incoming_column_countermodels']+=1
with sqlite3.connect(f'file:{R}/upstream/kervaire-49/Cnu_AdamsSS_t200.db?mode=ro',uri=True) as sql:
 assert sql.execute('SELECT s,t,base,diff,level FROM Cnu_AdamsE2_ss WHERE id=4411').fetchone()==(14,139,'2',None,9000)
 assert sql.execute('SELECT mon,s,t FROM Cnu_AdamsE2_basis WHERE id=4412').fetchone()==('1,1,7,1,275,1,0',14,139)
 for item in s['degrees'].values():
  assert [list(x) for x in sql.execute('SELECT id,mon,d2 FROM Cnu_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',item['degree'])]==item['e2']
  assert [list(x) for x in sql.execute('SELECT id,base,diff,level FROM Cnu_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',item['degree'])]==item['staircase']
  counts['SQL_degrees']+=1
freeze=load(P/'frozen-source.json')
for path,digest in freeze['source_sha256'].items():assert sha(R/path)==digest
reports={}
for module in freeze['modules']:
 leaf=module.split('.')[-1];rec=load(P/(leaf+'-compile.json'));log=P/rec['log']
 assert rec['observed_exit_code']==0 and rec['source_sha256']==sha(P/(leaf+'.lean')) and rec['log_sha256']==sha(log)
 assert not re.search(r'error:|sorryAx|Lean\.ofReduceBool',log.read_text())
 axioms=re.findall(r'depends on axioms: \[([^\]]*)\]',log.read_text())
 for ax in axioms:assert set(filter(None,map(str.strip,ax.split(','))))<={'propext','Classical.choice','Quot.sound'}
 reports[leaf]=len(axioms)+log.read_text().count('does not depend on any axioms')
assert sum(reports.values())==54
result=dict(status='no_correctness_findings',findings=[],counts=dict(counts),axiom_reports=reports,
 minimal_graph_nodes=24,optional_available=33,optional_total=36,
 reviewed=['actual all-source incoming differential equation transported through faithful target coordinates',
 'named outgoing d3 from full bottom source lift and zero sphere codomain',
 'other outgoing and incoming columns explicitly retained, then additivity covers all elements',
 'zero full E4 source and target force both entire actual d4 maps zero',
 'same E2 input is maintained in constructed actual E3/E4/E5 trace',
 'page5 source and whole future-prefix meaning remain explicit, no outgoing d5 used',
 'four actual PageBoundary negations plus nonzero E5 endpoint'],
 limitations=['original actual Adams realization and complete neighboring interpretations',
 'actual naturality and source naming bridges, local quotient laws',
 'future-prefix and boundary column proofs remain mathematical inputs',
 'does not prove E6, synthetic extension contradiction or unconditional Proposition7.9'],
 sources={str(f.relative_to(R)):sha(f) for f in [*sorted(P.glob('*.lean')),P/'search.json',P/'bottom-inclusion.json']})
(P/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k!='sources'},indent=2))
