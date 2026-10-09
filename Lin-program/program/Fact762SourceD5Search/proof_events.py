"""Find recorded finite source-cycle arguments; logs remain untrusted clues."""
from collections import deque
import csv
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
degrees = {('Csigmasq', '14', '154'), ('Csigmasq', '19', '158'),
           ('Csigmasq', '13', '152'), ('S0', '14', '139')}
matches, context, hashes = [], {}, {}
for path in sorted((ROOT / 'upstream/proofs_csv').glob('*.csv')):
    digest = hashlib.sha256()
    with path.open('rb') as stream:
        for chunk in iter(lambda: stream.read(1048576), b''):
            digest.update(chunk)
    hashes[path.name] = digest.hexdigest()
    before, remaining = deque(maxlen=4), 0
    with path.open(newline='') as stream:
        reader = csv.DictReader(stream)
        previous_end = 1
        for row in reader:
            item = dict(file=path.name, start_line=previous_end + 1, end_line=reader.line_num, **row)
            previous_end = reader.line_num
            chosen = (row.get('name'), row.get('s'), row.get('t')) in degrees
            if chosen:
                matches.append(item)
                for old in before:
                    context[(old['file'], old['start_line'])] = old
                remaining = 5
            if remaining:
                context[(item['file'], item['start_line'])] = item
                remaining -= 1
            before.append(item)
out = dict(status='untrusted_provenance_search', matches=matches,
           context=list(context.values()), input_sha256=hashes,
           limitation='Recorded branch conclusions and future-page markers are not actual cycle proofs.')
(HERE / 'proof-events.json').write_text(json.dumps(out, indent=2) + '\n')
print('matches', len(matches), 'context', len(context))
for item in matches:
    if item['r'] in ['3', '4', '5'] and (item['depth'] == '0' or item['r'] == '5'):
        print(json.dumps(item))
