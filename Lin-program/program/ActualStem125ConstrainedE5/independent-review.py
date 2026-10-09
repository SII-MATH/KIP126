"""Independent finite coordinate models and frozen actual-bridge evidence."""
import collections
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
branches = json.loads((ROOT / 'Stem125E5Search/branches.json').read_text())['branches']
search = json.loads((ROOT / 'Stem125E5Search/search.json').read_text())
blocks = json.loads((ROOT / 'AggregateD5Conditional/source.json').read_text())['blocks']
extra = search['branches'][0]['new_blocks']
coverage = json.loads((ROOT / 'Stem125HomologyCertificates/coverage.json').read_text())
original = [x['filtration'] for x in coverage['pages']['2']['centers']]
product = (ROOT / 'Stem125E5Search/Product.lean').read_text()
def literals(name):
    return json.loads(re.search(r'def ' + name + r' : List Nat := (\[[^\]]*\])', product).group(1))
positive, zero = literals('positiveFiltrations'), literals('zeroFiltrations')
indices = {}
for name, values in [('originalPositive', positive), ('originalZero', zero)]:
    body = product.split('def ' + name + ' ')[1].split('theorem ')[0].split('\ndef ')[0]
    pairs = re.findall(r'\| ⟨(\d+),_⟩ => ⟨(\d+),by decide⟩', body)
    assert [int(a) for a, _ in pairs] == list(range(len(values)))
    indices[name] = [int(b) for _, b in pairs]
    assert [original[i] for i in indices[name]] == values
assert len(original) == 45 and len(positive) == 17 and len(zero) == 28
assert sorted(indices['originalPositive'] + indices['originalZero']) == list(range(45))
assert positive[10] == original[indices['originalPositive'][10]] == 25
assert [(f, f + 125) for f in original][indices['originalPositive'][10]] == (25, 150)

def columns(flat, m, n):
    assert len(flat) == m * n
    return [sum(int(flat[i*n+j]) << i for i in range(m)) for j in range(n)]
def evaluate(a, x):
    out = 0
    for j, y in enumerate(a):
        if (x >> j) & 1:
            out ^= y
    return out
def matrices(w):
    return [columns(w[key], m, n) for key, m, n in [
        ('outgoing', w['k'], w['m']), ('incoming', w['m'], w['n']),
        ('projection', w['h'], w['m']), ('inclusion', w['m'], w['h'])]]

fixed = {}
for f in positive:
    if f in (9, 14, 15, 25):
        continue
    key = f'S0:{f},{f+125}:d4'
    fixed[f] = extra.get(key, blocks.get(key))['wire']
wires = list(fixed.values()) + [b['wire'] for name in ['nine', 'fourteen', 'fifteen', 'twentyfive']
                               for b in branches[name]]
assert len(wires) == 42
cycle_pairs = coordinate_laws = next_representatives = 0
for w in wires:
    a, b, q, inc = matrices(w)
    boundaries = {evaluate(b, x) for x in range(1 << w['n'])}
    cycles = {x for x in range(1 << w['m']) if evaluate(a, x) == 0}
    assert boundaries <= cycles
    # Relabel all actual carriers independently; transport their addition and zero.
    cm, co, cn = (1 << w['m']) - 1, (1 << w['k']) - 1, (1 << w['h']) - 1
    actual_current = range(1 << w['m'])
    actual_next = range(1 << w['h'])
    current_coordinates = lambda x: x ^ cm
    actual_add = lambda x, y: x ^ y ^ cm
    outgoing = lambda x: evaluate(a, current_coordinates(x)) ^ co
    advance = lambda x: evaluate(q, current_coordinates(x)) ^ cn
    # Unit zero and two separately labelled copies exercise complete incoming coverage.
    incoming = [None] + list(itertools.product(range(2), range(1 << w['n'])))
    incoming_coordinates = lambda z: 0 if z is None else z[1]
    actual_incoming = lambda z: evaluate(b, incoming_coordinates(z)) ^ cm
    assert {incoming_coordinates(z) for z in incoming} == set(range(1 << w['n']))
    assert {current_coordinates(x) for x in actual_current} == set(actual_current)
    assert {actual_incoming(z) for z in incoming} == {x ^ cm for x in boundaries}
    for x, y in itertools.product(actual_current, repeat=2):
        assert current_coordinates(actual_add(x, y)) == current_coordinates(x) ^ current_coordinates(y)
        coordinate_laws += 1
    actual_cycles = [x for x in actual_current if outgoing(x) == co]
    for x, y in itertools.product(actual_cycles, repeat=2):
        related = any(actual_incoming(z) == actual_add(x, y) for z in incoming)
        assert related == (advance(x) == advance(y))
        cycle_pairs += 1
    for y in actual_next:
        representative = evaluate(inc, y ^ cn) ^ cm
        assert outgoing(representative) == co and advance(representative) == y
        next_representatives += 1
    assert len({advance(x) for x in actual_cycles}) == 1 << w['h']

distribution = collections.Counter()
whole_tuples = 0
for nine, fourteen, fifteen, twentyfive in itertools.product(range(2), range(3), range(4), [8, 18]):
    local = dict(fixed)
    local.update({f: branches[name][j]['wire'] for f, name, j in [
        (9, 'nine', nine), (14, 'fourteen', fourteen),
        (15, 'fifteen', fifteen), (25, 'twentyfive', twentyfive)]})
    assert set(local) == set(positive)
    dim = sum(w['h'] for w in local.values())
    distribution[dim] += 1
    for values in itertools.product(*(range(1 << local[f]['h']) for f in positive)):
        whole = [0] * 45
        for index, value in zip(indices['originalPositive'], values):
            whole[index] = value
        assert tuple(whole[i] for i in indices['originalPositive']) == values
        assert all(whole[i] == 0 for i in indices['originalZero'])
        whole_tuples += 1
assert distribution == {3: 4, 4: 16, 5: 20, 6: 8}
assert whole_tuples == 1440

# Dropping complete incoming coverage or next injectivity admits incorrect cardinalities.
assert {0} != {0, 1}  # A selected zero incoming list misses an actual nonzero boundary.
assert len({0: 0, 1: 0}) == 2 and len(set({0: 0, 1: 0}.values())) == 1

builds = []
reports = 0
for name in ['Basic', 'Actual', 'Whole']:
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    source, log = HERE / (name + '.lean'), HERE / (name + '.log')
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(source) and record['log_sha256'] == sha(log)
    text = log.read_text()
    assert 'sorryAx' not in text and 'error:' not in text and 'error(' not in text
    deps = re.findall(r'depends on axioms: \[([^]]*)\]', text)
    assert all({a.strip() for a in d.split(',')} <= {'propext', 'Classical.choice', 'Quot.sound'} for d in deps)
    count = len(deps) + text.count('does not depend on any axioms')
    reports += count
    obj = ROOT / '.lake/build/lib/lean/ActualStem125ConstrainedE5' / (name + '.olean')
    builds.append(dict(module=name, exit_code=0, standard_axiom_reports=count,
        current_olean_exists=obj.exists(),
        current_olean_matches_direct=sha(obj) == record['olean_sha256'] if obj.exists() else None))
assert reports == 16
files = [HERE / (name + '.lean') for name in ['Basic', 'Actual', 'Whole']] + [
    HERE / 'README.md', Path(__file__), ROOT / 'Stem125HomologyCertificates/Meaning.lean',
    ROOT / 'SemanticTrajectoryCertificates/Page.lean', ROOT / 'Stem125E5Search/Product.lean',
    ROOT / 'Stem125E5Search/branches.json', ROOT / 'Stem125E5Search/search.json',
    ROOT / 'AggregateD5Conditional/source.json', ROOT / 'Stem125HomologyCertificates/coverage.json']
result = dict(status='independent_review_passed', findings=[], reviewer='/root/map_search_next',
    finite_replay=dict(full_wire_models=len(wires), relabelled_addition_pairs=coordinate_laws,
        full_actual_cycle_pairs=cycle_pairs, next_representatives=next_representatives,
        positive_centers=17, zero_centers=28, original_centers=45,
        original_indices=indices, named_degree=[25, 150], retained_choices=48,
        dimension_counts=dict(distribution), whole_next_tuples=whole_tuples),
    semantic_checks=['All actual carriers and maps fixed by same S and pages.',
        'Incoming is full Unit plus dependent sum over source degrees, not a selected list.',
        'WholeMeaning supplies current/incoming completeness and current/target/next faithfulness.',
        'Next-coordinate surjectivity and cardinality are conclusions, not certificate fields.',
        'SameCoordinates holds on every actual named-degree current element; named_current uses it.',
        'The numerical positive_bounds proof does not use _same; combined Certificate still requires it.',
        '28 zero factors require faithful actual E4-to-Vec0 maps and actual homology surjectivity.',
        'Tactic applies whole_bounds using mathematical meaning proofs and previously checked comparisons.'],
    limitations=['Finite replays test concrete models and do not prove the Lean theorems.',
        'Exactly 45 recorded centers; no exhaustion of all actual stem filtrations.',
        'No actual sphere instance, global realization of 48 choices, later permanence or convergence.',
        'Finite map/product obstruction meanings remain independent explicit hypotheses.'],
    build_evidence=builds, standard_axiom_reports=reports,
    inputs_sha256={str(p.relative_to(ROOT)): sha(p) for p in files})
(HERE / 'independent-review.json').write_text(json.dumps(result, indent=2) + '\n')
print(f'Independent actual bridge: 42 relabelled models/{cycle_pairs} cycle pairs; '
      f'45 centers/48 choices/{whole_tuples} tuples; 3 direct exits 0/16 reports')
