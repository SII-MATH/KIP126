"""Independent frozen-source, family, quotient, and request review."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
frozen = load(HERE / 'frozen-source.json')
for filename, expected in frozen['files'].items():
    assert digest(ROOT / filename) == expected, filename
axiom_reports = 0
for module in frozen['modules']:
    assert module['observed_exit_code'] == 0 and module['inputs_stable']
    source = HERE / (module['module'].split('.')[-1] + '.lean')
    assert digest(source) == module['source_sha256']
    assert not re.search(r'\b(sorry|axiom|native_decide|unsafe)\b', source.read_text())
    log = HERE / module['log']
    assert digest(log) == module['log_sha256']
    assert 'sorryAx' not in log.read_text() and 'error:' not in log.read_text()
    for axioms in re.findall(r'depends on axioms:\s*\[([^]]*)\]', log.read_text()):
        assert set(filter(None, map(str.strip, axioms.split(',')))) <= {
            'propext', 'Classical.choice', 'Quot.sound'}
        axiom_reports += 1
    axiom_reports += log.read_text().count('does not depend on any axioms')
assert axiom_reports == 58

def apply(bits, m, n, x):
    assert len(bits) == m*n
    result = 0
    for row in range(m):
        parity = 0
        for col in range(n):
            parity ^= bool(bits[row*n+col]) and bool(x & (1 << col))
        result |= int(parity) << row
    return result

def check(w):
    do = lambda x: apply(w['outgoing'], w['k'], w['m'], x)
    di = lambda x: apply(w['incoming'], w['m'], w['n'], x)
    project = lambda x: apply(w['projection'], w['h'], w['m'], x)
    include = lambda x: apply(w['inclusion'], w['m'], w['h'], x)
    boundaries = {di(x) for x in range(1 << w['n'])}
    cycles = [x for x in range(1 << w['m']) if do(x) == 0]
    assert all(do(x) == 0 for x in boundaries)
    for v in range(1 << w['h']):
        assert do(include(v)) == 0 and project(include(v)) == v
    assert {project(x) for x in cycles} == set(range(1 << w['h']))
    for x, y in itertools.product(cycles, repeat=2):
        assert (project(x) == project(y)) == (x ^ y in boundaries)
    return len(cycles)**2

counts = Counter()
get_key = lambda e: tuple(e['key'][f] for f in ('object', 'page', 's', 't'))
families = []
for filename, oldcount, count in [('zero-family.json', 1333, 1350),
                                  ('residual-family.json', 1341, 1359)]:
    entries = load(HERE / filename)['entries']
    old = load(ROOT / 'Fact713Row2431Continuation' / filename)['entries']
    assert len(old) == oldcount and len(entries) == count and entries[:oldcount] == old
    table = {get_key(e): e['wire'] for e in entries}
    assert len(table) == len(entries)
    for (obj, page, s, t), w in table.items():
        assert obj and page >= 2
        counts['cycle_pairs'] += check(w)
        if (obj, page, s+page, t+page-1) in table:
            other = table[obj, page, s+page, t+page-1]
            assert w['k'] == other['m'] and w['m'] == other['n']
            assert w['outgoing'] == other['incoming']
            counts['adjacent'] += 1
        if (obj, page+1, s, t) in table:
            assert w['h'] == table[obj, page+1, s, t]['m']
            counts['consecutive'] += 1
        if page > 2:
            for dim, ss, tt in [(w['n'], s-page, t-page+1),
                                (w['m'], s, t), (w['k'], s+page, t+page-1)]:
                assert table[obj, page-1, ss, tt]['h'] == dim
                counts['predecessor_dimensions'] += 1
    assert ('S0', 4, 17, 140) not in table
    assert ('S0', 3, 20, 140) not in table
    assert ('S0', 10, 9, 132) not in table
    assert table['S0', 4, 21, 143]['incoming'] == [False]
    families.append(table)
wires = [families[0]['S0', r, 9, 132] for r in range(2, 10)]
assert all(families[1]['S0', r, 9, 132] == w for r, w in zip(range(2, 10), wires))
assert [(w['m'], w['h']) for w in wires] == [(2, 2), (2, 1)] + [(1, 1)]*6
projections = [[apply(w['projection'], w['h'], w['m'], x)
                for x in range(1 << w['m'])] for w in wires]
label_options = [list(itertools.permutations(range(4)))]*2 + [list(itertools.permutations(range(2)))]*7
for labels in itertools.product(*label_options):
    inverse = [{v:i for i,v in enumerate(p)} for p in labels]
    raw = inverse[0][3]
    actual = raw
    for stage, w in enumerate(wires):
        canonical = labels[stage][actual]
        assert canonical == (3 if stage == 0 else 1)
        assert apply(w['outgoing'], w['k'], w['m'], canonical) == 0
        assert canonical not in {apply(w['incoming'], w['m'], w['n'], x) for x in range(1 << w['n'])}
        actual = inverse[stage+1][projections[stage][canonical]]
        assert actual != inverse[stage+1][0]
        counts['same_input_steps'] += 1
    assert labels[8][actual] == 1 and labels[0][raw] == 3
    counts['carrier_models'] += 1
assert counts['carrier_models'] == 73728

# An arbitrary labeling of the one-dimensional source still has precisely
# its zero and named element. Test every zero-preserving d4 into F2^2.
for source_labels, target_labels in itertools.product(label_options[-1], label_options[0]):
    source_inverse = {v:i for i,v in enumerate(source_labels)}
    target_inverse = {v:i for i,v in enumerate(target_labels)}
    for image in range(4):
        differential = {source_inverse[0]: target_inverse[0], source_inverse[1]: target_inverse[image]}
        named_zero = differential[source_inverse[1]] == target_inverse[0]
        all_zero = all(y == target_inverse[0] for y in differential.values())
        assert named_zero == all_zero == (image == 0)
        counts['whole_column_candidates'] += 1

lists = lambda n: [list(xs) for k in range(n+1) for xs in itertools.product([False, True], repeat=k)]
requests = list(itertools.product(lists(4), lists(3)))
accept = lambda request: request == ([True, True], [True])
def diagnostic(request):
    s, o = request
    if len(s) != 2: return 'source.length'
    if s != [True, True]: return 'source'
    if len(o) != 1: return 'output.length'
    if o != [True]: return 'output'
    return None
for request in requests:
    assert accept(request) == (diagnostic(request) is None)
    counts['accepted_requests' if accept(request) else 'rejected_requests'] += 1
for pair in itertools.product(requests, repeat=2):
    assert all(accept(r) for r in pair) == (pair == (([True, True], [True]), ([True, True], [True])))
    counts['batch_pairs'] += 1

result = dict(status='no_findings', findings=[], frozen_files=len(frozen['files']),
              lean_modules=len(frozen['modules']), standard_axiom_reports=axiom_reports,
              counts=dict(counts),
              reviewed=['full source naming and quotient bridge', 'whole d4 from dimension one',
                        'complete old/new family comparisons', 'same S/pages/raw E10 trace',
                        'explicit complete incoming and outgoing meanings', 'request length and vector binding'],
              limitations=['No proof of actual sphere meanings; the complete neighboring actual E9 spaces remain explicit',
                           'The source d4 full comparison is correctly absent because its incoming d4 is unknown',
                           'Python checks supplement the accepted Lean proof; no registered module was recompiled'])
(HERE / 'independent-review.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps(result, indent=2))
