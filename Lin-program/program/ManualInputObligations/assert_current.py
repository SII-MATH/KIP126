"""Validate saved evidence, including namespace/import-only Reference copies."""
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
normalize = lambda text: '\n'.join(line for line in text.replace(
    'ManualInputObligations.Reference', 'LinProgramReference').splitlines()
    if not line.startswith('import ')).strip()
provenance = json.loads((HERE / 'reference-provenance.json').read_text())
for row in provenance['files']:
    original = ROOT.parent / row['original']
    copied = ROOT / row['copy']
    assert sha(original) == row['original_sha256'], original
    assert sha(copied) == row['copy_sha256'], copied
    assert normalize(original.read_text()) == normalize(copied.read_text())
    assert hashlib.sha256(normalize(original.read_text()).encode()).hexdigest() == row['normalized_body_sha256']
direct = json.loads((HERE / 'isolated-compile-audit.json').read_text())
assert len(direct) == 7
for row in direct:
    name = row['module'].replace('.', '/')
    assert row['exit_code'] == 0
    assert sha(ROOT / (name + '.lean')) == row['source_sha256']
    local = name.removeprefix('ManualInputObligations/')
    assert sha(HERE / (local.replace('/', '-') + '.log')) == row['log_sha256']
    assert sha(ROOT / '.lake/build/lib/lean' / (name + '.olean')) == row['olean_sha256']
audit = json.loads((HERE / 'axiom-audit.json').read_text())
assert audit['observed_exit_code'] == 0
assert sha(ROOT / audit['source']) == audit['source_sha256']
assert sha(HERE / 'declaration-axioms.log') == audit['log_sha256']
assert sha(HERE / 'declaration-axioms.json') == audit['report_sha256']
for name, row in audit['inputs'].items():
    assert sha(ROOT / (name.replace('.', '/') + '.lean')) == row['source_sha256']
    assert sha(ROOT / '.lake/build/lib/lean' / (name.replace('.', '/') + '.olean')) == row['olean_sha256']
report = json.loads((HERE / 'declaration-axioms.json').read_text())
assert report['modules'] == [row['module'] for row in direct]
assert len(report['declarations']) == audit['declaration_count']
assert all(set(x['axioms']) <= {'propext', 'Classical.choice', 'Quot.sound'}
           for x in report['declarations'])
print('seven direct builds; exact Reference bodies; ' + str(audit['declaration_count']) + ' declarations with standard axioms only')
