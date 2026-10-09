"""Audit the exact appended family, all pair relations, and direct proof evidence."""
from collections import Counter
from pathlib import Path
import hashlib
import json
import re
import sys

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
load = lambda p: json.loads(p.read_text())
canonical = lambda x: json.dumps(x, sort_keys=True, separators=(',', ':')) + '\n'
base = load(ROOT / 'Fact713RefinedComparisonFamily/family.json')['entries']
extra = load(HERE / 'extra.json')['entries']
family = load(HERE / 'family.json')['entries']
manifest = load(HERE / 'manifest.json')
for name in ['family.json', 'extra.json']:
    assert (HERE / name).read_text() == canonical(load(HERE / name))
assert family == base + extra and len(base) == 1239 and len(extra) == 10
key = lambda e: tuple(e['key'][k] for k in ['object', 'page', 's', 't'])
keys = {key(e) for e in family}
assert len(keys) == len(family) == 1249
for name, expected in manifest['source_sha256'].items():
    assert sha(ROOT / name) == expected
for name, expected in manifest['output_sha256'].items():
    assert sha(HERE / name) == expected
refined = load(ROOT / 'Fact713Row2773Refinement/refined.json')
union = dict(refined['comparisons'])
for k, block in refined['successor_closure'].items():
    assert k not in union or block == union[k]
    union[k] = block
for entry in family:
    obj, r, s, t = key(entry)
    assert entry['wire'] == union[f'{obj}:{s},{t}:d{r}']['wire']
graph = load(ROOT / 'Fact713E12Search/search.json')['graph']
assert len(set(graph) & set(union)) == 1246
assert len(set(graph) - set(union)) == 174
assert len(set(union) - set(graph)) == 3
source = (HERE / 'Extra.lean').read_text()
for obj, r, s, t in map(key, extra):
    assert f'"{obj}", {r}, {s}, {t}' in source
    assert f'b_S0_{s}_{t}_d{r}' in source

counts = Counter()
def compatible(a, b, category):
    obj, r, s, t = key(a)
    counts[category + '_ordered_pairs'] += 1
    aw, bw = a['wire'], b['wire']
    if key(b) == (obj, r, s+r, t+r-1):
        assert aw['k'] == bw['m'] and aw['m'] == bw['n']
        assert aw['outgoing'] == bw['incoming']
        counts[category + '_adjacent'] += 1
    if key(b) == (obj, r+1, s, t):
        assert aw['h'] == bw['m']
        counts[category + '_consecutive'] += 1
for b in extra:
    for a in base:
        assert key(a) != key(b)
        compatible(a, b, 'cross')
        compatible(b, a, 'cross')
for a in extra:
    for b in extra:
        compatible(a, b, 'extra')
for a in family:
    for b in family:
        compatible(a, b, 'all')
assert all(('S0', r, 9, 132) in keys for r in range(2,6))
assert ('S0', 6, 9, 132) not in keys
assert not all(('S0', r, 9, 132) in keys for r in range(2,12))

proofs = {}
names = ['Extra', 'Cross', 'Coherence', 'Coverage']
if '--packaging-only' not in sys.argv:
    for name in names:
        record = load(HERE / (name + '-compile.json'))
        assert record['observed_exit_code'] == 0 and record['inputs_stable']
        assert record['source_sha256'] == sha(HERE / (name + '.lean'))
        log = HERE / record['log']
        assert record['log_sha256'] == sha(log)
        output = log.read_text()
        assert not re.search(r'\b(sorryAx|error|Lean\.ofReduceBool)\b', output)
        reports = re.findall(r"'[^']+' depends on axioms: \[([^\]]*)\]", output)
        reports += [''] * len(re.findall(r"'[^']+' does not depend on any axioms", output))
        assert reports
        for report in reports:
            assert set(filter(None, map(str.strip, report.split(',')))) <= {
                'propext', 'Classical.choice', 'Quot.sound'}
        proofs[name] = dict(axiom_reports=len(reports), record=record,
                           current_olean_matches=record['olean_sha256'] == sha(
                               ROOT / f'.lake/build/lib/lean/{HERE.name}/{name}.olean'))
        assert not re.search(r'\b(sorry|axiom|native_decide|unsafe)\b',
                             (HERE / (name + '.lean')).read_text())
report = dict(status='pass',counts=dict(counts),distinct_comparisons=len(keys),
              e12_graph_available=1246,e12_graph_unresolved=174,outside_graph=3,
              named_d2_through_d5_covered=True,requested_d6_absent=True,
              actual_adams_e6_claimed=False,direct_compilation=proofs,
              source_sha256={p.name:sha(p) for p in HERE.glob('*.lean')})
name='packaging-audit.json' if '--packaging-only' in sys.argv else 'audit.json'
(HERE / name).write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(dict(status='pass',counts=dict(counts),compiled_leaves=len(proofs))))
