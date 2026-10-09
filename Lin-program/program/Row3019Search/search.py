"""Bounded, untrusted full two-dimensional E3 target map search."""
import copy
import importlib.util
import itertools
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
spec = importlib.util.spec_from_file_location('bounded_screen', ROOT / 'Row3147MapSearch/search_lifted.py')
screen = importlib.util.module_from_spec(spec)
spec.loader.exec_module(screen)
VECTORS = [('target', [1, 0]), ('target1', [0, 1]), ('targetsum', [1, 1])]


def status(entry):
    if any(entry.get(label, {}).get('status') != 'computed_cycle_quotient' for label in ['source', 'target']):
        return 'unknown'
    if any(entry['source']['quotient']):
        return 'source_nonzero_quotient'
    if any(entry['target']['quotient']):
        return 'candidate_needs_full_map_compatibility'
    return 'target_zero_quotient'


def write(path, value):
    path.write_text(json.dumps(value, indent=2, sort_keys=True) + '\n')


def run():
    c = screen.alg.connection('S0_AdamsSS_t261.db')
    raw = list(c.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=3019').fetchone())
    assert raw == [3019, 11, 138, '2', None, 9000]
    source = screen.comparison(c, 'S0', 11, 138, screen.metadata(c))
    target = screen.comparison(c, 'S0', 14, 140, screen.metadata(c))
    sw, tw = source['wire'], target['wire']
    assert sw['h'] == 3 and tw['h'] == 2
    named = [i == 2 for i in range(sw['m'])]
    assert not any(screen.ev(sw['outgoing'], sw['k'], sw['m'], named))
    assert screen.ev(sw['projection'], sw['h'], sw['m'], named) == [0, 0, 1]
    assert source['rows'][1][2] == dict(id=3020, mon='0,1,2,1,373,1', d2='')
    selected = [('source', 11, 138, [2])]
    for label, v in VECTORS:
        rep = screen.ev(tw['inclusion'], tw['m'], tw['h'], v)
        assert screen.ev(tw['projection'], tw['h'], tw['m'], rep) == v
        selected.append((label, 14, 140, [i for i, bit in enumerate(rep) if bit]))
    screen.HERE = HERE / 'raw'
    screen.HERE.mkdir(exist_ok=True)
    screen.SELECTED = selected
    report = screen.run()
    report.update(schema='row3019_full_target_map_screen/v1', row=raw,
                  source_comparison=source, target_comparison=target,
                  source_basis_id=3020, target_vectors=VECTORS,
                  wrapper_sha256=screen.digest(Path(__file__)),
                  claim='Untrusted finite search only. Complete map compatibility, local naturality and the d3 value are not proved.')
    write(HERE / 'raw/lifted-search.json', report)
    for label, vector in VECTORS:
        directory = HERE / label
        directory.mkdir(exist_ok=True)
        link = directory / 'search_lifted.py'
        if not link.exists():
            link.symlink_to('../../Row3147MapSearch/search_lifted.py')
        view = copy.deepcopy(report)
        view['bounds']['selected'] = [selected[0], next(x for x in selected if x[0] == label)]
        view['bounds']['selected'][1] = ('target', *view['bounds']['selected'][1][1:])
        view['target_vector'] = vector
        for entry in view['maps']:
            selected_item = copy.deepcopy(entry.get(label))
            for key, _ in VECTORS:
                entry.pop(key, None)
            if selected_item is not None:
                entry['target'] = selected_item
            entry['status'] = status(entry)
        view['counts'] = dict(sorted(screen.collections.Counter(x['status'] for x in view['maps']).items()))
        write(directory / 'lifted-search.json', view)
    eligible = []
    unknown = []
    for entry in report['maps']:
        labels = ['source', *(label for label, _ in VECTORS)]
        if any(entry.get(label, {}).get('status') != 'computed_cycle_quotient' for label in labels):
            unknown.append(entry['map']['name'])
            continue
        if any(entry['source']['quotient']):
            continue
        images = [entry[label]['quotient'] for label, _ in VECTORS]
        assert images[2] == [a ^ b for a, b in zip(images[0], images[1])]
        eligible.append(dict(map=entry['map']['name'], section=entry['section'], ordinal=entry['ordinal'],
                             target_images=images, detects=[any(v) for v in images],
                             full_target_injective=all(any(v) for v in images)))
    singles = [x['map'] for x in eligible if x['full_target_injective']]
    pairs = [[a['map'], b['map']] for a, b in itertools.combinations(eligible, 2)
             if not a['full_target_injective'] and not b['full_target_injective']
             and all(x or y for x, y in zip(a['detects'], b['detects']))]
    result = dict(schema='row3019_full_target_candidates/v1', status='untrusted_numerical_search',
                  row=raw, named_source_basis_id=3020, named_source_local_index=2,
                  target_dimension=2, target_nonzero_vectors=[v for _, v in VECTORS],
                  single_map_candidates=singles, joint_map_pairs=pairs, eligible_maps=eligible,
                  maps_with_unknown_stages=unknown, report_sha256=screen.digest(HERE / 'raw/lifted-search.json'),
                  wrapper_sha256=screen.digest(Path(__file__)))
    write(HERE / 'candidates.json', result)
    print('full target single-map candidates:', singles)
    print('full target joint-map pairs:', len(pairs))
    return result


if __name__ == '__main__':
    run()
