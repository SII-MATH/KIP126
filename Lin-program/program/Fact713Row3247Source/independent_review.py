"""Root review: full quotient equations and countermodels to cycle omission."""
from pathlib import Path
import hashlib
import itertools
import json
import re
import sqlite3
P=Path(__file__).resolve().parent;R=P.parent
load=lambda f:json.loads(f.read_text())
sha=lambda f:hashlib.sha256(f.read_bytes()).hexdigest()
a=load(P/'provenance.json')
def matrix(bits,m,n):
 assert len(bits)==m*n
 return [sum(int(bits[i*n+j])<<i for i in range(m)) for j in range(n)]
def ev(columns,x):
 y=0
 for j,c in enumerate(columns):
  if x>>j&1:y^=c
 return y
count=0
for block in a['comparisons'].values():
 w=block['wire'];n,m,k,h=(w[x] for x in ['n','m','k','h'])
 incoming=matrix(w['incoming'],m,n);outgoing=matrix(w['outgoing'],k,m)
 projection=matrix(w['projection'],h,m);inclusion=matrix(w['inclusion'],m,h)
 boundary={ev(incoming,x) for x in range(1<<n)}
 cycles=[x for x in range(1<<m) if ev(outgoing,x)==0]
 assert boundary<=set(cycles)
 for x,y in itertools.product(cycles,repeat=2):
  assert (ev(projection,x)==ev(projection,y))==(x^y in boundary)
  count+=1
 for x in range(1<<h):assert ev(outgoing,ev(inclusion,x))==0 and ev(projection,ev(inclusion,x))==x
maps={name:matrix(v['entries'],v['target'],v['source']) for name,v in a['E3_maps'].items()}
h0=maps['h0_21_147'];d0=maps['d0_21_147'];top=maps['top_21_147']
assert [x for x in range(8) if ev(h0,x)==0]==[0,1]
assert [x for x in range(8) if ev(h0,x)==ev(d0,x)==0]==[0]
assert ev(top,1)==1 and ev(d0,1)!=0
assert ev(maps['h0_18_145'],1)==4 and ev(maps['d0_18_145'],1)==1
sphere=a['comparisons']['S0_18_141']['wire']
assert ev(matrix(sphere['projection'],sphere['h'],sphere['m']),3)==ev(matrix(sphere['projection'],sphere['h'],sphere['m']),7)==1
assert 4 in {ev(matrix(sphere['incoming'],sphere['m'],sphere['n']),x) for x in range(1<<sphere['n'])}
with sqlite3.connect(f'file:{R}/upstream/kervaire-49/Cnu_AdamsSS_t200.db?mode=ro',uri=True) as sql:
 assert sql.execute('SELECT s,t,base,diff,level FROM Cnu_AdamsE2_ss WHERE id=7669').fetchone()==(22,163,'0',None,9000)
 assert sql.execute('SELECT s,t,base,diff,level FROM Cnu_AdamsE2_ss WHERE id=5286').fetchone()==(19,146,'3','2',7)
reports={}
for item in load(P/'freeze.json')['modules']:
 leaf=item['module'].split('.')[-1];src=P/(leaf+'.lean');log=P/(leaf+'.log');rec=load(P/(leaf+'-compile.json'))
 assert item['source_sha256']==sha(src)==rec['source_sha256'] and rec['observed_exit_code']==0
 assert rec['log_sha256']==sha(log) and not re.search(r'error:|sorryAx|Lean\.ofReduceBool',log.read_text())
 for path,digest in rec['external_input_sha256'].items():assert sha(R/path)==digest
 axioms=re.findall(r'depends on axioms: \[([^\]]*)\]',log.read_text())
 for ax in axioms:assert set(filter(None,map(str.strip,ax.split(','))))<={'propext','Classical.choice','Quot.sound'}
 reports[leaf]=len(axioms)+log.read_text().count('does not depend on any axioms')
 assert reports[leaf]==item['axiom_reports']
assert sum(reports.values())==55
result=dict(status='no_correctness_findings',findings=[],quotient_pairs=count,axiom_reports=reports,
 joint_kernel_vectors=8,h0_only_counterexample=1,
 raw_unknown_d0_product_preserved=True,family_extended=False,
 reviewed=['full graded module Leibniz includes both casted terms',
 'h0 and d0 actual d3 vanish by complete zero codomains',
 'joint detection covers the entire three-dimensional target',
 'source products and historical/raw boundary correction bind named inputs',
 'actual top naturality applies to the same Cnu source'],
 limitations=['both product-cycle equations are explicit premises',
 'd0 product cycle remains unproved, h0 prefix requires mathematical interpretation',
 'actual module and map identification remain external proofs',
 'does not complete row3247 or extend the E8 family'],
 sources={str(f.relative_to(R)):sha(f) for f in [*sorted(P.glob('*.lean')),P/'provenance.json']})
(P/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k!='sources'},indent=2))
