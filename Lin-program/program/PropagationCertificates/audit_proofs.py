#!/usr/bin/env python3
"""Stream the fixed release proof logs; no row is promoted to a theorem."""
import collections
import csv
import hashlib
import json
from pathlib import Path

root = Path(__file__).resolve().parents[1]
total = collections.Counter()
files = []
examples = {}
for path in sorted((root / 'upstream/proofs_csv').glob('*.csv')):
    stats = collections.Counter()
    tags = collections.Counter()
    depths = collections.Counter()
    first = last = previous = None
    digest = hashlib.sha256()
    with path.open('rb') as source:
        for chunk in iter(lambda: source.read(1024 * 1024), b''):
            digest.update(chunk)
    with path.open(newline='', encoding='utf-8-sig') as source:
        for row in csv.DictReader(source):
            stats['rows'] += 1
            reason = row['reason']
            tags[reason] += 1
            depths[row['depth']] += 1
            examples.setdefault(reason, dict(row))
            ident = int(row['id'])
            if first is None:
                first = ident
            if previous is not None:
                if ident <= previous:
                    stats['nonincreasing_ids'] += 1
                if ident > previous + 1:
                    stats['id_gap_events'] += 1
                    stats['missing_ids_between_rows'] += ident - previous - 1
            previous = last = ident
            for key in ('x', 'dx', 'info'):
                if row[key] == '':
                    stats[f'{key}_empty'] += 1
                if row[key] == '[NULL]':
                    stats[f'{key}_null_marker'] += 1
                if '?' in row[key]:
                    stats[f'{key}_question_marker'] += 1
            if row['depth'] != '0':
                stats['nonzero_depth'] += 1
            if row['reason'] in ('T', 'TI'):
                stats['hypothetical_branch_records'] += 1
    total.update(tags)
    files.append(dict(path=str(path.relative_to(root)), sha256=digest.hexdigest(),
                      first_id=first, last_id=last, counts=dict(stats),
                      reasons=dict(sorted(tags.items())), depths=dict(sorted(depths.items()))))
result = dict(schema='lin-proof-source-audit/v1', files=files,
              total_rows=sum(f['counts']['rows'] for f in files),
              reasons=dict(sorted(total.items())), examples=examples,
              semantic_status='inventory_only; no proof replay implied')
(root / 'proof_release_audit.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps({k: result[k] for k in ('total_rows', 'reasons')}, indent=2))
