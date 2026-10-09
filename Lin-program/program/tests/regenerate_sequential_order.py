"""Generate exact registered-module dependency order; this does not compile."""
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[1]
modules = set()
for kind, name in re.findall(r'\.(andSubmodules|one)\s+`([A-Za-z0-9_.]+)',
                             (ROOT / 'lakefile.lean').read_text()):
    path = ROOT.joinpath(*name.split('.'))
    if path.with_suffix('.lean').is_file():
        modules.add(name)
    if kind == 'andSubmodules':
        modules.update('.'.join(f.relative_to(ROOT).with_suffix('').parts)
                       for f in path.rglob('*.lean'))
ordered, done, active = [], set(), set()


def visit(name):
    if name in done:
        return
    assert name not in active, f'cyclic imports: {name}'
    active.add(name)
    for line in ROOT.joinpath(*name.split('.')).with_suffix('.lean').read_text().splitlines():
        if line.startswith('import '):
            for dependency in line.split()[1:]:
                if ROOT.joinpath(*dependency.split('.')).with_suffix('.lean').is_file():
                    assert dependency in modules, f'unregistered local import: {dependency}'
                    visit(dependency)
    active.remove(name)
    done.add(name)
    ordered.append(name)


for module in sorted(modules):
    visit(module)
script = ROOT / 'tests/lean-sequential.sh'
text = script.read_text()
assert re.search(r'for module in .*?; do', text, re.S)
separator = ' ' + chr(92) + chr(10) + '  '
replacement = 'for module in' + separator + separator.join(m.replace('.', '/') for m in ordered) + '; do'
script.write_text(re.sub(r'for module in .*?; do', lambda _: replacement, text, count=1, flags=re.S))
print(f'Ordered {len(ordered)} registered modules; no compilation claimed')
