"""Conditional extension with two explicit proven-source rules for Cnu d3.

Two exact signatures use conditional actual naturality theorems. A missing value has a unique
finite image only when its entire target quotient has already been checked zero.
This produces untrusted candidates and source metadata, never Lean theorems.
"""
from collections import Counter
import hashlib
import json
from pathlib import Path
import re
import sqlite3
import subprocess

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
DB = ROOT / 'upstream/kervaire-49/Cnu_AdamsSS_t200.db'
EXPORTER = ROOT / 'PageTransitionCertificates/page-transition-export'
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
canonical = lambda x: json.dumps(x, sort_keys=True, separators=(',', ':')) + '\n'
key = lambda s, t, r: f'Cnu:{s},{t}:d{r}'


def bits(raw, dimension):
    if not isinstance(raw, str) or (raw and not re.fullmatch(r'(0|[1-9][0-9]*)(,(0|[1-9][0-9]*))*', raw)):
        raise ValueError(f'unknown or noncanonical vector: {raw!r}')
    support = [] if raw == '' else list(map(int, raw.split(',')))
    if support != sorted(set(support)) or any(i >= dimension for i in support):
        raise ValueError(f'invalid support {raw!r} in dimension {dimension}')
    return [int(i in support) for i in range(dimension)]


def rows(columns, height):
    return [[v[i] for v in columns] for i in range(height)]


def columns(matrix, width):
    return [[row[j] for row in matrix] for j in range(width)]


def multiply(left, right, width):
    return [[sum(x*y for x, y in zip(row, col)) % 2 for col in columns(right, width)] for row in left]


def apply(matrix, vector):
    return [sum(x*y for x, y in zip(row, vector)) % 2 for row in matrix]


def solve(cols, value):
    pivots = {}
    for j, column in enumerate(cols):
        vector, lift = column[:], [int(i == j) for i in range(len(cols))]
        for i in range(len(vector)):
            if not vector[i]:
                continue
            if i not in pivots:
                pivots[i] = vector, lift
                break
            old, old_lift = pivots[i]
            vector = [a ^ b for a, b in zip(vector, old)]
            lift = [a ^ b for a, b in zip(lift, old_lift)]
    vector, lift = value[:], [0] * len(cols)
    for i in range(len(vector)):
        if not vector[i]:
            continue
        if i not in pivots:
            raise ValueError('vector outside complete column span')
        old, old_lift = pivots[i]
        vector = [a ^ b for a, b in zip(vector, old)]
        lift = [a ^ b for a, b in zip(lift, old_lift)]
    return lift


def decode(wire, field, height, width):
    values = wire[field]
    assert len(values) == height * width and all(type(v) is bool for v in values)
    return [[int(x) for x in values[i*width:(i+1)*width]] for i in range(height)]


def check_wire(w):
    k, m, n, h = (w[f] for f in ['k', 'm', 'n', 'h'])
    out, inc = decode(w, 'outgoing', k, m), decode(w, 'incoming', m, n)
    inclusion, projection = decode(w, 'inclusion', m, h), decode(w, 'projection', h, m)
    down, up = decode(w, 'down', m, k), decode(w, 'up', n, m)
    assert multiply(out, inc, n) == [[0]*n for _ in range(k)]
    assert multiply(out, inclusion, h) == [[0]*h for _ in range(k)]
    assert multiply(projection, inc, n) == [[0]*n for _ in range(h)]
    assert multiply(projection, inclusion, h) == [[int(i == j) for j in range(h)] for i in range(h)]
    ip, do, bu = multiply(inclusion, projection, m), multiply(down, out, m), multiply(inc, up, m)
    assert [[ip[i][j] ^ do[i][j] ^ bu[i][j] for j in range(m)] for i in range(m)] == [
        [int(i == j) for j in range(m)] for i in range(m)]


def run():
    manifest = json.loads((ROOT / 'CnuPageCertificates/source.json').read_text())
    assert sha(DB) == manifest['sha256']
    sql = sqlite3.connect(f'file:{DB}?mode=ro', uri=True)
    metadata = dict(sql.execute('SELECT name,value FROM version'))
    degrees, graph = {}, {}

    def degree(s, t):
        name = f'Cnu:{s},{t}'
        if name not in degrees:
            if t > metadata['t_max']:
                raise ValueError(f'outside declared E2 window: {name}')
            degrees[name] = dict(degree=[s, t], e2=[list(x) for x in sql.execute(
                'SELECT id,mon,d2 FROM Cnu_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', (s, t))],
                staircase=[list(x) for x in sql.execute(
                    'SELECT id,base,diff,level FROM Cnu_AdamsE2_ss WHERE s=? AND t=? ORDER BY id', (s, t))])
        return degrees[name]

    def selected(s, t, page):
        return [row for row in degree(s, t)['staircase'] if page <= row[3] < 5000 or 5000 <= row[3] <= 10000-page]

    def visit(s, t, page):
        name = key(s, t, page)
        if name in graph:
            return
        neighbors = [(s-page, t-page+1), (s, t), (s+page, t+page-1)]
        graph[name] = dict(center=[s, t], page=page, predecessors=[] if page == 2 else [key(a, b, page-1) for a, b in neighbors])
        for a, b in neighbors:
            degree(a, b)
            if page > 2:
                visit(a, b, page-1)

    minimal_roots = sorted({key(14, 139, r-1) for r in range(3, 6)} |
                           {key(14-r, 140-r, r-1) for r in range(3, 6)})
    for r in range(3, 6):
        visit(14, 139, r-1)
        visit(14-r, 140-r, r-1)
    required = set(graph)
    # The full optional target quotient includes outgoing d5, stronger than no-hit.
    for r in range(2, 6):
        visit(14, 139, r)
    cache, results, issues = {}, {}, {}

    def project(s, t, page, vector):
        for r in range(2, page):
            vector = apply(cache[key(s, t, r)]['projection_rows'], vector)
        return vector

    def dimension(s, t, page):
        return len(degree(s, t)['e2']) if page == 2 else cache[key(s, t, page-1)]['wire']['h']

    def matrix(s, t, page):
        target = (s+page, t+page-1)
        height, width = dimension(*target, page), dimension(s, t, page)
        records = degree(s, t)['e2'] if page == 2 else selected(s, t, page)
        if len(records) != width:
            raise ValueError('selected current basis differs from verified predecessor dimension')
        cols, uses, failures = [], [], []
        for local, row in enumerate(records):
            use = dict(source=[s, t], target=list(target), page=page, row=row, local=local,
                       target_dimension=height, target_predecessor=None if page == 2 else key(*target, page-1))
            try:
                if page == 2:
                    if t > metadata['d2_t_max']:
                        raise ValueError('nonempty source outside declared d2 window')
                    value, kind = bits(row[2], height), 'stored_d2'
                else:
                    rid, base, diff, level = row
                    if level == 10000-page and diff is not None:
                        value = project(*target, page, bits(diff, len(degree(*target)['e2'])))
                        kind = 'stored_event'
                    elif 2 <= level < 5000:
                        value, kind = [0]*height, 'incoming_boundary_zero_requires_meaning'
                    elif 9000 < level < 10000-page:
                        value, kind = [0]*height, 'future_outgoing_zero_prefix_requires_meaning'
                    elif (s,t,page,rid,base,diff,level) in [
                            (11,137,3,4180,'1,2',None,9000),
                            (14,139,3,4411,'2',None,9000)]:
                        value, kind = [0]*height, ('conditional_row4180_bottom_naturality'
                            if rid == 4180 else 'conditional_row4411_bottom_zero_target')
                    elif height == 0:
                        value, kind = [], 'checked_complete_zero_codomain'
                    else:
                        raise ValueError('unknown value with complete nonzero target')
                use.update(kind=kind, finite_value=value)
                cols.append(value)
                uses.append(use)
            except ValueError as error:
                use.update(kind='unresolved', reason=str(error))
                failures.append(use)
        return None if failures else rows(cols, height), uses, failures

    for name, node in sorted(graph.items(), key=lambda item: (item[1]['page'], item[0])):
        missing = [p for p in node['predecessors'] if p not in cache]
        if missing:
            results[name] = dict(status='blocked_predecessors', unresolved_predecessors=missing)
            continue
        s, t = node['center']; page = node['page']
        out, out_uses, out_issues = matrix(s, t, page)
        inc, inc_uses, inc_issues = matrix(s-page, t-page+1, page)
        issues[name] = out_issues + inc_issues
        if issues[name]:
            results[name] = dict(status='unresolved_values', unresolved_predecessors=[], issues=issues[name])
            continue
        k, m, n = dimension(s+page, t+page-1, page), dimension(s, t, page), dimension(s-page, t-page+1, page)
        args = list(map(str, [k, m, n])) + [''.join(str(x) for row in a for x in row) or '-' for a in [out, inc]]
        proc = subprocess.run([str(EXPORTER), *args], capture_output=True, text=True)
        if proc.returncode:
            results[name] = dict(status='export_rejected', reason=proc.stderr, arguments=args)
            continue
        try:
            wire = json.loads(proc.stdout); check_wire(wire)
            h = wire['h']; oldP = decode(wire, 'projection', h, m)
            chosen_rows = selected(s, t, page+1)
            chosen = [project(s, t, page, bits(x[1], len(degree(s, t)['e2']))) for x in chosen_rows]
            if len(chosen) != h:
                raise ValueError(f'selected successor dimension {len(chosen)} differs from homology {h}')
            inclusion = rows(chosen, m)
            change = multiply(oldP, inclusion, h)
            inverse = rows([solve(columns(change, h), [int(i == j) for i in range(h)]) for j in range(h)], h)
            projection = multiply(inverse, oldP, m)
            ip, do = multiply(inclusion, projection, m), multiply(decode(wire, 'down', m, k), out, m)
            residual = [[int(i == j) ^ ip[i][j] ^ do[i][j] for j in range(m)] for i in range(m)]
            up = rows([solve(columns(inc, n), v) for v in columns(residual, m)], n)
            for field, value in [('inclusion', inclusion), ('projection', projection), ('up', up)]:
                wire[field] = [bool(x) for row in value for x in row]
            check_wire(wire)
            cache[name] = dict(**node, wire=wire, projection_rows=projection,
                               successor_rows=chosen_rows, uses=out_uses+inc_uses,
                               exporter_arguments=args, exporter_stdout_sha256=hashlib.sha256(proc.stdout.encode()).hexdigest())
            results[name] = dict(status='finite_comparison_available', dimensions={f: wire[f] for f in ['k', 'm', 'n', 'h']})
        except (ValueError, AssertionError) as error:
            results[name] = dict(status='comparison_or_coordinate_rejected', reason=str(error))

    target_rows = degree(14, 139)['e2']
    assert target_rows[2] == [4412, '1,1,7,1,275,1,0', '']
    raw_input = [0, 0, 1, 0]
    incoming_checks = []
    for page in range(2, 6):
        predecessor_keys = [] if page == 2 else [key(14-page, 140-page, page-1), key(14, 139, page-1)]
        blocked = [k for k in predecessor_keys if k not in cache]
        result = dict(page=page, source=[14-page, 140-page], target=[14, 139], predecessors=predecessor_keys)
        if blocked:
            result.update(status='blocked_predecessors', unresolved_predecessors=blocked)
        else:
            incoming, uses, failures = matrix(14-page, 140-page, page)
            result.update(uses=uses, issues=failures)
            if failures:
                result['status'] = 'unresolved_incoming_values'
            else:
                target = project(14, 139, page, raw_input)
                try:
                    preimage = solve(columns(incoming, dimension(14-page, 140-page, page)), target)
                    result.update(status='target_in_finite_image', preimage=preimage)
                except ValueError:
                    result['status'] = 'finite_no_hit'
                result.update(target_coordinates=target, incoming_matrix=incoming,
                              source_dimension=dimension(14-page, 140-page, page), target_dimension=len(target))
        incoming_checks.append(result)

    frontier = {name: value for name, value in results.items()
                if value['status'] != 'finite_comparison_available' and not value.get('unresolved_predecessors')}
    required_frontier = {k: v for k, v in frontier.items() if k in required}
    report = dict(version=1, claim='prop-7.9', object='Cnu', degree=[14, 139],
        global_basis_id=4412, local_basis_index=2, target_staircase_row=4411,
        raw_input=raw_input, metadata=metadata, database_sha256=sha(DB),
        exporter_sha256=sha(EXPORTER), script_sha256=sha(Path(__file__)),
        minimal_roots=minimal_roots, required_keys=sorted(required), graph=graph, degrees=degrees,
        results=results, comparisons=cache, frontier=frontier, required_frontier=required_frontier,
        incoming_checks=incoming_checks,
        summary=dict(required_comparisons=len(required), required_available=sum(k in cache for k in required),
                     optional_full_comparisons=len(graph), full_available=len(cache),
                     required_frontier_count=len(required_frontier),
                     incoming_status_counts=dict(Counter(x['status'] for x in incoming_checks))),
        conditional_source_theorems=['Prop79IncomingSearch.Actual.actual_row4180_d3_zero',
            'Prop79TargetSearch.Actual.actual_row4411_d3_zero'],
        trust='Conditional untrusted finite candidates with exact named actual source theorems. Future-event prefixes and incoming-boundary zeros require actual map meanings; level9000 is never a proof. NULL remains NULL. No Prop7.9 or actual Cnu theorem is claimed.')
    (HERE / 'search.json').write_text(canonical(report))
    (HERE / 'summary.json').write_text(json.dumps(report['summary'], indent=2)+'\n')
    (HERE / 'failure-locations.json').write_text(json.dumps(dict(required_frontier=required_frontier,
        incoming_checks=incoming_checks), indent=2, sort_keys=True)+'\n')
    wires = HERE / 'wires'; wires.mkdir(exist_ok=True)
    for name, block in cache.items():
        (wires / (name.replace(':', '_').replace(',', '_')+'.json')).write_text(canonical(block['wire']))
    print(json.dumps(report['summary'], indent=2))


if __name__ == '__main__':
    run()
