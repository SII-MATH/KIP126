"""Exhaustive 2x3 matrices/targets, zero dimensions, and deterministic wire tests."""
import itertools
import json
import pathlib
import subprocess

root = pathlib.Path(__file__).resolve().parent
cases = []
for m, n in [(2, 3), (0, 0), (0, 2), (2, 0)]:
    for flat in itertools.product(range(2), repeat=m*n):
        for y in itertools.product(range(2), repeat=m):
            cases.append((m, n, flat, y))
data = ''.join(' '.join(map(str, (m, n, *a, *y))) + '\n' for m, n, a, y in cases)
output = subprocess.check_output([root / 'linear_export'], input=data, text=True)
assert output == subprocess.check_output([root / 'linear_export'], input=data, text=True)
records = [json.loads(line) for line in output.splitlines()]
assert len(records) == len(cases)
for (m, n, flat, y), record in zip(cases, records):
    assert record['matrix'] == dict(rows=m, cols=n, entries=list(map(bool, flat)))
    assert record['target'] == list(map(bool, y))
    w = record['witness']
    image = {tuple(sum(flat[i*n+j]*x[j] for j in range(n)) % 2 for i in range(m))
             for x in itertools.product(range(2), repeat=n)}
    if record['kind'] == 'image':
        assert y in image and len(w) == n
        assert tuple(sum(flat[i*n+j]*w[j] for j in range(n)) % 2 for i in range(m)) == y
    else:
        assert record['kind'] == 'nonimage' and y not in image and len(w) == m
        assert sum(w[i]*y[i] for i in range(m)) % 2 == 1
        assert all(sum(w[i]*flat[i*n+j] for i in range(m)) % 2 == 0 for j in range(n))
for malformed in ['-1 0', '2 1 0 2', '1 1 1', '4097 0']:
    proc = subprocess.run([root / 'linear_export'], input=malformed, text=True, capture_output=True)
    assert proc.returncode != 0 and 'record 1:' in proc.stderr
print(f'PASS: {len(cases)} exhaustive certificates, deterministic JSONL, malformed input rejection')
