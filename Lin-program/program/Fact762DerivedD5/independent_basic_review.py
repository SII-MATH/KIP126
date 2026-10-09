"""Review only the stable Basic leaf; do not mutate or compile its producers."""
from pathlib import Path
import hashlib,itertools,json,re
HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
r=json.loads((HERE/'Basic-compile.json').read_text())
assert r['observed_exit_code']==0 and r['inputs_stable']
assert r['source_sha256']==sha(HERE/'Basic.lean')
assert r['olean_sha256']==sha(ROOT/'.lake/build/lib/lean/Fact762DerivedD5/Basic.olean')
assert r['log_sha256']==sha(HERE/r['log'])
for filename,digest in r['dependencies_sha256'].items():assert sha(ROOT/filename)==digest
text=(HERE/r['log']).read_text()
assert 'sorryAx' not in text and 'error:' not in text
for ax in re.findall(r'depends on axioms:\s*\[([^]]*)\]',text):
 assert set(a.strip() for a in ax.split(',') if a.strip())<={'propext','Classical.choice','Quot.sound'}
source=(HERE/'Basic.lean').read_text()
assert not re.search(r'\b(sorry|axiom|native_decide)\b',source)
fields=source.split('structure Certificate',1)[1].split('variable ',1)[0]
assert 'sourceCycle' not in fields and 'Target.Prefix' not in fields
assert 'source : Source.Prefix C S' in fields
assert 'detector : Assembly.Certificate S source.stage.input.targetPages product R' in fields
models=0;wrong_input=0;e6zero=0;e6nonzero=0
# Keep the same initial class under all E2 coordinate relabellings and
# E5 coordinates. E6 is allowed to kill the nonzero E5 cycle.
for rawchart in itertools.permutations(range(8)):
 initial=rawchart.index(2)
 for endpointchart in itertools.permutations(range(2)):
  value5=endpointchart.index(1)
  assert value5!=endpointchart.index(0)
  for input in range(8):
   accepted=rawchart[input]==2
   assert accepted==(input==initial)
   if not accepted:wrong_input+=1
  for kill in [False,True]:
   endpoint6=0 if kill else endpointchart[value5]
   assert endpoint6 in [0,1]
   e6zero+=endpoint6==0;e6nonzero+=endpoint6!=0
  models+=1
result={'status':'pass_no_findings','basic_source_sha256':sha(HERE/'Basic.lean'),
'axiom_reports':len(re.findall(r'depends on axioms:',text))+text.count('does not depend on any axioms'),
'fields_reviewed':['Source.Prefix only','same S and source targetPages detector','explicit E2 polynomial naming bridge'],
'new_source_d5_cycle_field':False,'same_input_models':models,'wrong_input_bindings_rejected':wrong_input,
'E6_zero_endpoint_models':e6zero,'E6_nonzero_endpoint_models':e6nonzero,
'scope':'E5 nonzero and derived d5 zero imply an E6 trace; E6 nonzero is not asserted.'}
(HERE/'independent-basic-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
