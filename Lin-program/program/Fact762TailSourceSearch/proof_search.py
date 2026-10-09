"""Stream the fixed proof CSVs; proof events remain untrusted search clues."""
import csv
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
matches = []
inputs = {}
for path in sorted((ROOT / 'upstream/proofs_csv').glob('*.csv')):
    digest = hashlib.sha256()
    with path.open('rb') as stream:
        for block in iter(lambda: stream.read(1048576), b''):
            digest.update(block)
    inputs[str(path.relative_to(ROOT))] = digest.hexdigest()
    with path.open(newline='') as stream:
        reader = csv.DictReader(stream)
        for row in reader:
            if row.get('name') != 'S0':
                continue
            if (row.get('s'), row.get('t')) not in [('14','139'),('13','137'),('12','121')]:
                continue
            matches.append(dict(file=path.name, line=reader.line_num, **row))
(HERE / 'proof-events.json').write_text(json.dumps(dict(status='untrusted_search_clues',
    matches=matches, input_sha256=inputs), indent=2) + '\n')
print('matched', len(matches))
for row in matches:
    if row['s'] == '14' and row['t'] == '139' and row['depth'] == '0':
        print({k: row[k] for k in ['file','line','id','reason','r','x','dx','info']})
