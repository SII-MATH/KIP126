"""Independent source, full quotient, finite derivation, and build review."""
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
report = json.loads((HERE / 'search.json').read_text())
db = ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
sql = sqlite3.connect(f'file:{db}?mode=ro', uri=True)
for path, expected in report['input_sha256'].items():
    assert sha(ROOT / path) == expected, path
raw_checks = 0
for key, degree in report['all_requested_degree_data'].items():
    if degree['object'] != 'S0':
        continue
    s, t = degree['degree']
    assert degree['e2'] == [list(row) for row in sql.execute(
        'SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', (s, t))]
    assert degree['staircase'] == [list(row) for row in sql.execute(
        'SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id', (s, t))]
    raw_checks += 1
generators = list(sql.execute(
    'SELECT id,name,s,t FROM S0_AdamsE2_generators WHERE id IN (13,51) ORDER BY id'))
assert generators == [(13, 'g', 4, 24), (51, '\\Delta h_1g', 9, 54)]
assert (4 * 4 + 9, 4 * 24 + 54) == (25, 150)
assert (9 + 4, 54 + 4 - 1) == (13, 57)
for s, t in [(6, 25), (7, 26), (8, 27), (11, 55), (12, 56), (13, 57)]:
    assert list(sql.execute('SELECT id FROM S0_AdamsE2_basis WHERE s=? AND t=?', (s, t))) == []
sql.close()

def matrix(flat, rows, columns):
    assert len(flat) == rows * columns
    return [tuple(flat[i * columns:(i + 1) * columns]) for i in range(rows)]

def vectors(n):
    return list(itertools.product([False, True], repeat=n))

def apply(m, v):
    return tuple(bool(sum(int(a and b) for a, b in zip(row, v)) % 2) for row in m)

def add(*values):
    return tuple(bool(sum(map(int, column)) % 2) for column in zip(*values))

def sparse(value, dimension):
    assert value is not None
    indices = [] if value == '' else [int(v) for v in value.split(',')]
    assert len(set(indices)) == len(indices)
    assert all(0 <= i < dimension for i in indices)
    return tuple(i in indices for i in range(dimension))

blocks = report['new_blocks']
all_blocks = {**json.loads((ROOT / 'AggregateD5Conditional/source.json').read_text())['blocks'], **blocks}
data_text = (HERE / 'Data.lean').read_text()
cycle_pairs = raw_columns = higher_columns = 0
for key, block in blocks.items():
    w = block['wire']
    m, n, k, h = (w[v] for v in ['m', 'n', 'k', 'h'])
    a = matrix(w['outgoing'], k, m)
    b = matrix(w['incoming'], m, n)
    inc = matrix(w['inclusion'], m, h)
    project = matrix(w['projection'], h, m)
    up = matrix(w['up'], n, m)
    down = matrix(w['down'], m, k)
    cycles = [v for v in vectors(m) if apply(a, v) == (False,) * k]
    boundaries = {apply(b, v) for v in vectors(n)}
    assert boundaries <= set(cycles)
    for v in vectors(h):
        assert apply(a, apply(inc, v)) == (False,) * k
        assert apply(project, apply(inc, v)) == v
    for v in boundaries:
        assert apply(project, v) == (False,) * h
    for v in vectors(m):
        assert add(apply(inc, apply(project, v)), apply(b, apply(up, v)), apply(down, apply(a, v))) == v
    for x, y in itertools.product(cycles, repeat=2):
        assert (apply(project, x) == apply(project, y)) == (add(x, y) in boundaries)
        cycle_pairs += 1
    s, t = block['center']
    page = block['page']
    if page == 2:
        for degree, current, dim in [((s, t), a, k), ((s-2, t-1), b, m)]:
            records = report['all_requested_degree_data'][f'S0:{degree[0]},{degree[1]}']['e2']
            assert [tuple(row[j] for row in current) for j in range(len(records))] == [
                sparse(row[2], dim) for row in records]
            raw_columns += len(records)
    else:
        for ds, dt, dimension in [(s, t, m), (s-page, t-page+1, n), (s+page, t+page-1, k)]:
            assert all_blocks[f'S0:{ds},{dt}:d{page-1}']['wire']['h'] == dimension
        for use in block['uses']:
            source = use['source']
            assert use['row'] in report['all_requested_degree_data'][f'S0:{source[0]},{source[1]}']['staircase']
            if use['kind'] == 'checked_zero_codomain':
                assert all_blocks[use['target_predecessor']]['wire']['h'] == 0
            else:
                assert use['kind'] == 'stored_zero_prefix_or_boundary'
                assert use['row'][0] == 1193 and use['row'][2:] == ['0', 9996]
            higher_columns += 1
        assert not any(w['outgoing']) and not any(w['incoming'])
    name = 'b_' + key.replace(':', '_').replace(',', '_').replace('-', 'neg')
    fields = ['version', 'k', 'm', 'n', 'h', 'outgoing', 'incoming', 'inclusion', 'projection', 'up', 'down']
    literal = ','.join(json.dumps(w[f], separators=(',', ':')) for f in fields)
    assert f'def {name} : WireComparison := ⟨{literal}⟩' in data_text
assert len(blocks) == 34 and raw_columns == 30 and higher_columns == 4
assert cycle_pairs == 88
unknown_reasons = [row['reason'] for row in report['outcomes'] if row['status'] == 'unresolved']
assert all(any(f'row{row}' in reason for reason in unknown_reasons) for row in [279, 1125, 1060])

# R = F2[t]/(t^8), with the genuine formal derivative. It descends because
# d(t^8)=0 in characteristic two. Nonzero d(g) is allowed in the fourth-power law.
def multiply(a, b):
    value = 0
    for i in range(8):
        if (a >> i) & 1:
            value ^= b << i
    return value & 255

def derivative(a):
    return sum(((a >> i) & 1) << (i - 1) for i in [1, 3, 5, 7])

leibniz_checks = product_checks = noncycle_g = 0
for g in range(256):
    fourth = multiply(multiply(g, g), multiply(g, g))
    assert derivative(fourth) == 0
    noncycle_g += derivative(g) != 0
    for delta in range(256):
        assert derivative(multiply(g, delta)) == (
            multiply(derivative(g), delta) ^ multiply(g, derivative(delta)))
        leibniz_checks += 1
        if derivative(delta) == 0:
            assert derivative(multiply(fourth, delta)) == 0
            product_checks += 1

audit = json.loads((HERE / 'compile-audit.json').read_text())
build = []
reports = 0
for row in audit:
    assert row['exit_code'] == 0
    for path, expected in row['input_sha256'].items():
        assert sha(ROOT / path) == expected, path
    name = row['module']
    assert sha(HERE / (name + '.log')) == row['log_sha256']
    log = (HERE / (name + '.log')).read_text()
    dependencies = re.findall(r'depends on axioms: \[([^]]*)\]', log)
    assert all({a.strip() for a in group.split(',')} <= {
        'propext', 'Classical.choice', 'Quot.sound'} for group in dependencies)
    count = len(dependencies) + log.count('does not depend on any axioms')
    reports += count
    build.append(dict(module=name, actual_exit_code=0, standard_axiom_reports=count,
        current_olean_matches_direct=sha(ROOT / '.lake/build/lib/lean/Fact764CycleFromProduct' /
            (name + '.olean')) == row['olean_sha256']))
assert reports == 7
files = [HERE / 'Data.lean', HERE / 'Basic.lean', HERE / 'README.md', HERE / 'search.json',
    ROOT / 'Fact762IncomingCertificates/ZeroPropagation.lean',
    ROOT / 'Fact764ConstrainedE5/Coordinates.lean', ROOT / 'Fact764ConstrainedE5/Conclusion.lean',
    ROOT / 'BranchReplayCertificates/ProductBasisSemantics.lean',
    ROOT / 'Fact764ConstrainedE5/Actual.lean']
result = dict(status='independent_review_passed', reviewer='/root/map_search_next', findings=[],
    source_checks=dict(raw_sphere_degrees=raw_checks, complete_new_comparisons=34,
        raw_d2_columns=raw_columns, higher_zero_columns=higher_columns,
        full_cycle_pairs=cycle_pairs, exact_generated_wire_literals=34,
        unknown_rows_retained=[279, 1125, 1060], named_generators=generators),
    algebra_replay=dict(ring='F2[t]/(t^8)', derivative_leibniz_pairs=leibniz_checks,
        fourth_power_elements=256, elements_with_nonzero_derivative=noncycle_g,
        fourth_power_times_cycle_cases=product_checks),
    semantic_findings=[
        'Zero E2 target requires actual faithful coordinates, then actual PageTower surjectivity and zero preservation.',
        'Fourth power cycle uses characteristic-two commutativity and Leibniz, without assuming d(g)=0.',
        'Named cycle derives from the same actual differential and ring product used by all finite source coefficients.',
        'Target coefficient interpretation is injective, so actual differential zero entails the finite named kernel condition.',
        'Full incoming columns, complex law, product and map obstructions remain hypotheses in the uniqueness conclusion.',
        'No injective map from Vec 1 to Vec 0 exists; no actual tmf zero-space theorem is inferred from staircase metadata.'],
    build_evidence=build,
    inputs_sha256={str(p.relative_to(ROOT)): sha(p) for p in files},
    remaining=['Actual common graded Adams ring and Leibniz realization',
        'Named product and all coefficient interpretation for the intended spectrum',
        'Actual degree-(13,57) tower and faithful E2 coordinates',
        'Unknown incoming rows; no nonboundary claim for the delta factor',
        'No permanence beyond the stated d4/E5 uniqueness condition'])
(HERE / 'independent-review.json').write_text(json.dumps(result, indent=2) + '\n')
print(f'Independent review passed: {raw_checks} raw degrees, 34 comparisons/88 cycle pairs, '
      f'{leibniz_checks} Leibniz pairs, {product_checks} product-cycle cases, 7 axiom reports')
