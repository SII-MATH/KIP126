"""Freeze only observed successful direct compilations; keep prior attempts."""
import hashlib
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
reports = []
for name in ['Data','Fact713']:
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0 and record['inputs_stable']
    assert sha(HERE / (name + '.lean')) == record['source_sha256']
    assert sha(ROOT / '.lake/build/lib/lean' / HERE.name / (name + '.olean')) == record['olean_sha256']
    assert sha(HERE / record['log']) == record['log_sha256']
    text = (HERE / record['log']).read_text()
    assert not any(x in text for x in ['sorryAx','error:','warning:'])
    axioms = re.findall(r'depends on axioms:\s*\[([^]]*)\]', text)
    for names in axioms:
        assert {x.strip() for x in names.split(',')} <= {'propext','Classical.choice','Quot.sound'}
    count = len(axioms) + text.count('does not depend on any axioms')
    reports.append(dict(module=HERE.name+'.'+name,axiom_reports=count,**record))
files = [p for p in HERE.rglob('*') if p.is_file() and '__pycache__' not in p.parts
         and p.name not in ['frozen-source.json','file-list.txt']]
(HERE / 'file-list.txt').write_text('\n'.join(sorted(str(p.relative_to(ROOT)) for p in files))+'\n')
files.append(HERE / 'file-list.txt')
result = dict(status='frozen_successfully_checked_source',modules=reports,
    axiom_reports=sum(r['axiom_reports'] for r in reports),
    files={str(p.relative_to(ROOT)):sha(p) for p in sorted(files)},
    scope='Both entire1413families closed under every full preceding-page comparison.')
(HERE / 'frozen-source.json').write_text(json.dumps(result,indent=2)+'\n')
print(len(reports),'modules;',result['axiom_reports'],'reports;',len(files),'files')
