"""Verify saved direct-build and review evidence without replacing hashes."""
import hashlib,json,re
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
audit=json.loads((P/'compile-audit.json').read_text())
assert [x['module'] for x in audit]==['Coordinates','Conclusion','Obstructions','Imported']
count=0
for row in audit:
    assert row['exit_code']==0
    for p,h in row['input_sha256'].items():assert sha(R/p)==h,p
    log=P/(row['module']+'.log');assert sha(log)==row['log_sha256']
    assert sha(R/'.lake/build/lib/lean/Fact764ConstrainedE5'/(row['module']+'.olean'))==row['olean_sha256']
    text=log.read_text();assert 'sorryAx' not in text and 'error:' not in text and 'error(' not in text
    for vals in re.findall(r'depends on axioms: \[([^]]*)\]',text):
        assert {v.strip() for v in vals.split(',')}<={'propext','Classical.choice','Quot.sound'}
        count+=1
assert count==18
for filename,key in [('review.json','source_sha256'),('import-test.json','source_sha256'),
                     ('export-audit.json','source_sha256')]:
    report=json.loads((P/filename).read_text())
    for p,h in report[key].items():assert sha(R/p)==h,p
print('four current direct builds;18 standard-only axiom reports;SQL/full-map/import evidence current')
