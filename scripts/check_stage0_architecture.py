#!/usr/bin/env python3
"""Check architecture and import isolation, not mathematical truth or proof completion."""
from pathlib import Path
import re
import sys

ROOT = Path(__file__).resolve().parents[1]
files = {'.'.join(p.relative_to(ROOT).with_suffix('').parts): p
         for p in (ROOT / 'KIP126').rglob('*.lean')}
files['KIP126'] = ROOT / 'KIP126.lean'
def without_comments(text):
    out, depth, i = [], 0, 0
    while i < len(text):
        if text.startswith('/-', i): depth += 1; i += 2
        elif depth and text.startswith('-/', i): depth -= 1; i += 2
        elif depth: i += 1
        elif text.startswith('--', i):
            end = text.find('\n', i)
            i = len(text) if end < 0 else end
        else: out.append(text[i]); i += 1
    return ''.join(out)

errors = []
imports = {}
for mod, p in files.items():
    text = without_comments(p.read_text())
    imports[mod] = re.findall(r'^import\s+(KIP126(?:\.[\w]+)*)\s*$', text, re.M)
    for imp in imports[mod]:
        if imp not in files:
            errors.append(f'{mod}: missing import {imp}')
    if re.search(r'\bchallenge[12](?:Witness|_exists)\b', text):
        errors.append(f'{mod}: obsolete parallel stage-witness reference')
    if not mod.startswith('KIP126.Main.Axiom.') and re.search(r'^\s*axiom\s',text,re.M):
        errors.append(f'{mod}: axiom outside Main/Axiom')
    if mod.startswith('KIP126.Main.Axiom.') and mod != 'KIP126.Main.Axiom.Challenge2' \
            and re.search(r'^\s*axiom\s', text, re.M):
        errors.append(f'{mod}: Main/Axiom must expose only the unified Challenge2 assumption')
    if mod.startswith('KIP126.Main.Axiom.') and 'Classical.choice' in text:
        errors.append(f'{mod}: witness selection belongs in Main/Solution')

def closure(mod):
    found = set()
    todo = list(imports.get(mod, []))
    while todo:
        nxt = todo.pop()
        if nxt not in found:
            found.add(nxt)
            todo.extend(imports.get(nxt, []))
    return found

for mod in files:
    if mod.startswith('KIP126.Def.') or mod == 'KIP126.Def':
        bad = [x for x in imports[mod] if not x.startswith('KIP126.Def.') and x != 'KIP126.Def' and not x.startswith(('KIP126.Mathlib.', 'KIP126.Tactic.'))]
        if bad: errors.append(f'{mod}: definition-layer import escape {bad}')
        indirect = [x for x in closure(mod) if x.startswith(('KIP126.Main.', 'KIP126.Interface.', 'KIP126.Checks.'))]
        if indirect: errors.append(f'{mod}: transitive definition-layer import escape {indirect}')
    if mod.startswith('KIP126.Main.Challenge.'):
        bad = [x for x in closure(mod) if not x.startswith(('KIP126.Def.', 'KIP126.Mathlib.', 'KIP126.Tactic.'))]
        if bad: errors.append(f'{mod}: Final type import escape {bad}')
    if mod.startswith(('KIP126.Main.Solution.', 'KIP126.Interface.Solution.')):
        bad = [x for x in closure(mod) if x.startswith(('KIP126.Main.Challenge.', 'KIP126.Interface.Challenge.'))]
        if bad: errors.append(f'{mod}: consumes Challenge placeholders {bad}')
    if mod.startswith('KIP126.Interface.Solution.'):
        bad = [x for x in closure(mod) if x.startswith('KIP126.Main.Axiom.')]
        if bad: errors.append(f'{mod}: certification consumes Main stage assumptions {bad}')
    if mod in closure(mod): errors.append(f'{mod}: import cycle')
for directory, expected in [('Interface', {'Challenge','Solution'}),('Main', {'Axiom','Challenge','Solution'})]:
    actual = {p.name for p in (ROOT/'KIP126'/directory).iterdir() if p.is_dir()}
    if actual != expected: errors.append(f'{directory}: directories {actual} != {expected}')
for p in ['KIP126/Challenge2.lean', 'KIP126/Main/Axiom/Challenge2.lean',
          'KIP126/Main/Solution/StageInput.lean']:
    if not (ROOT/p).exists(): errors.append(f'missing unified stage boundary: {p}')
main_axiom = without_comments((ROOT/'KIP126/Main/Axiom/Challenge2.lean').read_text())
axioms = re.findall(r'^\s*axiom\s+(\w+)', main_axiom, re.M)
if axioms != ['challenge2']:
    errors.append(f'Main/Axiom/Challenge2.lean: expected sole challenge2 axiom, found {axioms}')
if errors:
    print('\n'.join(errors))
    sys.exit(1)
print(f'Architecture/import checks passed: {len(files)} Lean modules; one unified Challenge2 stage input.')
print('Run StageInputDeclarations and RouteCertification for elaborated declaration equality.')
print('This check does not certify mathematical semantics, source applicability, or absence of sorry.')
