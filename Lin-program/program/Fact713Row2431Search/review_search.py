"""Independent source/reduction/matrix replay; still not a Lean proof."""
import collections
import hashlib
import json
import sqlite3
import subprocess
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
BASE = ROOT/'upstream/kervaire-49'


def sha(path):
    h = hashlib.sha256()
    with path.open('rb') as stream:
        for chunk in iter(lambda: stream.read(1048576), b''):
            h.update(chunk)
    return h.hexdigest()


def coeff(raw):
    cells = list(map(int, raw.split(','))) if raw else []
    assert len(cells) % 2 == 0
    assert all(g >= 0 and g != 4294967295 and e >= 0 for g, e in zip(cells[::2], cells[1::2]))
    return tuple(sorted(g for g, e in zip(cells[::2], cells[1::2]) for _ in range(e)))


def module(raw):
    cells = raw.split(',')
    g = int(cells[-1])
    assert 0 <= g < 4294967295
    return coeff(','.join(cells[:-1])), g


def parity(terms):
    return {x for x, n in collections.Counter(terms).items() if n % 2}


def poly(raw):
    assert raw is not None
    return set() if raw == '' else {()} if raw == ';' else parity(coeff(x) for x in raw.split(';'))


def add_monomial(x, q, ring):
    return tuple(sorted(x+q)) if ring else (tuple(sorted(x[0]+q)), x[1])


def stored_mon(x, ring):
    return tuple(x) if ring else (tuple(x[0]), x[1])


def matmul(a, b, m, k, n):
    assert len(a) == m*k and len(b) == k*n
    return [sum(a[i*k+q] and b[q*n+j] for q in range(k)) % 2 for i in range(m) for j in range(n)]


def check_wire(w):
    k, m, n, h = (w[x] for x in ['k', 'm', 'n', 'h'])
    for key, length in [('outgoing', k*m), ('incoming', m*n), ('inclusion', m*h),
                        ('projection', h*m), ('up', n*m), ('down', m*k)]:
        assert len(w[key]) == length and all(type(v) is bool for v in w[key])
    a, b, inc, proj = (w[x] for x in ['outgoing', 'incoming', 'inclusion', 'projection'])
    assert not any(matmul(a, b, k, m, n))
    assert not any(matmul(a, inc, k, m, h))
    assert not any(matmul(proj, b, h, m, n))
    assert matmul(proj, inc, h, m, h) == [int(i == j) for i in range(h) for j in range(h)]
    parts = [matmul(inc, proj, m, h, m), matmul(b, w['up'], m, n, m), matmul(w['down'], a, m, k, m)]
    assert [sum(x) % 2 for x in zip(*parts)] == [int(i == j) for i in range(m) for j in range(m)]


def run(rerun=True):
    original = (HERE/'lifted-search.json').read_bytes()
    report = json.loads(original)
    config = json.loads((ROOT/'upstream/category-inventory.json').read_text())
    assert sha(ROOT/'upstream/category-inventory.json') == report['config_sha256']
    assert sha(HERE/'search.py') == report['script_sha256']
    assert sha(ROOT/'PageTransitionCertificates/page-transition-export') == report['producer_sha256']
    for path, digest in report['sources'].items():
        assert sha(BASE/path) == digest
    if rerun:
        subprocess.run([sys.executable, str(HERE/'search.py')], check=True)
        assert original == (HERE/'lifted-search.json').read_bytes(), 'nondeterministic search output'
    objects = {x['source']['name']: x['source'] for x in config['records'] if x['section'] in ['rings', 'modules']}
    rings = {x['source']['name'] for x in config['records'] if x['section'] == 'rings'}
    connections = {}

    def db(path):
        if path not in connections:
            connections[path] = sqlite3.connect(f'file:{BASE/path}?mode=ro', uri=True)
        return connections[path]

    def basis(path, name, degree):
        return [dict(id=i, mon=raw) for i, raw in db(path).execute(
            f'SELECT id,mon FROM {name}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', degree)]

    selected = [(x['section'], x['ordinal'], x['source']) for x in config['records']
                if x['section'] in ['maps', 'maps_v2'] and x['source'].get('from') == 'S0']
    assert [(x['section'], x['ordinal'], x['map']) for x in report['maps']] == selected
    counts = collections.Counter(x['status'] for x in report['maps'])
    assert dict(counts) == report['counts']
    lifts = traces = quotients = noncycles = 0
    unknowns = []
    degree_bounds = []
    for entry in report['maps']:
        mp = entry['map']
        name = mp['to']
        path = objects[name]['path']
        ring = name in rings
        decode = coeff if ring else module
        meta = dict(db(path).execute('SELECT name,value FROM version'))
        assert entry['metadata'] == meta
        factor = entry.get('factor')
        if factor is not None:
            assert basis(path, name, factor['degree']) == factor['basis']
            image_factor = parity(decode(factor['basis'][i]['mon']) for i in factor['indices'])
        for label in ['source', 'target0', 'target1', 'target2']:
            item = entry.get(label)
            if item is None:
                unknowns.append(dict(map=mp['name'], stage='factor', reason=entry['reason']))
                continue
            degree_bounds.append(item['degree'])
            if item['status'] == 'unknown':
                unknowns.append(dict(map=mp['name'], stage=label, reason=item['reason']))
            if 'input' not in item:
                assert item['status'] == 'unknown'
                continue
            assert item['source_basis'] == basis(objects['S0']['path'], 'S0', item['source_degree'])
            assert item['target_basis'] == basis(path, name, item['degree'])
            assert item['degree'][1] <= int(meta['t_max'])
            image = set()
            for i in item['source_indices']:
                mon = coeff(item['source_basis'][i]['mon'])
                if factor is not None:
                    value = parity(add_monomial(x, mon, ring) for x in image_factor)
                else:
                    value = {()}
                    for g in mon:
                        raw = db(mp['path']).execute('SELECT map FROM map_AdamsE2_S0_to_tmf WHERE id=?', (g,)).fetchone()[0]
                        assert item['generator_images'][str(g)] == raw
                        value = parity(tuple(sorted(x+y)) for x in value for y in poly(raw))
                image.symmetric_difference_update(value)
            assert image == {stored_mon(x, ring) for x in item['input']}
            current = image.copy()
            seen = set()
            for step in item['trace']:
                traces += 1
                p = step['source']
                raw, s, t = db(p['database']).execute(
                    f"SELECT rel,s,t FROM {p['table']} WHERE rowid=?", (p['rowid'],)).fetchone()
                assert raw == p['raw']
                if p['kind'] == 'target_relation':
                    assert p['database'] == path and p['table'] == name+'_AdamsE2_relations'
                    assert p['degree'] == [s, t]
                    terms = parity(decode(x) for x in raw.split(';'))
                else:
                    assert p['kind'] == 'lifted_ring_relation' and not ring
                    assert p['database'] == objects['S0']['path'] and p['table'] == 'S0_AdamsE2_relations'
                    assert p['module_database'] == path and p['ring_degree'] == [s, t]
                    g = p['module_generator']
                    gs, gt = db(path).execute(f'SELECT s,t FROM {name}_AdamsE2_generators WHERE id=?', (g,)).fetchone()
                    assert p['generator_degree'] == [gs, gt] and p['degree'] == [s+gs, t+gt]
                    terms = parity((coeff(x), g) for x in raw.split(';'))
                    lifts += 1
                assert p['degree'][0] <= item['degree'][0] and p['degree'][1] <= item['degree'][1]
                state = tuple(sorted(current))
                assert state not in seen
                seen.add(state)
                assert stored_mon(step['leading'], ring) in current
                current.symmetric_difference_update(parity(add_monomial(x, tuple(step['multiplier']), ring) for x in terms))
            if 'coordinates' not in item:
                assert item['status'] == 'unknown'
                continue
            expected = {decode(item['target_basis'][i]['mon']) for i in item['coordinates']}
            assert current == expected
            if 'comparison' not in item:
                assert item['status'] == 'unknown'
                continue
            w = item['comparison']['wire']
            s, t = item['degree']
            assert t <= int(meta['d2_t_max']) and t+1 <= int(meta['t_max'])
            groups = [[dict(id=i, mon=mon, d2=raw) for i, mon, raw in db(path).execute(
                f'SELECT id,mon,d2 FROM {name}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', degree)]
                for degree in [(s-2, t-1), (s, t), (s+2, t+1)]]
            assert groups == item['comparison']['rows']
            assert [len(g) for g in groups] == [w['n'], w['m'], w['k']]
            for key, group, dim in [('incoming', groups[0], w['m']), ('outgoing', groups[1], w['k'])]:
                columns = []
                for row in group:
                    assert row['d2'] is not None
                    indices = [] if row['d2'] == '' else list(map(int, row['d2'].split(',')))
                    assert indices == sorted(set(indices)) and all(0 <= x < dim for x in indices)
                    columns.append(indices)
                assert w[key] == [i in col for i in range(dim) for col in columns]
            check_wire(w)
            v = [i in item['coordinates'] for i in range(w['m'])]
            outgoing = matmul(w['outgoing'], v, w['k'], w['m'], 1)
            assert item['outgoing_image'] == outgoing
            if any(outgoing):
                noncycles += 1
                assert item['status'] == 'unknown' and 'quotient' not in item
            else:
                assert item['status'] == 'computed_cycle_quotient'
                assert matmul(w['projection'], v, w['h'], w['m'], 1) == item['quotient']
                quotients += 1
        if entry['status'] != 'unknown':
            assert all(entry[label]['status'] == 'computed_cycle_quotient' for label in ['source','target0','target1','target2'])
            if any(entry['source']['quotient']):
                assert entry['status']=='source_nonzero_quotient'
            else:
                columns = [sum(int(b)<<i for i,b in enumerate(entry[f'target{j}']['quotient'])) for j in range(3)]
                kernel = [v for v in range(8) if xor_columns(columns,v)==0]
                rank = 3-(len(kernel).bit_length()-1)
                assert entry['target_columns']==columns and entry['full_target_kernel']==kernel and entry['target_rank']==rank
                assert entry['status']==('full_target_candidate' if rank==3 else 'partial_target_detector' if rank else 'target_zero_quotient')
    detectors=[x for x in report['maps'] if x['status'] in ['full_target_candidate','partial_target_detector','target_zero_quotient']]
    assert report['joint_target_kernel']==[v for v in range(8) if all(xor_columns(x['target_columns'],v)==0 for x in detectors)]
    result = dict(status='independently_replayed_bounded_search_not_a_Lean_theorem',
        deterministic_rerun=rerun, map_records=len(selected), counts=dict(sorted(counts.items())),
        complete_cycle_quotients=quotients, noncycle_images=noncycles, reduction_steps=traces,
        explicit_ring_relation_lifts=lifts, requested_max_s=max(x[0] for x in degree_bounds),
        requested_max_t=max(x[1] for x in degree_bounds), unknown_stages=unknowns,
        viable_candidates=[x['map']['name'] for x in report['maps'] if x['status'] == 'full_target_candidate'],
        report_sha256=sha(HERE/'lifted-search.json'), review_script_sha256=sha(Path(__file__)))
    (HERE/'review.json').write_text(json.dumps(result, indent=2, sort_keys=True)+'\n')
    print(json.dumps({k: v for k, v in result.items() if k not in ['unknown_stages']}, indent=2))
    return result


def xor_columns(columns, vector):
    value=0
    for j,c in enumerate(columns):
        if vector&(1<<j):value^=c
    return value

if __name__ == '__main__':
    run('--no-rerun' not in sys.argv)
