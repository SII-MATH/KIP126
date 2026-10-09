"""Independent full-image/crossing oracle and current Lean evidence review."""
import ast
import copy
import hashlib
import itertools
import json
from pathlib import Path
import random
import re
import subprocess
import tempfile

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
EXE = HERE / 'filtered-stable-export'
encode = lambda x: json.dumps(x, sort_keys=True, separators=(',', ':'))
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
bits = lambda x, n: [bool(x >> i & 1) for i in range(n)]
integer = lambda x: sum(int(v) << i for i, v in enumerate(x))

# Reuse only this reviewer's bit-set functions, never the producer's oracle
# or the previous script's execution/report side effects.
reviewer = ROOT / 'FilteredExtensionProducer/independent-review.py'
tree = ast.parse(reviewer.read_text())
functions = [node for node in tree.body if isinstance(node, ast.FunctionDef)]
exec(compile(ast.Module(body=functions, type_ignores=[]), str(reviewer), 'exec'))

def stable(d):
    f, source, target = setup(d)
    image_higher = {apply(f, h) for h in image(source(d['s'] + 1))}
    return image_higher <= image(target(d['s'] + d['n'] + 1))

def no_actual_crossing(d):
    f, source, target = setup(d)
    higher = image(source(d['s'] + 1))
    for p in range(d['s'] + 1, d['s'] + d['n'] + 1):
        if any(apply(f, h) in image(target(p)) - image(target(p + 1)) for h in higher):
            return False
    return True

def validate_stable(w, d):
    assert set(w) == {'version', 'extension', 'stability'} and w['version'] == 1
    validate(w['extension'], d)
    factor = cols(w['stability'], d['hb'], d['ha'])
    f, source, target = setup(d)
    assert [apply(target(d['s'] + d['n'] + 1), c) for c in factor] == [apply(f, c) for c in source(d['s'] + 1)]

cases = []
for pattern in itertools.product([False, True], repeat=9):
    f, *rest = pattern
    for s, n in itertools.product(range(4), repeat=2):
        cases.append(dict(a=1, b=1, ha=1, hb=1, depth=3, s=s, n=n, f=[f],
                          source=[[b] for b in rest[:3]], target=[[b] for b in rest[3:6]],
                          x=[rest[6]], y=[rest[7]]))
rng = random.Random(817291)
for _ in range(4000):
    a, b, ha, hb = [rng.randrange(5) for _ in range(4)]
    depth = rng.randrange(5)
    random_bits = lambda n: [bool(rng.getrandbits(1)) for _ in range(n)]
    cases.append(dict(a=a, b=b, ha=ha, hb=hb, depth=depth, s=rng.randrange(5), n=rng.randrange(5),
        f=random_bits(a * b), source=[random_bits(a * ha) for _ in range(depth)],
        target=[random_bits(b * hb) for _ in range(depth)], x=random_bits(a), y=random_bits(b)))
cases += [json.loads(line)['data'] for line in (ROOT / 'FilteredExtensionProducer/valid.input.jsonl').read_text().splitlines()]
extension_answers = [oracle(d) for d in cases]
stable_answers = [good and stable(d) for d, good in zip(cases, extension_answers)]
for d, good in zip(cases, extension_answers):
    if good:
        assert stable(d) == no_actual_crossing(d)
data = ('\n'.join(encode(dict(version=1, data=d)) for d in cases) + '\n').encode()
result = run(data, EXE)
assert result.returncode == 1
accepted = [d for d, good in zip(cases, stable_answers) if good]
assert len(result.stdout.splitlines()) == len(accepted)
for raw, d in zip(result.stdout.splitlines(), accepted):
    w = json.loads(raw)
    assert encode(w).encode() == raw
    validate_stable(w, d)
rejected = [i for i, good in enumerate(stable_answers, 1) if not good]
assert [int(line.split(b':')[1]) for line in result.stderr.splitlines()] == rejected
for i, line in zip(rejected, result.stderr.splitlines()):
    assert (b'stability:' in line) == extension_answers[i - 1]
with tempfile.TemporaryDirectory(prefix='independent-build-', dir=HERE) as directory:
    fresh = Path(directory) / 'producer'
    compiled = subprocess.run(['c++', '-O2', '-std=c++17', '-Wall', '-Wextra', '-pedantic',
                              str(HERE / 'export.cpp'), '-o', str(fresh)], capture_output=True, timeout=120)
    assert compiled.returncode == 0, compiled.stderr
    again = run(data, fresh)
    assert (again.returncode, again.stdout, again.stderr) == (result.returncode, result.stdout, result.stderr)
fixture_input = (HERE / 'valid.input.jsonl').read_bytes()
for _ in range(3):
    r = run(fixture_input, EXE)
    assert r.returncode == 0 and not r.stderr and r.stdout == (HERE / 'valid.jsonl').read_bytes()
assert len(fixture_input.splitlines()) == 596

nonzero = json.loads((HERE / 'nonzero.json').read_text())['extension']['data']
raw = encode(dict(version=1, data=nonzero)).encode()
bad = [b'', b' ', raw + b'\x00', raw + b'{}', raw[:-1] + b',"version":1}', b' ' * 10000001]
for v in [None, '?', '[NULL]', 'possibly', 'external_input', 0, 1]:
    q = dict(version=1, data=copy.deepcopy(nonzero)); q['data']['f'][0] = v
    bad.append(encode(q).encode())
mixed = run(b'\n'.join([raw, *bad, raw]) + b'\n', EXE)
assert mixed.returncode == 1 and len(mixed.stdout.splitlines()) == 2
assert [int(x.split(b':')[1]) for x in mixed.stderr.splitlines()] == list(range(2, len(bad) + 2))

# The named extension by a corrected representative is valid but its entire
# higher-source image crosses; checking only the requested representative
# would miss the obstruction.
correction = json.loads((ROOT / 'FilteredExtensionProducer/case_correction.json').read_text())['data']
assert oracle(correction) and not stable(correction) and not no_actual_crossing(correction)
cr = run((encode(dict(version=1, data=correction)) + '\n').encode(), EXE)
assert cr.returncode == 1 and b'stability:' in cr.stderr and not cr.stdout

records = {}
for name in ['Basic', 'Import', 'Examples']:
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0, (name, record)
    assert record['source_sha256'] == sha(HERE / (name + '.lean'))
    assert record['log_sha256'] == sha(HERE / (name + '.log'))
    for path, digest in record.get('external_input_sha256', {}).items():
        target = HERE / path
        if not target.exists(): target = ROOT / path
        assert sha(target) == digest
    log = (HERE / (name + '.log')).read_text()
    assert not re.search(r'sorryAx|error:|error\(', log)
    axes = re.findall(r'depends on axioms: \[([^]]*)\]', log)
    assert all(set(x.strip() for x in a.split(',')) <= {'propext', 'Classical.choice', 'Quot.sound'} for a in axes)
    obj = ROOT / '.lake/build/lib/lean/FilteredCrossingCertificates' / (name + '.olean')
    records[name] = dict(direct_exit_code=0, standard_axiom_reports=len(axes) + log.count('does not depend on any axioms'),
        current_object_matches_direct=obj.exists() and sha(obj) == record['olean_sha256'])
assert sum(r['standard_axiom_reports'] for r in records.values()) == 8
report = dict(status='independent_full_higher_image_review_passed', input_cases=len(cases),
    accepted=len(accepted), rejected=len(cases) - len(accepted),
    extensions_with_crossings=sum(a and not b for a, b in zip(extension_answers, stable_answers)),
    preserved_stable_fixtures=596, strict_negative_cases=len(bad), deterministic_runs=3,
    fresh_source_rebuild_equal=True, direct_records=records,
    scope='Whole finite higher-source image into next target filtration; actual NoPageCrossing for any well-formedness proof.',
    input_sha256={str(p.relative_to(ROOT)): sha(p) for p in [HERE / (name + suffix)
        for name in ['Basic', 'Import', 'Examples'] for suffix in ['.lean', '.log', '-compile.json']] +
        [HERE / 'export.cpp', EXE, HERE / 'valid.jsonl', HERE / 'nonzero.json', HERE / 'README.md', reviewer]})
(HERE / 'independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({k: v for k, v in report.items() if k != 'input_sha256'}, indent=2))
