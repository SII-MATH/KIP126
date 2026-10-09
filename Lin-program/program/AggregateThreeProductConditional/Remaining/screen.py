"""Finite E3 screen of every nonzero homogeneous d2 cycle at 0 < t <= 30.

Database metadata bounds are enforced before accepting any absent basis as
an empty finite space. Numerical candidates still require Lean proofs.
"""
import collections
import hashlib
import importlib.util
import itertools
import json
import sqlite3
import subprocess
from pathlib import Path

p = Path(__file__).resolve().parent
root = p.parents[1]
db = root / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
c = sqlite3.connect(f'file:{db}?mode=ro', uri=True)
metadata = dict(c.execute('select name,value from version'))
e2_limit, d2_limit = metadata['t_max'], metadata['d2_t_max']
spec = importlib.util.spec_from_file_location('algebra', root / 'RealMapCertificates/export.py')
algebra = importlib.util.module_from_spec(spec)
spec.loader.exec_module(algebra)
relations = [(rid, [algebra.mono(x) for x in raw.split(';')], s, t)
             for rid, raw, s, t in c.execute(
                 'select rowid,rel,s,t from S0_AdamsE2_relations order by rowid')]
bases, comparisons, comparison_failures = {}, {}, {}


def basis(s, t):
    if t > e2_limit:
        raise ValueError(f'E2 degree {(s, t)} outside metadata t_max={e2_limit}')
    if (s, t) not in bases:
        bases[s, t] = list(c.execute(
            'select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id', (s, t)))
    return bases[s, t]


def coordinates(raw, size):
    if raw is None or raw in ('?', '[NULL]', '-1'):
        raise ValueError('unknown d2 coordinate vector')
    ids = list(map(int, raw.split(','))) if raw else []
    if len(set(ids)) != len(ids) or any(i < 0 or i >= size for i in ids):
        raise ValueError('invalid d2 coordinate vector')
    return [int(i in ids) for i in range(size)]


def comparison(s, t):
    if (s, t) in comparison_failures:
        raise ValueError(comparison_failures[s, t])
    if (s, t) in comparisons:
        return comparisons[s, t]
    try:
        if t > d2_limit:
            raise ValueError(f'd2 source degree {(s, t)} outside metadata d2_t_max={d2_limit}')
        previous, middle, following = [basis(*d) for d in [(s-2, t-1), (s, t), (s+2, t+1)]]
        n, m, k = map(len, [previous, middle, following])
        inc = [coordinates(x[2], m) for x in previous]
        out = [coordinates(x[2], k) for x in middle]
        def bits(cols, dim):
            return ''.join(str(col[i]) for i in range(dim) for col in cols) or '-'
        proc = subprocess.run([str(root / 'PageTransitionCertificates/page-transition-export'),
                               str(k), str(m), str(n), bits(out, k), bits(inc, m)],
                              capture_output=True, text=True)
        if proc.returncode:
            raise ValueError(proc.stderr.strip())
        result = json.loads(proc.stdout)
        comparisons[s, t] = result
        return result
    except ValueError as error:
        comparison_failures[s, t] = str(error)
        raise


def evaluate(matrix, rows, cols, v):
    return [sum(matrix[i*cols+j] * v[j] for j in range(cols)) % 2 for i in range(rows)]


def project(w, v):
    if any(evaluate(w['outgoing'], w['k'], w['m'], v)):
        raise ValueError('product representative is not a d2 cycle')
    return evaluate(w['projection'], w['h'], w['m'], v)


def product(factor, s, t, v, fs, ft):
    source, target = basis(s, t), basis(s+fs, t+ft)
    lookup = {algebra.mono(raw): i for i, (_, raw, _) in enumerate(target)}
    cur = set()
    for j, bit in enumerate(v):
        if bit:
            cur.symmetric_difference_update(algebra.multiply(factor, {algebra.mono(source[j][1])}))
    seen = set()
    for _ in range(10000):
        bad = next((m for m in sorted(cur) if m not in lookup), None)
        if bad is None:
            return [int(any(lookup[m] == i for m in cur)) for i in range(len(target))]
        state = tuple(sorted(cur))
        if state in seen:
            raise ValueError('reduction cycle')
        seen.add(state)
        choice = next(((rel, algebra.divide(bad, rel[0])) for _, rel, rs, rt in relations
                       if rel and rs <= s+fs and rt <= t+ft
                       and algebra.divide(bad, rel[0]) is not None), None)
        if choice is None:
            raise ValueError('reducing relation unavailable; no empty-basis zero inferred')
        rel, multiplier = choice
        cur.symmetric_difference_update(algebra.multiply({multiplier}, rel))
    raise ValueError('reduction step limit')


factors, excluded = [], []
for fs, ft in c.execute('select distinct s,t from S0_AdamsE2_basis where 0<t and t<=30 order by t,s'):
    rows = basis(fs, ft)
    assert len(rows) <= 2, 'bounded all-cycle enumeration needs review'
    for v in itertools.product([0, 1], repeat=len(rows)):
        if not any(v):
            continue
        entry = dict(degree=[fs, ft], basis_ids=[rows[i][0] for i, bit in enumerate(v) if bit],
                     basis_monomials=[rows[i][1] for i, bit in enumerate(v) if bit])
        try:
            w = comparison(fs, ft)
            entry['factor_coordinates'] = project(w, v)
            factors.append(entry)
        except ValueError as error:
            excluded.append(dict(**entry, reason=str(error)))

results = []
for rid in [2576, 2708, 2695, 2925, 3080, 3390, 4306]:
    row = c.execute('select id,s,t,base,diff,level from S0_AdamsE2_ss where id=?', (rid,)).fetchone()
    _, s, t, base, diff, level = row
    source, target = comparison(s, t), comparison(s+3, t+2)
    sv = coordinates(base, source['m'])
    project(source, sv)
    tested = []
    for f in factors:
        entry = dict(f)
        fs, ft = f['degree']
        factor = {algebra.mono(raw) for raw in f['basis_monomials']}
        try:
            shifted_source, shifted_target = comparison(s+fs, t+ft), comparison(s+3+fs, t+2+ft)
            entry['source_image'] = project(shifted_source, product(factor, s, t, sv, fs, ft))
            images = []
            for j in range(target['h']):
                v = [target['inclusion'][i*target['h']+j] for i in range(target['m'])]
                images.append(project(shifted_target, product(factor, s+3, t+2, v, fs, ft)))
            entry['target_images'] = images
            for old, new, a, b in [(source, shifted_source, s, t), (target, shifted_target, s+3, t+2)]:
                for j in range(old['n']):
                    boundary = [old['incoming'][i*old['n']+j] for i in range(old['m'])]
                    if any(project(new, product(factor, a, b, boundary, fs, ft))):
                        raise ValueError('product does not send this incoming boundary to a boundary')
            entry['status'] = ('source_nonzero' if any(entry['source_image']) else
                               'candidate' if any(any(v) for v in images) else 'target_zero')
        except ValueError as error:
            entry.update(status='unavailable', reason=str(error))
        tested.append(entry)
    candidates = [e for e in tested if e['status'] == 'candidate']
    vectors = list(itertools.product([0, 1], repeat=target['h']))
    def killed(f, v):
        images = f['target_images']
        return not any(sum(v[j]*images[j][i] for j in range(len(v))) % 2
                       for i in range(len(images[0])))
    kernel = [v for v in vectors if all(killed(f, v) for f in candidates)]
    smallest = None
    if len(kernel) == 1:
        for size in range(1, min(3, len(candidates))+1):
            chosen = next((group for group in itertools.combinations(candidates, size)
                           if all(not any(v) or not all(killed(f, v) for f in group) for v in vectors)), None)
            if chosen is not None:
                smallest = [f['basis_ids'] for f in chosen]
                break
    result = dict(row=row, target_dimension=target['h'], factors=tested,
                  counts=dict(collections.Counter(e['status'] for e in tested)),
                  joint_kernel=kernel, smallest_joint_detector_at_most_three=smallest)
    results.append(result)
    print(rid, result['counts'], 'kernel', kernel, 'smallest', smallest, flush=True)

report = dict(database_sha256=hashlib.sha256(db.read_bytes()).hexdigest(),
              metadata=metadata, factor_t_max=30,
              finite_homogeneous_d2_cycle_count=len(factors), excluded_factors=excluded,
              all_nonzero_combinations_enumerated=True, results=results,
              unavailable_comparisons=[dict(degree=list(k), reason=v)
                                       for k, v in sorted(comparison_failures.items())],
              status='numerical_screen_only_requires_Lean_and_semantic_premises')
(p / 'screen.json').write_text(json.dumps(report, indent=2) + '\n')
