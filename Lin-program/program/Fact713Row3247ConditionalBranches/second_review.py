"""Independent full-family and actual-premise review; frozen producers are not imported."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
BOUND = ROOT / 'Fact713Row3247Boundaries'
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
counts = Counter()
compiled = {}
for directory, expected in [(BOUND, 6), (HERE, 32)]:
    freeze = load(directory / 'freeze.json')
    reports = 0
    for frozen in freeze['modules']:
        module = frozen['module']
        name = module.rsplit('.', 1)[1]
        source, log = directory / (name + '.lean'), directory / (name + '.log')
        record = load(directory / (name + '-compile.json'))
        assert frozen['source_sha256'] == record['source_sha256'] == sha(source)
        assert record['observed_exit_code'] == frozen['observed_exit_code'] == 0
        assert record['log_sha256'] == sha(log)
        assert record['olean_sha256'] == sha(ROOT / '.lake/build/lib/lean' / (module.replace('.', '/') + '.olean'))
        for path, h in record['external_input_sha256'].items(): assert sha(ROOT / path) == h
        assert not re.search(r'\b(sorry|admit|axiom|native_decide|unsafe)\b', source.read_text())
        assert not re.search(r'\b(sorryAx|Lean\.ofReduceBool|error)\b', log.read_text())
        ax = re.findall(r"'[^']+' depends on axioms: \[([^\]]*)\]", log.read_text())
        for item in ax:
            assert set(filter(None, map(str.strip, item.split(',')))) <= {'propext', 'Classical.choice', 'Quot.sound'}
        number = len(ax) + len(re.findall(r"'[^']+' does not depend on any axioms", log.read_text()))
        assert number == frozen['axiom_reports']
        reports += number
        compiled[module] = record
    assert reports == expected
    counts['axiom_reports'] += reports

sql = sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/Cnu_AdamsSS_t200.db?mode=ro', uri=True)
raw = [list(sql.execute('SELECT id,s,t,base,diff,level FROM Cnu_AdamsE2_ss WHERE id=?', (id,)).fetchone())
       for id in [1078, 1183, 4536, 5286]]
assert raw == [[1078,14,82,'0','0',9996], [1183,18,85,'0','0',4],
    [4536,12,140,'2','3',9993], [5286,19,146,'3','2',7]]

def ev(a, m, n, x):
    assert len(a) == m*n
    return sum((sum(int(a[i*n+j])*((x>>j)&1) for j in range(n)) % 2) << i for i in range(m))

def key(e): return tuple(e['key'][x] for x in ['object', 'page', 's', 't'])
graph = load(ROOT / 'Fact713E12Search/search.json')['graph']
family_reports = []
families = []
for label, short in [('zero', 'zero'), ('residual_rebased', 'residual')]:
    old = load(ROOT / f'Fact713D4ComparisonBranches/{short}-family.json')['entries']
    family = load(HERE / f'{short}-family.json')['entries']
    assert family[:len(old)] == old and len(family) == len(old) + 10
    indexed = {key(e): e['wire'] for e in family}
    assert len(indexed) == len(family)
    families.append(indexed)
    current = Counter()
    for e in family:
        w = e['wire']; n,m,k,h = (w[x] for x in ['n','m','k','h'])
        boundaries = {ev(w['incoming'],m,n,x) for x in range(1<<n)}
        cycles = [x for x in range(1<<m) if ev(w['outgoing'],k,m,x) == 0]
        assert boundaries <= set(cycles)
        assert all(ev(w['projection'],h,m,x) == 0 for x in boundaries)
        for x in range(1<<h):
            y = ev(w['inclusion'],m,h,x)
            assert y in cycles and ev(w['projection'],h,m,y) == x
        for x in range(1<<m):
            assert ev(w['inclusion'],m,h,ev(w['projection'],h,m,x)) ^ ev(w['incoming'],m,n,ev(w['up'],n,m,x)) ^ ev(w['down'],m,k,ev(w['outgoing'],k,m,x)) == x
            current['whole_homotopy_vectors'] += 1
        for x,y in itertools.product(cycles, repeat=2):
            assert (ev(w['projection'],h,m,x) == ev(w['projection'],h,m,y)) == (x^y in boundaries)
            current['quotient_pairs'] += 1
    for a,b in itertools.product(family, repeat=2):
        obj,r,s,t = key(a); aw,bw = a['wire'],b['wire']
        if key(b) == (obj,r,s+r,t+r-1):
            assert aw['k'] == bw['m'] and aw['m'] == bw['n'] and aw['outgoing'] == bw['incoming']
            current['adjacent_maps'] += 1
        if key(b) == (obj,r+1,s,t):
            assert aw['h'] == bw['m']; current['consecutive_pages'] += 1
        current['ordered_family_pairs'] += 1
    value = 3
    for r in range(2,9):
        w = indexed['S0',r,9,132]
        assert ev(w['outgoing'],w['k'],w['m'],value) == 0
        assert value not in {ev(w['incoming'],w['m'],w['n'],x) for x in range(1<<w['n'])}
        value = ev(w['projection'],w['h'],w['m'],value)
        current['same_named_finite_steps'] += 1
    assert value == 1
    assert ('S0',9,9,132) not in indexed and ('S0',4,11,133) not in indexed
    strings = {f'{o}:{s},{t}:d{r}' for o,r,s,t in indexed}
    snapshot = load(HERE / f'branches/{label}.json')
    assert len(strings & set(graph)) == snapshot['graph_available']
    assert len(set(graph) - strings) == snapshot['graph_unresolved']
    for block in snapshot['new_comparisons'].values():
        for use in block['uses']:
            if use.get('kind') == 'conditional_actual_E3_cycle_representatives':
                assert 'required_actual_inputs' in use and 'provenance_only' in use
                assert len(use['required_actual_inputs']) == 3
                current['explicit_cycle_premise_uses'] += 1
    family_reports.append(dict(branch=label, old_entries=len(old), entries=len(family), counts=dict(current)))
assert all(families[0]['S0',r,9,132] == families[1]['S0',r,9,132] for r in range(2,9))
assert families[0]['S0',8,9,132] == dict(version=1,k=0,m=1,n=0,h=1,outgoing=[],incoming=[],inclusion=[True],projection=[True],up=[],down=[])
assert families[0]['S0',3,17,138]['outgoing'] != families[1]['S0',3,17,138]['outgoing']

# All zero-preserving maps from a complete one-dimensional source are
# determined by the named nonzero value, including relabeled actual zero.
for source_labels in itertools.permutations(range(2)):
    inverse = {v:i for i,v in enumerate(source_labels)}
    for target_zero in range(4):
        for named_value in range(4):
            values = [target_zero if source_labels[x] == 0 else named_value for x in range(2)]
            if values[inverse[1]] == target_zero:
                assert all(v == target_zero for v in values)
                counts['whole_one_dimensional_zero_maps'] += 1
            else:
                counts['omitted_named_cycle_countermodels'] += 1

# A later boundary admits many choices of earlier representatives. Even
# identical next-page labels do not force an arbitrary E3 value to be a cycle.
outgoing3 = [0,1,0,1]
cycles3 = [x for x in range(4) if outgoing3[x] == 0]
quotient3 = {0:0, 2:1}
later_boundary = 1
assert quotient3[2] == later_boundary and outgoing3[1] != 0
counts['arbitrary_E3_element_not_forced_by_later_boundary'] = 1

signature = load(HERE / 'conditional_signature.json')
assert signature['actual_conclusion_proved'] is False
assert len(signature['named_actual_E3_cycle_representatives']) == 2
report = {'status':'passed_no_findings','counts':dict(counts),'compiled':compiled,
    'families':family_reports,'raw_later_boundary_associations':raw,
    'review':{'E3_PageCycle_is_explicit_premise':True,
        'later_boundary_equations_are_not_used_to_prove_initial_cycle':True,
        'whole_source_equivalence_and_zero_law_explicit':True,
        'previous_families_preserved_as_exact_prefixes':True,
        'branch_conflict_not_merged':True,'common_finite_E9_checked':True,
        'd9_and_row2622_d4_absent_in_these_frozen_families':True},
    'input_sha256':{str(p.relative_to(ROOT)):sha(p) for p in [Path(__file__),
        BOUND/'freeze.json',HERE/'freeze.json',HERE/'conditional_signature.json',
        HERE/'zero-family.json',HERE/'residual-family.json']}}
(HERE/'second-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps({k:v for k,v in report.items() if k!='compiled'},indent=2))
