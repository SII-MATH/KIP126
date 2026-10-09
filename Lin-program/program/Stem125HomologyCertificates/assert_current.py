"""Check direct compilation fingerprints; subsequent Lake builds use separate evidence."""
import hashlib,json,re
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
audit=json.loads((P/'compile-audit.json').read_text())
assert [x['module'] for x in audit]==['Basic','D2','D3','D4']
axioms=0
for row in audit:
 assert row['exit_code']==0
 for name,digest in row['input_sha256'].items():assert sha(R/name)==digest,name
 log=P/(row['module']+'.log')
 assert sha(log)==row['log_sha256']
 assert sha(R/'.lake/build/lib/lean/Stem125HomologyCertificates'/(row['module']+'.olean'))==row['olean_sha256']
 text=log.read_text()
 assert 'sorryAx' not in text and 'error:' not in text and 'error(' not in text
 for values in re.findall(r'depends on axioms: \[([^]]*)\]',text):
  assert {x.strip() for x in values.split(',')}<={'propext','Classical.choice','Quot.sound'}
  axioms+=1
assert axioms==14
review=json.loads((P/'review.json').read_text())
assert review['status']=='full_combination_homology_replay_passed'
for path,digest in review['inputs_sha256'].items():assert sha(R/path)==digest,path
print('four current direct builds; 14 standard-only axiom reports; exact full-combination replay fingerprints')
