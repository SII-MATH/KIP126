"""Screen the complete two-dimensional row2622 d4 target at E3.

This search records candidate detectors only. E4 descent requires complete d3
complexes, chain maps, and actual spectral-sequence interpretation premises.
"""
import collections
import importlib.util
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
spec = importlib.util.spec_from_file_location(
    'first_d4_screen', ROOT / 'Row3147MapSearch/search_lifted.py')
screen = importlib.util.module_from_spec(spec)
spec.loader.exec_module(screen)
screen.HERE = HERE
screen.SELECTED = [
    ('source', 11, 133, [1]),
    ('target', 15, 136, [0]),
    ('target_e1', 15, 136, [1]),
    ('target_sum', 15, 136, [0, 1]),
]
report = screen.run()
for entry in report['maps']:
    items = [entry.get(label) for label, *_ in screen.SELECTED]
    if any(item is None or item.get('status') != 'computed_cycle_quotient'
           for item in items):
        entry['whole_target_status'] = 'unknown'
        continue
    source, e0, e1, both = items
    if any(source['quotient']):
        entry['whole_target_status'] = 'source_nonzero_E3'
        continue
    assert both['quotient'] == [a ^ b for a, b in zip(e0['quotient'], e1['quotient'])]
    entry['target_E3_kernel_nonzero_vectors'] = [
        vector for vector, item in zip([[1, 0], [0, 1], [1, 1]], items[1:])
        if not any(item['quotient'])]
    entry['whole_target_status'] = (
        'candidate_whole_E3_target_injective_needs_E4_descent'
        if not entry['target_E3_kernel_nonzero_vectors']
        else 'E3_target_not_injective')
report.update(
    schema='fact721_first_d4_whole_E3_map_screen/v1',
    source_staircase_row=[2622, 11, 133, '1', None, 9000],
    source_named_E2=[0, 1],
    target_degree=[15, 136],
    target_E2_dimension=2,
    whole_target_counts=dict(sorted(collections.Counter(
        entry['whole_target_status'] for entry in report['maps']).items())),
    wrapper_sha256=screen.digest(Path(__file__)),
    limitation='Complete E3 target kernel is checked on all three nonzero vectors. '
       'This is a search only; no E4 map, d4 value, or permanence is asserted.')
(HERE / 'lifted-search.json').write_text(json.dumps(report, indent=2, sort_keys=True) + '\n')
print(json.dumps(report['whole_target_counts'], sort_keys=True))
print('whole-target candidates:', [entry['map']['name'] for entry in report['maps']
    if entry['whole_target_status'].startswith('candidate_')])
