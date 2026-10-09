"""Stream the fixed proof CSVs for Fact715 complete later incoming sources."""
import csv
import hashlib
import json
import sqlite3
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
BASE = ROOT / 'upstream/kervaire-49'
connection = sqlite3.connect('file:' + str(BASE / 'S0_AdamsSS_t261.db') + '?mode=ro', uri=True)
degrees = {(6,132), (5,131), (4,130), (3,129), (2,128), (1,127), (0,126), (11,136)}
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
            if row['name'] != 'S0' or (int(row['s']), int(row['t'])) not in degrees:
                continue
            records.append(dict(file=str(path.relative_to(ROOT)),line=reader.line_num,**row))
source_rows = {}
for s,t in sorted(degrees):
    source_rows[f'{s},{t}'] = {
        table: [list(row) for row in connection.execute(
            f'SELECT * FROM S0_AdamsE2_{table} WHERE s=? AND t=? ORDER BY id', (s,t))]
        for table in ['ss','basis']}
result = dict(scanned=scanned, selected=len(records), events=records,
              exact_degrees=sorted(degrees), database_rows=source_rows,
              input_sha256=inputs,
              limitation='Deduction events are provenance only, not mathematical proof.')
(HERE / 'proof-events.json').write_text(json.dumps(result,indent=2)+'\n')
print(scanned,'scanned;',len(records),'selected')
for row in records:
    if row['depth']=='0' and int(row['r']) >= 5:
        print(row['id'],row['depth'],row['reason'],row['s'],row['t'],row['r'],row['x'],row['dx'],row['info'])
