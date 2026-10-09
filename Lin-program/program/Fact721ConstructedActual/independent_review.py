"""Root review of exact quotient traces and detector premises."""
import itertools
import json
import hashlib
import re
import sqlite3
from pathlib import Path
P=Path(__file__).resolve().parent
R=P.parent
load=lambda f:json.loads(f.read_text())
sha=lambda f:hashlib.sha256(f.read_bytes()).hexdigest()
def vectors(n):return list(itertools.product((0,1),repeat=n))
def ev(a,m,n,x):
 assert len(a)==m*n and len(x)==n
 return tuple(sum(a[i*n+j]*x[j] for j in range(n))%2 for i in range(m))
def xor(x,y):return tuple(a^b for a,b in zip(x,y,strict=True))
entries=load(R/'Fact713ComparisonBatches/Batch06.json')['entries']
lookup={tuple(e['key'][x] for x in ['s','t','page']):e['wire'] for e in entries}
cases=[('First',(11,133),2622,2622,(0,1),[lookup[11,133,2],load(R/'Fact713DC2h6Source/wires/b_S0_11_133_d3.json')]),
 ('Second',(12,134),2684,2682,(1,0,0),[lookup[12,134,2],load(R/'Fact713NextSourceSearch/wires/b_S0_12_134_d3.json'),load(R/'Fact713D4ComparisonBranches/wire/b_S0_12_134_d4.json')])]
counts={'quotient_pairs':0,'coordinate_changes':0,'trace_steps':0,'countermodels':0}
with sqlite3.connect(f'file:{R}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True) as sql:
 for name,degree,row,basis,initial,wires in cases:
  raw=sql.execute('SELECT s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?',(row,)).fetchone()
  assert raw==(*degree,'1' if name=='First' else '0',None,9000)
  rows=sql.execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',degree).fetchall()
  assert rows[list(initial).index(1)][0]==basis
  named=initial
  for w in wires:
   n,m,k,h=(w[f] for f in ['n','m','k','h'])
   bd={ev(w['incoming'],m,n,x) for x in vectors(n)}
   cycles=[x for x in vectors(m) if not any(ev(w['outgoing'],k,m,x))]
   assert bd<=set(cycles) and named in cycles and named not in bd
   for x,y in itertools.product(cycles,repeat=2):
    assert (ev(w['projection'],h,m,x)==ev(w['projection'],h,m,y))==(xor(x,y) in bd)
    counts['quotient_pairs']+=1
   for x in vectors(h):
    lift=ev(w['inclusion'],m,h,x)
    assert lift in cycles and ev(w['projection'],h,m,lift)==x
   named=ev(w['projection'],h,m,named)
   counts['trace_steps']+=1
  assert named==(1,)
  old=load(R/f'Fact721PageCertificates/{name.lower()}-comparison.json')
  w=wires[0]
  for x in vectors(old['h']):
   y=ev(w['projection'],w['h'],w['m'],ev(old['inclusion'],old['m'],old['h'],x))
   restored=ev(old['projection'],old['h'],old['m'],ev(w['inclusion'],w['m'],w['h'],y))
   assert restored==x
   counts['coordinate_changes']+=1
for first in vectors(2):
 if any(first):
  assert any(ev([first[0],0,first[1],0],2,2,(1,0)))
  counts['countermodels']+=1
reports={}
for leaf in ['Basic','First','Second','Tactic']:
 rec=load(P/(leaf+'-compile.json'));src=P/(leaf+'.lean');log=P/(leaf+'.log')
 assert rec['observed_exit_code']==0 and rec['source_sha256']==sha(src) and rec['log_sha256']==sha(log)
 assert not re.search(r'error:|sorryAx|Lean\.ofReduceBool',log.read_text())
 axioms=re.findall(r'depends on axioms: \[([^\]]*)\]',log.read_text())
 for ax in axioms:assert set(filter(None,map(str.strip,ax.split(','))))<={'propext','Classical.choice','Quot.sound'}
 reports[leaf]=len(axioms)+log.read_text().count('does not depend on any axioms')
assert sum(reports.values())==22
for f,digest in load(P/'frozen-source.json')['files'].items():assert sha(P/f)==digest
result=dict(status='no_correctness_findings',findings=[],counts=counts,axiom_reports=reports,
 endpoints={'first':4,'second':5},permanence_proved=False,
 reviewed=['source naming equation identifies the same actual element, not a differential value',
 'full source d3 zero follows from detector-derived named column plus separate other known column',
 'whole d4 zero theorem is coordinate-independent and needs no new source naming premise',
 'all next coordinates derived from actual quotients of the same initial class',
 'exact input binding and nonzero actual endpoint, no branch choice or outgoing tail assertion'],
 limitations=['initial and neighboring actual differential meanings remain explicit',
 'detector naturality and source-name compatibility remain explicit',
 'first d4 and second d5 onward, all-page permanence, sphere realization'],
 sources={str(f.relative_to(R)):sha(f) for f in sorted(P.glob('*.lean'))})
(P/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k!='sources'},indent=2))
