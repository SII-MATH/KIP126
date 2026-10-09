"""Reproduce bounded JSONL pieces from the exact producer fixture bytes."""
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
source = HERE.parent / 'FilteredExtensionProducer/valid.jsonl'
raw = source.read_bytes()
lines = raw.splitlines(keepends=True)
assert len(lines) == 604
assert all(line.endswith(b'\n') and b'\r' not in line for line in lines)
chunks = [b''.join(lines[start:start + 40]) for start in range(0, len(lines), 40)]
assert b''.join(chunks) == raw
for i, data in enumerate(chunks):
    path = HERE / f'batch{i:02d}.jsonl'
    if '--check' in sys.argv:
        assert path.read_bytes() == data, path
    else:
        path.write_bytes(data)
print('16 exact chunks, 604 original records, unchanged order and bytes')
