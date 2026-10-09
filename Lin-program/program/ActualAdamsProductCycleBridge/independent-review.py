"""Independent exact-degree, complete-coordinate, and build provenance review."""
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
add = lambda a, b: (a[0] + b[0], a[1] + b[1])
target = lambda r, d: (d[0] + r, d[1] + r - 1)
degree_cases = 0
for r in range(2, 16):
    for d, e in itertools.product(itertools.product(range(6), range(-4, 6)), repeat=2):
        common = target(r, add(d, e))
        assert common == add(target(r, d), e) == add(d, target(r, e))
        degree_cases += 1
g = (4, 24)
delta = (9, 54)
g2 = add(g, g)
g4 = add(g2, g2)
named = add(g4, delta)
assert (g2, g4, named, target(4, named), target(4, delta)) == (
    (8, 48), (16, 96), (25, 150), (29, 153), (13, 57))

# Independent formal monomial derivative on F2[g,u,delta], with d(g)=u,
# d(u)=d(delta)=0 and degree(u)=degree(g)+(4,3). Every nonzero derivative
# term is homogeneous in exactly the Adams d4 target degree.
generator_degrees = [g, target(4, g), delta]
def degree(exponents):
    return tuple(sum(p * degree[j] for p, degree in zip(exponents, generator_degrees))
                 for j in range(2))
def monomial_derivative(x):
    return (x[0]-1, x[1]+1, x[2]) if x[0] % 2 else None
monomials = list(itertools.product(range(6), repeat=3))
leibniz_pairs = homogeneous_derivatives = square_fourths = 0
for x in monomials:
    dx = monomial_derivative(x)
    if dx is not None:
        assert degree(dx) == target(4, degree(x))
        homogeneous_derivatives += 1
    assert monomial_derivative(tuple(2*i for i in x)) is None
    assert monomial_derivative(tuple(4*i for i in x)) is None
    square_fourths += 1
    for y in monomials:
        xy = tuple(a+b for a, b in zip(x, y))
        left = {monomial_derivative(xy)} - {None}
        right = set()
        for term in [tuple(a+b for a, b in zip(dx, y)) if dx is not None else None,
                     tuple(a+b for a, b in zip(x, monomial_derivative(y)))
                         if monomial_derivative(y) is not None else None]:
            if term is not None:
                if term in right:
                    right.remove(term)
                else:
                    right.add(term)
        assert left == right
        leibniz_pairs += 1

def dot(a, x):
    return sum(u*v for u, v in zip(a, x)) % 2
rows = list(itertools.product([0, 1], repeat=3))
named_vector = (0, 1, 0)
finite_zero_cases = nonzero_named_counters = 0
for bit in [0, 1]:
    columns = [(1, 0, 0), (bit, 1, 1)]
    boundaries = {tuple((a*u+b*v) % 2 for u, v in zip(*columns))
                  for a, b in itertools.product([0, 1], repeat=2)}
    for a in rows:
        if any(dot(a, column) for column in columns):
            continue
        if dot(a, named_vector) == 0:
            assert a == (0, 0, 0)
            assert named_vector not in boundaries
            assert all(x in boundaries or tuple((u+v) % 2 for u, v in zip(x, named_vector))
                       in boundaries for x in rows)
            finite_zero_cases += 1
        else:
            assert a == (0, 1, 1)
            nonzero_named_counters += 1
assert finite_zero_cases == nonzero_named_counters == 2

records = json.loads((HERE / 'compile-audit.json').read_text())
build = []
reports = 0
for row in records:
    assert row['exit_code'] == 0
    for path, expected in row['input_sha256'].items():
        assert sha(ROOT / path) == expected, path
    name = row['module']
    log = (HERE / (name + '.log')).read_text()
    assert sha(HERE / (name + '.log')) == row['log_sha256']
    dependencies = re.findall(r'depends on axioms: \[([^]]*)\]', log)
    assert all({x.strip() for x in group.split(',')} <= {
        'propext', 'Classical.choice', 'Quot.sound'} for group in dependencies)
    count = len(dependencies) + log.count('does not depend on any axioms')
    reports += count
    current = ROOT / '.lake/build/lib/lean/ActualAdamsProductCycleBridge' / (name + '.olean')
    build.append(dict(module=name, observed_exit_code=0, standard_axiom_reports=count,
        current_olean_matches_direct=sha(current) == row['olean_sha256'] if current.exists() else None))
assert reports == 10
files = [HERE / (name + '.lean') for name in ['Basic', 'Zero', 'Finite']] + [
    ROOT / 'ManualInputObligations/Reference/AdamsRules.lean',
    ROOT / 'ManualInputObligations/Reference/AdamsHomology.lean',
    ROOT / 'ActualAdamsSystemBridge/Basic.lean',
    ROOT / 'Fact762IncomingCertificates/ZeroPropagation.lean',
    ROOT / 'Fact764ConstrainedE5/Conclusion.lean']
report = dict(status='independent_review_passed', findings=[], reviewer='/root/map_search_next',
    arithmetic=dict(exact_degree_cases=degree_cases, homogeneous_nonzero_derivatives=homogeneous_derivatives,
        monomial_leibniz_pairs=leibniz_pairs, square_fourth_cases=square_fourths,
        constrained_full_zero_matrix_cases=finite_zero_cases,
        constrained_noncycle_counterexamples=nonzero_named_counters),
    semantics=[
        'Adams product and differential are on the same typed S and page r.',
        'The imported GeneralizedLeibnizRule.formula is ordinary same-page Leibniz, not a cross-page indeterminacy rule.',
        'Square cancellation compares identical degree equalities by proof irrelevance, then applies graded commutativity and F2 add-self zero.',
        'PageTower is constructed from the same S and actual quotient identifications; all next-page representatives are derived.',
        'Actual E2 zero coordinates still require injectivity; SQL emptiness supplies no such proof.',
        'Finite cycle transport maps actual differential zero into coordinates, so it needs target zero preservation but not target injectivity.',
        'Incoming constraints alone permit nonzero outgoing [0,1,1]; the named cycle is proved first from product semantics.',
        'Actual all-element uniqueness still requires reverse transport with WholeMeaning.'],
    not_claimed=['Cross-page generalized Leibniz propagation', 'E2-to-E4 traces for intended factors',
        'Specific actual spectrum or Ext names', 'Actual all-cycle uniqueness without WholeMeaning',
        'Permanence beyond the d4 statement', 'Convergence'],
    build_evidence=build,
    inputs_sha256={str(p.relative_to(ROOT)): sha(p) for p in files})
(HERE / 'independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(f'Independent review passed: {degree_cases} exact degrees, {leibniz_pairs} graded Leibniz pairs, '
      f'2 full-zero and 2 noncycle matrix cases; 3 direct0/10 standard reports')
