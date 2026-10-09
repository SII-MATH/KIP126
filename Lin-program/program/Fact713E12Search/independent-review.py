"""Independent full DAG, raw SQL, finite quotients, successor and NULL review."""
import collections
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
base = json.loads((HERE / 'search.json').read_text())
overlay = json.loads((HERE / 'successor-search.json').read_text())
old = json.loads((ROOT / 'Fact713TrajectoryAudit/dag.json').read_text())
graph = {}
pending = [(9, 132, r) for r in range(2, 12)]
while pending:
    s, t, r = pending.pop()
    key = f'S0:{s},{t}:d{r}'
    if key in graph:
        continue
    predecessors = [] if r == 2 else [(s-r, t-r+1, r-1), (s, t, r-1), (s+r, t+r-1, r-1)]
    graph[key] = dict(center=[s, t], page=r,
        predecessors=[f'S0:{a},{b}:d{q}' for a, b, q in predecessors])
    pending.extend(predecessors)
assert graph == base['graph'] and len(graph) == 1420
assert all(overlay['comparisons'][key] == value for key, value in base['comparisons'].items())
assert len(base['comparisons']) == 1211 and len(overlay['comparisons']) == 1234
assert len(base['frontier']) == 20 and len(overlay['frontier']) == 17
assert overlay['baseline_search_sha256'] == sha(HERE / 'search.json')
db = ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
sql = sqlite3.connect(f'file:{db}?mode=ro', uri=True)
assert sha(db) == old['summary']['database_sha256']
raw = {}
for block in old['blocks']:
    s, t = block['center']
    r = block['page']
    key = f'S0:{s},{t}:d{r}'
    assert key in graph
    assert graph[key]['predecessors'] == ['S0:' + p.replace(',d', ':d') for p in block['predecessors']]
    for space in block['spaces']:
        degree = tuple(space['degree'])
        if degree not in raw:
            raw[degree] = dict(e2=[list(x) for x in sql.execute(
                'SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', degree)],
                staircase=[list(x) for x in sql.execute(
                'SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id', degree)])
        assert space['e2'] == raw[degree]['e2'] and space['staircase'] == raw[degree]['staircase']
        if r > 2:
            selected = [x for x in raw[degree]['staircase'] if r <= x[3] < 5000 or 5000 <= x[3] <= 10000-r]
            assert space['selected'] == selected and space['dimension'] == len(selected)
        else:
            assert space['dimension'] == len(raw[degree]['e2'])
assert len(raw) == 681

def columns(flat, m, n):
    assert len(flat) == m*n
    return [sum(int(flat[i*n+j]) << i for i in range(m)) for j in range(n)]

def apply(matrix, x):
    value = 0
    for j, column in enumerate(matrix):
        if x & (1 << j):
            value ^= column
    return value

def matrices(w):
    return [columns(w[name], m, n) for name, m, n in [
        ('outgoing', w['k'], w['m']), ('incoming', w['m'], w['n']),
        ('projection', w['h'], w['m']), ('inclusion', w['m'], w['h']),
        ('up', w['n'], w['m']), ('down', w['m'], w['k'])]]

def sparse(text):
    assert text is not None
    ids = [] if not text else [int(x) for x in text.split(',')]
    assert len(set(ids)) == len(ids)
    return sum(1 << i for i in ids)

cache = overlay['comparisons']
def project(degree, page, value):
    s, t = degree
    for r in range(2, page):
        w = cache[f'S0:{s},{t}:d{r}']['wire']
        a, _, q, *_ = matrices(w)
        assert value < (1 << w['m']) and apply(a, value) == 0
        value = apply(q, value)
    return value

full_vectors = cycle_pairs = adjacent = d2_columns = higher_columns = 0
conditional_counts = collections.Counter()
for key, block in cache.items():
    w = block['wire']
    a, b, q, inc, up, down = matrices(w)
    boundaries = {apply(b, x) for x in range(1 << w['n'])}
    cycles = [x for x in range(1 << w['m']) if apply(a, x) == 0]
    assert all(apply(a, x) == apply(q, x) == 0 for x in boundaries)
    assert all(apply(a, apply(inc, x)) == 0 and apply(q, apply(inc, x)) == x
               for x in range(1 << w['h']))
    for x in range(1 << w['m']):
        assert apply(inc, apply(q, x)) ^ apply(b, apply(up, x)) ^ apply(down, apply(a, x)) == x
        full_vectors += 1
    for x, y in itertools.product(cycles, repeat=2):
        assert (apply(q, x) == apply(q, y)) == (x ^ y in boundaries)
        cycle_pairs += 1
    s, t = block['center']
    r = block['page']
    for predecessor in graph[key]['predecessors']:
        assert predecessor in cache
    if r > 2:
        assert [cache[p]['wire']['h'] for p in graph[key]['predecessors']] == [w['n'], w['m'], w['k']]
    other = f'S0:{s-r},{t-r+1}:d{r}'
    if other in cache:
        assert cache[other]['wire']['outgoing'] == w['incoming']
        adjacent += 1
    for source, target_degree, actual in [((s,t),(s+r,t+r-1),a), ((s-r,t-r+1),(s,t),b)]:
        if r == 2:
            assert actual == [sparse(row[2]) for row in raw[source]['e2']]
            d2_columns += len(actual)
        else:
            selected = [row for row in raw[source]['staircase'] if r <= row[3] < 5000 or 5000 <= row[3] <= 10000-r]
            assert len(selected) == len(actual)
            for row, value in zip(selected, actual):
                matches = [u for u in block['uses'] if u['source'] == list(source) and u['row'] == row]
                assert len(matches) == 1
                use = matches[0]
                kind = use['kind']
                if kind == 'stored_event':
                    assert row[3] == 10000-r and value == project(target_degree, r, sparse(row[2]))
                elif kind == 'stored_zero_prefix_or_boundary':
                    assert 2 <= row[3] < 5000 or 9000 < row[3] < 10000-r
                    assert value == 0
                elif kind == 'checked_zero_codomain':
                    assert cache[use['target_predecessor']]['wire']['h'] == 0 and value == 0
                else:
                    assert kind.startswith('conditional_') and value == 0
                    conditional_counts[kind] += 1
                higher_columns += 1
assert cycle_pairs == 9349 and adjacent == 933

nulls = [row for row in old['differential_rows'] if row['row'][2] is None]
obligations = json.loads((HERE / 'NULL-obligations.json').read_text())['rows']
assert len(nulls) == len(obligations) == 82
assert {x['key'] for x in nulls} == {x['key'] for x in obligations}
assert sum(x['classification'] == 'stored_earlier_zero_prefix' for x in nulls) == 25
named = [x for x in nulls if x['source'] == [9,132]]
assert [x['page'] for x in named] == list(range(3,12))
assert all(x['row'] == [2569,'0,1',None,9988] for x in named)

successors = []
for row, source, r, target_degree in [(3242,(20,141),4,(24,144)), (3551,(24,145),3,(27,147))]:
    stored = list(sql.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?', (row,)).fetchone())
    assert stored == [row,*source,'0','1' if row == 3242 else '0,2',10000-r]
    assert project(target_degree, r, sparse(stored[4])) == 1
    w = cache[f'S0:{source[0]},{source[1]}:d{r}']['wire']
    assert (w['m'],w['k'],w['outgoing'],w['incoming']) == (1,2,[True,False],[False])
    assert [apply(matrices(w)[0], x) for x in range(2)] == [0,1]
    successors.append(stored)
sql.close()

# Enumerate the frontier's supplied complete column sets afresh, imposing
# only d*d=0. Comparison to next-page dimensions is deliberately absent.
frontier = json.loads((HERE / 'frontier.json').read_text())
tested = accepted = 0
for block in frontier['blocks']:
    dims = block['dimensions']
    expected = set()
    for chosen in itertools.product(*(c['possible_coordinates'] for c in block['conditions'])):
        tested += 1
        incoming = [sum(int(v) << i for i,v in enumerate(x)) for x in chosen[:dims['n']]]
        outgoing = [sum(int(v) << i for i,v in enumerate(x)) for x in chosen[dims['n']:]]
        if all(apply(outgoing, x) == 0 for x in incoming):
            expected.add((tuple(incoming),tuple(outgoing)))
            accepted += 1
    recorded = {(tuple(columns(c['incoming'],dims['m'],dims['n'])),
                 tuple(columns(c['outgoing'],dims['k'],dims['m']))) for c in block['complex_maps']}
    assert expected == recorded
assert (tested,accepted) == (130,85)

manifest = json.loads((HERE / 'generated-manifest.json').read_text())
extra = json.loads((HERE / 'successor-manifest.json').read_text())
checked = set(manifest['keys']) | set(extra['keys'])
assert len(manifest['keys']) == 78 and len(extra['keys']) == 7 and len(checked) == 85
assert len(manifest['zero_target_keys']) == 13
for key in checked:
    name = 'b_' + key.replace(':','_').replace(',','_').replace('-','neg')
    text = (HERE / 'wires' / (name + '.json')).read_text()
    wire = json.loads(text)
    assert wire == cache[key]['wire'] and json.dumps(wire,separators=(',',':')) == text.strip()
    assert set(graph[key]['predecessors']) <= checked
for key in manifest['zero_target_keys']:
    assert cache[key]['wire']['h'] == 0
assert project((9,132),3,3) == 1 and project((9,132),4,3) == 1

records = json.loads((HERE / 'compile-audit.json').read_text()) + json.loads((HERE / 'successor-compile-audit.json').read_text())
build = []
reports = 0
for row in records:
    assert row['exit_code'] == 0
    for path, expected in row['input_sha256'].items():
        assert sha(ROOT / path) == expected, path
    name = row['module']
    assert sha(HERE / (name + '.log')) == row['log_sha256']
    log = (HERE / (name + '.log')).read_text()
    dependencies = re.findall(r'depends on axioms: \[([^]]*)\]', log)
    assert all({x.strip() for x in group.split(',')} <= {'propext','Classical.choice','Quot.sound'} for group in dependencies)
    count = len(dependencies) + log.count('does not depend on any axioms')
    reports += count
    build.append(dict(module=name, observed_exit_code=0, standard_or_no_axiom_reports=count))
assert reports == 24
files = [HERE / (row['module'] + '.lean') for row in records] + [HERE / 'README.md',
    HERE / 'search.json',HERE / 'successor-search.json',HERE / 'NULL-obligations.json',
    HERE / 'frontier.json',HERE / 'generated-manifest.json',HERE / 'successor-manifest.json',
    ROOT / 'Fact713TrajectoryAudit/dag.json']
result = dict(status='independent_review_passed',findings=[],reviewer='/root/map_search_next',
    reconstruction=dict(dag_nodes=1420,raw_SQL_degrees=681,baseline_comparisons=1211,
        conditional_overlay_comparisons=1234,remaining_blocked=186,
        full_input_vectors=full_vectors,cycle_pairs=cycle_pairs,shared_differential_maps=adjacent,
        raw_d2_columns=d2_columns,higher_columns=higher_columns,
        conditional_use_counts=dict(conditional_counts),Lean_subset=85,zero_quotients=13),
    frontier=dict(local_assignments=tested,local_complexes=accepted,globally_coherent_family_proved=False),
    unknowns=dict(raw_NULL_row_pages=82,stored_earlier_zero_NULL_pages=25,
        named_NULL_pages=list(range(3,12)),named_actual_cycle_provenance_proved=False),
    successors=dict(raw_rows=successors,full_projected_columns=[[True,False],[True,False]],
        actual_inputs=['Complete actual successor equation','Faithful middle coordinates',
          'Zero coordinate laws','Actual differential square zero']),
    semantics=['Finite E4 prefix uses conditional named row2569 zero; no independent actual E4 survival proof.',
        'All 13 zero theorems concern full finite quotients; actual application needs full quotient meaning.',
        'Successor injectivity is proved for the complete 2-by-1 map; actual square-zero forces the full incoming map zero.',
        'No desired-zero premise is used in successor proofs.',
        'Row3386 conditionalzero does not resolve its whole comparison, whose incoming row3247 remains unknown.',
        '85 Lean finite comparisons are distinguished from the 1234 executable-audit comparisons.'],
    build_evidence=build,
    inputs_sha256={str(p.relative_to(ROOT)):sha(p) for p in files},
    not_claimed=['Actual E12 survival','Independent proofs of the named nine zero-prefix values',
        'A globally compatible frontier assignment','Actual topology/Ext/page meanings'])
(HERE / 'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(f'Independent review passed: 1420 DAG nodes/681 SQL degrees, 1234 comparisons/{cycle_pairs} '
      f'cycle pairs, {d2_columns} d2/{higher_columns} higher columns, 82 NULLs, 85 Lean wires/24 reports')
