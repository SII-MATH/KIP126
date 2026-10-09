"""Recheck the entire incoming-source dependency closure and full quotients."""
import collections
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
snapshot = load(ROOT / 'Fact762IncomingCertificates/audit.json')
blocks = dict(load(ROOT / 'AggregateD5Conditional/source.json')['blocks'])
for key, value in snapshot['comparisons'].items():
    assert key not in blocks or blocks[key] == value
    blocks[key] = value
closure = set()


def visit(key):
    if key in closure:
        return
    closure.add(key)
    for parent in blocks[key]['predecessors']:
        visit(parent)


for page in [2, 3, 4]:
    visit(f'S0:9,135:d{page}')
database = ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
c = sqlite3.connect('file:' + str(database) + '?mode=ro', uri=True)
meta = dict(c.execute('SELECT name,value FROM version'))
counts = collections.Counter()
premises = []


def cols(bits, rows, columns):
    assert len(bits) == rows * columns and all(type(v) is bool for v in bits)
    return [sum(int(bits[i*columns+j]) << i for i in range(rows)) for j in range(columns)]


def ev(columns, vector):
    result = 0
    assert vector >> len(columns) == 0
    for j, col in enumerate(columns):
        if vector >> j & 1:
            result ^= col
    return result


def sparse(raw, n):
    assert raw is not None
    values = list(map(int, raw.split(','))) if raw else []
    assert values == sorted(set(values)) and all(0 <= v < n for v in values)
    return sum(1 << v for v in values)


def basis(s, t):
    assert t <= meta['t_max']
    return list(c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', (s,t)))


def project(s, t, page, vector):
    for r in range(2, page):
        w = blocks[f'S0:{s},{t}:d{r}']['wire']
        assert ev(cols(w['outgoing'],w['k'],w['m']),vector) == 0
        vector = ev(cols(w['projection'],w['h'],w['m']),vector)
    return vector


for key in sorted(closure):
    block = blocks[key]
    w = block['wire']
    k,m,n,h = [w[x] for x in ['k','m','n','h']]
    a,b,i,p,u,d = [cols(w[f],rows,columns) for f,rows,columns in [
        ('outgoing',k,m),('incoming',m,n),('inclusion',m,h),
        ('projection',h,m),('up',n,m),('down',m,k)]]
    cycles = {v for v in range(1<<m) if ev(a,v)==0}
    boundaries = {ev(b,v) for v in range(1<<n)}
    assert boundaries <= cycles
    assert all(ev(a,v)==0 and ev(p,v)==1<<j for j,v in enumerate(i))
    assert all(ev(p,v)==0 for v in boundaries)
    for j in range(m):
        assert ev(i,p[j]) ^ ev(b,u[j]) ^ ev(d,a[j]) == 1<<j
    for x,y in itertools.product(cycles,repeat=2):
        assert (ev(p,x)==ev(p,y)) == (x^y in boundaries)
        counts['cycle_quotient_pairs'] += 1
    s,t = block['center']
    r = block['page']
    for field,ss,tt,ts,ttarget,rows,dim in [
        ('outgoing',s,t,s+r,t+r-1,m,k), ('incoming',s-r,t-r+1,s,t,n,m)]:
        matrix = cols(w[field],dim,rows)
        if r==2:
            raw = basis(ss,tt)
            assert tt <= meta['d2_t_max'] and len(raw)==rows and len(basis(ts,ttarget))==dim
            assert matrix == [sparse(row[2],dim) for row in raw]
            counts['SQL_d2_columns'] += len(raw)
        else:
            selected = [list(row) for row in c.execute(
                'SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(ss,tt))
                if r <= row[3] < 5000 or 5000 <= row[3] <= 10000-r]
            xs = []
            for row in selected:
                uses = [u for u in block['uses'] if u['row']==row and u['source']==[ss,tt]]
                assert len(uses)==1
                use = uses[0]
                x = project(ss,tt,r,sparse(row[1],len(basis(ss,tt))))
                xs.append(x)
                if use['kind']=='stored_event':
                    assert row[3]==10000-r
                    y = project(ts,ttarget,r,sparse(row[2],len(basis(ts,ttarget))))
                else:
                    assert use['kind'] in ['stored_zero_prefix_or_boundary','conditional_leibniz'],use
                    y = 0
                    premises.append(dict(page=r,degree=[ss,tt],row=row,kind=use['kind']))
                assert ev(matrix,x)==y
                counts['SQL_higher_columns'] += 1
            assert {ev(xs,v) for v in range(1<<len(xs))} == set(range(1<<rows))
    counts['complete_comparisons'] += 1

final = blocks['S0:9,135:d4']['wire']
assert (final['m'],final['k'],final['n'],final['h']) == (2,2,0,0)
assert cols(final['outgoing'],2,2)==[1,2]
assert (14-5,139-5+1)==(9,135)
assert c.execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=14 AND t=139 ORDER BY id').fetchall()[1] == (3080,'1,1,7,1,275,1')
# Every labelling of the one-dimensional target respects zero/nonzero;
# adding a nonzero incoming column supplies a counterexample to preservation.
models = countermodels = 0
for current,nextpage in itertools.product(itertools.permutations(range(2)),repeat=2):
    value = current.index(1)
    successor = nextpage.index(current[value])
    assert successor != nextpage.index(0)
    models += 1
    collapsed = {0:0,1:0}
    assert collapsed[current[value]] == 0
    countermodels += 1
module_reports = []
for module in (HERE/'modules.txt').read_text().splitlines():
    name=module.split('.')[-1]
    record=load(HERE/f'{name}-compile.json')
    assert record['observed_exit_code']==0 and record['inputs_stable']
    assert sha(HERE/f'{name}.lean')==record['source_sha256']
    log=(HERE/record['log']).read_text()
    assert 'error:' not in log and 'sorryAx' not in log
    for names in re.findall(r'depends on axioms:\s*\[([^]]*)\]',log):
        assert {v.strip() for v in names.split(',')} <= {'propext','Classical.choice','Quot.sound'}
        counts['standard_axiom_reports'] += 1
    assert sha(ROOT/'.lake/build/lib/lean'/Path(*module.split('.')).with_suffix('.olean'))==record['olean_sha256']
    module_reports.append(dict(module=module,observed_exit_code=record['observed_exit_code']))
report=dict(status='passed',counts=dict(counts),modules=module_reports,
    full_closure=sorted(closure),prefix_meanings_still_explicit=premises,
    nonzero_label_models=models,missing_incoming_countermodels=countermodels,
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in [database,
        ROOT/'Fact762IncomingCertificates/audit.json',ROOT/'AggregateD5Conditional/source.json']},
    limitation='Complete mathematical coordinate/known differential meanings remain premises. '
               'Same actual E2 input reaches nonzero E6; permanence is not proved.')
(HERE/'review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
