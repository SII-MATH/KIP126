"""Freeze reviewed successful modules without rewriting compiler history."""
import hashlib
import json
from pathlib import Path
import re

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
names=['Data','Basic','Semantics','D2Links','Descent','Actual','Branches','Tactic']
modules=[]
for name in names:
    record=json.loads((HERE/(name+'-compile.json')).read_text())
    assert record['observed_exit_code']==0
    assert record['source_sha256']==sha(HERE/(name+'.lean'))
    assert record['olean_sha256']==sha(ROOT/'.lake/build/lib/lean/Row2907PDeltaDetection'/(name+'.olean'))
    text=(HERE/(name+'.log')).read_text()
    assert record['log_sha256']==sha(HERE/(name+'.log'))
    assert not re.search(r'\bsorryAx\b|\berror:',text)
    reports=re.findall(r'depends on axioms: \[([^\]]*)\]|does not depend on any axioms',text)
    for report in reports:
        assert set(x.strip() for x in report.split(',') if x.strip())<={'propext','Classical.choice','Quot.sound'}
    modules.append(dict(module='Row2907PDeltaDetection.'+name,axiom_reports=len(reports),**record))
(HERE/'modules.txt').write_text('\n'.join('Row2907PDeltaDetection.'+x for x in names)+'\n')
files={}
for path in sorted(HERE.rglob('*')):
    if not path.is_file() or path.name=='frozen-source.json' or '__pycache__' in path.parts:
        continue
    if path.suffix not in ['.lean','.json','.py','.md','.txt','.batch']:
        continue
    if path.name.startswith('independent_') or path.name.startswith('independent-') or path.name.startswith('INDEPENDENT_'):
        continue
    files[str(path.relative_to(ROOT))]=sha(path)
report=dict(status='frozen_successfully_checked_source',modules=modules,
            axiom_reports=sum(x['axiom_reports'] for x in modules),files=files,
            dependency_note='Historical direct compiler hashes retained; later Lake builds may change objects.',
            review_note='Independent reviewer artifacts are supplemental and excluded from producer freeze ownership.')
(HERE/'frozen-source.json').write_text(json.dumps(report,indent=2)+'\n')
print(len(modules),'modules',report['axiom_reports'],'standard reports',len(files),'frozen files')
