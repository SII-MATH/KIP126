"""Independent SQL, full-basis and comparison audit; this is not the Lean trust root."""
import collections
import hashlib
import json
from pathlib import Path
import sqlite3
import subprocess
import sys

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent


def sha(path):
    h = hashlib.sha256()
    with path.open('rb') as stream:
        for part in iter(lambda: stream.read(1048576), b''):
            h.update(part)
    return h.hexdigest()


def mul(a, b, m, k, n):
    assert len(a) == m*k and len(b) == k*n
    return [sum(a[i*k+q]*b[q*n+j] for q in range(k)) % 2
            for i in range(m) for j in range(n)]


def identity(n):
    return [int(i == j) for i in range(n) for j in range(n)]


def decode(raw, n):
    assert isinstance(raw, str), 'NULL is not zero'
    ids = list(map(int, raw.split(','))) if raw else []
    assert ids == sorted(set(ids)) and all(0 <= i < n for i in ids)
    return [int(i in ids) for i in range(n)]


def canonical(w):
    return (json.dumps(w, sort_keys=True, separators=(',', ':'))+'\n').encode()


def run():
    paths = [HERE/'report.json', ROOT/'HighFiltrationD2Certificates/Data.lean',
             ROOT/'HighFiltrationD2Certificates/Comparisons.lean', *sorted((HERE/'wire').glob('*.json'))]
    previous = {str(p): p.read_bytes() for p in paths}
    subprocess.run([sys.executable, str(HERE/'inspect.py')], check=True)
    subprocess.run([sys.executable, str(HERE/'generate.py')], check=True)
    for path, raw in previous.items():
        assert Path(path).read_bytes() == raw, f'nondeterministic artifact: {path}'
    report = json.loads((HERE/'report.json').read_text())
    database = ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
    assert sha(database) == report['database_sha256']
    db = sqlite3.connect(f'file:{database}?mode=ro', uri=True)
    meta = dict(db.execute('SELECT name,value FROM version'))
    assert report['metadata'] == meta and meta['d2_t_max'] == 177 and meta['t_max'] == 261
    dag = json.loads((ROOT/'AggregateC2D4Conditional/dag.json').read_text())
    seen = set()

    def visit(key):
        if key in seen:
            return
        seen.add(key)
        for predecessor in dag['blocks'][key]['predecessors']:
            visit(predecessor)

    for key in report['event_roots']:
        visit(key)
    assert sorted(seen) == report['dependency_blocks']
    assert not report['failures']
    records = {tuple(b['degree']): b for b in report['reconstructed_degrees']}
    assert len(records) == len(report['reconstructed_degrees']) == 25
    kinds = collections.Counter()
    known = unknown = columns = 0
    levels = set()
    for (s,t), b in records.items():
        assert t <= meta['t_max'] and t+1 <= meta['t_max']
        raw_basis = [list(x) for x in db.execute(
            'SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', (s,t))]
        target = [list(x) for x in db.execute(
            'SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', (s+2,t+1))]
        stairs = [list(x) for x in db.execute(
            'SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id', (s,t))]
        assert raw_basis == b['source_basis'] and target == b['target_basis'] and stairs == b['staircase']
        assert b['target_degree'] == [s+2,t+1]
        m,k = len(raw_basis),len(target)
        assert b['cols'] == m and b['rows'] == k and len(stairs) == m
        basis_columns = [decode(row[1],m) for row in stairs]
        assert basis_columns == b['basis_columns']
        B = [basis_columns[j][i] for i in range(m) for j in range(m)]
        inv = [x for row in b['inverse_rows'] for x in row]
        assert len(b['inverse_rows']) == m and all(len(row) == m for row in b['inverse_rows'])
        assert mul(B,inv,m,m,m) == identity(m) and mul(inv,B,m,m,m) == identity(m)
        images = []
        for row,evidence in zip(stairs,b['evidence'],strict=True):
            rid,base,diff,level = row
            levels.add(level)
            assert evidence['row'] == row
            if level == 9998:
                expected = decode(diff,k)
                kind = 'stored_outgoing_d2'
            elif 2 <= level < 5000:
                expected = [0]*k
                kind = 'incoming_boundary_d2_cycle_prefix'
            elif 9000 < level < 9998:
                expected = [0]*k
                kind = 'later_outgoing_or_survival_d2_cycle_prefix'
            else:
                raise AssertionError(f'unreviewed source row {rid}, level {level}')
            assert evidence['kind'] == kind
            images.append(expected)
            kinds[kind] += 1
        assert b['staircase_images'] == images
        Y = [images[j][i] for i in range(k) for j in range(m)]
        A = mul(Y,inv,k,m,m)
        assert b['entries'] == A and mul(A,B,k,m,m) == Y
        local_known = 0
        for j,(_,_,raw) in enumerate(raw_basis):
            if raw is not None:
                assert decode(raw,k) == [A[i*m+j] for i in range(k)]
                local_known += 1
        assert local_known == b['raw_known_columns']
        assert m-local_known == b['raw_unknown_columns']
        assert b['raw_d2_metadata_covers'] == (t <= meta['d2_t_max'])
        known += local_known
        unknown += m-local_known
        columns += m
        wire = dict(version=1,rows=k,cols=m,basis=list(map(bool,B)),inverse=list(map(bool,inv)),
                    images=list(map(bool,Y)),matrix=list(map(bool,A)))
        assert (HERE/'wire'/f'd{s}_{t}.json').read_bytes() == canonical(wire)
    comparisons = report['complete_d2_comparisons']
    expected_keys = sorted(k for k in seen if dag['blocks'][k]['page'] == 2)
    assert [x['key'] for x in comparisons] == expected_keys and len(comparisons) == 14
    for item in comparisons:
        w = item['wire']
        s,t = dag['blocks'][item['key']]['center']
        out,inc = records[s,t],records[s-2,t-1]
        k,m,n,h = [w[x] for x in ['k','m','n','h']]
        assert (k,m,n) == (out['rows'],out['cols'],inc['cols']) and inc['rows'] == m
        assert w['version'] == 1 and w['outgoing'] == out['entries'] and w['incoming'] == inc['entries']
        for field,size in [('outgoing',k*m),('incoming',m*n),('inclusion',m*h),('projection',h*m),
                           ('up',n*m),('down',m*k)]:
            assert len(w[field]) == size and all(type(x) is bool for x in w[field])
        A,B,I,P,U,D = [w[x] for x in ['outgoing','incoming','inclusion','projection','up','down']]
        assert not any(mul(A,B,k,m,n)) and not any(mul(A,I,k,m,h)) and not any(mul(P,B,h,m,n))
        assert mul(P,I,h,m,h) == identity(h)
        terms = [mul(I,P,m,h,m),mul(B,U,m,n,m),mul(D,A,m,k,m)]
        assert [sum(x)%2 for x in zip(*terms)] == identity(m)
        assert (HERE/'wire'/f'c{s}_{t}.json').read_bytes() == canonical(w)
    assert (columns,known,unknown) == (24,9,15) and 9000 not in levels
    sources = [database, ROOT/'AggregateC2D4Conditional/dag.json', HERE/'inspect.py', HERE/'generate.py',
               HERE/'review.py', ROOT/'Row3147MapSearch/review.py',
               ROOT/'PageTransitionCertificates/page-transition-export', HERE/'export.cpp',
               HERE/'d2-basis-export', HERE/'test_export.py', HERE/'export-test.json']
    result = dict(success=True,dependency_blocks=len(seen),degrees=len(records),columns=columns,
                  raw_known_columns=known,raw_null_columns=unknown,comparisons=len(comparisons),
                  evidence_kinds=dict(kinds),levels=sorted(levels),deterministic=True,
                  source_hashes={str(p.relative_to(ROOT)):sha(p) for p in sources},
                  artifact_hashes={str(p.relative_to(ROOT)):sha(p) for p in paths},
                  semantic_boundary='External staircase basis-value/prefix meanings remain explicit Lean premises; raw NULL unchanged.')
    (HERE/'review.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:v for k,v in result.items() if k not in ['source_hashes','artifact_hashes']},indent=2))


if __name__ == '__main__':
    run()
