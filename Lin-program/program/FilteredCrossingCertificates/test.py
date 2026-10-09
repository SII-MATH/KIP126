"""Independent finite-image oracle for the complete no-crossing condition."""
import copy
import hashlib
import itertools
import json
from pathlib import Path
import subprocess

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
EXE = HERE / 'filtered-stable-export'
encode = lambda x: json.dumps(x, sort_keys=True, separators=(',', ':'))
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()

def vectors(n):
    return itertools.product([False, True], repeat=n)

def apply(matrix, rows, cols, vector):
    return tuple(sum(matrix[i*cols+j] and vector[j] for j in range(cols)) % 2 == 1
                 for i in range(rows))

def level(data, name, index):
    rows, cols = (data['a'], data['ha']) if name == 'source' else (data['b'], data['hb'])
    matrix = data[name][index] if index < data['depth'] else [False] * (rows*cols)
    return {apply(matrix, rows, cols, v) for v in vectors(cols)}

def no_crossing(data):
    images = {apply(data['f'], data['b'], data['a'], x)
              for x in level(data, 'source', data['s']+1)}
    return images <= level(data, 'target', data['s']+data['n']+1)

def run(lines):
    return subprocess.run([str(EXE), '-'], input='\n'.join(lines)+'\n', text=True, capture_output=True)

cases = [json.loads(line) for line in (ROOT/'FilteredExtensionProducer/valid.input.jsonl').read_text().splitlines()]
answers = [no_crossing(q['data']) for q in cases]
expected = [q for q, answer in zip(cases, answers) if answer]
result = run([encode(q) for q in cases])
assert result.returncode == 1
outputs = result.stdout.splitlines()
assert len(outputs) == len(expected)
rejected = [i for i, answer in enumerate(answers, 1) if not answer]
assert len(result.stderr.splitlines()) == len(rejected)
assert all(msg.startswith(f'stdin:{i}: stability:')
           for i, msg in zip(rejected, result.stderr.splitlines()))
for text, query in zip(outputs, expected):
    w = json.loads(text)
    assert text == encode(w)
    assert set(w) == {'version', 'extension', 'stability'} and w['version'] == 1
    d = query['data']
    assert w['extension']['data'] == d
    assert len(w['stability']) == d['hb']*d['ha']
    assert all(type(bit) is bool for bit in w['stability'])
    def matrix(name, i, rows, cols):
        return d[name][i] if i < d['depth'] else [False]*(rows*cols)
    H = matrix('source', d['s']+1, d['a'], d['ha'])
    K = matrix('target', d['s']+d['n']+1, d['b'], d['hb'])
    for v in vectors(d['ha']):
        assert apply(d['f'], d['b'], d['a'], apply(H, d['a'], d['ha'], v)) == \
            apply(K, d['b'], d['hb'], apply(w['stability'], d['hb'], d['ha'], v))
    assert no_crossing(d)
runs = [run([encode(q) for q in expected]) for _ in range(3)]
assert all(r.returncode == 0 and not r.stderr for r in runs)
assert len({r.stdout for r in runs}) == 1
(HERE/'valid.jsonl').write_text(runs[0].stdout)
(HERE/'valid.input.jsonl').write_text('\n'.join(encode(q) for q in expected)+'\n')
nonzero = json.loads((ROOT/'FilteredExtensionProducer/case_nonzero.json').read_text())
nonzero_query = {'version': 1, 'data': nonzero['data']}
nonzero_line = encode(nonzero_query)
sample = run([nonzero_line])
assert sample.returncode == 0
(HERE/'nonzero.json').write_text(sample.stdout)
correction = json.loads((ROOT/'FilteredExtensionProducer/case_correction.json').read_text())
correction_result = run([encode({'version': 1, 'data': correction['data']})])
assert correction_result.returncode == 1 and not correction_result.stdout
assert 'stability:' in correction_result.stderr
bad = ['', nonzero_line+'\x00', nonzero_line+'{}',
       nonzero_line[:-1]+',"version":1}']
for value in [None, '?', '[NULL]', 'possibly', 'external_input', 0, 1]:
    q = copy.deepcopy(nonzero_query)
    q['data']['f'][0] = value
    bad.append(encode(q))
for line in bad:
    r = run([nonzero_line, line, nonzero_line])
    assert r.returncode == 1 and len(r.stdout.splitlines()) == 2
    assert len(r.stderr.splitlines()) == 1 and r.stderr.startswith('stdin:2: ')
sources = ['FilteredCrossingCertificates/export.cpp', 'FilteredCrossingCertificates/test.py',
           'FilteredExtensionProducer/export.cpp', 'IndexedFamilyProducer/json.hpp']
report = dict(status='passed', input_cases=len(cases), accepted=len(expected), rejected=len(rejected),
    deterministic_runs=3, strict_negative_cases=len(bad), nonzero_example=True,
    corrected_extension_with_crossing_rejected=True,
    source_sha256={p: sha(ROOT/p) for p in sources},
    executable_sha256=sha(EXE), valid_sha256=sha(HERE/'valid.jsonl'))
(HERE/'producer-audit.json').write_text(json.dumps(report, indent=2)+'\n')
print(f"PASS: {len(cases)} extensions, {len(expected)} stable, {len(rejected)} crossing; full-image oracle")
