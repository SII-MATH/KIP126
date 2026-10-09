"""Independent replay of each nonzero target direction and joint detection."""
import contextlib
import importlib.util
import itertools
import json
import sqlite3
import subprocess
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
spec = importlib.util.spec_from_file_location('independent_replay', ROOT / 'Row3147MapSearch/review.py')
audit = importlib.util.module_from_spec(spec)
spec.loader.exec_module(audit)
VECTORS = [('target', [1, 0]), ('target1', [0, 1]), ('targetsum', [1, 1])]


def run():
    tracked = [HERE / 'raw/lifted-search.json', HERE / 'candidates.json',
               *(HERE / label / 'lifted-search.json' for label, _ in VECTORS)]
    old = {p: p.read_bytes() for p in tracked}
    subprocess.run([sys.executable, str(HERE / 'search.py')], check=True)
    assert all(p.read_bytes() == data for p, data in old.items()), 'nondeterministic search'
    raw = json.loads(old[tracked[0]])
    candidate = json.loads(old[tracked[1]])
    assert raw['wrapper_sha256'] == candidate['wrapper_sha256'] == audit.sha(HERE / 'search.py')
    assert candidate['report_sha256'] == audit.sha(HERE / 'raw/lifted-search.json')
    c = sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro', uri=True)
    assert list(c.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=3019').fetchone()) == raw['row'] == [3019, 11, 138, '2', None, 9000]
    for field, (s, t) in [('source_comparison', (11, 138)), ('target_comparison', (14, 140))]:
        saved = raw[field]
        groups = [[dict(id=i, mon=mon, d2=d2) for i, mon, d2 in c.execute(
            'SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', degree)]
            for degree in [(s - 2, t - 1), (s, t), (s + 2, t + 1)]]
        assert saved['rows'] == groups
        w = saved['wire']
        assert [len(g) for g in groups] == [w['n'], w['m'], w['k']]
        for name, group, dim in [('incoming', groups[0], w['m']), ('outgoing', groups[1], w['k'])]:
            columns = []
            for row in group:
                assert row['d2'] is not None
                ids = [] if row['d2'] == '' else list(map(int, row['d2'].split(',')))
                assert ids == sorted(set(ids)) and all(0 <= i < dim for i in ids)
                columns.append(ids)
            assert w[name] == [i in col for i in range(dim) for col in columns]
        audit.check_wire(w)
    sw, tw = raw['source_comparison']['wire'], raw['target_comparison']['wire']
    assert [sw['h'], tw['h']] == [3, 2]
    assert raw['source_comparison']['rows'][1][2] == dict(id=3020, mon='0,1,2,1,373,1', d2='')
    named = [0, 0, 1, 0]
    assert not any(audit.matmul(sw['outgoing'], named, sw['k'], sw['m'], 1))
    assert audit.matmul(sw['projection'], named, sw['h'], sw['m'], 1) == [0, 0, 1]
    reviews = []
    for label, vector in VECTORS:
        directory = HERE / label
        view = json.loads((directory / 'lifted-search.json').read_text())
        representative = audit.matmul(tw['inclusion'], vector, tw['m'], tw['h'], 1)
        assert audit.matmul(tw['projection'], representative, tw['h'], tw['m'], 1) == vector
        target_indices = [i for i, bit in enumerate(representative) if bit]
        assert view['bounds']['selected'] == [['source', 11, 138, [2]], ['target', 14, 140, target_indices]]
        assert view['target_vector'] == vector
        for original, entry in zip(raw['maps'], view['maps']):
            assert original['map'] == entry['map'] and original['ordinal'] == entry['ordinal']
            assert original.get('source') == entry.get('source')
            assert original.get(label) == entry.get('target')
            if 'source' in entry:
                assert entry['source']['source_indices'] == [2] and entry['source']['source_degree'] == [11, 138]
            if 'target' in entry:
                assert entry['target']['source_indices'] == target_indices and entry['target']['source_degree'] == [14, 140]
        audit.HERE = directory
        assert (directory / 'search_lifted.py').resolve() == (ROOT / 'Row3147MapSearch/search_lifted.py').resolve()
        with (directory / 'review.log').open('w') as stream, contextlib.redirect_stdout(stream):
            result = audit.run(rerun=False)
        reviews.append(dict(label=label, vector=vector, review_sha256=audit.sha(directory / 'review.json'),
                            complete_cycle_quotients=result['complete_cycle_quotients'],
                            reduction_steps=result['reduction_steps'], explicit_ring_relation_lifts=result['explicit_ring_relation_lifts']))
    eligible = []
    unknown = []
    for entry in raw['maps']:
        if any(entry.get(label, {}).get('status') != 'computed_cycle_quotient'
               for label in ['source', *(label for label, _ in VECTORS)]):
            unknown.append(entry['map']['name'])
            continue
        if any(entry['source']['quotient']):
            continue
        images = [entry[label]['quotient'] for label, _ in VECTORS]
        assert len(images[0]) == len(images[1]) == len(images[2])
        assert images[2] == [(a + b) % 2 for a, b in zip(images[0], images[1])]
        eligible.append(dict(map=entry['map']['name'], section=entry['section'], ordinal=entry['ordinal'],
                             target_images=images, detects=[any(v) for v in images],
                             full_target_injective=all(any(v) for v in images)))
    singles = [x['map'] for x in eligible if x['full_target_injective']]
    pairs = [[a['map'], b['map']] for a, b in itertools.combinations(eligible, 2)
             if not a['full_target_injective'] and not b['full_target_injective']
             and all(x or y for x, y in zip(a['detects'], b['detects']))]
    assert candidate['eligible_maps'] == eligible and candidate['single_map_candidates'] == singles
    assert candidate['joint_map_pairs'] == pairs and candidate['maps_with_unknown_stages'] == unknown
    result = dict(schema='row3019_full_target_review/v1', status='independently_replayed_search_not_a_Lean_theorem',
                  deterministic_rerun=True, row=raw['row'], named_basis_id=3020,
                  target_dimension=2, nonzero_target_directions=3, map_records=len(raw['maps']),
                  single_map_candidates=singles, joint_map_pairs=pairs, reviews=reviews,
                  report_sha256=audit.sha(HERE / 'raw/lifted-search.json'),
                  candidates_sha256=audit.sha(HERE / 'candidates.json'),
                  wrapper_sha256=audit.sha(HERE / 'search.py'), review_script_sha256=audit.sha(Path(__file__)),
                  shared_review_sha256=audit.sha(ROOT / 'Row3147MapSearch/review.py'))
    (HERE / 'review.json').write_text(json.dumps(result, indent=2, sort_keys=True) + '\n')
    print('All three target directions independently replayed for', len(raw['maps']), 'maps.')
    print('Single-map candidates:', singles, '; joint pairs:', len(pairs))


if __name__ == '__main__':
    run()
