"""Export three full raw d2 comparisons; record the row2632 prefix as input."""
import hashlib
import json
import sqlite3
import subprocess
from pathlib import Path

p = Path(__file__).resolve().parent
r = p.parent
db = r/'upstream/kervaire-49/S0_AdamsSS_t261.db'
producer = r/'PageTransitionCertificates/page-transition-export'
c = sqlite3.connect(f'file:{db}?mode=ro', uri=True)
meta = dict(c.execute('SELECT name,value FROM version'))
sha = lambda f: hashlib.sha256(f.read_bytes()).hexdigest()
items = []
for name, s, t in [('source-d2', 7, 133), ('incoming5', 2, 129), ('incoming6', 1, 128)]:
    degrees = [(s-2, t-1), (s, t), (s+2, t+1)]
    assert all(tt <= meta['t_max'] for _, tt in degrees) and t <= meta['d2_t_max']
    groups = [[list(x) for x in c.execute(
        'SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', d)] for d in degrees]
    n, m, k = map(len, groups)
    matrices = []
    for rows, dim in [(groups[1], k), (groups[0], m)]:
        columns = []
        for rid, mon, raw in rows:
            assert raw is not None and raw not in ['[NULL]', '?', '-1']
            ids = [] if not raw else list(map(int, raw.split(',')))
            assert ids == sorted(set(ids)) and all(0 <= i < dim for i in ids)
            columns.append(ids)
        matrices.append(''.join('1' if i in ids else '0' for i in range(dim) for ids in columns) or '-')
    proc = subprocess.run([str(producer), str(k), str(m), str(n), *matrices], check=True, capture_output=True, text=True)
    wire = json.loads(proc.stdout)
    (p/f'{name}.json').write_text(proc.stdout)
    items.append(dict(name=name, center=[s,t], degrees=degrees, groups=groups, wire=wire))
report = dict(metadata=meta, comparisons=items,
    row2632=list(c.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2632').fetchone()),
    source_basis=list(c.execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=7 AND t=133 ORDER BY id')),
    premise='Level9982 is external row2632 differential-zero prefix metadata; no mathematical prefix follows from this number alone.',
    inputs_sha256={str(f.relative_to(r)):sha(f) for f in [db,producer,p/'prepare.py']})
(p/'source.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print('Three full raw d2 comparisons exported by C++; row2632 prefix remains explicit')
