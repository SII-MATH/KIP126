"""Freeze accepted new sources while retaining every historical attempt."""
import hashlib
import json
import re
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
names = ['CoordinateBridge','Actual','ZeroB0Data','ZeroB0','ZeroB1Data','ZeroB1','ResidualData','Residual','Branches','Binding','Request']
reports = []
for name in names:
    source = HERE / (name + '.lean')
    report = json.loads((HERE / (name + '-compile.json')).read_text())
    assert report['observed_exit_code'] == 0 and report['inputs_stable']
    assert report['source_sha256'] == sha(source)
    assert report['olean_sha256'] == sha(ROOT / '.lake/build/lib/lean' / HERE.name / (name + '.olean'))
    for filename, digest in report['external_input_sha256'].items():
        assert digest == sha(ROOT / filename)
    log = HERE / report['log']
    assert sha(log) == report['log_sha256']
    text = log.read_text()
    assert 'sorryAx' not in text and 'error:' not in text
    axioms = re.findall(r'depends on axioms:\s*\[([^]]*)\]', text)
    for ax in axioms:
        assert set(x.strip() for x in ax.split(',') if x.strip()) <= {
            'propext', 'Classical.choice', 'Quot.sound'}
    count = len(axioms) + text.count('does not depend on any axioms')
    assert not re.search(r'\b(sorry|axiom|native_decide)\b', source.read_text())
    reports.append(dict(module=HERE.name + '.' + name, axiom_reports=count, **report))
(HERE / 'modules.txt').write_text('\n'.join(HERE.name + '.' + name for name in names) + '\n')
files = sorted(path for path in HERE.rglob('*') if path.is_file()
               and '__pycache__' not in path.parts and path.name not in ['file-list.txt', 'frozen-source.json'])
(HERE / 'file-list.txt').write_text('\n'.join(str(path.relative_to(ROOT)) for path in files) + '\n')
files.append(HERE / 'file-list.txt')
result = dict(status='frozen_successfully_checked_source', modules=reports,
              axiom_reports=sum(report['axiom_reports'] for report in reports),
              dependency_note='Direct dependency hashes are historical observations at compile time; root builds may later rebuild registered dependencies.',
              files={str(path.relative_to(ROOT)): sha(path) for path in files})
(HERE / 'frozen-source.json').write_text(json.dumps(result, indent=2) + '\n')
print(len(reports), 'modules;', result['axiom_reports'], 'standard-only axiom reports;', len(files), 'frozen files')
