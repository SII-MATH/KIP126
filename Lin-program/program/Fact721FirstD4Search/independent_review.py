"""Read-only review of raw bases, complete quotients and actual E5 transport.

Only independent-review.json is written. No producer or Lean build is run.
Integer bit vectors provide an implementation separate from the exporters.
"""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
counts = Counter()
frozen = load(HERE / 'frozen-source.json')
for name, digest in frozen['files'].items():
    assert sha(ROOT / name) == digest, name
proofs = {}
for record in frozen['modules']:
    stem = record['module'].split('.')[-1]
    src, log = HERE / (stem + '.lean'), HERE / record['log']
    assert sha(src) == record['source_sha256']
    assert sha(log) == record['log_sha256'] and record['observed_exit_code'] == 0
    assert not re.search(r'\b(sorry|axiom|native_decide|unsafe)\b', src.read_text())
    assert not re.search(r'\b(sorryAx|Lean\.ofReduceBool|error)\b', log.read_text())
    reports = re.findall(r'depends on axioms: \[([^]]*)\]', log.read_text())
    reports += [''] * len(re.findall(r'does not depend on any axioms', log.read_text()))
    assert len(reports) == record['axiom_reports']
    for report in reports:
        assert set(filter(None, map(str.strip, report.split(',')))) <= {
            'propext', 'Classical.choice', 'Quot.sound'}
    for path, digest in record['external_input_sha256'].items():
        assert sha(ROOT / path) == digest
    proofs[stem] = dict(source_sha256=sha(src), log_sha256=sha(log),
                       observed_exit_code=0, axiom_reports=len(reports))
assert len(proofs) == 8 and sum(p['axiom_reports'] for p in proofs.values()) == 55


def cols(bits, m, n):
    assert len(bits) == m * n
    return tuple(sum(int(bits[i*n+j]) << i for i in range(m)) for j in range(n))


def ev(matrix, vector):
    result = 0
    for i, column in enumerate(matrix):
        if vector & (1 << i):
            result ^= column
    return result


def decode(w):
    shapes = dict(outgoing=(w['k'], w['m']), incoming=(w['m'], w['n']),
                  inclusion=(w['m'], w['h']), projection=(w['h'], w['m']),
                  up=(w['n'], w['m']), down=(w['m'], w['k']))
    return {key: cols(w[key], *shape) for key, shape in shapes.items()}


def quotient(w, label):
    a = decode(w)
    incoming = {ev(a['incoming'], x) for x in range(1 << w['n'])}
    cycles = {x for x in range(1 << w['m']) if ev(a['outgoing'], x) == 0}
    assert incoming <= cycles
    for x in range(1 << w['m']):
        assert (ev(a['inclusion'], ev(a['projection'], x)) ^
                ev(a['incoming'], ev(a['up'], x)) ^
                ev(a['down'], ev(a['outgoing'], x))) == x
        counts[label + '_homotopy_vectors'] += 1
    for x in range(1 << w['h']):
        assert ev(a['inclusion'], x) in cycles
        assert ev(a['projection'], ev(a['inclusion'], x)) == x
    assert {ev(a['projection'], x) for x in cycles} == set(range(1 << w['h']))
    for x, y in itertools.product(cycles, repeat=2):
        assert ((x ^ y) in incoming) == (ev(a['projection'], x) == ev(a['projection'], y))
        counts[label + '_quotient_pairs'] += 1
    counts[label + '_complexes'] += 1
    return a


def parity(items):
    return {x for x, n in Counter(items).items() if n % 2}


def coefficient(raw):
    xs = [] if raw == '' else list(map(int, raw.split(',')))
    assert len(xs) % 2 == 0 and all(x >= 0 for x in xs)
    return tuple(sorted(g for g, e in zip(xs[::2], xs[1::2]) for _ in range(e)))


def module_monomial(raw):
    parts = raw.split(',')
    return coefficient(','.join(parts[:-1])), int(parts[-1])


def expression(polynomials):
    return parity((tuple(monomial), g) for g, p in enumerate(polynomials) for monomial in p)


source = load(HERE / 'source.json')
databases = {name: ROOT / 'upstream/kervaire-49' / f'{name}_AdamsSS_t{limit}.db'
             for name, limit in [('S0', 261), ('C2h6', 200)]}
db = {name: sqlite3.connect(f'file:{path}?mode=ro', uri=True) for name, path in databases.items()}
for path in databases.values():
    assert sha(path) == source['sources'][path.name]
meta = {name: dict(c.execute('SELECT name,value FROM version')) for name, c in db.items()}
assert source['source_metadata'] == meta['S0'] and source['target_metadata'] == meta['C2h6']
assert source['raw_row'] == list(db['S0'].execute(
    'SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2622').fetchone())
assert source['raw_row'] == [2622, 11, 133, '1', None, 9000]
config = load(ROOT / 'upstream/category-inventory.json')['records']
assert [x['source'] for x in config if x['section'] == 'maps_v2' and
        x['source']['name'] == 'S0__C2h6'] == [
            {'factor': [0, 0, 0], 'from': 'S0', 'to': 'C2h6', 'name': 'S0__C2h6'}]
assert source['factor'] == {'id': 0, 'mon': '0', 'degree': [0, 0]}
ring_degrees = {i: (s, t) for i, s, t in db['S0'].execute('SELECT id,s,t FROM S0_AdamsE2_generators')}
module_degrees = {i: (s, t) for i, s, t in db['C2h6'].execute('SELECT id,s,t FROM C2h6_AdamsE2_generators')}


def degree(monomial):
    co, g = monomial
    return tuple(sum(ring_degrees[x][i] for x in co) + module_degrees[g][i] for i in range(2))


matrices = {}
for record in source['matrices']:
    s, t = record['source_degree']
    w = record['wire']['algebra']
    assert record['wire'] == load(HERE / f'wire/s{s}t{t}.json')
    assert record['target_degree'] == [s, t]
    assert [record['wire'][key] for key in ['filtration', 'suspension', 'sourceS', 'sourceT', 'targetS', 'targetT']] == [0, 0, s, t, s, t]
    assert [w[key] for key in ['sourceS', 'sourceT', 'targetS', 'targetT']] == [0, 0, 0, 0]
    assert t <= min(meta[name]['t_max'] for name in db)
    bases = {name: [list(r) for r in c.execute(
        f'SELECT id,mon FROM {name}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', (s, t))]
        for name, c in db.items()}
    assert bases['S0'] == record['source'] and bases['C2h6'] == record['target']
    assert (len(bases['S0']), len(bases['C2h6'])) == (w['cols'], w['rows'])
    assert [expression(p) for p in w['source']] == [{(coefficient(raw), 0)} for _, raw in bases['S0']]
    assert [expression(p) for p in w['target']] == [{module_monomial(raw)} for _, raw in bases['C2h6']]
    assert [expression(p) for p in w['images']] == [{((), 0)}]
    assert all(degree(x) == (s, t) for p in w['source'] + w['target'] for x in expression(p))
    relations = []
    for encoded, origin in zip(w['relations'], record['relation_sources'], strict=True):
        name = 'C2h6' if origin['kind'] == 'module' else 'S0'
        raw, rs, rt = db[name].execute(f'SELECT rel,s,t FROM {origin["table"]} WHERE rowid=?', (origin['rowid'],)).fetchone()
        assert origin['raw'] == raw
        if origin['kind'] == 'module':
            relation = parity(module_monomial(x) for x in raw.split(';'))
            assert origin['degree'] == [rs, rt]
        else:
            assert origin['kind'] == 'ring_lift'
            g = origin['module_generator']
            relation = parity((coefficient(x), g) for x in raw.split(';'))
            assert origin['degree'] == [rs + module_degrees[g][0], rt + module_degrees[g][1]]
        assert relation == expression(encoded)
        assert all(degree(x) == tuple(origin['degree']) for x in relation)
        relations.append(relation)
    for j, ((_, raw), terms) in enumerate(zip(bases['S0'], w['terms'], strict=True)):
        result = {(coefficient(raw), 0)}
        for term in terms:
            relation = relations[term['relation']]
            result ^= parity((tuple(sorted(co + tuple(mult))), g)
                             for co, g in relation for mult in term['multiplier'])
            counts['raw_relation_reductions'] += 1
        expected = {module_monomial(raw) for i, (_, raw) in enumerate(bases['C2h6']) if w['entries'][i*w['cols']+j]}
        assert result == expected
        counts['raw_matrix_columns'] += 1
    matrices[s, t] = cols(w['entries'], w['rows'], w['cols'])
    counts['raw_matrices'] += 1
assert (counts['raw_matrices'], counts['raw_matrix_columns'], counts['raw_relation_reductions']) == (16, 34, 13)

records = load(HERE / 'comparison-source.json')
comparisons = {(r['object'], *r['degree']): r['wire'] for r in records}
comparison_text = (HERE / 'Comparison.lean').read_text()
tags = {(8, 131): 'si', (11, 133): 's', (14, 135): 'so',
        (12, 134): 'ti', (15, 136): 't', (18, 138): 'to'}
fields = ['version', 'k', 'm', 'n', 'h', 'outgoing', 'incoming', 'inclusion', 'projection', 'up', 'down']
for block in records:
    name, (s, t), wire = block['object'], block['degree'], block['wire']
    tag = tags[s, t] + ('S' if name == 'S0' else 'D')
    raw_lean = re.search(r'def ' + tag + r' : WireComparison := \u27e8([^\u27e9]+)\u27e9', comparison_text).group(1)
    assert dict(zip(fields, json.loads('[' + raw_lean + ']'), strict=True)) == wire
    groups = [[dict(id=i, mon=mon, d2=d2) for i, mon, d2 in db[name].execute(
        f'SELECT id,mon,d2 FROM {name}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', st)]
        for st in [(s-2, t-1), (s, t), (s+2, t+1)]]
    assert groups == block['rows'] and list(map(len, groups)) == [wire['n'], wire['m'], wire['k']]
    assert t <= meta[name]['d2_t_max'] and t + 1 <= meta[name]['t_max']
    for field, rows, m, n in [('incoming', groups[0], wire['m'], wire['n']), ('outgoing', groups[1], wire['k'], wire['m'])]:
        expected = []
        for row in rows:
            assert row['d2'] is not None
            indices = [] if row['d2'] == '' else list(map(int, row['d2'].split(',')))
            assert indices == sorted(set(indices)) and all(0 <= i < m for i in indices)
            expected.append(sum(1 << i for i in indices))
        assert cols(wire[field], m, n) == tuple(expected)
    quotient(wire, 'd2')
assert counts['d2_complexes'] == 12

d3_source = load(HERE / 'd3-source.json')
wires = d3_source['wires']
raw_maps = []


def reconstruct(name, s, t):
    S, T = comparisons[name, s, t], comparisons[name, s+3, t+2]
    source_matrix, target_matrix = decode(S), decode(T)
    rows = [list(r) for r in db[name].execute(
        f'SELECT id,base,diff,level FROM {name}_AdamsE2_ss WHERE s=? AND t=? ORDER BY id', (s, t))]
    selected = [r for r in rows if 3 <= r[3] < 5000 or 5000 <= r[3] <= 9997]
    assert len(selected) == S['h']
    domain, image, kinds = [], [], []
    for rid, base, diff, level in selected:
        ids = [] if base == '' else list(map(int, base.split(',')))
        assert ids == sorted(set(ids)) and all(0 <= i < S['m'] for i in ids)
        x = sum(1 << i for i in ids)
        assert ev(source_matrix['outgoing'], x) == 0
        domain.append(ev(source_matrix['projection'], x))
        if level == 9997:
            assert diff is not None
            ids = [] if diff == '' else list(map(int, diff.split(',')))
            assert ids == sorted(set(ids)) and all(0 <= i < T['m'] for i in ids)
            y = sum(1 << i for i in ids)
            assert ev(target_matrix['outgoing'], y) == 0
            image.append(ev(target_matrix['projection'], y))
            kinds.append('recorded_d3_event')
        elif 3 <= level < 5000 or 9000 < level < 9997:
            image.append(0)
            kinds.append('imported_strict_prefix_or_boundary_meaning')
        else:
            assert name == 'S0' and [rid, s, t, base, diff, level] in [
                [2622, 11, 133, '1', None, 9000], [2684, 12, 134, '0', None, 9000]]
            image.append(0)
            kinds.append('explicit_conditional_actual_theorem')
            counts['conditional_unknown_columns'] += 1
    images = {ev(domain, v): ev(image, v) for v in range(1 << S['h'])}
    assert len(images) == 1 << S['h']
    canonical = tuple(images[1 << j] for j in range(S['h']))
    for v in range(1 << S['h']):
        assert ev(canonical, v) == images[v]
        counts['d3_basis_combinations'] += 1
    raw_maps.append(dict(object=name, degree=[s, t], rows=selected, kinds=kinds,
                         staircase_vectors=domain, staircase_images=image, canonical_columns=canonical))
    return canonical


for key, name, s, t in [('sourceS', 'S0', 11, 133), ('sourceD', 'C2h6', 11, 133),
                        ('targetS', 'S0', 15, 136), ('targetD', 'C2h6', 15, 136)]:
    w = wires[key]
    assert w == load(HERE / 'd3wire' / (key + '.json'))
    a = quotient(w, 'd3')
    assert a['outgoing'] == reconstruct(name, s, t)
    assert a['incoming'] == reconstruct(name, s-3, t-2)
assert wires['sourceS']['incoming'] == wires['sourceD']['incoming'] == [True, True]
assert counts['conditional_unknown_columns'] == 2


def induced(S, T, middle, upper, lower, label):
    a, b = decode(S), decode(T)
    for v in range(1 << S['m']):
        assert ev(b['outgoing'], ev(middle, v)) == ev(upper, ev(a['outgoing'], v))
        counts[label + '_square_vectors'] += 1
    for v in range(1 << S['n']):
        assert ev(middle, ev(a['incoming'], v)) == ev(b['incoming'], ev(lower, v))
        counts[label + '_square_vectors'] += 1
    answer = tuple(ev(b['projection'], ev(middle, ev(a['inclusion'], 1 << j))) for j in range(S['h']))
    for x in range(1 << S['m']):
        if ev(a['outgoing'], x) == 0:
            assert ev(b['projection'], ev(middle, x)) == ev(answer, ev(a['projection'], x))
            counts[label + '_quotient_map_vectors'] += 1
    counts[label + '_full_maps'] += 1
    return answer


e3 = {tag: induced(comparisons['S0', s, t], comparisons['C2h6', s, t],
                  matrices[s, t], matrices[s+2, t+1], matrices[s-2, t-1], 'd2')
      for (s, t), tag in tags.items()}
e4 = {key: induced(wires[key+'S'], wires[key+'D'], e3[m], e3[u], e3[l], 'd3')
      for key, m, u, l in [('source', 's', 'so', 'si'), ('target', 't', 'to', 'ti')]}
assert e4 == {'source': (0,), 'target': (1, 2)}

# Relabel the complete current and next carriers independently. Construct
# each next map through actual quotient representatives, then recover its
# coordinates. No next-page coordinate equation is taken as an input.
perms = {d: list(itertools.permutations(range(1 << d))) for d in range(3)}
for key, middle in [('source', e3['s']), ('target', e3['t'])]:
    S, T = wires[key+'S'], wires[key+'D']
    a, b = decode(S), decode(T)
    for cs, ct, ns, nt in itertools.product(perms[S['m']], perms[T['m']], perms[S['h']], perms[T['h']]):
        is_, it, ins, int_ = ({v: i for i, v in enumerate(p)} for p in [cs, ct, ns, nt])
        next_map = {}
        for x in range(1 << S['m']):
            if ev(a['outgoing'], cs[x]):
                continue
            y = it[ev(middle, cs[x])]
            source_quotient = ins[ev(a['projection'], cs[x])]
            target_quotient = int_[ev(b['projection'], ct[y])]
            assert source_quotient not in next_map or next_map[source_quotient] == target_quotient
            next_map[source_quotient] = target_quotient
            counts['actual_descent_quotient_representatives'] += 1
        assert len(next_map) == 1 << S['h']
        for x, y in next_map.items():
            assert nt[y] == ev(e4[key], ns[x])
            assert (y == int_[0]) if key == 'source' else ((y == int_[0]) == (x == ins[0]))
            counts['actual_descent_all_elements'] += 1
        counts['actual_descent_' + key + '_models'] += 1

for s, t, d in itertools.product(perms[1], perms[2], perms[2]):
    si, ti, di = ({v: i for i, v in enumerate(p)} for p in [s, t, d])
    lower = {x: 0 for x in range(2)}
    upper = {x: di[t[x]] for x in range(4)}
    for value in range(4):
        differential = {si[0]: ti[0], si[1]: value}
        natural = all(di[0] == upper[differential[x]] for x in range(2))
        assert natural == all(y == ti[0] for y in differential.values())
        counts['accepted_whole_d4_maps' if natural else 'rejected_nonzero_d4_maps'] += 1
    counts['whole_d4_relabelings'] += 1

batch6 = load(ROOT / 'Fact713ComparisonBatches/Batch06.json')['entries']
assert batch6[18]['key'] == dict(object='S0', page=2, s=11, t=133)
trace_wires = {2: batch6[18]['wire'],
               3: load(ROOT / 'Fact713DC2h6Source/wires/b_S0_11_133_d3.json'),
               4: dict(version=1, k=2, m=1, n=0, h=1, outgoing=[False, False],
                       incoming=[], inclusion=[True], projection=[True], up=[], down=[False, False])}
for w in trace_wires.values():
    quotient(w, 'trace')
named = {2: 2, 3: 2, 4: 1, 5: 1}
for choices in itertools.product(perms[2], perms[2], perms[1], perms[1]):
    hidden = dict(zip(range(2, 6), choices))
    inverses = {r: {v: i for i, v in enumerate(p)} for r, p in hidden.items()}
    raw = inverses[2][named[2]]
    endpoint, current = raw, dict(enumerate(hidden[2]))
    trace = [(2, raw)]
    for r, w in trace_wires.items():
        a = decode(w)
        assert current == dict(enumerate(hidden[r]))
        boundaries = {ev(a['incoming'], x) for x in range(1 << w['n'])}
        cycles = [x for x in current if ev(a['outgoing'], current[x]) == 0]
        next_coordinates = {}
        for x in cycles:
            co = ev(a['projection'], current[x])
            next_coordinates[inverses[r+1][co]] = co
        assert len(next_coordinates) == 1 << w['h']
        for x, y in itertools.product(cycles, repeat=2):
            assert ((current[x] ^ current[y]) in boundaries) == (
                ev(a['projection'], current[x]) == ev(a['projection'], current[y]))
            counts['same_input_actual_quotient_pairs'] += 1
        assert endpoint in cycles and current[endpoint] == named[r] and current[endpoint] not in boundaries
        endpoint = inverses[r+1][ev(a['projection'], current[endpoint])]
        assert next_coordinates[endpoint] == named[r+1] and endpoint != inverses[r+1][0]
        current = next_coordinates
        trace.append((r+1, endpoint))
        counts['same_input_actual_trace_steps'] += 1
    assert trace[0] == (2, raw) and [r for r, _ in trace] == [2, 3, 4, 5]
    assert current[endpoint] == 1
    assert [x for x in range(4) if hidden[2][x] == named[2]] == [raw]
    assert inverses[2][0] != raw
    counts['same_input_actual_trace_models'] += 1
assert counts['actual_descent_source_models'] == 96
assert counts['actual_descent_target_models'] == 331776
assert counts['same_input_actual_trace_models'] == 2304
assert counts['same_input_actual_trace_steps'] == 6912
assert (counts['whole_d4_relabelings'], counts['accepted_whole_d4_maps'], counts['rejected_nonzero_d4_maps']) == (1152, 1152, 3456)

report = dict(status='no_correctness_findings', findings=[], proof_evidence=proofs,
              frozen_files_verified=len(frozen['files']), counts=dict(counts), d3_raw_maps=raw_maps,
              same_input=[False, True], endpoint_page=5, endpoint_coordinates=[True],
              source_E4_matrix_columns=list(e4['source']), target_E4_matrix_columns=list(e4['target']),
              remaining_inputs=[
                  'Full actual d3 complexes, all-vector current map meanings and actual quotient transition laws',
                  'Actual d4 naturality with the detector',
                  'The previous First.Prefix4 for the same S, pages and initial coordinates',
                  'Complete actual d4 outgoing-target and zero-dimensional incoming-source coordinates',
                  'Local zero and addition laws for the actual d4 quotient',
                  'Interpretation of the initial vector as the named sphere class'],
              limitations=[
                  'The two SQL NULL d3 columns remain explicitly conditional; raw NULL never proves zero',
                  'MapSemantics proves evaluation of any checked matrix under supplied actual generator images and vanishing relations',
                  'This module does not construct sphere Adams meanings or prove permanence after E5',
                  'Python carrier models supplement Lean proofs and are not Adams realizations'],
              input_sha256={str(p.relative_to(ROOT)): sha(p) for p in [
                  HERE / 'frozen-source.json', HERE / 'source.json', HERE / 'comparison-source.json',
                  HERE / 'd3-source.json', ROOT / 'Fact721ConstructedActual/First.lean',
                  ROOT / 'Fact713D4SourceSearch/ActualDescent.lean',
                  ROOT / 'Fact713ComparisonBatches/Batch06.json',
                  ROOT / 'Fact713DC2h6Source/wires/b_S0_11_133_d3.json']})
(HERE / 'independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(dict(status=report['status'], axiom_reports=55, counts=dict(counts)), indent=2))
