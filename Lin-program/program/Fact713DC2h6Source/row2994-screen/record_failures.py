"""Record exact retained failures and the joint undetected target direction."""
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
raw = json.loads((HERE/'lifted-search.json').read_text())
candidate = json.loads((HERE/'candidates.json').read_text())
failures = []
for entry in raw['maps']:
    stages = [{**entry[label], 'label': label} for label in ['source', 'target', 'target1', 'targetsum']
              if entry.get(label, {}).get('status') != 'computed_cycle_quotient']
    if stages:
        failures.append(dict(map=entry['map']['name'], section=entry['section'],
                             ordinal=entry['ordinal'], stages=stages))
zero = [entry for entry in candidate['eligible'] if entry['source_zero']]
joint_kernel = [vector for index, (_, vector) in enumerate(raw['target_vectors'])
                if all(not entry['detects'][index] for entry in zero)]
assert len(failures) == 22 and joint_kernel == [[0, 1]]
report = dict(status='retained_failures_and_joint_kernel_recorded', source_row=raw['row'],
    incomplete_maps=len(failures), failures=failures, complete_source_zero_maps=len(zero),
    undetected_nonzero_target_vectors=joint_kernel,
    detects_first_only=[entry['map'] for entry in zero if entry['detects'] == [True, False, True]],
    consequence='No subset of these complete source-zero maps jointly reflects zero on the full target.',
    scope='Bounded numerical screen only; incomplete maps are not evidence of impossibility.',
    sha256={p.name: hashlib.sha256(p.read_bytes()).hexdigest()
            for p in [Path(__file__), HERE/'lifted-search.json', HERE/'candidates.json']})
(HERE/'failure-locations.json').write_text(json.dumps(report, indent=2)+'\n')
print('22 incomplete maps; the full source-zero family misses target (0,1)')
