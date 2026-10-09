"""Finite whole-image and actual quotient-equation replay of square wires."""
import copy
import hashlib
import itertools
import json
from pathlib import Path
import random
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
vec = lambda xs: sum(int(x) << i for i, x in enumerate(xs))

def cols(raw, m, n):
    assert len(raw) == m * n and all(type(x) is bool for x in raw)
    return [vec([raw[i * n + j] for i in range(m)]) for j in range(n)]

def apply(M, x):
    y = 0
    for j, c in enumerate(M):
        if x >> j & 1: y ^= c
    return y

def image(M):
    result = {0}
    for c in M: result |= {x ^ c for x in result}
    return result

def unpack(d):
    maps = {name: cols(d[name], d[b], d[a]) for name, b, a in
            [('f', 'b', 'a'), ('p', 'c', 'a'), ('q', 'd', 'b'), ('g', 'd', 'c')]}
    def level(name, i):
        return cols(d['source' + name][i], d[name.lower()], d['h' + name.lower()]) if i < d['depth'] else [0] * d['h' + name.lower()]
    return maps, level

def valid(w):
    d = w['data']; maps, level = unpack(d)
    if w['version'] != 1 or d['n'] > d['m'] + d['l']: return False
    for name in 'ABCD':
        for i in range(d['depth']):
            factor = cols(w['descent' + name][i], d['h' + name.lower()], d['h' + name.lower()])
            if [apply(level(name, i), c) for c in factor] != level(name, i + 1): return False
    for name, a, b in [('f', 'A', 'B'), ('p', 'A', 'C'), ('q', 'B', 'D'), ('g', 'C', 'D')]:
        for i in range(d['depth']):
            factor = cols(w['filtered' + name.upper()][i], d['h' + b.lower()], d['h' + a.lower()])
            if [apply(level(b, i), c) for c in factor] != [apply(maps[name], c) for c in level(a, i)]: return False
    if any(apply(maps['q'], c) != apply(maps['g'], p) for c, p in zip(maps['f'], maps['p'])): return False
    indices = [d['s'], d['s'] + d['n'], d['s'] + d['m'], d['s'] + d['m'] + d['l']]
    for name, x, i in zip('ABCD', 'xyzw', indices):
        if apply(level(name, i), vec(w['member' + x.upper()])) != vec(d[x]): return False
    for label, name, a, b, x, y, low, high in [
        ('first', 'f', 'A', 'B', 'x', 'y', indices[0], indices[1]),
        ('second', 'p', 'A', 'C', 'x', 'z', indices[0], indices[2]),
        ('third', 'g', 'C', 'D', 'z', 'w', indices[2], indices[3])]:
        rep = vec(w[label + 'Rep'])
        if apply(level(a, low + 1), vec(w[label + 'Source'])) != rep ^ vec(d[x]): return False
        if apply(level(b, high + 1), vec(w[label + 'Target'])) != apply(maps[name], rep) ^ vec(d[y]): return False
    name = w['firstBranch']; b, i = ('B', indices[1]) if name == 'f' else ('C', indices[2])
    if name not in ['f', 'p']: return False
    factor = cols(w['firstFactor'], d['h' + b.lower()], d['ha'])
    if [apply(level(b, i + 1), c) for c in factor] != [apply(maps[name], c) for c in level('A', indices[0] + 1)]: return False
    factor = cols(w['lastFactor'], d['hd'], d['hc'])
    return [apply(level('D', indices[3] + 1), c) for c in factor] == [apply(maps['g'], c) for c in level('C', indices[2] + 1)]

def semantic(d):
    maps, level = unpack(d)
    for i in range(d['depth']):
        for name in 'ABCD':
            assert image(level(name, i + 1)) <= image(level(name, i))
        for name, a, b in [('f', 'A', 'B'), ('p', 'A', 'C'), ('q', 'B', 'D'), ('g', 'C', 'D')]:
            assert {apply(maps[name], x) for x in image(level(a, i))} <= image(level(b, i))
    assert all(apply(maps['q'], apply(maps['f'], x)) == apply(maps['g'], apply(maps['p'], x)) for x in range(1 << d['a']))
    s = d['s'] + d['n']; target = d['s'] + d['m'] + d['l']
    assert d['n'] <= d['m'] + d['l']
    x, y = vec(d['y']), vec(d['w'])
    F, H = image(level('B', s)), image(level('B', s + 1))
    G, K = image(level('D', target)), image(level('D', target + 1))
    assert x in F and y in G
    Z = {a for a in F if apply(maps['q'], a) in G}
    HC = {a for a in H if apply(maps['q'], a) in G}
    relations = {b ^ apply(maps['q'], a) for a in HC for b in K}
    assert any(a ^ x in H and apply(maps['q'], a) ^ y in relations for a in Z)
    return apply(maps['q'], x) not in G

fixtures = [json.loads(line) for line in (HERE / 'examples.jsonl').read_text().splitlines()]
assert len(fixtures) == 4
noncycles = 0
for w in fixtures:
    assert valid(w)
    noncycles += semantic(w['data'])
assert noncycles == 1
mutations = accepted = rejected = 0
for w in fixtures:
    for field, values in w.items():
        if field in ['version', 'data', 'firstBranch']: continue
        paths = [(i, j) for i, xs in enumerate(values) for j in range(len(xs))] if values and isinstance(values[0], list) else [(i,) for i in range(len(values))]
        for path in paths:
            changed = copy.deepcopy(w)
            array = changed[field]
            for i in path[:-1]: array = array[i]
            array[path[-1]] = not array[path[-1]]
            mutations += 1
            if valid(changed):
                semantic(changed['data']); accepted += 1
            else: rejected += 1
assert accepted > 0 and rejected > 0
records = {}
for name in ['Basic', 'Import', 'Examples']:
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(HERE / (name + '.lean'))
    assert record['log_sha256'] == sha(HERE / (name + '.log'))
    for path, digest in record['external_input_sha256'].items(): assert sha(ROOT / path) == digest
    log = (HERE / (name + '.log')).read_text()
    assert not re.search(r'sorryAx|error:|error\(', log)
    axes = re.findall(r'depends on axioms: \[([^]]*)\]', log)
    assert all(set(x.strip() for x in a.split(',')) <= {'propext', 'Classical.choice', 'Quot.sound'} for a in axes)
    obj = ROOT / '.lake/build/lib/lean/FiniteFilteredSquareCertificates' / (name + '.olean')
    records[name] = dict(exit_code=0, standard_reports=len(axes) + log.count('does not depend on any axioms'),
        current_object_matches_direct=obj.exists() and sha(obj) == record['olean_sha256'])
assert sum(x['standard_reports'] for x in records.values()) == 9
report = dict(status='finite_square_semantic_replay_passed', fixtures=4,
    original_fourth_inputs_not_cycles=noncycles, witness_bit_mutations=mutations,
    valid_alternative_witnesses=accepted, rejected_witness_mutations=rejected, direct_records=records,
    input_sha256={p.name: sha(p) for p in [HERE / 'examples.jsonl', HERE / 'generate_examples.py',
        HERE / 'review.py', *[HERE / (n + '.lean') for n in ['Basic', 'Import', 'Examples']]]})
(HERE / 'review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({k: v for k, v in report.items() if k != 'input_sha256'}, indent=2))
