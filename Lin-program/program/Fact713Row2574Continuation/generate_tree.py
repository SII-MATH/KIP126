"""Balanced predecessor paths for the two frozen 1434-entry families."""
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
families = [load(ROOT / 'Fact713Row2574Continuation' / (name + '-family.json'))['entries']
            for name in ['zero_b0_c0','zero_b0_c1','zero_b1_c0','zero_b1_c1']]
compact = [[dict(key=e['key'], **{f: e['wire'][f] for f in ['n','m','k','h']}) for e in family]
           for family in families]
assert all(value == compact[0] for value in compact) and len(compact[0]) == 1434
entries = compact[0]
key = lambda e: tuple(e['key'][f] for f in ['object','page','s','t'])
indices = {key(e): i for i, e in enumerate(entries)}
assert len(indices) == len(entries)
routes = {}


def tree(values, start=0, path=()):
    if not values:
        return dict(empty=True)
    if len(values) == 1:
        routes[start] = list(path)
        return dict(leaf=values[0])
    middle = len(values) // 2
    return dict(node=[tree(values[:middle], start, path + (False,)),
                      tree(values[middle:], start + middle, path + (True,))])


metadata = tree(entries)
paths = []
for entry in entries:
    obj, r, s, t = key(entry)
    path = dict(incoming=[], current=[], outgoing=[])
    if r > 2:
        for field, dim, ps, pt in [('incoming','n',s-r,t-r+1), ('current','m',s,t),
                                   ('outgoing','k',s+r,t+r-1)]:
            index = indices[obj,r-1,ps,pt]
            assert entries[index]['h'] == entry[dim]
            path[field] = routes[index]
    paths.append(path)
proofs = tree(paths)


def literal(node, value):
    if 'empty' in node:
        return '.empty'
    if 'leaf' in node:
        return f'(.leaf {value(node["leaf"])})'
    left, right = node['node']
    return f'(.node {literal(left,value)}\n{literal(right,value)})'


def entry_literal(e):
    k = e['key']
    return f'⟨⟨"{k["object"]}",{k["page"]},{k["s"]},{k["t"]}⟩,{e["n"]},{e["m"]},{e["k"]},{e["h"]}⟩'


bits = lambda xs: '[' + ','.join('true' if x else 'false' for x in xs) + ']'
path_literal = lambda p: '⟨' + ','.join(bits(p[f]) for f in ['incoming','current','outgoing']) + '⟩'
lean = ['import IndexedPredecessorClosureTree.Basic', 'namespace Fact713Row2574Continuation.TreeData',
        'open IndexedPredecessorClosureTree', 'set_option maxRecDepth 100000',
        'def metadata : Tree Entry := ' + literal(metadata, entry_literal),
        'def witnesses : Tree Paths := ' + literal(proofs, path_literal),
        'end Fact713Row2574Continuation.TreeData']
(HERE / 'TreeData.lean').write_text('\n'.join(lean) + '\n')
report = dict(entries=1434, metadata=metadata, witnesses=proofs,
              tree_depth=max(map(len, routes.values())), paths_checked=sum(e['key']['page']>2 for e in entries)*3,
              producer_family_sha256=[sha(ROOT/'Fact713Row2574Continuation'/(name+'-family.json'))
                                      for name in ['zero_b0_c0','zero_b0_c1','zero_b1_c0','zero_b1_c1']])
(HERE/'trees.json').write_text(json.dumps(report,sort_keys=True,separators=(',',':'))+'\n')
print('1434 leaves; 2781 predecessor paths; maximum depth',report['tree_depth'])
