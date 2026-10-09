import json
import pathlib
import subprocess

ROOT = pathlib.Path(__file__).resolve().parent
BIN = ROOT / "resolution-export"

def run(*args):
    return subprocess.run([str(BIN), *args], text=True, capture_output=True)

def product(a, b, k, m, n):
    return [sum(a[i*m+r] and b[r*n+j] for r in range(m)) % 2
            for i in range(k) for j in range(n)]

def verify(w):
    k, m, n = w["k"], w["m"], w["n"]
    assert not any(product(w["outgoing"], w["incoming"], k, m, n))
    a = product(w["incoming"], w["up"], m, n, m)
    b = product(w["down"], w["outgoing"], m, k, m)
    assert [x ^ y for x, y in zip(a, b)] == [int(i == j) for i in range(m) for j in range(m)]

batch = run("--batch", str(ROOT / "batch.txt"))
assert batch.returncode == 0, batch.stderr
assert batch.stdout == run("--batch", str(ROOT / "batch.txt")).stdout
rows = [json.loads(line) for line in batch.stdout.splitlines()]
assert len(rows) == 4
for row in rows:
    verify(row)
for args in [("1", "1", "1", "1", "1"),  # Not a complex.
             ("1", "1", "1", "0", "0"),  # Nonzero homology.
             ("1", "2", "1", "0", "10"), # Wrong length.
             ("1", "2", "1", "0?", "10")]:
    rejected = run(*args)
    assert rejected.returncode != 0 and not rejected.stdout
print("resolution exporter: 4 accepted, 4 rejected, deterministic")
