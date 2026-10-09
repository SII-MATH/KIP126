"""Verify the actual direct Lean compilation and arithmetic review fingerprints."""
import hashlib,json,re
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
audit=json.loads((P/'compile-audit.json').read_text());assert [r['module'] for r in audit]==['Data','Product','Zero','Branches','Family']
count=0
for row in audit:
 assert row['exit_code']==0
 for path,digest in row['input_sha256'].items():assert sha(R/path)==digest,path
 log=P/(row['module']+'.log');assert sha(log)==row['log_sha256']
 assert sha(R/'.lake/build/lib/lean/Stem125E4Search'/(row['module']+'.olean'))==row['olean_sha256']
 text=log.read_text();assert 'sorryAx' not in text and 'error:' not in text and 'error(' not in text
 for vals in re.findall(r'depends on axioms: \[([^]]*)\]',text):
  assert {v.strip() for v in vals.split(',')}<={'propext','Classical.choice','Quot.sound'}
  count+=1
assert count==10
review=json.loads((P/'review.json').read_text());assert review['status']=='isolated_E4_completion_review_passed'
for path,digest in review['source_hashes'].items():assert sha(R/path)==digest,path
print('five direct builds current; ten standard-only axiom reports; both E4 products and full family arithmetic replay current')
