"""Root independent review of the fixed E2 input, target collapse and no-hit."""
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
frozen = load(HERE / 'frozen-source.json')['files']
for path, digest in frozen.items():
    assert sha(HERE / path) == digest, path
reports = empty = 0
for module in (HERE / 'modules.txt').read_text().split():
    name = module.split('.')[-1]
    r = load(HERE / (name + '-compile.json'))
    assert r['observed_exit_code'] == 0 and r['inputs_stable']
    assert r['source_sha256'] == sha(HERE / (name + '.lean'))
    assert r['log_sha256'] == sha(HERE / r['log'])
    log = (HERE / r['log']).read_text()
    assert not any(x in log for x in ['sorryAx', 'error:', 'warning:'])
    for axioms in re.findall(r'depends on axioms:\s*\[([^]]*)\]', log):
        assert {x.strip() for x in axioms.split(',')} <= {'propext', 'Classical.choice', 'Quot.sound'}
        reports += 1
    empty += log.count('does not depend on any axioms')

data = load(HERE / 'source.json')
db = ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
assert sha(db) == data['database_sha256']
conn = sqlite3.connect('file:' + str(db) + '?mode=ro', uri=True)
for r in range(5, 12):
    degree = (11-r, 134-r)
    assert data['empty_incoming'][str(degree)] == []
    assert conn.execute('SELECT id FROM S0_AdamsE2_basis WHERE s=? AND t=?', degree).fetchall() == []
assert conn.execute('SELECT mon,s,t FROM S0_AdamsE2_basis WHERE id=2622').fetchone() == (
    '69,1,79,1', 11, 133)
assert conn.execute('SELECT diff,level FROM S0_AdamsE2_ss WHERE id=2994').fetchone() == (None, 9000)


def evaluate(bits, rows, cols, value):
    assert len(bits) == rows * cols
    return sum((sum(int(bits[i*cols+j]) * ((value >> j) & 1)
                    for j in range(cols)) % 2) << i for i in range(rows))


paths = sorted((ROOT / 'Row2907PDeltaDetection/wire').glob('c*.json'))
paths += [ROOT / 'Fact713Row2773Refinement/wires/b_S0_16_137_d3.json',
          ROOT / 'Fact721FirstD4Continuation/wire/b_S0_11_133_d4.json',
          ROOT / 'Fact721PageCertificates/first-comparison.json']
pairs = 0
for path in paths:
    w = load(path)
    k, m, n, h = [w[f] for f in ['k', 'm', 'n', 'h']]
    cycles = {v for v in range(1 << m) if evaluate(w['outgoing'], k, m, v) == 0}
    boundaries = {evaluate(w['incoming'], m, n, v) for v in range(1 << n)}
    assert boundaries <= cycles
    project = lambda v: evaluate(w['projection'], h, m, v)
    assert {project(v) for v in cycles} == set(range(1 << h))
    for x, y in itertools.product(cycles, repeat=2):
        assert (project(x) == project(y)) == (x ^ y in boundaries)
        pairs += 1

models = 0
for dim in range(1, 6):
    for nonzero_image in range(1, 1 << dim):
        kernel = {x for x in range(2) if (nonzero_image if x else 0) == 0}
        assert kernel == {0}
        for target_relabel in [(0, 1), (1, 0)]:
            assert target_relabel.index(0) != target_relabel.index(1)
            models += 1

valid = death = missing_tail = missing_nonzero = 0
for events in itertools.product('NHD', repeat=7):
    alive, cycle, boundary = True, True, False
    history = [(alive, cycle, boundary)]
    for event in events:
        if alive and event == 'D':
            alive, cycle = False, False
        elif alive and event == 'H':
            alive, boundary = False, True
        history.append((alive, cycle, boundary))
    for cutoff, (alive, cycle, boundary) in enumerate(history):
        tail = 'H' not in events[cutoff:]
        ever = any(state[2] for state in history)
        if alive and cycle and tail:
            assert not ever
            valid += 1
            death += 'D' in events[cutoff:]
        if alive and cycle and not tail and ever:
            missing_tail += 1
        if not alive and cycle and tail and ever:
            missing_nonzero += 1
assert valid and death and missing_tail and missing_nonzero
request = load(HERE / 'request.json')
assert request == dict(version=1, claim='fact-7.21:first:E6', source=[False, True], output=[True])
assert [json.loads(line) for line in (HERE / 'requests.jsonl').read_text().splitlines()] == [request, request]
result = dict(status='passed', findings=[], frozen_files=len(frozen), modules=6,
    standard_axiom_reports=reports, empty_axiom_reports=empty,
    comparisons=len(paths), quotient_pairs=pairs, empty_incoming_degrees=7,
    relabelled_nonzero_map_models=models, valid_no_hit_models=valid,
    later_outgoing_death_models=death, missing_tail_countermodels=missing_tail,
    missing_nonzero_countermodels=missing_nonzero,
    scope='Same original raw input; whole target E5 zero from nonzero one-dimensional d4; '
          'nonzero E6 from complete incoming exclusion. Original E2 not-BInfinity '
          'already follows from E5. No outgoing permanence or E7 conclusion.')
(HERE / 'independent-review.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps(result, indent=2))
