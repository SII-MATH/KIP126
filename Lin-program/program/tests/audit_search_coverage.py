#!/usr/bin/env python3
"""Read-only regression audit for bounded map searches and detector inputs.

This validates recorded data and coverage; it neither reruns the searches nor
asserts a mathematical theorem. Run from any working directory.
"""
import collections
import hashlib
import json
import sqlite3
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
BASE = ROOT / 'upstream/kervaire-49'


class AuditFailure(Exception):
    pass


def require(condition, message):
    if not condition:
        raise AuditFailure(message)


def read(path):
    return json.loads(path.read_text())


def coverage(meta, t, *, d2=False, outgoing=False):
    """A complete d2 quotient also needs the outgoing E2 basis at t+1."""
    require(type(meta.get('t_max')) is int, 'missing or invalid E2 t_max')
    require(t + int(outgoing) <= meta['t_max'], f'E2 degree {t + int(outgoing)} outside t_max')
    if d2:
        require(type(meta.get('d2_t_max')) is int, 'missing or invalid d2_t_max')
        require(t <= meta['d2_t_max'], f'd2 degree {t} outside d2_t_max')


def check_d2_column(raw, dimension):
    require(raw is not None, 'unknown d2 column')
    try:
        indices = [] if raw == '' else list(map(int, raw.split(',')))
    except (AttributeError, ValueError) as exc:
        raise AuditFailure('malformed d2 column') from exc
    require(indices == sorted(set(indices)), 'noncanonical d2 coordinates')
    require(all(0 <= x < dimension and x != 4294967295 for x in indices), 'd2 coordinate outside basis')
    return indices


class Snapshot:
    def __init__(self):
        self.config = read(ROOT / 'upstream/category-inventory.json')
        self.objects = {x['source']['name']: x['source'] for x in self.config['records']
                        if x['section'] in ['rings', 'modules']}
        self.connections = {}
        self.hashes = {}

    def connection(self, name):
        if name not in self.connections:
            self.connections[name] = sqlite3.connect(
                f"file:{BASE / self.objects[name]['path']}?mode=ro", uri=True)
        return self.connections[name]

    def metadata(self, name):
        return dict(self.connection(name).execute('SELECT name,value FROM version'))

    def sha(self, path):
        if path not in self.hashes:
            h = hashlib.sha256()
            with path.open('rb') as stream:
                for chunk in iter(lambda: stream.read(1048576), b''):
                    h.update(chunk)
            self.hashes[path] = h.hexdigest()
        return self.hashes[path]

    def check_hashes(self, root, hashes):
        for relative, expected in hashes.items():
            require(self.sha(root / relative) == expected, f'input digest changed: {relative}')

    def configured_maps(self):
        return [(x['section'], x['ordinal'], x['source']) for x in self.config['records']
                if x['section'] in ['maps', 'maps_v2'] and x['source'].get('from') == 'S0']

    def d2(self, name, s, t, wire, stored_rows=None):
        coverage(self.metadata(name), t, d2=True, outgoing=True)
        columns = [x[1] for x in self.connection(name).execute(f'PRAGMA table_info({name}_AdamsE2_basis)')]
        require('d2' in columns, f'no d2 column: {name}')
        groups = [[dict(id=i, mon=mon, d2=raw) for i, mon, raw in self.connection(name).execute(
            f'SELECT id,mon,d2 FROM {name}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', degree)]
            for degree in [(s-2, t-1), (s, t), (s+2, t+1)]]
        if stored_rows is not None:
            require(groups == stored_rows, f'changed comparison basis rows: {name}({s},{t})')
        require(list(map(len, groups)) == [wire['n'], wire['m'], wire['k']], 'd2 dimension mismatch')
        for key, rows, dim in [('incoming', groups[0], wire['m']), ('outgoing', groups[1], wire['k'])]:
            cs = [check_d2_column(row['d2'], dim) for row in rows]
            require(wire[key] == [i in col for i in range(dim) for col in cs],
                    f'd2 matrix differs from source: {name}({s},{t}) {key}')


def audit_row3147(snapshot):
    folder = ROOT / 'Row3147MapSearch'
    report, review = read(folder/'lifted-search.json'), read(folder/'review.json')
    require(report['schema'] == 'row3147_configured_map_screen/v2', 'unexpected map screen schema')
    require(review['deterministic_rerun'] is True, 'missing deterministic full-search review')
    require(snapshot.sha(folder/'lifted-search.json') == review['report_sha256'], 'stale search review')
    require(snapshot.sha(folder/'review.py') == review['review_script_sha256'], 'changed independent reviewer')
    require(snapshot.sha(folder/'search_lifted.py') == report['script_sha256'], 'changed search script')
    require(snapshot.sha(ROOT/'upstream/category-inventory.json') == report['config_sha256'], 'changed inventory')
    require(snapshot.sha(ROOT/'PageTransitionCertificates/page-transition-export') == report['producer_sha256'],
            'changed comparison producer')
    snapshot.check_hashes(BASE, report['sources'])
    records = report['maps']
    require([(x['section'], x['ordinal'], x['map']) for x in records] == snapshot.configured_maps(),
            'configured-map coverage changed')
    require(len(records) == 70, 'expected 70 configured S0 map records')
    require(dict(collections.Counter(x['status'] for x in records)) == report['counts'] == review['counts'],
            'map status counts mismatch')
    complete = 0
    for record in records:
        name = record['map']['to']
        meta = snapshot.metadata(name)
        require(record['metadata'] == meta, f'changed metadata: {name}')
        factor = record.get('factor')
        if factor is not None:
            coverage(meta, factor['degree'][1])
        for label, source_degree in [('source', [16, 140]), ('target', [19, 142])]:
            item = record.get(label)
            if item is None:
                require(record['status'] == 'unknown', 'completed map without a selected image')
                continue
            require(item['source_degree'] == source_degree, 'unexpected selected source degree')
            fs, ft = factor['degree'] if factor is not None else (0, 0)
            require(item['degree'] == [source_degree[0]+fs, source_degree[1]+ft], 'incorrect shifted degree')
            if item['status'] != 'computed_cycle_quotient':
                require(item['status'] == 'unknown' and bool(item.get('reason')), 'unexplained selected image')
                require('quotient' not in item, 'unknown selected image has a quotient')
                continue
            require(record['target_database'] == snapshot.objects[name]['path'], 'incorrect target database')
            s, t = item['degree']
            snapshot.d2(name, s, t, item['comparison']['wire'], item['comparison']['rows'])
            wire = item['comparison']['wire']
            coords = item['coordinates']
            require(coords == sorted(set(coords)) and all(0 <= i < wire['m'] for i in coords), 'invalid image coordinates')
            outgoing = [sum(wire['outgoing'][i*wire['m']+j] for j in coords) % 2 for i in range(wire['k'])]
            require(item['outgoing_image'] == outgoing and not any(outgoing), 'projected image is not a verified cycle')
            projection = [sum(wire['projection'][i*wire['m']+j] for j in coords) % 2 for i in range(wire['h'])]
            require(item['quotient'] == projection, 'wrong quotient coordinates')
            complete += 1
        if record['status'] != 'unknown':
            require(all(record[label]['status'] == 'computed_cycle_quotient' for label in ['source', 'target']),
                    'completed map has an unknown selected image')
            expected = ('source_nonzero_quotient' if any(record['source']['quotient']) else
                        'candidate_needs_full_map_compatibility' if any(record['target']['quotient']) else
                        'target_zero_quotient')
            require(record['status'] == expected, 'wrong completed map classification')
    require(complete == review['complete_cycle_quotients'] == 96, 'cycle quotient coverage changed')
    require(report['counts'] == {'target_zero_quotient': 39, 'source_nonzero_quotient': 9, 'unknown': 22},
            'bounded search result changed; regenerate its independent review')
    return len(records), complete


def audit_row2796(snapshot):
    report = read(ROOT/'Row2796D4/search-coverage-review.json')
    require(report['schema'] == 'row2796_search_coverage_review/v1', 'unexpected coverage audit schema')
    snapshot.check_hashes(ROOT, report['input_sha256'])
    snapshot.check_hashes(BASE, report['database_sha256'])
    old = read(ROOT/'Row2796D4/maps-search.json')
    require([(x['section'], x['ordinal'], x['map']) for x in old['maps']] == snapshot.configured_maps(),
            'historical configured map coverage changed')
    corrected = collections.Counter()
    changed, outside = [], []
    for row in old['maps']:
        name = row['map']['to']
        factor = row['map'].get('factor')
        fs, ft = (factor[1], factor[0]+factor[1]) if factor else (0, 0)
        degrees = [[8+fs, 135+ft], [12+fs, 138+ft]]
        out = any(t > snapshot.metadata(name)['t_max'] for _, t in degrees)
        if out:
            outside.append(row['map']['name'])
            if row['status'] != 'unknown':
                changed.append(row['map']['name'])
        corrected['unknown' if out else row['status']] += 1
    saved = report['configured_map_search']
    require(dict(corrected) == saved['coverage_corrected_counts'], 'wrong corrected map counts')
    require(outside == [x['map'] for x in saved['out_of_E2_window']], 'missing out-of-window map')
    require(changed == [x['map'] for x in saved['changed_classifications']] == ['S0__S0_by_theta5sq'],
            'wrong historical status correction')
    ordinary = read(ROOT/'Row2796D4/search.json')['factors']
    rows = snapshot.connection('S0').execute(
        'SELECT id,mon,s,t,d2 FROM S0_AdamsE2_basis WHERE 0<t AND t<=30 ORDER BY t,s,id').fetchall()
    require([(x['id'], x['mon'], *x['degree'], x['d2']) for x in ordinary] == rows and len(rows) == 95,
            'ordinary factor coverage changed')
    for item in ordinary:
        coverage(snapshot.metadata('S0'), 138+item['degree'][1])
    detector = report['registered_detector']
    require(detector['affected_by_search_coverage_bug'] is False, 'detector coverage needs renewed review')
    roots = {
        'S0': [f'S0:{s},{t}:d2' for s, t in [(9,136), (12,138), (15,140), (8,135)]]
              + ['S0:12,138:d3', 'S0:8,135:d3'],
        'CW_nu_eta': [f'CW_nu_eta:{s},{t}:d2' for s, t in [(10,143), (13,145), (16,147), (9,142)]]
                    + ['CW_nu_eta:13,145:d3'],
    }
    sources = {'S0': read(ROOT/'AggregateTwoDetectorConditional/source.json')['blocks'],
               'CW_nu_eta': read(ROOT/'Row2796D4/map-e4.json')['comparisons']}
    count = 0
    for saved in detector['comparison_input_closure']:
        name = saved['object']
        require(saved['roots'] == roots[name], 'wrong registered detector roots')
        require(saved['metadata'] == snapshot.metadata(name), 'changed detector metadata')
        blocks, seen = sources[name], set()

        def visit(key):
            if key in seen:
                return
            seen.add(key)
            for predecessor in blocks[key]['predecessors']:
                visit(predecessor)

        for root in roots[name]:
            visit(root)
        require(sorted(seen) == [x['key'] for x in saved['blocks']], 'missing recursive detector block')
        require(len(seen) == saved['recursive_block_count'], 'wrong recursive detector count')
        for key in seen:
            block = blocks[key]
            if block['page'] == 2:
                snapshot.d2(name, *block['center'], block['wire'])
        count += len(seen)
    require(count == 13 and len(detector['comparison_input_closure']) == 2, 'detector closure is not all 13 blocks')
    actual = read(ROOT/'Row2796D4Detector/source.json')
    require(len(actual) == len(detector['actual_matrices']) == 12, 'actual matrix count changed')
    columns = 0
    for item, saved in zip(actual, detector['actual_matrices']):
        s, t, wire = item['s'], item['t'], item['wire']
        coverage(snapshot.metadata('S0'), t)
        coverage(snapshot.metadata('CW_nu_eta'), t+7)
        require([wire['sourceS'], wire['sourceT'], wire['targetS'], wire['targetT']] == [s,t,s+1,t+7],
                'actual map degree changed')
        src = snapshot.connection('S0').execute(
            'SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', (s,t)).fetchall()
        tgt = snapshot.connection('CW_nu_eta').execute(
            'SELECT id,mon FROM CW_nu_eta_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', (s+1,t+7)).fetchall()
        require(item['source'] == [list(x) for x in src], 'actual source rows changed')
        require(len(src) == wire['cols'] == saved['columns'] and len(tgt) == wire['rows'] == saved['rows'],
                'actual coordinate dimensions changed')
        columns += len(src)
    require(columns == detector['columns'] == 56, 'actual column coverage changed')
    candidate = report['sole_candidate']
    require(candidate['map']['name'] == 'S0__CW_nu_eta_by_2', 'sole candidate changed')
    candidates = [row for row in old['maps'] if row['status'] == 'candidate_needs_E4']
    require(len(candidates) == 1, 'expected exactly one historical candidate')
    for key in ['section', 'ordinal', 'map', 'source', 'target']:
        require(candidate[key] == candidates[0][key], f'candidate provenance changed: {key}')
    factor_rows = snapshot.connection('CW_nu_eta').execute(
        'SELECT id,mon FROM CW_nu_eta_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',
        candidate['factor_degree']).fetchall()
    require(factor_rows == [(candidate['factor_basis_id'], candidate['factor_monomial'])] == [(11, '2')],
            'candidate factor differs from database')
    for t in [candidate['factor_degree'][1], candidate['source']['degree'][1], candidate['target']['degree'][1]]:
        coverage(snapshot.metadata('CW_nu_eta'), t, d2=True, outgoing=True)
    return len(ordinary), count, columns


def negative_checks():
    tests = [
        lambda: coverage({}, 1),
        lambda: coverage({'t_max': '200'}, 1),
        lambda: coverage({'t_max': 200}, 201),
        lambda: coverage({'t_max': 200}, 1, d2=True),
        lambda: coverage({'t_max': 200, 'd2_t_max': 150}, 151, d2=True),
        lambda: coverage({'t_max': 150, 'd2_t_max': 150}, 150, d2=True, outgoing=True),
        lambda: check_d2_column(None, 0),
        lambda: check_d2_column('4294967295', 1),
        lambda: check_d2_column('1', 1),
        lambda: check_d2_column('0,0', 1),
    ]
    for i, test in enumerate(tests):
        try:
            test()
        except AuditFailure:
            pass
        else:
            raise AuditFailure(f'negative coverage test {i} unexpectedly passed')
    coverage({'t_max': 151, 'd2_t_max': 150}, 150, d2=True, outgoing=True)
    require(check_d2_column('', 0) == [], 'explicit empty known column rejected')
    return len(tests)


def main():
    negative = negative_checks()
    snapshot = Snapshot()
    maps, quotients = audit_row3147(snapshot)
    factors, blocks, columns = audit_row2796(snapshot)
    print(f'Coverage audit passed: {maps} configured maps, {quotients} cycle quotients; '
          f'{factors} ordinary factors, {blocks} detector blocks, {columns} actual columns; '
          f'{negative} rejection checks. No searches rerun; no mathematical theorem asserted.')


if __name__ == '__main__':
    try:
        main()
    except (AuditFailure, KeyError, sqlite3.Error, OSError) as exc:
        raise SystemExit(f'search coverage audit failed: {exc}') from exc
