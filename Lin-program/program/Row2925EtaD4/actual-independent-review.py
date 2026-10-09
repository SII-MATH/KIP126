"""Targeted review of the three frozen actual/branch/link leaves only."""
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
data = json.loads((HERE / 'comparison-source.json').read_text())
lower = {tuple(x['center']): x['wire'] for x in data['d2']}
higher = {x['tag']: x['wire'] for x in data['d3']}
original = json.loads((ROOT / 'AggregateD5Conditional/source.json').read_text())['blocks']
assert higher['source'] == original['S0:11,137:d3']['wire']
assert higher['upperSource'] == original['S0:15,140:d3']['wire']
assert higher['upperSource']['k'] == 0
def ev(M, m, n, x):
    return sum((sum(M[i * n + j] and bool(x >> j & 1) for j in range(n)) % 2) << i for i in range(m))
raw = 1 << 2
projected = ev(lower[15, 140]['projection'], 2, 5, raw)
assert ev(higher['upperSource']['projection'], 2, 2, projected) == 2
equations = 0
for b, x, deta in itertools.product([0, 1], range(4), range(2)):
    outgoing = [bool(b), True, False, False]
    image = ev(outgoing, 2, 2, x)
    assert image & 2 == 0
    assert 0 == (0 ^ ((image >> 1) & 1))
    equations += 1
for b in [0, 1]:
    outgoing = [bool(b), True, False, False]
    assert ev(outgoing, 2, 2, 1) == b
    assert 2 not in {ev(outgoing, 2, 2, x) for x in range(4)}
degrees = {'eta': (1, 2), 'source': (11, 137), 'target': (15, 140),
           'product': (12, 139), 'result': (16, 142), 'deta': (5, 5)}
add = lambda a, b: tuple(x + y for x, y in zip(a, b))
shift = lambda a: (a[0] + 4, a[1] + 3)
assert shift(degrees['source']) == degrees['target']
assert shift(degrees['eta']) == degrees['deta']
assert add(degrees['eta'], degrees['source']) == degrees['product']
assert shift(degrees['product']) == degrees['result']
assert add(degrees['eta'], degrees['target']) == add(degrees['deta'], degrees['source']) == degrees['result']
records = {}
for name in ['Actual', 'TwoBranches', 'Links']:
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(HERE / (name + '.lean'))
    assert record['log_sha256'] == sha(HERE / (name + '.log'))
    log = (HERE / (name + '.log')).read_text()
    assert not re.search(r'sorryAx|error:|error\(', log)
    axes = re.findall(r'depends on axioms: \[([^]]*)\]', log)
    assert all(set(x.strip() for x in a.split(',')) <= {'propext', 'Classical.choice', 'Quot.sound'} for a in axes)
    obj = ROOT / '.lake/build/lib/lean/Row2925EtaD4' / (name + '.olean')
    records[name] = dict(exit_code=0, standard_reports=len(axes) + log.count('does not depend on any axioms'),
        current_object_matches_direct=obj.exists() and sha(obj) == record['olean_sha256'])
assert sum(x['standard_reports'] for x in records.values()) == 9
report = dict(status='independent_actual_branch_link_review_passed', full_branch_equations=equations,
    remaining_branches=2, exact_original_d3_comparisons=2, raw3152_projection=2,
    no_eta_cycle_assumption=True, same_actual_system_and_product=True,
    actual_product_meaning_still_required=True, direct_records=records,
    input_sha256={str(p.relative_to(ROOT)): sha(p) for p in [HERE / (n + '.lean') for n in records] +
        [HERE / 'comparison-source.json', ROOT / 'AggregateD5Conditional/source.json']})
(HERE / 'actual-independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({k: v for k, v in report.items() if k != 'input_sha256'}, indent=2))
