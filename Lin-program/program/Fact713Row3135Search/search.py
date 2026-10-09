"""Full E3 source/target screen at (20,140) for the two pending d3 columns."""
import collections
import importlib.util
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
spec = importlib.util.spec_from_file_location(
    'row3135_screen', ROOT / 'Row3147MapSearch/search_lifted.py')
screen = importlib.util.module_from_spec(spec)
spec.loader.exec_module(screen)


def run():
    connection = screen.alg.connection('S0_AdamsSS_t261.db')
    meta = screen.metadata(connection)
    source = screen.comparison(connection, 'S0', 20, 140, meta)
    target = screen.comparison(connection, 'S0', 23, 142, meta)
    assert source['wire']['h'] == 2 and target['wire']['h'] == 2
    selected = []
    vectors = [[1, 0], [0, 1], [1, 1]]
    for prefix, degree, block in [('source', (20, 140), source),
                                  ('target', (23, 142), target)]:
        wire = block['wire']
        for label, vector in zip([prefix, prefix + '_e1', prefix + '_sum'], vectors):
            raw = screen.ev(wire['inclusion'], wire['m'], 2, vector)
            selected.append((label, *degree, [i for i, bit in enumerate(raw) if bit]))
    screen.HERE = HERE
    screen.SELECTED = selected
    report = screen.run()
    for entry in report['maps']:
        if any(entry.get(label, {}).get('status') != 'computed_cycle_quotient'
               for label, *_ in selected):
            entry['whole_status'] = 'unknown'
            continue
        for prefix in ['source', 'target']:
            assert entry[prefix + '_sum']['quotient'] == [
                x ^ y for x, y in zip(entry[prefix]['quotient'], entry[prefix + '_e1']['quotient'])]
        entry['source_zero_vectors'] = [v for label, v in zip(
            ['source', 'source_e1', 'source_sum'], vectors) if not any(entry[label]['quotient'])]
        entry['target_kernel_vectors'] = [v for label, v in zip(
            ['target', 'target_e1', 'target_sum'], vectors) if not any(entry[label]['quotient'])]
        entry['whole_status'] = ('candidate_whole_source_zero_target_injective'
            if len(entry['source_zero_vectors']) == 3 and not entry['target_kernel_vectors']
            else 'partial_constraints_only')
    report.update(schema='fact713_row3135_full_E3_map_screen/v1',
        source_comparison=source, target_comparison=target,
        pending_rows=[list(row) for row in connection.execute(
            'SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id IN (3135,3136) ORDER BY id')],
        whole_counts=dict(collections.Counter(x['whole_status'] for x in report['maps'])),
        wrapper_sha256=screen.digest(Path(__file__)),
        claim='Search only: no unknown coefficient, actual naturality, or page interpretation inferred.')
    (HERE / 'lifted-search.json').write_text(json.dumps(report, indent=2, sort_keys=True) + '\n')
    print(json.dumps(report['whole_counts'], sort_keys=True))
    print('whole candidates:', [x['map']['name'] for x in report['maps']
        if x['whole_status'].startswith('candidate')])


if __name__ == '__main__':
    run()
