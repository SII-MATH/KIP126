"""Record the known successor without assuming the unknown incoming value."""
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
builder = ROOT / 'Stem125E4Search/search.py'
outer = {'__file__': str(builder)}
exec(compile(builder.read_text().split('\nrows=[]')[0], str(builder), 'exec'), outer)
ns = outer['ns']
old = dict(ns['cache'])
root = 'S0:31,153:d4'
outer['ensure']('S0', 31, 153, 4)
closure = set()
todo = [root]
while todo:
    key = todo.pop()
    if key in closure:
        continue
    closure.add(key)
    todo.extend(ns['cache'][key]['predecessors'])
new = sorted(closure - old.keys(), key=lambda k: (ns['cache'][k]['page'], k))
blocks = {k: ns['cache'][k] for k in sorted(closure)}
assert all(ns['cache'][k] == v for k, v in old.items())
assert blocks[root]['wire']['incoming'] == [True]
assert blocks['S0:27,150:d3']['wire']['projection'] == [True]
assert blocks['S0:31,153:d3']['wire']['projection'] == [True]
assert all(not (u['source'] == [23, 147] and u['page'] == 4)
           for b in blocks.values() for u in b['uses'])
wires = HERE / 'wires'
wires.mkdir(exist_ok=True)
tag = lambda k: 'b_' + k.replace(':', '_').replace(',', '_').replace('-', 'neg')
lines = ['import AggregateD5Conditional.Data', 'namespace Row3743Successor.Data',
         'open LinearCertificates PageTransitionCertificates']
for key in new:
    name = tag(key)
    wire = blocks[key]['wire']
    (wires / (name + '.json')).write_text(json.dumps(wire, sort_keys=True,
                                                  separators=(',', ':')) + '\n')
    lines += [f'def {name} : WireComparison := page_comparison% "Row3743Successor/wires/{name}.json"',
              f'theorem {name}_valid : {name}.Valid := by lin_cert using ()']
assert root in new
lines += ['#print axioms b_S0_31_153_d4_valid', 'end Row3743Successor.Data']
(HERE / 'Data.lean').write_text('\n'.join(lines) + '\n')
sql = outer['sql']
inputs = [builder, ROOT / 'AggregateD5Conditional/source.json',
          ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db']
report = dict(root=root, new_keys=new, blocks=blocks,
    raw_rows=[list(sql.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?',
                             (row,)).fetchone()) for row in [3743, 3986, 4256]],
    input_sha256={str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest()
                  for p in inputs},
    limitation='Known row3986 still needs actual Adams coordinate meaning. No row3743 value assumed; raw NULL retained.')
(HERE / 'source.json').write_text(json.dumps(report, indent=2, sort_keys=True) + '\n')
print(len(new), 'new comparisons;', len(closure), 'full predecessor blocks')
