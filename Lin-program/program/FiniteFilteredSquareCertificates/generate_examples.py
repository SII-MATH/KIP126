"""Small exhaustive witness generator for kernel examples; not a trusted solver."""
import copy
import itertools
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
bits = lambda x, n: [bool(x >> i & 1) for i in range(n)]
integer = lambda xs: sum(int(x) << i for i, x in enumerate(xs))

def columns(raw, m, n):
    return [integer([raw[i * n + j] for i in range(m)]) for j in range(n)]

def matrix(cols, m):
    return [bool(c >> i & 1) for i in range(m) for c in cols]

def apply(cols, x):
    result = 0
    for j, c in enumerate(cols):
        if x >> j & 1: result ^= c
    return result

def solve(cols, target):
    return next(x for x in range(1 << len(cols)) if apply(cols, x) == target)

def generate(d, branch):
    matrices = {name: columns(d[name], d[b], d[a]) for name, b, a in
                [('f', 'b', 'a'), ('p', 'c', 'a'), ('q', 'd', 'b'), ('g', 'd', 'c')]}
    def level(name, i):
        size, width = d[name.lower()], d['h' + name.lower()]
        return columns(d['source' + name][i], size, width) if i < d['depth'] else [0] * width
    def factor(left, target, rows):
        return matrix([solve(target, x) for x in left], rows)
    w = dict(version=1, data=d)
    for name in 'ABCD':
        w['descent' + name] = [factor(level(name, i + 1), level(name, i), d['h' + name.lower()])
                               for i in range(d['depth'])]
    for name, a, b in [('f', 'A', 'B'), ('p', 'A', 'C'), ('q', 'B', 'D'), ('g', 'C', 'D')]:
        w['filtered' + name.upper()] = [factor([apply(matrices[name], x) for x in level(a, i)],
            level(b, i), d['h' + b.lower()]) for i in range(d['depth'])]
    indices = [d['s'], d['s'] + d['n'], d['s'] + d['m'], d['s'] + d['m'] + d['l']]
    for group, var, index in zip('ABCD', 'xyzw', indices):
        w['member' + var.upper()] = bits(solve(level(group, index), integer(d[var])), d['h' + group.lower()])
    for label, name, a, b, x, y, low, high in [
        ('first', 'f', 'A', 'B', 'x', 'y', indices[0], indices[1]),
        ('second', 'p', 'A', 'C', 'x', 'z', indices[0], indices[2]),
        ('third', 'g', 'C', 'D', 'z', 'w', indices[2], indices[3])]:
        H, K = level(a, low + 1), level(b, high + 1)
        source_size, target_size = d['h' + a.lower()], d['h' + b.lower()]
        result = apply(matrices[name], integer(d[x])) ^ integer(d[y])
        solution = solve([apply(matrices[name], h) for h in H] + K, result)
        u, v = solution & ((1 << source_size) - 1), solution >> source_size
        rep = integer(d[x]) ^ apply(H, u)
        w[label + 'Rep'] = bits(rep, d[a.lower()])
        w[label + 'Source'] = bits(u, source_size)
        w[label + 'Target'] = bits(v, target_size)
    w['firstBranch'] = branch
    b, index = ('B', indices[1]) if branch == 'f' else ('C', indices[2])
    w['firstFactor'] = factor([apply(matrices[branch], x) for x in level('A', indices[0] + 1)],
                              level(b, index + 1), d['h' + b.lower()])
    w['lastFactor'] = factor([apply(matrices['g'], x) for x in level('C', indices[2] + 1)],
                             level('D', indices[3] + 1), d['hd'])
    assert all(apply(matrices['q'], apply(matrices['f'], x)) == apply(matrices['g'], apply(matrices['p'], x))
               for x in range(1 << d['a']))
    assert d['n'] <= d['m'] + d['l']
    return w

nonzero = dict(a=2, b=1, c=1, d=1, ha=2, hb=1, hc=1, hd=1, depth=2, s=0, n=1, m=1, l=0,
    f=[True, False], p=[True, False], q=[True], g=[True],
    sourceA=[[True, False, False, True], [False, False, False, True]],
    sourceB=[[True], [True]], sourceC=[[True], [True]], sourceD=[[True], [True]],
    x=[True, False], y=[True], z=[True], w=[True])
corrected = dict(a=1, b=2, c=0, d=1, ha=1, hb=2, hc=0, hd=1, depth=2, s=0, n=0, m=1, l=1,
    f=[True, True], p=[], q=[True, True], g=[],
    sourceA=[[True], [False]], sourceB=[[True, False, False, True], [False, False, False, True]],
    sourceC=[[], []], sourceD=[[True], [True]], x=[True], y=[True, False], z=[], w=[False])
empty = dict(a=0, b=0, c=0, d=0, ha=0, hb=0, hc=0, hd=0, depth=0, s=64, n=64, m=64, l=64,
    f=[], p=[], q=[], g=[], sourceA=[], sourceB=[], sourceC=[], sourceD=[], x=[], y=[], z=[], w=[])
cases = {'nonzero_f': generate(nonzero, 'f'), 'nonzero_p': generate(nonzero, 'p'),
         'corrected': generate(corrected, 'p'), 'empty': generate(empty, 'f')}
encode = lambda x: json.dumps(x, sort_keys=True, separators=(',', ':')) + '\n'
for name, wire in cases.items():
    (HERE / ('case_' + name + '.json')).write_text(encode(wire))
(HERE / 'examples.jsonl').write_text(''.join(encode(w) for w in cases.values()))
print('four exact finite square fixtures generated')
