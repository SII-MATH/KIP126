"""Reproduce proof chunks from the exact deterministic C++ output bytes."""
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
raw = (HERE / 'valid.jsonl').read_bytes()
lines = raw.splitlines(keepends=True)
assert len(lines) == 863
assert all(line.endswith(b'\n') and b'\r' not in line for line in lines)
chunks = [b''.join(lines[i:i + 40]) for i in range(0, len(lines), 40)]
assert b''.join(chunks) == raw
for i, data in enumerate(chunks):
    path = HERE / f'batch{i:02d}.jsonl'
    if '--check' in sys.argv:
        assert path.read_bytes() == data, path
    else:
        path.write_bytes(data)
print('22 exact chunks, 863 records, original byte order preserved')
