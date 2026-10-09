"""Root review of generator degrees, complete top-cell maps and quotients."""
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

H = Path(__file__).resolve().parent
R = H.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
frozen = load(H / 'frozen-source.json')
for name, digest in frozen['files'].items():
    assert sha(H / name) == digest, name
reports = 0
for module in (H / 'modules.txt').read_text().splitlines():
    name = module.split('.')[-1]
    c = load(H / (name + '-compile.json'))
    assert c['observed_exit_code'] == 0 and c['inputs_stable']
    assert sha(H / (name + '.lean')) == c['source_sha256']
    log = H / c['log']
    assert sha(log) == c['log_sha256']
    assert not re.search(r'\b(sorryAx|Lean\.ofReduceBool|error)\b', log.read_text())
    axioms = re.findall(r'depends on axioms:\s*\[([^]]*)\]', log.read_text())
    for ax in axioms:
        assert set(filter(None, map(str.strip, ax.split(',')))) <= {
            'propext', 'Classical.choice', 'Quot.sound'}
    reports += len(axioms) + log.read_text().count('does not depend on any axioms')

def connect(name):
    return sqlite3.connect(f'file:{R}/upstream/kervaire-49/{name}?mode=ro', uri=True)

s = connect('S0_AdamsSS_t261.db')
c = connect('Ctheta4_AdamsSS_t200.db')
m = connect('map_AdamsSS_Ctheta4_to_S0_t200.db')
degrees = {i: (ss, tt) for i, ss, tt in s.execute('select id,s,t from S0_AdamsE2_generators')}
source_generators = {i: (ss, tt) for i, ss, tt in c.execute('select id,s,t from Ctheta4_AdamsE2_generators')}
assert source_generators == {0: (0, 0), 1: (0, 31)}
assert dict(m.execute('select name,value from version'))['suspension'] == 30
assert m.execute('select map from map_AdamsE2_Ctheta4_to_S0 where id=1').fetchone() == (';',)
assert source_generators[1][1] - 31 == 0 and source_generators[1][1] - 30 != 0

def degree(monomial):
    return tuple(sum(degrees[i][j] for i in monomial) for j in (0, 1))

maps = load(H / 'maps.json')
monomials = columns = 0
for block in maps['maps'].values():
    if 'wire' not in block:
        continue
    w = block['wire']; a = w['algebra']
    assert w['suspension'] == 31 and w['filtration'] == 0
    for expr in a['source']:
        for generator, poly in enumerate(expr):
            for mon in poly:
                ds, dt = degree(mon); gs, gt = source_generators[generator]
                assert (ds + gs, dt + gt) == (w['sourceS'], w['sourceT'])
                monomials += 1
    for expr in a['target']:
        for poly in expr:
            for mon in poly:
                assert degree(mon) == (w['targetS'], w['targetT'])
                monomials += 1
    assert w['targetT'] == w['sourceT'] - 31 and w['targetS'] == w['sourceS']
    # Top-cell substitution is coefficient projection. Every matrix column
    # agrees with this entire polynomial, not only the named source.
    for j, expr in enumerate(a['source']):
        target = set()
        for i, value in enumerate(a['target']):
            if a['entries'][i * a['cols'] + j]:
                target.symmetric_difference_update(tuple(mon) for mon in value[0])
        assert target == {tuple(mon) for mon in expr[1]}
        columns += 1

def apply(bits, rows, cols, value):
    return sum((sum(int(bits[i * cols + j]) * ((value >> j) & 1)
                    for j in range(cols)) % 2) << i for i in range(rows))

q = load(H / 'ctheta-search.json')['comparisons']
pairs = 0
for block in q.values():
    w = block['wire']
    incoming = {apply(w['incoming'], w['m'], w['n'], v) for v in range(1 << w['n'])}
    cycles = [v for v in range(1 << w['m']) if not apply(w['outgoing'], w['k'], w['m'], v)]
    assert incoming <= set(cycles)
    for x, y in itertools.product(cycles, repeat=2):
        assert (apply(w['projection'], w['h'], w['m'], x) ==
                apply(w['projection'], w['h'], w['m'], y)) == ((x ^ y) in incoming)
        pairs += 1

result = dict(status='passed', findings=[], modules=11, axiom_reports=reports,
              frozen_files=len(frozen['files']), homogeneous_monomials=monomials,
              complete_map_columns=columns, complete_comparisons=len(q), quotient_pairs=pairs,
              metadata_conflict=dict(raw=30,homogeneous=31),
              frozen_source_sha256=sha(H / 'frozen-source.json'),
              limitations=['Degree correction is proved against explicit generator interpretations, not a topology identification',
                'Named source finite d3/d4 prefixes remain mathematical premises',
                'Sphere d3 is derived before constructing sphere E4',
                'Whole actual d3 zero excludes residual parameter without identifying arbitrary charts'])
(H / 'independent-review.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps(result, indent=2))
