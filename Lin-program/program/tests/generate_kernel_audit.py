"""Audit every declaration in the registered local Lean modules.

The generated command asks Lean for transitive axiom dependencies, including
private declarations and definitions. Text scanning alone cannot check this.
Run after the registered modules have successfully built.
"""
import json
import re
from pathlib import Path

root = Path(__file__).resolve().parents[1]
modules = set()
for kind, name in re.findall(r'\.(andSubmodules|one)\s+`([A-Za-z0-9_.]+)',
                             (root / 'lakefile.lean').read_text()):
    path = root.joinpath(*name.split('.'))
    if path.with_suffix('.lean').is_file():
        modules.add(name)
    if kind == 'andSubmodules':
        modules.update('.'.join(f.relative_to(root).with_suffix('').parts)
                       for f in path.rglob('*.lean'))
assert modules
names = sorted(modules)
texts = {m: root.joinpath(*m.split('.')).with_suffix('.lean').read_text() for m in names}
missing = set()
for text in texts.values():
    for line in text.splitlines():
        if line.startswith('import '):
            for dependency in line.split()[1:]:
                if dependency not in modules and root.joinpath(*dependency.split('.')).with_suffix('.lean').is_file():
                    missing.add(dependency)
assert not missing, f'Local dependencies must be registered for exhaustive audit: {sorted(missing)}'
main_modules = {m for m, text in texts.items()
                if re.search(r'^(?:unsafe\s+)?def\s+main\b', text, re.M)}

def reachable_mains(module, seen=None):
    seen = set() if seen is None else seen
    if module in seen or module not in texts:
        return set()
    seen.add(module)
    result = {module} if module in main_modules else set()
    for line in texts[module].splitlines():
        if line.startswith('import '):
            for dependency in line.split()[1:]:
                result |= reachable_mains(dependency, seen)
    return result

# Executable modules can each define a global `main`. Audit incompatible
# entry points in separate environments rather than omitting their proofs.
groups = {}
for name in names:
    key = tuple(sorted(reachable_mains(name)))
    groups.setdefault(key, []).append(name)
body = '''set_option maxHeartbeats 0 in
run_cmd do
  let env := (\u2190 getEnv).setExporting false
  let names := env.constants.toList.filterMap fun (name, _) => do
    let index \u2190 env.getModuleIdxFor? name
    let owner := env.header.moduleNames[index.toNat]!
    if auditedModules.contains owner then some name else none
  let mut reports : Array Json := #[]
  for name in names do
    let axioms \u2190 collectAxioms name
    for axiomName in axioms do
      unless [``propext, ``Classical.choice, ``Quot.sound].contains axiomName do
        throwError "undeclared axiom {axiomName} used by {name}"
    reports := reports.push <| Json.mkObj [
      ("declaration", toJson name.toString),
      ("axioms", toJson (axioms.map Name.toString))]
  unless reports.size > 0 do
    throwError "no local declarations audited"
  liftIO <| IO.FS.writeFile "OUTPUT" <|
    (Json.mkObj [("modules", toJson (auditedModules.map Name.toString)),
      ("declarations", Json.arr reports)]).pretty
  logInfo m!"PASS: {reports.size} declarations in {auditedModules.length} registered local modules; standard axioms only"
'''
directory = root / 'tests/kernel-audit'
directory.mkdir(exist_ok=True)
manifest = []
for i, (entry_points, group) in enumerate(sorted(groups.items())):
    source = '\n'.join('import ' + name for name in group)
    source += '\nimport Lean.Util.CollectAxioms\n\nopen Lean Elab Command\n\n'
    source += 'private def auditedModules : List Name := ['
    source += ', '.join('`' + name for name in group) + ']\n\n'
    stem = f'Group{i:02d}'
    output = f'tests/kernel-audit/{stem}.json'
    source += body.replace('OUTPUT', output)
    (directory / (stem + '.lean')).write_text(source)
    manifest.append(dict(source=f'tests/kernel-audit/{stem}.lean', output=output,
                         modules=group, entry_points=list(entry_points)))
(directory / 'groups.json').write_text(json.dumps(manifest, indent=2) + '\n')
(root / 'tests/kernel-audit-modules.json').write_text(json.dumps(names, indent=2) + '\n')
print(f'Generated {len(manifest)} compatible environments for {len(names)} registered local modules')
