"""Check current successful sources/logs; preserve historical object identities."""
import hashlib
import json
from pathlib import Path
import re

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
records={}
for name in ['Generic','Import','Branch0','Branch1','Semantics','Actual']:
    record=json.loads((HERE/(name+'-compile.json')).read_text())
    assert record['observed_exit_code']==0
    assert record['source_sha256']==sha(HERE/(name+'.lean'))
    assert record['log_sha256']==sha(HERE/(name+'.log'))
    for filename,digest in record['input_sha256'].items():assert sha(HERE/filename)==digest
    log=(HERE/(name+'.log')).read_text()
    assert not re.search(r'sorryAx|error:|error\(',log)
    assert not re.search(r'\b(sorry|admit|axiom|native_decide)\b',(HERE/(name+'.lean')).read_text())
    reports=re.findall(r'depends on axioms: \[([^]]*)\]',log)
    assert all(set(v.strip() for v in report.split(','))<={'propext','Classical.choice','Quot.sound'} for report in reports)
    obj=ROOT/'.lake/build/lib/lean/Row3152BranchCertificates'/(name+'.olean')
    records[name]=dict(observed_direct_exit_code=0,
        standard_or_no_axiom_reports=len(reports)+log.count('does not depend on any axioms'),
        historical_object_sha256=record['olean_sha256'],current_object_sha256=sha(obj),
        current_matches_direct=sha(obj)==record['olean_sha256'])
review=json.loads((HERE/'review.json').read_text())
for filename,digest in review['inputs'].items():assert sha(HERE/filename)==digest
result=dict(status='current_sources_and_inputs_passed',records=records,
    total_standard_reports=sum(r['standard_or_no_axiom_reports'] for r in records.values()),
    sources={p.name:sha(p) for p in HERE.glob('*.lean')})
(HERE/'current-audit.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
