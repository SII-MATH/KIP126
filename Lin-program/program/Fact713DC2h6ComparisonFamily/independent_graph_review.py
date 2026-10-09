"""Independently reconstruct graph closure and audit cached typed key partitions."""
from collections import Counter
import hashlib
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
key = lambda k: (k['object'], k['page'], k['s'], k['t'])
code = lambda k: (k['page'] * 256 + max(k['s'] + 64, 0)) * 256 + max(k['t'], 0)
envelope = load(HERE / 'graph-proof.json')
assert envelope['version'] == 1
assert (HERE / 'graph-proof.json').read_text().strip() == json.dumps(
    envelope, sort_keys=True, separators=(',', ':'))
family = load(HERE / 'family.json')
if isinstance(family, dict):
    family = family['entries']
assert envelope['familyKeys'] == [e['key'] for e in family]
for field, expected in [
        ('cachedFamily', envelope['familyKeys']),
        ('cachedRequest', envelope['requested']),
        ('cachedPartition', envelope['available'] + envelope['missing']),
        ('cachedSupplied', envelope['available'] + envelope['outside'])]:
    assert envelope[field] == [[code(k), k] for k in expected], field

sets = {}
for field in ['requested', 'available', 'missing', 'outside', 'familyKeys']:
    values = list(map(key, envelope[field]))
    assert len(values) == len(set(values)), field
    sets[field] = set(values)
assert sets['available'] == sets['requested'] & sets['familyKeys']
assert sets['missing'] == sets['requested'] - sets['familyKeys']
assert sets['outside'] == sets['familyKeys'] - sets['requested']
assert [len(sets[f]) for f in ['requested', 'available', 'missing', 'outside', 'familyKeys']] == [1420, 1269, 151, 3, 1272]
assert ('S0', 7, 9, 132) in sets['missing']
for fields in [('outside', 'requested'), ('missing', 'familyKeys')]:
    codes = [code(k) for field in fields for k in envelope[field]]
    assert len(codes) == len(set(codes))

# Rebuild the three-neighbor recursion without consulting saved graph edges.
graph = {}
def visit(s, t, r):
    node = ('S0', r, s, t)
    if node in graph:
        return
    neighbors = [] if r == 2 else [(s-r, t-r+1), (s, t), (s+r, t+r-1)]
    graph[node] = [('S0', r-1, a, b) for a, b in neighbors]
    for a, b in neighbors:
        visit(a, b, r-1)
for r in range(2, 12):
    visit(9, 132, r)
assert set(graph) == sets['requested']
saved = load(ROOT / 'Fact713E12Search/search.json')['graph']
text_key = lambda k: f'{k[0]}:{k[2]},{k[3]}:d{k[1]}'
assert set(saved) == {text_key(k) for k in graph}
for k, neighbors in graph.items():
    assert saved[text_key(k)] == dict(center=[k[2], k[3]], page=k[1],
                                     predecessors=list(map(text_key, neighbors)))
gaps = load(HERE / 'graph-gaps.json')
for field, corresponding in [('graph_keys', 'requested'), ('available_keys', 'available'),
                             ('missing_keys', 'missing')]:
    assert Counter(map(key, gaps[field])) == Counter(map(key, envelope[corresponding]))
assert set(gaps['outside_graph_keys']) == set(map(text_key, sets['outside']))

reports = {}
for leaf in ['GraphData', 'GraphPartitions', 'GraphDisjoint', 'GraphCoverage', 'GraphParserTests']:
    record = load(HERE / (leaf + '-compile.json'))
    source = HERE / (leaf + '.lean')
    log = HERE / record.get('log', leaf + '.log')
    assert record['observed_exit_code'] == 0, leaf
    assert record['source_sha256'] == sha(source), leaf
    assert record['log_sha256'] == sha(log), leaf
    text = log.read_text()
    assert not re.search(r'\b(sorryAx|Lean\.ofReduceBool)\b|error:', text)
    dependencies = re.findall(r"depends on axioms: \[([^\]]*)\]", text)
    for ax in dependencies:
        assert set(filter(None, map(str.strip, ax.split(',')))) <= {'propext', 'Classical.choice', 'Quot.sound'}
    reports[leaf] = len(dependencies) + text.count('does not depend on any axioms')

inputs = [HERE / 'graph-proof.json', HERE / 'graph-gaps.json', HERE / 'family.json',
          ROOT / 'Fact713E12Search/search.json', *sorted(HERE.glob('Graph*.lean'))]
report = dict(status='pass', findings=[], counts={k: len(v) for k, v in sets.items()},
              reconstructed_nodes=len(graph), reconstructed_edges=sum(map(len, graph.values())),
              axiom_reports=reports, input_sha256={str(p.relative_to(ROOT)): sha(p) for p in inputs},
              scope='Exact finite graph closure, full key identities and cached data; no topology claim.')
(HERE / 'independent-graph-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({k: v for k, v in report.items() if k != 'input_sha256'}))
