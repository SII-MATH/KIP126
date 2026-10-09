"""Export complete d2 neighborhoods and derived zero d3 comparisons."""
import hashlib
import importlib.util
import json
from pathlib import Path
import sqlite3
import subprocess

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
spec = importlib.util.spec_from_file_location('helper', ROOT / 'Row3147MapSearch/search_lifted.py')
helper = importlib.util.module_from_spec(spec)
spec.loader.exec_module(helper)
db = ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
c = sqlite3.connect(f'file:{db}?mode=ro', uri=True)
meta = helper.metadata(c)
degrees = dict(t8=(20,141), i8=(17,139), ii8=(14,137), o8=(23,143),
               t4=(24,144), o4=(27,146), t9=(21,142), i9=(18,140), t10=(22,143))
blocks = {}
for name, degree in degrees.items():
    b = helper.comparison(c, 'S0', *degree, meta)
    b.update(degree=degree, staircase=list(c.execute(
        'select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id', degree)))
    blocks[name + 'd2'] = b
for name, degree, m, n in [('t8d3', degrees['t8'], 1, 2), ('t4d3', degrees['t4'], 2, 1)]:
    wire = json.loads(subprocess.run([str(ROOT / 'PageTransitionCertificates/page-transition-export'),
        '0', str(m), str(n), '-', '0'*(m*n)], check=True, capture_output=True, text=True).stdout)
    blocks[name] = dict(degree=degree, page=3, wire=wire,
        provenance='outgoing target complete E3 zero; incoming d3 square zero from proved full incoming d3 image')
for name, block in blocks.items():
    (HERE / 'wire' / (name + '.json')).write_text(json.dumps(block['wire'],sort_keys=True,separators=(',',':'))+'\n')
empty = {str((12-r,135-r)): list(c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=?',
    (12-r,135-r))) for r in range(8,13)}
assert all(not rows for rows in empty.values())
lines = ['import PageTransitionCertificates.Import', 'namespace Fact721SecondLater.Data',
         'open LinearCertificates PageTransitionCertificates']
for name in blocks:
    lines += [f'def {name} : WireComparison := page_comparison% "Fact721SecondLater/wire/{name}.json"',
        f'theorem {name}_valid : {name}.Valid := by lin_cert using ()', f'#print axioms {name}_valid']
lines += ['end Fact721SecondLater.Data']
(HERE / 'Data.lean').write_text('\n'.join(lines)+'\n')
(HERE / 'source.json').write_text(json.dumps(dict(database_sha256=hashlib.sha256(db.read_bytes()).hexdigest(),
    blocks=blocks,empty_incoming_E2=empty,known_rows=[2912,2913,3140,3242],
    unknown_preserved=[2999,3139,3476],limitations='Complete actual E2 and recorded event interpretations remain explicit mathematics.'),indent=2)+'\n')
for name,b in blocks.items(): print(name,{key:b['wire'][key] for key in ['k','m','n','h']})
