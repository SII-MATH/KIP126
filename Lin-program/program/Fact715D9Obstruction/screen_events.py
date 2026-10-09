"""Stream provenance for the four maps retaining a possible E9 target image."""
import csv
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
degrees = {
    'CW_eta_2': {(2, 128), (11, 136)},
    'Cnu': {(3, 140), (12, 148)},
    'CW_eta_nu': {(3, 142), (12, 150)},
    'CW_2_eta_nu': {(3, 143), (12, 151)},
}
records = []
scanned = 0
inputs = {}
for path in sorted((ROOT / 'upstream/proofs_csv').glob('*.csv')):
    digest = hashlib.sha256()
    with path.open('rb') as stream:
        for block in iter(lambda: stream.read(1048576), b''):
            digest.update(block)
    inputs[str(path.relative_to(ROOT))] = digest.hexdigest()
    with path.open(encoding='utf-8-sig', newline='') as stream:
        reader = csv.DictReader(stream)
        for row in reader:
            scanned += 1
            if row['name'] not in degrees or (int(row['s']), int(row['t'])) not in degrees[row['name']]:
                continue
            records.append(dict(file=str(path.relative_to(ROOT)), line=reader.line_num, **row))
result = dict(scanned=scanned, selected=len(records), events=records,
              exact_degrees={k: sorted(v) for k, v in degrees.items()},
              input_sha256=inputs,
              limitation='Deduction events are provenance only, not mathematical proof.')
(HERE / 'map-events.json').write_text(json.dumps(result, indent=2) + '\n')
print(scanned, 'scanned;', len(records), 'selected')
for row in records:
    print(row['id'], row['depth'], row['reason'], row['name'], row['s'], row['t'],
          row['r'], row['x'], row['dx'], row['info'])
