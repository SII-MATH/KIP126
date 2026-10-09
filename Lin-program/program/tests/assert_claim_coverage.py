"""Check exhaustive claim accounting without promoting finite checks to topology."""
import csv
import json
from pathlib import Path

root = Path(__file__).resolve().parents[1]
with (root.parent / 'doc_data/kervaire_claims.csv').open(newline='') as stream:
    source = list(csv.DictReader(stream))
coverage = json.loads((root / 'ClaimCoverage.json').read_text())
claims = coverage['claims']
ids = [row['id'] for row in claims]
assert len(ids) == len(set(ids)), 'duplicate coverage claim'
assert set(ids) == {row['id'] for row in source}, 'missing or unexpected claim'
original = {row['id']: row for row in source}
for row in claims:
    name = row['id']
    assert row['paper_location'] == original[name]['section_or_location'], name
    csv_conclusion = row.get('csv_conclusion', row['requested_conclusion'])
    assert csv_conclusion == original[name]['output_or_conclusion'], name
    assert csv_conclusion in row['requested_conclusion'], name
    if 'csv_conclusion' in row:
        assert name in {'fact-7.13', 'fact-7.15', 'fact-7.19'}, name
        assert 'not killed by any classical differential (all pages)' in row['requested_conclusion'], name
    for field in ('level', 'actual_inputs', 'certificate_families', 'batch_scope'):
        assert row[field], (name, field)
    assert isinstance(row['proved_theorems'], list), name
    assert isinstance(row['unproved_premises'], list), name
    for declaration in row['proved_theorems']:
        path = declaration.split(':', 1)[0]
        assert (root / path).is_file(), (name, path)
    if name.startswith('manual-'):
        assert row['level'] == 'external_input_inventory', name
        assert row['unproved_premises'], name
        assert not row['proved_theorems'], name
remaining = [row['id'] for row in claims if row['unproved_premises']]
if remaining:
    assert coverage['status'] == 'step4_incomplete', remaining
print(f'PASS: all {len(source)} source claims accounted for; '
      f'{len(remaining)} retain explicit mathematical obligations')
