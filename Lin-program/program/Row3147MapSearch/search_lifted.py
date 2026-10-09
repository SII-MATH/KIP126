"""Bounded Row3147 map screen with explicit ring-relation lift provenance.

This is an untrusted search, not a Lean theorem or a spectral-sequence map.
Run review.py to independently replay reductions and audit complete quotients.
"""
import collections
import hashlib
import importlib.util
import json
import sqlite3
import subprocess
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
BASE = ROOT / 'upstream/kervaire-49'
CONFIG = ROOT / 'upstream/category-inventory.json'
PRODUCER = ROOT / 'PageTransitionCertificates/page-transition-export'
MAX_STEPS = 10000
MAX_TERMS = 100000
SELECTED = [('source', 16, 140, [4]), ('target', 19, 142, [1, 2])]
spec = importlib.util.spec_from_file_location('map_algebra', ROOT / 'RealMapCertificates/export.py')
alg = importlib.util.module_from_spec(spec)
spec.loader.exec_module(alg)


def digest(path):
    h = hashlib.sha256()
    with path.open('rb') as stream:
        for part in iter(lambda: stream.read(1048576), b''):
            h.update(part)
    return h.hexdigest()


def module_mon(raw):
    if raw is None:
        raise ValueError('unknown module monomial')
    fields = raw.split(',')
    g = int(fields[-1])
    if g < 0 or g == 4294967295:
        raise ValueError('invalid module generator')
    return alg.mono(','.join(fields[:-1])), g


def monomial_degree(mon, generators, ring, ring_generators):
    coeff, g = (mon, None) if ring else mon
    s, t = 0, 0
    for i in coeff:
        if i not in ring_generators:
            raise ValueError('missing coefficient generator')
        ds, dt = ring_generators[i]
        s, t = s + ds, t + dt
    if g is not None:
        if g not in generators:
            raise ValueError('missing module generator')
        ds, dt = generators[g]
        s, t = s + ds, t + dt
    return s, t


def rows(c, name, s, t):
    return [dict(id=i, mon=raw) for i, raw in c.execute(
        f'SELECT id,mon FROM {name}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', (s, t))]


def ev(a, m, n, v):
    if len(a) != m * n or len(v) != n:
        raise ValueError('matrix shape mismatch')
    return [sum(a[i*n+j] and v[j] for j in range(n)) % 2 for i in range(m)]


def multiply_terms(q, poly, ring):
    if ring:
        return alg.multiply({q}, poly)
    return alg.parity((tuple(sorted(q + co)), g) for co, g in poly)


def metadata(c):
    return dict(c.execute('SELECT name,value FROM version'))


def require_basis_window(meta, degree):
    if 't_max' not in meta:
        raise ValueError('missing E2 coverage metadata')
    if degree[1] > int(meta['t_max']):
        raise ValueError(f"E2 degree t={degree[1]} exceeds t_max={meta['t_max']}")


def comparison(c, name, s, t, meta):
    require_basis_window(meta, (s + 2, t + 1))
    columns = [x[1] for x in c.execute(f'PRAGMA table_info({name}_AdamsE2_basis)')]
    if 'd2' not in columns:
        raise ValueError('no d2 column')
    if 'd2_t_max' not in meta:
        raise ValueError('missing d2 coverage metadata')
    if t > int(meta['d2_t_max']):
        raise ValueError(f"d2 degree t={t} exceeds d2_t_max={meta['d2_t_max']}")
    groups = [[dict(id=i, mon=mon, d2=raw) for i, mon, raw in c.execute(
        f'SELECT id,mon,d2 FROM {name}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', degree)]
        for degree in [(s-2, t-1), (s, t), (s+2, t+1)]]
    n, m, k = map(len, groups)

    def matrix(group, dim):
        cols = []
        for row in group:
            raw = row['d2']
            if raw is None:
                raise ValueError(f"unknown d2 in complete quotient at basis id {row['id']}")
            ids = [] if raw == '' else [int(x) for x in raw.split(',')]
            if ids != sorted(set(ids)) or any(i < 0 or i >= dim or i == 4294967295 for i in ids):
                raise ValueError(f"invalid d2 coordinates at basis id {row['id']}")
            cols.append(ids)
        return ''.join('1' if i in col else '0' for i in range(dim) for col in cols) or '-'

    result = subprocess.run([str(PRODUCER), str(k), str(m), str(n), matrix(groups[1], k),
                             matrix(groups[0], m)], capture_output=True, text=True, timeout=30)
    if result.returncode:
        raise ValueError('comparison producer: ' + result.stderr.strip())
    return dict(rows=groups, wire=json.loads(result.stdout))


def run():
    config = json.loads(CONFIG.read_text())
    objects = {x['source']['name']: x['source'] for x in config['records']
               if x['section'] in ['rings', 'modules']}
    ring_names = {x['source']['name'] for x in config['records'] if x['section'] == 'rings'}
    source = alg.connection(objects['S0']['path'])
    source_meta = metadata(source)
    source_gens = dict((i, (s, t)) for i, s, t in source.execute('SELECT id,s,t FROM S0_AdamsE2_generators'))
    source_relations = list(source.execute('SELECT rowid,rel,s,t FROM S0_AdamsE2_relations ORDER BY rowid'))
    sources = {objects['S0']['path']}
    results = []
    for record in config['records']:
        if record['section'] not in ['maps', 'maps_v2'] or record['source'].get('from') != 'S0':
            continue
        mp = record['source']
        name = mp['to']
        entry = dict(section=record['section'], ordinal=record['ordinal'], map=mp)
        results.append(entry)
        try:
            path = objects[name]['path']
            sources.add(path)
            target = alg.connection(path)
            meta = metadata(target)
            ring = name in ring_names
            decode = alg.mono if ring else module_mon
            generators = dict((i, (s, t)) for i, s, t in target.execute(
                f'SELECT id,s,t FROM {name}_AdamsE2_generators'))
            coefficient_gens = generators if ring else source_gens
            if not ring and objects[name].get('over') != 'S0':
                raise ValueError('module is not configured over S0')
            entry['target_database'] = path
            entry['metadata'] = meta
            images = None
            if record['section'] == 'maps':
                if name != 'tmf':
                    raise ValueError('unsupported direct map')
                sources.add(mp['path'])
                mc = alg.connection(mp['path'])
                images = {i: raw for i, raw in mc.execute('SELECT id,map FROM map_AdamsE2_S0_to_tmf ORDER BY id')}
                fs, ft, factor = 0, 0, None
                entry['factor'] = None
            else:
                stem, fs, indices = mp['factor']
                ft = stem + fs
                indices = [indices] if isinstance(indices, int) else indices
                require_basis_window(meta, (fs, ft))
                factor_rows = rows(target, name, fs, ft)
                if len(set(indices)) != len(indices) or any(i < 0 or i >= len(factor_rows) for i in indices):
                    raise ValueError('invalid factor coordinates')
                factor = alg.parity(decode(factor_rows[i]['mon']) for i in indices)
                entry['factor'] = dict(degree=[fs, ft], indices=indices, basis=factor_rows)
            max_s, max_t = max(s + fs for _, s, _, _ in SELECTED), max(t + ft for _, _, t, _ in SELECTED)
            entry['lift_degree_bound'] = [max_s, max_t]
            relations = []
            for rid, raw, rs, rt in target.execute(
                    f'SELECT rowid,rel,s,t FROM {name}_AdamsE2_relations ORDER BY rowid'):
                if rs <= max_s and rt <= max_t:
                    terms = [decode(v) for v in raw.split(';')]
                    provenance = dict(kind='target_relation', database=path, table=f'{name}_AdamsE2_relations',
                                      rowid=rid, raw=raw, degree=[rs, rt])
                    relations.append((provenance, terms, rs, rt))
            lifted_cache = {}

            def lifted_for(gid):
                if gid not in lifted_cache:
                    gs, gt = generators[gid]
                    lifted = []
                    for rid, raw, rs, rt in source_relations:
                        if rs + gs <= max_s and rt + gt <= max_t:
                            terms = [(alg.mono(x), gid) for x in raw.split(';')]
                            provenance = dict(kind='lifted_ring_relation', database=objects['S0']['path'],
                                table='S0_AdamsE2_relations', rowid=rid, raw=raw, ring_degree=[rs, rt],
                                module_database=path, module_generator=gid, generator_degree=[gs, gt],
                                degree=[rs+gs, rt+gt])
                            lifted.append((provenance, terms, rs+gs, rt+gt))
                    lifted_cache[gid] = lifted
                return lifted_cache[gid]
            for label, s, t, indices in SELECTED:
                item = dict(source_degree=[s, t], degree=[s+fs, t+ft], source_indices=indices, trace=[])
                entry[label] = item
                try:
                    require_basis_window(source_meta, (s, t))
                    require_basis_window(meta, (s+fs, t+ft))
                    source_rows = rows(source, 'S0', s, t)
                    target_rows = rows(target, name, s+fs, t+ft)
                    item.update(source_basis=source_rows, target_basis=target_rows)
                    lookup = {decode(x['mon']): i for i, x in enumerate(target_rows)}
                    if len(lookup) != len(target_rows):
                        raise ValueError('duplicate target basis monomials')
                    if any(i < 0 or i >= len(source_rows) for i in indices):
                        raise ValueError('source coordinate missing')
                    cur = set()
                    used_images = {}
                    for j in indices:
                        raw = alg.mono(source_rows[j]['mon'])
                        if images is not None:
                            image = {()}
                            for g in raw:
                                if g not in images:
                                    raise ValueError('missing generator image')
                                used_images[str(g)] = images[g]
                                image = alg.multiply(image, alg.poly(images[g]))
                                if len(image) > MAX_TERMS:
                                    raise ValueError('substitution term limit')
                        elif ring:
                            image = alg.multiply({raw}, factor)
                        else:
                            image = multiply_terms(raw, factor, False)
                        cur.symmetric_difference_update(image)
                    item['generator_images'] = used_images
                    item['input'] = sorted(cur)
                    if any(monomial_degree(m, generators, ring, coefficient_gens) != (s+fs, t+ft) for m in cur):
                        raise ValueError('image degree mismatch')
                    seen = set()
                    for step in range(MAX_STEPS):
                        bad = next((m for m in sorted(cur) if m not in lookup), None)
                        if bad is None:
                            break
                        state = tuple(sorted(cur))
                        if state in seen:
                            raise ValueError('reduction cycle')
                        seen.add(state)
                        def divide(x, y):
                            return alg.divide(x, y) if ring else alg.divide(x[0], y[0]) if x[1] == y[1] else None
                        choice = next(((prov, terms, divide(bad, terms[0])) for prov, terms, rs, rt in relations
                                       if terms and rs <= s+fs and rt <= t+ft and divide(bad, terms[0]) is not None), None)
                        if choice is None and not ring:
                            choice = next(((prov, terms, divide(bad, terms[0]))
                                for prov, terms, rs, rt in lifted_for(bad[1])
                                if terms and rs <= s+fs and rt <= t+ft and divide(bad, terms[0]) is not None), None)
                        if choice is None:
                            raise ValueError('no reducing relation')
                        prov, terms, q = choice
                        if any(monomial_degree(m, generators, ring, coefficient_gens) != tuple(prov['degree']) for m in terms):
                            raise ValueError('relation degree mismatch')
                        item['trace'].append(dict(source=prov, multiplier=q, leading=bad))
                        cur.symmetric_difference_update(multiply_terms(q, alg.parity(terms), ring))
                        if len(cur) > MAX_TERMS:
                            raise ValueError('reduction term limit')
                    else:
                        raise ValueError('reduction step limit')
                    ids = sorted(lookup[m] for m in cur)
                    item['coordinates'] = ids
                    item['comparison'] = comparison(target, name, s+fs, t+ft, meta)
                    w = item['comparison']['wire']
                    v = [i in ids for i in range(w['m'])]
                    outgoing = ev(w['outgoing'], w['k'], w['m'], v)
                    item['outgoing_image'] = outgoing
                    if any(outgoing):
                        raise ValueError('image is not a d2 cycle')
                    item['quotient'] = ev(w['projection'], w['h'], w['m'], v)
                    item['status'] = 'computed_cycle_quotient'
                except (ValueError, sqlite3.Error, subprocess.TimeoutExpired) as exc:
                    item.update(status='unknown', reason=str(exc))
            if any(entry[label]['status'] == 'unknown' for label, *_ in SELECTED):
                entry['status'] = 'unknown'
            elif any(entry['source']['quotient']):
                entry['status'] = 'source_nonzero_quotient'
            elif any(entry['target']['quotient']):
                entry['status'] = 'candidate_needs_full_map_compatibility'
            else:
                entry['status'] = 'target_zero_quotient'
        except (ValueError, sqlite3.Error) as exc:
            entry.update(status='unknown', reason=str(exc))
    report = dict(schema='row3147_configured_map_screen/v2', status='untrusted_bounded_search_only',
        claim='No theorem of naturality, permanence, or Row3147 is asserted.',
        bounds=dict(configured_from='S0', sections=['maps', 'maps_v2'], selected=SELECTED,
                    max_reduction_steps=MAX_STEPS, max_terms=MAX_TERMS,
                    degree_rule='Each map lifts relations through max shifted selected degree; E2 and d2 metadata windows are mandatory.'),
        config_source_sha256=config['source_sha256'], config_sha256=digest(CONFIG),
        sources={name: digest(BASE/name) for name in sorted(sources)},
        producer_sha256=digest(PRODUCER), script_sha256=digest(Path(__file__)),
        counts=dict(sorted(collections.Counter(x['status'] for x in results).items())), maps=results)
    (HERE/'lifted-search.json').write_text(json.dumps(report, indent=2, sort_keys=True)+'\n')
    print(json.dumps(report['counts'], sort_keys=True))
    print('candidates:', [x['map']['name'] for x in results if x['status'] == 'candidate_needs_full_map_compatibility'])
    return report


if __name__ == '__main__':
    run()
