"""Render current claim accounting without inventing completion statuses."""
import json
from pathlib import Path

root = Path(__file__).resolve().parents[1]
coverage = json.loads((root / 'ClaimCoverage.json').read_text())

def cell(value):
    return str(value).replace('|', '\\|').replace('\n', ' ')

lines = [
    '# Claim coverage audit', '',
    'Step four remains incomplete. This file is generated from ClaimCoverage.json.', '',
    coverage['audit_method'], '',
    '| Claim | Current level | Batch scope |',
    '|---|---|---|',
]
for claim in coverage['claims']:
    lines.append('| ' + ' | '.join(cell(claim[key]) for key in
                                  ('id', 'level', 'batch_scope')) + ' |')
for claim in coverage['claims']:
    lines += ['', '## ' + claim['id'], '',
              'Requested: ' + claim['requested_conclusion'], '',
              'Inputs: ' + ', '.join('`' + x + '`' for x in claim['actual_inputs']), '',
              'Certificate families: ' + ', '.join(claim['certificate_families']), '',
              'Proved source declarations: ' + ('; '.join('`' + x + '`' for x in
                  claim['proved_theorems']) or 'None; explicit external input.'), '',
              'Missing mathematics: ' + ' '.join(claim['unproved_premises'])]
    standard = {'id', 'level', 'batch_scope', 'requested_conclusion', 'actual_inputs',
                'certificate_families', 'proved_theorems', 'unproved_premises', 'paper_location'}
    for key, value in claim.items():
        if key not in standard:
            lines += ['', key.replace('_', ' ') + ': ' +
                      (value if isinstance(value, str) else json.dumps(value, ensure_ascii=True))]
lines += ['', 'Shared trust boundary: ' + coverage['shared_trust_boundary'], '']
(root / 'ClaimCoverage.md').write_text('\n'.join(lines))
print(f'Rendered all {len(coverage["claims"])} source claims with explicit obligations')
