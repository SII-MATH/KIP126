"""Regression audit of manually specified finite E4 spaces against release rows."""
import json
from pathlib import Path
import sqlite3

root = Path(__file__).resolve().parents[1]
checks = []
def span(columns):
    values = {0}
    for column in columns:
        values |= {v ^ column for v in list(values)}
    return values

def bits(raw, dimension):
    if raw is None or raw in ('-1', '[NULL]'):
        raise ValueError('unknown vector')
    indices = [] if raw == '' else list(map(int, raw.split(',')))
    if len(set(indices)) != len(indices) or any(i < 0 or i >= dimension for i in indices):
        raise ValueError('invalid vector')
    return sum(1 << i for i in indices)

for obj,s,t,dim,cycles,boundaries in [
    ('S0',21,147,3,set(range(8)),{0,4}),
    ('S0',25,150,4,{v for v in range(16) if (v & 1) == ((v >> 1) & 1)},{0}),
    ('tmf',25,150,2,set(range(4)),{0,3}),
]:
    path = next((root/'upstream/kervaire-49').glob(f'{obj}_AdamsSS*.db'))
    with sqlite3.connect(f'file:{path}?mode=ro',uri=True) as db:
        basis = db.execute(f'SELECT id FROM "{obj}_AdamsE2_basis" WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
        rows = db.execute(f'SELECT id,base,diff,level FROM "{obj}_AdamsE2_ss" WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
    assert len(basis) == dim
    # The final staircase's incoming vectors remain cycles even when already killed.
    selected_cycles = [bits(b,dim) for _,b,_,level in rows if level < 5000 or level <= 9996]
    selected_boundaries = [bits(b,dim) for _,b,_,level in rows if 2 <= level < 4]
    assert span(selected_cycles) == cycles, (obj,s,t,'cycle mismatch')
    assert span(selected_boundaries) == boundaries, (obj,s,t,'boundary mismatch')
    assert len(span([bits(b,dim) for _,b,_,_ in rows])) == 2**dim
    checks.append(dict(object=obj,s=s,t=t,staircase_rows=rows,
                       unknown_rows=[i for i,_,d,_ in rows if d is None],
                       cycles_sorted=sorted(cycles),boundaries_sorted=sorted(boundaries),
                       status='matches stored finite E4 selection; not an Adams realization proof'))

audit = json.loads((root/'RealMapCertificates/audit.json').read_text())
for s,t,entries in [(21,147,[]),(25,150,[False,False,True,False,True,False,False,False])]:
    matrix = next(m for m in audit['matrices'] if (m['s'],m['t']) == (s,t))
    assert matrix['entries'] == entries

product = json.loads((root/'BranchReplayCertificates/products-provenance.json').read_text())
assert [r['target_coordinates'] for r in product] == [[1],[],[],[0],[],[1],[2]]
(root/'BranchReplayCertificates/review-data.json').write_text(json.dumps(checks,indent=2)+'\n')
print('3 finite E4 selections, 2 map matrices, 7 product columns match source artifacts')
