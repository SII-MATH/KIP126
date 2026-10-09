"""Check that the reused block has the exact Fact713 predecessor data."""
import json
from pathlib import Path

p = Path(__file__).resolve().parent
r = p.parent
dag = json.loads((r / 'Fact713TrajectoryAudit/dag.json').read_text())
source = json.loads((p / 'row3076-source.json').read_text())
reuse = json.loads((r / 'Fact715TrajectoryCertificates/conditional-higher-source.json').read_text())
block = next(b for b in dag['blocks'] if b['key'] == '15,139,d3')
checked = reuse['blocks']['b15_139_3']
assert source['database_sha256'] == dag['summary']['database_sha256'] == reuse['database_sha256']
assert source['dependency'] == block
assert source['reused_comparison'] == checked
for space in block['spaces']:
    key = str(tuple(space['degree']))
    assert space['e2'] == checked['e2'][key]
    assert space['staircase'] == checked['raw'][key]
assert block['spaces'][1]['selected'][1] == [3076, '1,3', None, 9000]
assert checked['wire']['outgoing'] == [False, False]
print('Fact713 row3076: exact predecessor data and unknown marker retained')
