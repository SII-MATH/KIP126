"""Root exhaustive small models for hit tails and cycle-only naturality."""
from pathlib import Path
import hashlib
import itertools
import json
import re
P=Path(__file__).resolve().parent;R=P.parent
load=lambda f:json.loads(f.read_text());sha=lambda f:hashlib.sha256(f.read_bytes()).hexdigest()
# Bool-linear incoming/outgoing/advance maps satisfying full homology and d^2.
stages=[]
for inc,out,advance in itertools.product(range(2),repeat=3):
 if inc*out:continue
 if all(((advance*x)==0)==any(inc*y==x for y in range(2)) for x in range(2) if out*x==0):
  stages.append((inc,out,advance))
assert len(stages)==4
at=lambda stages,x:[x] if not stages else [x]+at(stages[1:],stages[0][2]*x)
hits=cycles=transports=reflections=0
systems=list(itertools.product(stages,repeat=4))
for system in systems:
 for x in range(2):
  path=at(system,x)
  for r,(inc,out,advance) in enumerate(system):
   if any(inc*y==path[r] for y in range(2)):
    assert all(z==0 for z in path[r+1:]);hits+=1
    if all(system[n][1]*path[n]==0 for n in range(r)):
     assert all(system[n][1]*path[n]==0 for n in range(4));cycles+=1
# Complete two-stage maps allow advance equality only for source cycles.
for source,target in itertools.product(itertools.product(stages,repeat=2),repeat=2):
 for page in itertools.product(range(2),repeat=3):
  for outmap in itertools.product(range(2),repeat=2):
   natural=all(target[n][1]*page[n]==outmap[n]*source[n][1] for n in range(2))
   quotient=all(target[n][2]*page[n]*x==page[n+1]*source[n][2]*x
     for n in range(2) for x in range(2) if source[n][1]*x==0)
   if not (natural and quotient):continue
   for x in range(2):
    sp=at(source,x);tp=at(target,page[0]*x)
    sc=all(source[n][1]*sp[n]==0 for n in range(2))
    tc=all(target[n][1]*tp[n]==0 for n in range(2))
    if sc:
     assert tc and all(tp[n]==page[n]*sp[n] for n in range(3));transports+=1
    if all(outmap) and tc:assert sc;reflections+=1
reports={}
for leaf in ['Basic','Hit','Filtration','Fact762','Examples']:
 rec=load(P/(leaf+'-compile.json'));src=P/(leaf+'.lean');log=P/(leaf+'.log')
 assert rec['observed_exit_code']==0 and rec['source_sha256']==sha(src) and rec['log_sha256']==sha(log)
 assert not re.search(r'error:|sorryAx|Lean\.ofReduceBool',log.read_text())
 for path,digest in rec['external_input_sha256'].items():assert sha(R/path)==digest
 axs=re.findall(r'depends on axioms: \[([^\]]*)\]',log.read_text())
 for ax in axs:assert set(filter(None,map(str.strip,ax.split(','))))<={'propext','Classical.choice','Quot.sound'}
 reports[leaf]=len(axs)+log.read_text().count('does not depend on any axioms')
assert sum(reports.values())==25
for path,digest in load(P/'frozen-source.json')['files'].items():assert sha(P/path)==digest
result=dict(status='no_correctness_findings',findings=[],stages=len(stages),four_stage_systems=len(systems),
 hit_tails=hits,before_plus_hit_cycles=cycles,cycle_transports=transports,faithful_reflections=reflections,
 axiom_reports=reports,
 reviewed=['all n induction proves zero after a genuine incoming hit',
 'prior cycle checks plus actual hit imply outgoing AlwaysCycle, not strong Permanent',
 'cycle-only advance compatibility suffices for all-page map naturality',
 'faithful outgoing maps are required to reflect cycles',
 'Fact762 actual d2 input and index+2 page convention retained'],
 limitations=['does not establish an actual hit of the paper class',
 'does not close the no-hit branch or construct a global paper map',
 'prefix interpretations and all-page system laws remain mathematical premises'],
 sources={str(f.relative_to(R)):sha(f) for f in sorted(P.glob('*.lean'))})
(P/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k!='sources'},indent=2))
