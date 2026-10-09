"""Freeze only observed successful source/object pairs and exact inputs."""
import hashlib
import json
import re
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
modules=['D2','D2Data','Maps','Comparison','D2Links','Descent','Source','Target','Actual','Tests']
records=[]
axioms=0
for name in modules:
    source=HERE/(name+'.lean')
    code=source.read_text()
    assert not re.search(r'\b(sorry|admit|axiom|unsafe|native_decide)\b',code)
    record=json.loads((HERE/(name+'-compile.json')).read_text())
    assert record['observed_exit_code']==0 and record['inputs_stable']
    assert sha(source)==record['source_sha256']
    assert sha(ROOT/'.lake/build/lib/lean'/HERE.name/(name+'.olean'))==record['olean_sha256']
    for relative,digest in record['dependencies_sha256'].items():
        assert sha(ROOT/relative)==digest
    for relative,digest in record['external_input_sha256'].items():
        assert sha(ROOT/relative)==digest
    log=(HERE/record['log']).read_text()
    assert 'sorryAx' not in log and 'error:' not in log
    reports=re.findall(r"depends on axioms: \[([^\]]*)\]|does not depend on any axioms",log)
    for report in reports:
        assert set(report.split(', ')) <= {'','propext','Quot.sound','Classical.choice'}
    axioms+=len(reports)
    records.append(dict(module=HERE.name+'.'+name,**record))
(HERE/'modules.txt').write_text('\n'.join(HERE.name+'.'+name for name in modules)+'\n')
inputs=sorted([*HERE.glob('*.lean'),*HERE.glob('*.py'),HERE/'README.md',HERE/'modules.txt',
    HERE/'search.json',HERE/'d2.json',HERE/'maps.json',HERE/'review.json',
    *HERE.glob('wire/*.json'),*HERE.glob('d2wire/*.json'),*HERE.glob('mapwire/*.json')])
out=dict(status='frozen_successful_scope',modules=records,axiom_reports=axioms,
    files_sha256={str(p.relative_to(HERE)):sha(p) for p in inputs})
(HERE/'frozen-source.json').write_text(json.dumps(out,indent=2)+'\n')
print('frozen leaves',len(records),'axiom reports',axioms,'files',len(inputs))
