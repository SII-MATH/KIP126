"""Verify the direct compiler script covers the registered dependency graph.

This does not run the compiler. Use build_all.sh for actual build evidence.
"""
import hashlib
import json
from pathlib import Path
import re

root = Path(__file__).resolve().parents[1]
script = root / 'tests/lean-sequential.sh'
text = script.read_text()
match = re.search(r'for module in (.*?); do', text, re.S)
assert match
ordered = [s.replace('/', '.') for s in match[1].replace('\\\n', ' ').split()]
assert len(ordered) == len(set(ordered)), 'duplicate modules'
registered = set()
for kind, name in re.findall(r'\.(andSubmodules|one)\s+`([A-Za-z0-9_.]+)',
                             (root / 'lakefile.lean').read_text()):
    path = root.joinpath(*name.split('.'))
    if path.with_suffix('.lean').is_file():
        registered.add(name)
    if kind == 'andSubmodules':
        registered.update('.'.join(p.relative_to(root).with_suffix('').parts)
                          for p in path.rglob('*.lean'))
assert registered <= set(ordered), sorted(registered - set(ordered))
positions = {name: i for i, name in enumerate(ordered)}
errors = []
for name in ordered:
    source = root.joinpath(*name.split('.')).with_suffix('.lean')
    assert source.is_file(), name
    for line in source.read_text().splitlines():
        if line.startswith('import '):
            errors.extend([name, dependency] for dependency in line.split()[1:]
                          if dependency in positions and positions[dependency] >= positions[name])
record = dict(registered_modules=len(registered), script_modules=len(ordered), errors=errors,
    script_sha256=hashlib.sha256(text.encode()).hexdigest(),
    scope='Exact registered coverage and local dependency order; no new compiler run claimed')
(root / 'tests/sequential-order-audit.json').write_text(json.dumps(record, indent=2) + '\n')
assert not errors, errors
print(f'PASS: {len(registered)} registered modules, {len(ordered)} script modules in dependency order')
