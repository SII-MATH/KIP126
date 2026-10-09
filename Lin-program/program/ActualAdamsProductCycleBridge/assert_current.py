"""Verify actual successful leaf builds and graded replay evidence."""
import hashlib,json,re
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
a=json.loads((P/'compile-audit.json').read_text())
assert [r['module'] for r in a]==['Basic','Zero','Finite'];count=0
for row in a:
    assert row['exit_code']==0
    for p,h in row['input_sha256'].items():assert sha(R/p)==h,p
    log=P/(row['module']+'.log');assert sha(log)==row['log_sha256']
    assert sha(R/'.lake/build/lib/lean/ActualAdamsProductCycleBridge'/(row['module']+'.olean'))==row['olean_sha256']
    s=log.read_text();assert 'sorryAx' not in s and 'error:' not in s and 'error(' not in s
    for vals in re.findall(r'depends on axioms: \[([^]]*)\]',s):
        assert {v.strip() for v in vals.split(',')}<={'propext','Classical.choice','Quot.sound'};count+=1
assert count==10
r=json.loads((P/'review.json').read_text())
for p,h in r['source_sha256'].items():assert sha(R/p)==h,p
print('three current direct builds;10 standard-only reports;graded semantic replay current')
