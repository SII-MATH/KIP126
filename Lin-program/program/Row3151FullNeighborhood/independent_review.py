"""Review all finite matrix possibilities with tuple vectors and actual cosets."""
from itertools import product
from pathlib import Path
import hashlib
import json
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda name: json.loads((HERE / name).read_text())
vectors = lambda n: tuple(product((0, 1), repeat=n))
zero = lambda n: (0,) * n
add = lambda x, y: tuple(a ^ b for a, b in zip(x, y))


def rows(bits, m, n):
    assert len(bits) == m * n
    return tuple(tuple(int(b) for b in bits[i*n:(i+1)*n]) for i in range(m))


def apply(matrix, v):
    return tuple(sum(a * b for a, b in zip(row, v)) % 2 for row in matrix)


def comparison(w):
    k, m, n, h = (w[key] for key in ['k', 'm', 'n', 'h'])
    d, inc = rows(w['outgoing'], k, m), rows(w['incoming'], m, n)
    lift, proj = rows(w['inclusion'], m, h), rows(w['projection'], h, m)
    kernel = {x for x in vectors(m) if apply(d, x) == zero(k)}
    image = {apply(inc, x) for x in vectors(n)}
    assert image <= kernel
    cosets = {frozenset(add(x, y) for y in image) for x in kernel}
    graph = {(frozenset(add(x, y) for y in image), apply(proj, x)) for x in kernel}
    assert len(graph) == len(cosets) == len({y for _, y in graph}) == 2 ** h
    assert {y for _, y in graph} == set(vectors(h))
    assert all(apply(lift, y) in kernel and apply(proj, apply(lift, y)) == y for y in vectors(h))
    return kernel, image, cosets


examined = 0
solutions = []
# Enumerate d3 as well as d4 and its incoming map. The dimension is derived
# from the literal d3 kernel, rather than supplied by the author's branch tag.
for d3bits in product((0, 1), repeat=2):
    d3 = rows(d3bits, 1, 2)
    if apply(d3, (1, 0)) != (0,):
        continue
    a = d3bits[1]
    kernel3 = {x for x in vectors(2) if apply(d3, x) == (0,)}
    n = len(kernel3).bit_length() - 1
    assert n == (1 if a else 2)
    for outgoingbits in product((0, 1), repeat=4):
        d4 = rows(outgoingbits, 2, 2)
        for incomingbits in product((0, 1), repeat=2*n):
            examined += 1
            inc = rows(incomingbits, 2, n)
            if apply(d4, (0, 1)) != (1, 0) or apply(d4, (1, 0))[1]:
                continue
            if apply(inc, (1,) + (0,) * (n-1)) != (0, 0):
                continue
            if any(apply(d4, apply(inc, x)) != (0, 0) for x in vectors(n)):
                continue
            b = apply(d4, (1, 0))[0]
            q = 0 if a else apply(inc, (0, 1))[0]
            code = f'{a}{b}{q}'
            w = read(f'event{code}.json')
            assert rows(w['outgoing'], 2, 2) == d4
            assert rows(w['incoming'], 2, n) == inc
            kernel, image, cosets = comparison(w)
            assert len(kernel) == 2
            assert len(image) == (2 if q else 1)
            assert (0, 1) not in image and apply(d4, (0, 1)) == (1, 0)
            solutions.append(dict(code=code, incoming_dimension=n,
                incoming_rank=int(bool(q)), event_homology_dimension=len(cosets).bit_length()-1))
assert len(solutions) == 6 and {x['code'] for x in solutions} == {'000', '001', '010', '011', '100', '110'}

comparisons = adjacent = consecutive = endpoint_steps = 0
input_files = set()
for solution in solutions:
    code = solution['code']
    f = read(f'family{code}.json')
    indexed = {(e['key']['object'], e['key']['page'], e['key']['s'], e['key']['t']): e['wire']
               for e in f['entries']}
    expected = {('S0', page, s, t) for page in [2, 3, 4]
                for s, t in [(7, 134), (11, 137), (15, 140)]}
    assert len(f['entries']) == len(indexed) == 9 and set(indexed) == expected
    for key, w in indexed.items():
        comparison(w)
        comparisons += 1
        obj, r, s, t = key
        target = (obj, r, s+r, t+r-1)
        if target in indexed:
            v = indexed[target]
            assert (w['k'], w['m'], w['outgoing']) == (v['m'], v['n'], v['incoming'])
            adjacent += 1
        later = (obj, r+1, s, t)
        if later in indexed:
            assert w['h'] == indexed[later]['m']
            consecutive += 1
    a, b, q = map(int, code)
    in3, in4 = indexed['S0', 3, 7, 134], indexed['S0', 4, 7, 134]
    assert in3['outgoing'] == [False, bool(a)]
    assert not any(in3['incoming'])
    assert in3['h'] == in4['m'] == solution['incoming_dimension']
    assert apply(rows(in3['projection'], in3['h'], 2), (1, 0)) == (1,) + (0,) * (in3['h']-1)
    assert indexed['S0', 4, 15, 140] == json.loads(
        (ROOT / f'Row3152BranchCertificates/sourceD4{b}.json').read_text())
    finite = read(f'finite{code}.json')
    assert finite['event'] == indexed['S0', 4, 11, 137]
    assert finite['rawSource'] == [False, False, True, False, False, False]
    assert finite['rawTarget'] == [False, True, False, False, False]
    for stem, degree in [('source', (11, 137)), ('target', (15, 140))]:
        current = tuple(map(int, finite['raw' + stem.title()]))
        for page, stage in zip([2, 3], finite[stem + 'Stages']):
            w = stage['wire']
            assert w == indexed['S0', page, *degree]
            assert tuple(map(int, stage['representative'])) == current
            kernel, image, _ = comparison(w)
            assert current in kernel and current not in image
            current = apply(rows(w['projection'], w['h'], w['m']), current)
            endpoint_steps += 1
        assert current == tuple(map(int, finite[stem]))
    indexed_event, bound = read(f'indexed{code}.json'), read(f'bound{code}.json')
    assert indexed_event['finite'] == finite
    assert bound['event'] == indexed_event and bound['object'] == 'S0'
    assert indexed_event['eventPage'] == 4
    assert indexed_event['sourceDegree'] == dict(s=11, t=137)
    assert indexed_event['targetDegree'] == dict(s=15, t=140)
    for prefix in ['family', 'incomingD3', 'incomingD4', 'event', 'targetD4', 'finite', 'indexed', 'bound']:
        input_files.add(HERE / f'{prefix}{code}.json')

records = []
for name in ['Data', 'Checks', 'Semantics', 'Links']:
    source, log = HERE / (name + '.lean'), HERE / (name + '.log')
    record = read(name + '-compile.json')
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(source)
    assert record['log_sha256'] == sha(log)
    reports = re.findall(r"'([^']+)' depends on axioms: \[([^\]]*)\]", log.read_text(), re.S)
    no_axioms = re.findall(r"'([^']+)' does not depend on any axioms", log.read_text())
    for theorem, deps in reports:
        assert {a.strip() for a in deps.split(',') if a.strip()} <= {'propext', 'Classical.choice', 'Quot.sound'}
    records.append(dict(module=name, source_sha256=sha(source), log_sha256=sha(log),
                        upstream_recorded_exit=0, standard_reports=len(reports)+len(no_axioms)))
assert sum(x['standard_reports'] for x in records) == 13
report = dict(findings=[], examined_matrix_pairs=examined, solutions=solutions,
    complete_comparisons=comparisons, adjacent_equalities=adjacent,
    consecutive_dimensions=consecutive, prior_endpoint_steps=endpoint_steps,
    legacy_scope='old four outgoing cases assume incoming dimension1; new eta restriction gives six cases across dimension1/2',
    exhaustiveness_scope='all event matrix pairs meeting fixed d3-derived dimension, known event, eta, prefix and complex conditions; each has a coherent specified9-key family',
    excluded='no typed realization of an arbitrary actual Adams window, no uniqueness of arbitrary9-key completions',
    modules=records, reviewed_input_sha256={p.name:sha(p) for p in sorted(input_files)},
    script_sha256=sha(Path(__file__)))
(HERE / 'independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({k:v for k,v in report.items() if k not in ['reviewed_input_sha256', 'modules']}, indent=2))
