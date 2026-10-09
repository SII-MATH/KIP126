"""Rebuild review indexes without treating generated certificates as maintained code."""
from pathlib import Path
import json
import re

root = Path(__file__).resolve().parents[1]
excluded = {'.lake', 'upstream', 'release-certificates', 'staircase-release', 'ModuleMapBatches', 'ModuleLowMapBatches', 'ModuleLowMapSupplement', 'ModuleRingLowBatches', 'DerivedMapBatches', 'CofiberE2Batches', 'CofiberLinkageBatches', 'DerivedLinkageBatches', 'GenericComponentT8', 'wire', 'matrices',
            'page-transition-release', 'batches', 'relations', 'products', 'SSeqCpp-build-source', 'build-tools', 'build', 'cpp-build', 'cmake-tool', 'actual-s0', 'semantic', 'tools', '__pycache__', 'output'}
suffixes = {'.lean', '.cpp', '.py', '.sh', '.md', '.json', '.csv', '.jsonl', '.txt'}
files = sorted(p for p in root.rglob('*') if p.is_file())
maintained = [p for p in files if not (set(p.relative_to(root).parts) & excluded)
              and (p.suffix in suffixes or p.name in {'Makefile', 'lean-toolchain'})]
decls = {}
sound = {}
for p in maintained:
    if p.suffix != '.lean':
        continue
    source = p.read_text()
    names = re.findall(r'^(?:private\s+|protected\s+)?(?:def|abbrev|structure|inductive|theorem|lemma)\s+(\w+)',
                       source, re.M)
    decls[str(p.relative_to(root))] = names
    proofs = re.findall(r'^(?:theorem|lemma)\s+(\w+)', source, re.M)
    if proofs:
        sound[str(p.relative_to(root))] = proofs
(root / 'declaration_inventory.json').write_text(json.dumps(decls, indent=2) + '\n')
(root / 'checker_theorems.md').write_text(
    '# Maintained theorem index\n\n'
    'Names below index declarations; their exact hypotheses and conclusions are in the source.\n\n' +
    '\n'.join(f'- `{path}`: ' + ', '.join(f'`{n}`' for n in names)
              for path, names in sound.items()) + '\n')
(root / 'source_file_inventory.txt').write_text(
    '\n'.join(str(p.relative_to(root)) for p in maintained) + '\n')
all_names = {str(p.relative_to(root)) for p in root.rglob('*') if p.is_file()}
all_names.add('file_inventory.txt')
(root / 'file_inventory.txt').write_text('\n'.join(sorted(all_names)) + '\n')
print(f'Indexed {len(decls)} maintained Lean files and {len(all_names)} total files')
