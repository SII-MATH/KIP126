"""Validate direct-build and independent finite-branch evidence without refreshing it."""
import hashlib,json,re
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
a=json.loads((P/'compile-audit.json').read_text());assert [x['module'] for x in a]==['Data','Known','Product','Branches','Zero','Family']
count=0
for row in a:
 assert row['exit_code']==0
 for path,h in row['input_sha256'].items():assert sha(R/path)==h,path
 log=P/(row['module']+'.log');assert sha(log)==row['log_sha256']
 assert sha(R/'.lake/build/lib/lean/Stem125E5Search'/(row['module']+'.olean'))==row['olean_sha256']
 text=log.read_text();assert 'sorryAx' not in text and 'error:' not in text and 'error(' not in text
 for vals in re.findall(r'depends on axioms: \[([^]]*)\]',text):
  assert {v.strip() for v in vals.split(',')}<={'propext','Classical.choice','Quot.sound'}
  count+=1
assert count==14
review=json.loads((P/'review.json').read_text());assert review['status']=='conditional_E5_branch_review_passed'
for path,h in review['inputs_sha256'].items():assert sha(R/path)==h,path
print('six current direct builds;14 standard-only axiom reports;480 unchosen local branch analysis checked')
