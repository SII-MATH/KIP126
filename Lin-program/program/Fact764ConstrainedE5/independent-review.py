"""Independent raw SQL, finite algebra, producer replay, and proof audit."""
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3
import subprocess

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
db = ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
sql = sqlite3.connect(f'file:{db}?mode=ro', uri=True)
raw = {}
for degree in [(21, 147), (25, 150)]:
    s, t = degree
    raw[f'{s},{t}:E2'] = list(sql.execute(
        'SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', degree))
    raw[f'{s},{t}:staircase'] = list(sql.execute(
        'SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id', degree))
assert raw['21,147:E2'] == [(3748, '530,1', ''), (3749, '1,1,510,1', ''), (3750, '0,3,500,1', '')]
assert raw['21,147:staircase'] == [(3748, '2', '4', 3), (3749, '1', '3', 9996), (3750, '0', None, 9996)]
assert raw['25,150:E2'] == [(3992, '559,1', '0'), (3993, '558,1', '0'), (3994, '13,4,51,1', ''), (3995, '8,2,9,1,13,1,80,1', '')]
assert raw['25,150:staircase'] == [(3992, '3', '1', 4), (3993, '2', None, 9000), (3994, '0,1', None, 9000), (3995, '1', '0', 9998)]
raw['named_generators'] = list(sql.execute('SELECT id,name,s,t FROM S0_AdamsE2_generators WHERE id IN (13,51) ORDER BY id'))
assert raw['named_generators'] == [(13, 'g', 4, 24), (51, '\\Delta h_1g', 9, 54)]
assert (4 * 4 + 9, 4 * 24 + 54) == (25, 150)
sql.close()

def mat(flat, rows, cols):
    assert len(flat) == rows * cols
    return [list(map(int, flat[i * cols:(i + 1) * cols])) for i in range(rows)]

def vecs(n):
    return list(itertools.product([0, 1], repeat=n))

def app(matrix, vector):
    return tuple(sum(a * b for a, b in zip(row, vector)) % 2 for row in matrix)

def add(*vectors):
    return tuple(sum(coords) % 2 for coords in zip(*vectors))

def maps(w):
    m, n, k, h = (w[x] for x in ['m', 'n', 'k', 'h'])
    return (mat(w['outgoing'], k, m), mat(w['incoming'], m, n),
            mat(w['projection'], h, m), mat(w['inclusion'], m, h),
            mat(w['up'], n, m), mat(w['down'], m, k))

def full_comparison(w):
    a, b, q, inc, up, down = maps(w)
    zero = (0,) * w['k']
    boundaries = {app(b, z) for z in vecs(w['n'])}
    cycles = [x for x in vecs(w['m']) if app(a, x) == zero]
    assert all(app(a, z) == zero for z in boundaries)
    assert all(app(a, app(inc, y)) == zero and app(q, app(inc, y)) == y for y in vecs(w['h']))
    assert all(app(q, z) == (0,) * w['h'] for z in boundaries)
    for x in vecs(w['m']):
        assert add(app(inc, app(q, x)), app(b, app(up, x)), app(down, app(a, x))) == x
    for x, y in itertools.product(cycles, repeat=2):
        assert (app(q, x) == app(q, y)) == (add(x, y) in boundaries)
    return len(cycles) ** 2

aggregate = json.loads((ROOT / 'AggregateD5Conditional/source.json').read_text())['blocks']
source = json.loads((ROOT / 'AggregateLeibniz3564Conditional/source.json').read_text())['blocks']
assert len(aggregate) == 358
s2 = aggregate['S0:21,147:d2']['wire']
s3 = source['S0:21,147:d3']['wire']
t2 = aggregate['S0:25,150:d2']['wire']
t3 = aggregate['S0:25,150:d3']['wire']
comparisons = sum(full_comparison(w) for w in [s2, s3, t2, t3])
project = lambda w, x: app(maps(w)[2], x)
source_project = lambda x: project(s3, project(s2, x))
target_project = lambda x: project(t3, project(t2, x))
for x in vecs(3):
    assert source_project(x) == (x[1], x[0])
for x in vecs(4):
    assert target_project(x) == (x[3], x[2], x[1])
    cycle = app(maps(t2)[0], x) == (0, 0)
    assert cycle == (x[0] == x[1])
    if cycle:
        previous = (x[0], x[2], x[3])
        assert target_project(x) == previous[::-1]
assert [source_project(x) for x in [(0, 1, 0), (1, 0, 0), (0, 0, 1)]] == [(1, 0), (0, 1), (0, 0)]
assert [target_project(x) for x in [(0, 0, 0, 1), (0, 0, 1, 0)]] == [(1, 0, 0), (0, 1, 0)]
assert any(u['row'][0] == 3564 and u['kind'] == 'conditional_h1_x493_leibniz'
           for u in source['S0:21,147:d3']['uses'])

# Enumerate actual finite obstruction equations directly, without the source review.
product_matrix = [[1, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 1]]
map_matrix = [[0, 0, 1, 0], [1, 0, 0, 0]]
product_boundaries = {(0, a, b) for a, b in vecs(2)}
map_boundaries = {(0, 0), (1, 1)}
allowed = [x for x in vecs(4) if x[0] == x[1]
           and add((1, 0, 0), app(product_matrix, x)) in product_boundaries
           and app(map_matrix, x) in map_boundaries]
assert allowed == [(1, 1, 1, 0), (1, 1, 1, 1)]
assert [target_project(x) for x in allowed] == [(0, 1, 1), (1, 1, 1)]

branches = json.loads((ROOT / 'Stem125E5Search/branches.json').read_text())['branches']['twentyfive']
observed = set()
constrained, selected, counters = [], [], []
for i, branch in enumerate(branches):
    w = branch['wire']
    a, b, *_ = maps(w)
    assert app(b, (1, 0)) == (1, 0, 0)
    comparisons += full_comparison(w)
    observed.add((tuple(a[0]), tuple(tuple(row) for row in b)))
    if app(b, (0, 1))[1:] == (1, 1):
        constrained.append(i)
        if app(a, (0, 1, 0)) == (0,):
            assert a == [[0, 0, 0]] and w['h'] == 1
            selected.append(i)
        else:
            assert a == [[0, 1, 1]] and w['h'] == 0
            counters.append(i)
expected = set()
full_matrix_pairs = 0
for av in vecs(3):
    a = [av]
    for flat in vecs(6):
        full_matrix_pairs += 1
        b = mat(flat, 3, 2)
        if app(b, (1, 0)) == (1, 0, 0) and all(app(a, app(b, y)) == (0,) for y in vecs(2)):
            expected.add((av, tuple(tuple(row) for row in b)))
assert observed == expected and len(observed) == 20 and full_matrix_pairs == 512
assert constrained == [8, 9, 18, 19] and selected == [8, 18] and counters == [9, 19]

producer = ROOT / 'UniqueHomologyCertificates/unique-export'
batch = subprocess.run([str(producer), '--batch', str(HERE / 'requests.txt')], capture_output=True, check=True).stdout
assert batch == (HERE / 'certificates.jsonl').read_bytes()
for bit, i in enumerate(selected):
    request = (HERE / 'requests.txt').read_text().splitlines()[bit]
    produced = subprocess.run([str(producer), *request.split()], capture_output=True, check=True).stdout
    assert produced == (HERE / f'certificate{bit}.json').read_bytes()
    wire = json.loads(produced)
    assert wire['named'] == [False, True, False]
    assert wire['comparison'] == branches[i]['wire']
    w = wire['comparison']
    a, b, *_ = maps(w)
    boundaries = {app(b, z) for z in vecs(2)}
    named = (0, 1, 0)
    assert named not in boundaries and app(a, named) == (0,)
    assert all(x in boundaries or add(x, named) in boundaries for x in vecs(3))
    comparisons += full_comparison(w)

build = []
report_count = 0
reviewed_modules = ['Coordinates', 'Conclusion', 'Obstructions', 'Imported']
for row in json.loads((HERE / 'compile-audit.json').read_text()):
    if row['module'] not in reviewed_modules:
        continue
    assert row['exit_code'] == 0
    for name, digest in row['input_sha256'].items():
        assert sha(ROOT / name) == digest
    name = row['module']
    assert sha(HERE / (name + '.log')) == row['log_sha256']
    text = (HERE / (name + '.log')).read_text()
    axioms = re.findall(r'depends on axioms: \[([^]]*)\]', text)
    assert all({v.strip() for v in a.split(',')} <= {'propext', 'Classical.choice', 'Quot.sound'} for a in axioms)
    report_count += len(axioms) + text.count('does not depend on any axioms')
    build.append(dict(module=name, exit_code=0, source_log_match=True,
        current_olean_matches_direct=sha(ROOT / '.lake/build/lib/lean/Fact764ConstrainedE5' / (name + '.olean')) == row['olean_sha256']))
assert len(build) == 4 and report_count == 18
files = [*[HERE / (m + '.lean') for m in reviewed_modules], HERE / 'README.md', HERE / 'certificate0.json',
    HERE / 'certificate1.json', HERE / 'requests.txt', HERE / 'certificates.jsonl',
    ROOT / 'AggregateD5Conditional/source.json', ROOT / 'AggregateLeibniz3564Conditional/source.json',
    ROOT / 'Stem125E5Search/branches.json', ROOT / 'BranchReplayCertificates/ProductRefutation.lean',
    ROOT / 'BranchReplayCertificates/MapRefutation.lean',
    ROOT / 'BranchReplayCertificates/ProductBasisSemantics.lean',
    ROOT / 'BranchReplayCertificates/MapBasisSemantics.lean', db]
result = dict(status='independent_review_passed', findings=[], reviewer='/root/certificate_pipeline_next',
    raw=raw, all_source_vectors=8, all_target_vectors=16, obstruction_candidates=allowed,
    all_full_matrix_pairs=full_matrix_pairs, exact_full_complex_count=20,
    constrained_indices=constrained, unique_indices=selected, noncycle_counterexamples=counters,
    all_cycle_pairs=comparisons, byte_identical_producer_runs=3,
    proof_review=['ProductMeaning derives residual zero from an actual candidate differential, cycle factor, known product differential and Leibniz equation; all four product columns and their relations are interpreted.',
      'MapMeaning derives mapped residual zero from an actual ring map, candidate differential, naturality, mapped source zero and target differential zero; checked substitution columns require actual monomial meanings.',
      'Both obstruction converses require explicit zero-reflection into finite earlier-boundary images. Raw logs and status tags cannot supply it.',
      'Both full source columns are fixed. Full outgoing zero, or complex law plus a proved named cycle, is required to conclude unique nonzero homology.',
      'Uniqueness quantifies all cycles and all linear combinations via the full homology comparison theorem.',
      'The imported tactic certificate is indexed by the requested outgoing/incoming matrices and named vector.'],
    build=dict(modules=build, standard_or_no_axiom_reports=report_count),
    inputs_sha256={str(f.relative_to(ROOT)):sha(f) for f in files},
    remaining=['Source E4 quotient depends on the conditional row3564 Leibniz input.',
      'Basis3994 is the raw named monomial; staircase3994 is a different representative.',
      'Unknown source row3750 d4 and target rows3993/3994 higher information remain unknown.',
      'Actual graded Adams realization, basis completeness, zero-reflection and differential premises are not constructed.',
      'This local conditional E5 uniqueness result does not prove full stem125 E5 uniqueness or later permanence.'])
(HERE / 'independent-review.json').write_text(json.dumps(result, indent=2) + '\n')
print(f'4 source comparisons +20 branches +2 exports; {comparisons} cycle pairs; {report_count} reports; no findings')
