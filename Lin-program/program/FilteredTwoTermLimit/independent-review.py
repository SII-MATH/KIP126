"""Independent finite-model audit of the explicit bounded stable-page theorem."""
from collections import Counter
from itertools import product
from pathlib import Path
import hashlib
import json
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
U = frozenset(range(4))
ZERO = frozenset([0])
SUBS = [ZERO, frozenset([0, 1]), frozenset([0, 2]), frozenset([0, 3]), U]
CHAINS = [(a, b, c, ZERO) for a, b, c in product(SUBS, repeat=3) if c <= b <= a]
MAPS = [(0, a, b, a ^ b) for a, b in product(U, repeat=2)]
at = lambda F, t: F[t] if t < len(F) else ZERO
coset = lambda x, H: frozenset(x ^ h for h in H)
count = Counter()
for F, G, f in product(CHAINS, CHAINS, MAPS):
    if not all(f[x] in G[i] for i in range(4) for x in F[i]):
        continue
    count['filtered_maps'] += 1
    kernel = {x for x in U if f[x] == 0}
    image0 = {f[x] for x in F[0]}
    qmap = lambda y: coset(y, image0)
    for q, t, n in product(range(4), range(4), range(8)):
        if at(G, q) != ZERO or not q <= t + n:
            continue
        cycles = {x for x in at(F, t) if f[x] in at(G, t + n)}
        corrections = {x for x in at(F, t + 1) if f[x] in at(G, t + n)}
        assert cycles == kernel & at(F, t)
        assert corrections == kernel & at(F, t + 1)
        assert all(f[x] == 0 for x in cycles)
        count['source_kernel_and_zero_differential'] += 1
        if not t + 1 <= n:
            continue
        incoming = {f[x] for x in at(F, max(t + 1 - n, 0)) if f[x] in at(G, t)}
        relations = {y ^ z for y in at(G, t + 1) for z in incoming}
        current_target = {coset(y, relations) for y in at(G, t)}
        graded_target = lambda y: frozenset(qmap(y ^ z) for z in at(G, t + 1))
        graph = {(coset(y, relations), graded_target(y)) for y in at(G, t)}
        assert len(graph) == len(current_target) == len({v for _, v in graph})
        source_classes = {coset(x, corrections) for x in cycles}
        current_page = set(product(source_classes, current_target))
        actual_page = set(product(source_classes, {graded_target(y) for y in at(G, t)}))
        page_graph = {((x, y), (x, z)) for x in source_classes for y, z in graph}
        assert len(page_graph) == len(current_page) == len(actual_page)
        assert {a for a, b in page_graph} == current_page
        assert {b for a, b in page_graph} == actual_page
        count['bounded_page_isomorphisms'] += 1
        if n == q + t + 1:
            count['explicit_page_bound'] += 1
record = json.loads((HERE / 'Basic-compile.json').read_text())
source, log = HERE / 'Basic.lean', HERE / 'Basic.log'
assert record['observed_exit_code'] == 0
assert record['source_sha256'] == sha(source)
assert record['log_sha256'] == sha(log)
assert not re.search(r'\bsorry\b|\baxiom\b|native_decide', source.read_text())
text = log.read_text()
assert not re.search(r'sorryAx|error:|error\(', text)
axes = re.findall(r'depends on axioms: \[([^]]*)\]', text)
assert len(axes) == 4
assert all(set(a.strip() for a in s.split(',')) <= {'propext', 'Classical.choice', 'Quot.sound'} for s in axes)
obj = ROOT / '.lake/build/lib/lean/FilteredTwoTermLimit/Basic.olean'
report = dict(status='independent_bounded_two_term_limit_review_passed', counts=dict(count),
    observed_exit_code=0, standard_reports=4, source_sha256=sha(source), log_sha256=sha(log),
    current_object_matches_direct=obj.exists() and sha(obj) == record['olean_sha256'],
    script_sha256=sha(Path(__file__)),
    scope='bounded target filtration; induced graded full kernel and restricted cokernel; no exhaustion inferred')
(HERE / 'independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(report, indent=2))
