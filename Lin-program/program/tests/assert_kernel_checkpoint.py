"""Check archived axiom evidence against current registered source and artifacts.

This is a freshness check, not a substitute for Lean's collectAxioms query.
"""
import argparse
import hashlib
import json
import re
from pathlib import Path

root = Path(__file__).resolve().parents[1]
parser = argparse.ArgumentParser()
parser.add_argument('checkpoint', help='JSON checkpoint path relative to program/')
parser.add_argument('--allow-later-modules', action='store_true')
args = parser.parse_args()
checkpoint = json.loads((root / args.checkpoint).read_text())
assert checkpoint['observed_exit_code'] == 0
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
report_file = root / checkpoint['report']
assert sha(report_file) == checkpoint['report_sha256']
report = json.loads(report_file.read_text())
assert len(report['modules']) == checkpoint['registered_modules']
assert len(report['declarations']) == checkpoint['declarations']
allowed = {'propext', 'Classical.choice', 'Quot.sound'}
for declaration in report['declarations']:
    assert set(declaration['axioms']) <= allowed, declaration
seen = set()
for group in report['groups']:
    assert group['observed_exit_code'] == 0
    for module, recorded in group['inputs'].items():
        assert module not in seen
        seen.add(module)
        stem = module.replace('.', '/')
        assert sha(root / (stem + '.lean')) == recorded['source_sha256'], (module, 'source changed')
        assert sha(root / '.lake/build/lib/lean' / (stem + '.olean')) == recorded['olean_sha256'], (
            module, 'compiled artifact changed; obtain another axiom audit')
assert seen == set(report['modules'])
registered = set()
for kind, name in re.findall(r'\.(andSubmodules|one)\s+`([A-Za-z0-9_.]+)',
                             (root / 'lakefile.lean').read_text()):
    path = root.joinpath(*name.split('.'))
    if path.with_suffix('.lean').is_file():
        registered.add(name)
    if kind == 'andSubmodules':
        registered.update('.'.join(p.relative_to(root).with_suffix('').parts)
                          for p in path.rglob('*.lean'))
assert seen <= registered
if not args.allow_later_modules:
    assert seen == registered, 'new registered modules require another audit'
print(f'PASS: {len(seen)} current modules, {len(report["declarations"])} audited declarations; '
      f'{len(registered - seen)} later modules outside this checkpoint')
