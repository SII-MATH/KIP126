"""Independent bit-set subgroup oracle and strict producer transport tests."""
import copy
import hashlib
import itertools
import json
from pathlib import Path
import random
import subprocess
import tempfile

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
EXE = HERE / 'filtered-extension-export'
encode = lambda x: json.dumps(x, sort_keys=True, separators=(',', ':'))
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
bits = lambda x, n: [bool(x >> i & 1) for i in range(n)]
integer = lambda x: sum(int(v) << i for i, v in enumerate(x))

def cols(raw, m, n):
    assert len(raw) == m * n and all(type(x) is bool for x in raw)
    return [integer([raw[i * n + j] for i in range(m)]) for j in range(n)]

def apply(columns, x):
    value = 0
    for j, c in enumerate(columns):
        if x >> j & 1:
            value ^= c
    return value

def image(columns):
    result = {0}
    for c in columns:
        result |= {x ^ c for x in result}
    return result

def setup(d):
    f = cols(d['f'], d['b'], d['a'])
    F = [cols(x, d['a'], d['ha']) for x in d['source']]
    G = [cols(x, d['b'], d['hb']) for x in d['target']]
    return f, lambda i: F[i] if i < d['depth'] else [0] * d['ha'], lambda i: G[i] if i < d['depth'] else [0] * d['hb']

def oracle(d):
    f, source, target = setup(d)
    F = lambda i: image(source(i))
    G = lambda i: image(target(i))
    for i in range(d['depth']):
        if not F(i + 1) <= F(i) or not G(i + 1) <= G(i):
            return False
        if not {apply(f, x) for x in F(i)} <= G(i):
            return False
    s, n, x, y = d['s'], d['n'], integer(d['x']), integer(d['y'])
    if x not in F(s) or apply(f, x) not in G(s + n) or y not in G(s + n):
        return False
    corrections = {h for h in F(s + 1) if apply(f, h) in G(s + n)}
    relation = {b ^ apply(f, h) for b in G(s + n + 1) for h in corrections}
    return apply(f, x) ^ y in relation

def validate(w, d):
    assert w['version'] == 1 and w['data'] == d
    assert set(w) == {'version', 'data', 'sourceFactors', 'targetFactors', 'mapFactors',
                      'sourceMember', 'imageMember', 'targetMember', 'representative',
                      'sourceCorrection', 'targetCorrection'}
    f, source, target = setup(d)
    for field in ['sourceFactors', 'targetFactors', 'mapFactors']:
        assert len(w[field]) == d['depth']
    for i in range(d['depth']):
        sf = cols(w['sourceFactors'][i], d['ha'], d['ha'])
        tf = cols(w['targetFactors'][i], d['hb'], d['hb'])
        mf = cols(w['mapFactors'][i], d['hb'], d['ha'])
        assert [apply(source(i), x) for x in sf] == source(i + 1)
        assert [apply(target(i), x) for x in tf] == target(i + 1)
        assert [apply(target(i), x) for x in mf] == [apply(f, x) for x in source(i)]
    for field, size in [('sourceMember', d['ha']), ('imageMember', d['hb']),
                        ('targetMember', d['hb']), ('representative', d['a']),
                        ('sourceCorrection', d['ha']), ('targetCorrection', d['hb'])]:
        assert len(w[field]) == size and all(type(x) is bool for x in w[field])
    s, n = d['s'], d['n']
    x, y, rep = integer(d['x']), integer(d['y']), integer(w['representative'])
    assert apply(source(s), integer(w['sourceMember'])) == x
    assert apply(target(s + n), integer(w['imageMember'])) == apply(f, x)
    assert apply(target(s + n), integer(w['targetMember'])) == y
    assert apply(source(s + 1), integer(w['sourceCorrection'])) == x ^ rep
    assert apply(target(s + n + 1), integer(w['targetCorrection'])) == apply(f, rep) ^ y

def run(data, exe=EXE):
    return subprocess.run([str(exe), '-'], input=data, capture_output=True, timeout=120)

cases = []
for pattern in itertools.product([False, True], repeat=9):
    f, *rest = pattern
    for s, n in itertools.product(range(4), repeat=2):
        cases.append(dict(a=1, b=1, ha=1, hb=1, depth=3, s=s, n=n, f=[f],
                          source=[[b] for b in rest[:3]], target=[[b] for b in rest[3:6]],
                          x=[rest[6]], y=[rest[7]]))
rng = random.Random(91827261)
for _ in range(3000):
    a, b, ha, hb = [rng.randrange(5) for _ in range(4)]
    depth = rng.randrange(5)
    randbits = lambda size: [bool(rng.getrandbits(1)) for _ in range(size)]
    cases.append(dict(a=a, b=b, ha=ha, hb=hb, depth=depth, s=rng.randrange(6), n=rng.randrange(5),
                      f=randbits(a * b), source=[randbits(a * ha) for _ in range(depth)],
                      target=[randbits(b * hb) for _ in range(depth)], x=randbits(a), y=randbits(b)))
expected = [oracle(d) for d in cases]
wire_input = ('\n'.join(encode(dict(version=1, data=d)) for d in cases) + '\n').encode()
result = run(wire_input)
assert result.returncode == 1
accepted = [d for d, valid in zip(cases, expected) if valid]
output = result.stdout.splitlines()
assert len(output) == len(accepted)
for raw, d in zip(output, accepted):
    w = json.loads(raw)
    assert raw.decode() == encode(w)
    validate(w, d)
badrows = [i for i, valid in enumerate(expected, 1) if not valid]
assert [int(x.split(b':')[1]) for x in result.stderr.splitlines()] == badrows

# Rebuild privately to bind current sources to the independently observed behavior.
with tempfile.TemporaryDirectory(prefix='independent-build-', dir=HERE) as directory:
    fresh = Path(directory) / 'producer'
    compile_result = subprocess.run(['c++', '-O2', '-std=c++17', '-Wall', '-Wextra', '-pedantic',
        str(HERE / 'export.cpp'), '-o', str(fresh)], capture_output=True, timeout=120)
    assert compile_result.returncode == 0, compile_result.stderr
    replay = run(wire_input, fresh)
    assert (replay.returncode, replay.stdout, replay.stderr) == (result.returncode, result.stdout, result.stderr)

valid_input = (HERE / 'valid.input.jsonl').read_bytes()
repeats = [run(valid_input) for _ in range(3)]
assert all(r.returncode == 0 and not r.stderr and r.stdout == (HERE / 'valid.jsonl').read_bytes() for r in repeats)
assert len(valid_input.splitlines()) == 604
for line, raw in zip(valid_input.splitlines(), repeats[0].stdout.splitlines()):
    d = json.loads(line)['data']
    assert oracle(d)
    validate(json.loads(raw), d)

base = json.loads((HERE / 'case_correction.json').read_text())['data']
query = dict(version=1, data=base)
raw = encode(query).encode()
bad = [b'', b' ', raw + b'\x00', raw + b'\x00{}', raw + b'{}', raw + b' false',
       raw[:-1] + b',"version":1}', raw.replace(b'"version":1', b'"version":01'),
       raw.replace(b'"version":1', b'"version":1.0'), b'[' * 34 + b'0' + b']' * 34,
       b' ' * 10000001]
for field in ['a', 'b', 'ha', 'hb', 's', 'n', 'depth']:
    for v in [65, -1, 100000000000000, True]:
        q = copy.deepcopy(query); q['data'][field] = v
        bad.append(encode(q).encode())
for v in [None, 0, 1, '?', '[NULL]', 'possibly', 'external_input']:
    q = copy.deepcopy(query); q['data']['x'][0] = v
    bad.append(encode(q).encode())
for action in ['missing', 'unknown', 'short', 'long']:
    q = copy.deepcopy(query)
    if action == 'missing': q['data'].pop('x')
    elif action == 'unknown': q['data']['proof'] = True
    elif action == 'short': q['data']['source'].pop()
    else: q['data']['f'].append(False)
    bad.append(encode(q).encode())
mixed = b'\n'.join([raw, *bad, raw]) + b'\n'
negative = run(mixed)
assert negative.returncode == 1 and len(negative.stdout.splitlines()) == 2
assert [int(x.split(b':')[1]) for x in negative.stderr.splitlines()] == list(range(2, len(bad) + 2))
for data in [raw, b' \t' + raw + b'\r\n', json.dumps(query).encode() + b'\n']:
    r = run(data)
    assert r.returncode == 0 and not r.stderr and r.stdout == (HERE / 'case_correction.json').read_bytes()

# This protocol requires the original x to be a cycle. A corrected leading
# representative belongs to the separate HasExtension interface instead.
noncycle = copy.deepcopy(base); noncycle['n'] = 2
assert any(apply(cols(noncycle['f'], 1, 2), x) == 0 for x in [1 ^ 2])
r = run((encode(dict(version=1, data=noncycle)) + '\n').encode())
assert r.returncode == 1 and b'imageMember' in r.stderr and not r.stdout
large_results = []
for rank in [64, 32]:
    size = 64
    mat = [i == (j % rank) for i in range(size) for j in range(size)]
    ident = [i == j for i in range(size) for j in range(size)]
    d = dict(a=size, b=size, ha=size, hb=size, depth=1, s=0, n=0, f=ident,
             source=[mat], target=[mat], x=bits((1 << rank) - 1, size), y=bits((1 << rank) - 1, size))
    r = run((encode(dict(version=1, data=d)) + '\n').encode())
    assert r.returncode == 0 and not r.stderr
    validate(json.loads(r.stdout), d)
    large_results.append(rank)
empty = dict(a=0, b=0, ha=0, hb=0, depth=0, s=64, n=64, f=[], source=[], target=[], x=[], y=[])
r = run((encode(dict(version=1, data=empty)) + '\n').encode())
assert r.returncode == 0 and not r.stderr
validate(json.loads(r.stdout), empty)
audit = json.loads((HERE / 'audit.json').read_text())
assert audit['executable_sha256'] == sha(EXE)
for name, digest in audit['source_sha256'].items():
    assert sha(ROOT / name) == digest
report = dict(status='independent_producer_review_passed', input_cases=len(cases), scalar_cases=8192,
    random_cases=3000, accepted=len(accepted), rejected=len(cases) - len(accepted),
    strict_rejection_cases=len(bad), preserved_fixtures=604, deterministic_runs=3,
    fresh_source_rebuild_equal=True, dimension64_ranks=large_results, depth_zero_s_plus_n=128,
    original_noncycle_rejected_as_documented=True,
    interrupted_monolithic_lean_build_counted=False,
    input_sha256={str(p.relative_to(ROOT)): sha(p) for p in [HERE / 'export.cpp', EXE,
        HERE / 'README.md', HERE / 'valid.input.jsonl', HERE / 'valid.jsonl', ROOT / 'IndexedFamilyProducer/json.hpp']})
(HERE / 'independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({k: v for k, v in report.items() if k != 'input_sha256'}, indent=2))
