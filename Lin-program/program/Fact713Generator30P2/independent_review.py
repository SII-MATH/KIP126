"""Root review of both factor and P-squared detection scopes."""
import hashlib
import itertools
import json
import re
from pathlib import Path
R=Path(__file__).resolve().parents[1]
load=lambda f:json.loads(f.read_text());sha=lambda f:hashlib.sha256(f.read_bytes()).hexdigest()
def vec(n):return list(itertools.product((0,1),repeat=n))
def ev(a,m,n,x):
 assert len(a)==m*n and len(x)==n
 return tuple(sum(a[i*n+j]*x[j] for j in range(n))%2 for i in range(m))
def xor(x,y):return tuple(a^b for a,b in zip(x,y,strict=True))
for name,total_reports,total_pairs in [('Fact713Row3247ProductSearch',20,144),('Fact713Generator30P2',19,45)]:
 p=R/name;a=load(p/'provenance.json');pairs=0
 for block in a['comparisons'].values():
  w=block['wire'];n,m,k,h=(w[t] for t in ['n','m','k','h'])
  bd={ev(w['incoming'],m,n,x) for x in vec(n)}
  cycles=[x for x in vec(m) if not any(ev(w['outgoing'],k,m,x))]
  assert bd<=set(cycles)
  for x,y in itertools.product(cycles,repeat=2):
   assert (ev(w['projection'],h,m,x)==ev(w['projection'],h,m,y))==(xor(x,y) in bd)
   pairs+=1
  for x in vec(h):
   lift=ev(w['inclusion'],m,h,x)
   assert lift in cycles and ev(w['projection'],h,m,lift)==x
 assert pairs==total_pairs
 for key,m in a['E3_maps'].items():
  assert m['source']==1
  assert ev(m['entries'],m['target'],1,(0,))==(0,)*m['target']
  assert any(ev(m['entries'],m['target'],1,(1,)))
 reports={}
 for item in load(p/'freeze.json')['modules']:
  leaf=item['module'].split('.')[-1];src=p/(leaf+'.lean');rec=load(p/(leaf+'-compile.json'));log=p/(leaf+'.log')
  assert rec['source_sha256']==sha(src)==item['source_sha256'] and rec['observed_exit_code']==0
  assert rec['log_sha256']==sha(log) and not re.search(r'error:|sorryAx|Lean\.ofReduceBool',log.read_text())
  for f,digest in rec['external_input_sha256'].items():assert sha(R/f)==digest
  axs=re.findall(r'depends on axioms: \[([^\]]*)\]',log.read_text())
  for ax in axs:assert set(filter(None,map(str.strip,ax.split(','))))<={'propext','Classical.choice','Quot.sound'}
  reports[leaf]=len(axs)+log.read_text().count('does not depend on any axioms')
 assert sum(reports.values())==total_reports
 # Both product maps are injective on the 1D possible differential, so no
 # coefficient-cycle-only shortcut can establish the product's d3 zero.
 target=a['E3_maps']['factor_13_57']
 assert any(ev(target['entries'],target['target'],1,(1,)))
 result=dict(status='no_correctness_findings',findings=[],quotient_pairs=pairs,axiom_reports=reports,
  nonzero_remaining_Leibniz_map=True,
  reviewed=['whole factor map fixes the actual product without an independent factorization assumption',
   'complete zero coefficient differential target gives coefficient cycle',
   'injective P-squared target detects the generator differential',
   'source named representative identifies the same actual product'],
  limitations=['P-squared named E3 PageCycle is an explicit mathematical premise',
   'generator_cycle uses representative.property; next_is_boundary only records provenance',
   'an E4 boundary equation alone cannot prove a selected E3 product is a cycle',
   'h0 product cycle remains explicit in current Assembly; no unconditional row3247 or new family'],
  sources={str(f.relative_to(R)):sha(f) for f in [*sorted(p.glob('*.lean')),p/'provenance.json']})
 (p/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
 (p/'INDEPENDENT_REVIEW.md').write_text(f'''# Root independent review

No correctness findings in the conditional statements. All {pairs} full
quotient pairs and the nonzero remaining Leibniz maps were independently
checked; {total_reports} direct axiom reports use only standard axioms.

The P-squared argument still requires an explicitly named actual E3 cycle
representative. `generator_cycle` uses its cycle proof; the later boundary
equation records its source but is not used to deduce the cycle property.
Thus this is not a proof of a cycle from a SQL level or E4 boundary alone.
The final assembly also retains the h0 product cycle interpretation.

Reproduce both reviews with
`python3 program/Fact713Generator30P2/independent_review.py`.
''')
 print(name,pairs,total_reports,'conditional premises retained')
