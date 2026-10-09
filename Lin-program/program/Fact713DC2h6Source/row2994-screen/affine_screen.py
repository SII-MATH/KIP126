"""Minimal read-only evidence for the remaining direction and affine inputs."""
import hashlib
import itertools
import json
import sqlite3
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
raw = json.loads((HERE/'lifted-search.json').read_text())
complete = [entry for entry in raw['maps'] if all(entry.get(label, {}).get('status') ==
    'computed_cycle_quotient' for label in ['source', 'target', 'target1', 'targetsum'])]
zero = [entry for entry in complete if not any(entry['source']['quotient'])]
vectors = [(0, 0), (1, 0), (0, 1), (1, 1)]


def image(entry, vector):
    return [vector[0]*a ^ vector[1]*b for a, b in
            zip(entry['target']['quotient'], entry['target1']['quotient'])]


kernel = [v for v in vectors if all(not any(image(entry, v)) for entry in zero)]
assert kernel == [(0, 0), (0, 1)]
distinguish = [entry for entry in complete if any(image(entry, (0, 1)))]
assert [entry['map']['name'] for entry in distinguish] == [
    'S0__Csigma', 'S0__CW_2_eta_by_nu', 'S0__DC2h6']
expected = {'S0__Csigma': [4537, 4538], 'S0__CW_2_eta_by_nu': [4206], 'S0__DC2h6': [3219]}
obligations = []
for entry in distinguish:
    assert any(entry['source']['quotient'])
    database = ROOT/'upstream/kervaire-49'/entry['target_database']
    connection = sqlite3.connect(f'file:{database}?mode=ro', uri=True)
    rows = [list(row) for row in connection.execute(
        f"SELECT id,base,diff,level FROM {entry['map']['to']}_AdamsE2_ss WHERE s=? AND t=? ORDER BY id",
        entry['source']['degree'])]
    named = [row for row in rows if row[0] in expected[entry['map']['name']]]
    assert len(named) == len(expected[entry['map']['name']])
    assert all(row[2:] == [None, 9000] for row in named)
    support = set()
    for row in named:
        support.symmetric_difference_update(int(i) for i in row[1].split(','))
    assert sorted(support) == entry['source']['coordinates']
    w = entry['source']['comparison']['wire']

    def projection(indices):
        return tuple(sum(w['projection'][i*w['m']+j] for j in indices) % 2 for i in range(w['h']))

    def is_cycle(indices):
        return all(sum(w['outgoing'][i*w['m']+j] for j in indices) % 2 == 0 for i in range(w['k']))

    # A noncycle has no E3 class, even if its arbitrary projection is nonzero.
    known = [projection(indices) for row in rows if row[2] is not None
             for indices in [[int(i) for i in row[1].split(',')]] if is_cycle(indices)]
    span = {tuple(sum(c*v[i] for c, v in zip(coeffs, known)) % 2 for i in range(w['h']))
            for coeffs in itertools.product([0, 1], repeat=len(known))}
    assert tuple(entry['source']['quotient']) not in span
    obligations.append(dict(map=entry['map']['name'], source_degree=entry['source']['degree'],
        mapped_source_E2_support=entry['source']['coordinates'], mapped_source_E3=entry['source']['quotient'],
        residual_image=entry['target1']['quotient'], unknown_rows=named,
        all_local_staircase_rows=rows, source_not_in_span_of_all_nonnull_cycle_rows=True,
        database=entry['target_database'], database_sha256=hashlib.sha256(database.read_bytes()).hexdigest()))
report = dict(status='joint_kernel_and_affine_obligations_checked', complete_maps=len(complete),
    complete_source_zero_maps=len(zero), entire_source_zero_joint_kernel=kernel,
    affine_candidates_after_source_zero_maps=[[0, 0], [0, 1]],
    maps_that_can_distinguish_candidates=obligations,
    consequence='Affine constraints from the source-zero family cannot distinguish 0 and (0,1). '
      'Only three complete maps distinguish them; all require presently unknown detector-source d3 values.',
    limitation='A finite search obstruction, not a theorem ruling out other mathematical arguments or incomplete maps.',
    sha256={p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in [Path(__file__), HERE/'lifted-search.json']})
(HERE/'affine-obligations.json').write_text(json.dumps(report, indent=2)+'\n')
print(json.dumps({'joint_kernel': kernel, 'distinguishing_maps': list(expected),
                  'all_distinguishing_source_values_unresolved': True}, indent=2))
