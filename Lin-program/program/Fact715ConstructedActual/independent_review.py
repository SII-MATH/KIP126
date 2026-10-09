"""Root review of the frozen detector, quotient chain and caller binding."""
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
trajectory = load(ROOT / 'Fact715TrajectoryCertificates/conditional-higher-source.json')
comparisons = load(ROOT / 'Fact715TrajectoryCertificates/comparison-source.json')


def vectors(n):
    return list(itertools.product((False, True), repeat=n))


def apply(bits, rows, cols, x):
    assert len(bits) == rows * cols and len(x) == cols
    return tuple(bool(sum(bits[i*cols+j] * x[j] for j in range(cols)) % 2)
                 for i in range(rows))


def xor(x, y):
    assert len(x) == len(y)
    return tuple(a != b for a, b in zip(x, y))


def literal_wire(text, name):
    body = re.search(r'def ' + name + r' : WireComparison := \u27e8([^\n]*)\u27e9', text)[1]
    values = json.loads('[' + body + ']')
    return dict(zip(['version', 'k', 'm', 'n', 'h', 'outgoing', 'incoming',
                     'inclusion', 'projection', 'up', 'down'], values))


pairs = 0
def quotient(w):
    global pairs
    n, m, k, h = (w[t] for t in ['n', 'm', 'k', 'h'])
    boundary = {apply(w['incoming'], m, n, x) for x in vectors(n)}
    cycles = [x for x in vectors(m) if not any(apply(w['outgoing'], k, m, x))]
    assert boundary <= set(cycles)
    for x, y in itertools.product(cycles, repeat=2):
        assert (apply(w['projection'], h, m, x) == apply(w['projection'], h, m, y)) == (xor(x, y) in boundary)
        pairs += 1
    for y in vectors(h):
        x = apply(w['inclusion'], m, h, y)
        assert x in cycles and apply(w['projection'], h, m, x) == y
    return boundary, cycles


old_text = (ROOT / 'Fact715TrajectoryCertificates/ConditionalData.lean').read_text()
for name, block in trajectory['blocks'].items():
    assert {k: v for k, v in literal_wire(old_text, name).items() if k != 'version'} == {
        k: v for k, v in block['wire'].items() if k != 'version'}
    quotient(block['wire'])

map_text = (ROOT / 'Fact715TrajectoryCertificates/MapComparison.lean').read_text()
for item in comparisons:
    assert {k: v for k, v in literal_wire(map_text, item['tag']).items() if k != 'version'} == {
        k: v for k, v in item['wire'].items() if k != 'version'}
    quotient(item['wire'])

database = ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
assert sha(database) == trajectory['database_sha256']
with sqlite3.connect(f'file:{database}?mode=ro', uri=True) as sql:
    assert sql.execute('SELECT s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2852').fetchone() == (11,136,'3',None,9995)
    assert sql.execute('SELECT s,t,mon,d2 FROM S0_AdamsE2_basis WHERE id=2853').fetchone() == (11,136,'0,2,391,1','')
    assert sql.execute('SELECT s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=3076').fetchone() == (15,139,'1,3',None,9000)

named = {2: (False,False,False,True,False), 3: (False,False,True,False),
         4: (True,False), 5: (True,)}
for r in range(2,5):
    w = trajectory['blocks'][f'b11_136_{r}']['wire']
    boundary, cycles = quotient(w)
    assert named[r] in cycles and named[r] not in boundary
    assert apply(w['projection'], w['h'], w['m'], named[r]) == named[r+1]

cw = {item['tag']: item['wire'] for item in comparisons}
assert cw['upperSource']['h'] == 0
source_map = json.loads(re.search(r'def middleMap .*?matrixOf 4 5 (\[[^\n]*\])', map_text)[1])
induced = []
for x in vectors(2):
    lifted = apply(cw['source']['inclusion'], 5, 2, x)
    mapped = apply(source_map, 4, 5, lifted)
    induced.append(apply(cw['target']['projection'], 2, 4, mapped))
assert induced == [(False, x[0]) for x in vectors(2)]
accepted = 0
for columns in vectors(2):
    natural = all(not apply(columns, 1, 2, x)[0] for x in induced)
    assert natural == (not columns[1])
    if natural and not columns[0]:
        assert all(not apply(columns, 1, 2, x)[0] for x in vectors(2))
        accepted += 1
assert accepted == 1
target = trajectory['blocks']['b15_139_3']['wire']
assert not any(target['outgoing']) and not any(target['incoming'])
assert all(apply(target['projection'], 2, 2, x) == x for x in vectors(2))

reports = {}
for leaf in ['Basic', 'Trace', 'Tactic', 'Detector', 'Assembly']:
    source, log = HERE / (leaf+'.lean'), HERE / (leaf+'.log')
    rec = load(HERE / (leaf+'-compile.json'))
    assert rec['observed_exit_code'] == 0
    assert rec['source_sha256'] == sha(source) and rec['log_sha256'] == sha(log)
    assert not re.search(r'error:|sorryAx|Lean\.ofReduceBool', log.read_text())
    axioms = re.findall(r'depends on axioms: \[([^\]]*)\]', log.read_text())
    for ax in axioms:
        assert set(filter(None, map(str.strip, ax.split(',')))) <= {'propext','Classical.choice','Quot.sound'}
    reports[leaf] = len(axioms) + log.read_text().count('does not depend on any axioms')
assert sum(reports.values()) == 31
for path, digest in load(HERE / 'frozen-source.json')['files'].items():
    assert sha(HERE / path) == digest

result = dict(status='no_correctness_findings', findings=[],
    quotient_pairs=pairs, detector_assignments=4, accepted_assignments=accepted,
    literal_Lean_wires_match=True, unknown_rows_preserved=[2852,3076], axiom_reports=reports,
    reviewed=['same initial element at all quotient steps',
        'unknown d3 derived using actual naturality and complete zero Ceta codomain',
        'all S0 columns proved using the separately supplied known column',
        'derived actual E4 target used by final main d4 equation',
        'tactic checks exact goal and initial naming proof'],
    limitations=['initial and neighboring actual Adams interpretations remain premises',
        'main whole d4 equation remains a premise', 'no d5 survival or topological realization'],
    sources={str(p.relative_to(ROOT)):sha(p) for p in [*sorted(HERE.glob('*.lean')),
        ROOT/'Fact715TrajectoryCertificates/conditional-higher-source.json',
        ROOT/'Fact715TrajectoryCertificates/comparison-source.json']})
(HERE/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k!='sources'},indent=2))
