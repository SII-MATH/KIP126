"""Read-only independent review; no producer, compiler, or Lake invocation."""
import ast
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
frozen = load(HERE/'frozen-source.json')
assert all(sha(HERE/p) == h for p,h in frozen['files'].items())
source = load(HERE/'source.json')
db = ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
assert sha(db) == source['database_sha256']
c = sqlite3.connect('file:'+str(db)+'?mode=ro', uri=True)
meta = dict(c.execute('SELECT name,value FROM version'))
counts = collections.Counter()


def sparse(raw, n):
    assert raw is not None
    bits = [int(x) for x in raw.split(',')] if raw else []
    assert bits == sorted(set(bits)) and all(0 <= x < n for x in bits)
    return sum(1 << x for x in bits)


def columns(bits, m, n):
    assert len(bits) == m*n and all(x in [0,1] for x in bits)
    return [sum(int(bits[i*n+j]) << i for i in range(m)) for j in range(n)]


def apply(cols, x):
    assert x >> len(cols) == 0
    result = 0
    for j,col in enumerate(cols):
        if x >> j & 1:
            result ^= col
    return result


def finite(w):
    k,m,n,h = [w[x] for x in ['k','m','n','h']]
    o,inc,u,p,up,dn = [columns(w[x],a,b) for x,a,b in [
        ('outgoing',k,m),('incoming',m,n),('inclusion',m,h),
        ('projection',h,m),('up',n,m),('down',m,k)]]
    assert all(apply(o,v) == 0 for v in inc+u)
    assert all(apply(p,v) == 0 for v in inc)
    assert all(apply(p,v) == 1<<j for j,v in enumerate(u))
    for j in range(m):
        assert apply(u,p[j]) ^ apply(inc,up[j]) ^ apply(dn,o[j]) == 1<<j
    boundaries = {apply(inc,v) for v in range(1<<n)}
    cycles = {v for v in range(1<<m) if apply(o,v) == 0}
    for x,y in itertools.product(cycles,repeat=2):
        assert (apply(p,x)==apply(p,y)) == ((x^y) in boundaries)
        counts['quotient_pairs'] += 1
    counts['cycles'] += len(cycles)
    counts['comparisons'] += 1
    return o,inc,p


for name,block in source['blocks'].items():
    w = block['wire']
    assert w == load(HERE/'wire'/f'{name}.json')
    o,inc,p = finite(w)
    s,t = block['degree']
    assert t+1 <= int(meta['t_max']) and t <= int(meta['d2_t_max'])
    if 'rows' not in block:
        continue
    groups = []
    for deg in [(s-2,t-1),(s,t),(s+2,t+1)]:
        groups.append(list(c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis '
                                    'WHERE s=? AND t=? ORDER BY id',deg)))
    assert groups == [[(x['id'],x['mon'],x['d2']) for x in g] for g in block['rows']]
    assert inc == [sparse(row[2],w['m']) for row in groups[0]]
    assert o == [sparse(row[2],w['k']) for row in groups[1]]
    counts['SQL_d2_columns'] += len(o)+len(inc)
    exact = list(c.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss '
                          'WHERE s=? AND t=? ORDER BY id',(s,t)))
    assert exact == [tuple(row) for row in block['staircase']]

for direction,src,dst in [('outgoing','d6target2','d6outgoing2'),
                          ('incoming','d6incoming2','d6target2')]:
    sb,tb = [source['blocks'][k] for k in [src,dst]]
    sw,tw = sb['wire'],tb['wire']
    selected = [x for x in sb['staircase'] if 3 <= x[3] < 5000 or 5000 <= x[3] <= 9997]
    prov = source['blocks']['d6target3'][direction+'_provenance']
    assert prov['rows'] == selected
    assert len(selected) == sw['h']
    sp,tp = columns(sw['projection'],sw['h'],sw['m']),columns(tw['projection'],tw['h'],tw['m'])
    matrix = columns(source['blocks']['d6target3']['wire'][direction],tw['h'],sw['h'])
    xs = []
    for rid,base,diff,level in selected:
        x = apply(sp,sparse(base,sw['m']))
        assert level in [3,9997]
        y = apply(tp,sparse(diff,tw['m'])) if level == 9997 else 0
        assert apply(matrix,x) == y
        xs.append(x)
        counts['SQL_d3_columns'] += 1
    assert {apply(xs,v) for v in range(1<<len(xs))} == set(range(1<<sw['h']))

for page,degree in [(5,(7,130)),(6,(6,129)),(7,(5,128))]:
    assert degree == (12-page,134-page+1)
    assert degree[1] <= int(meta['t_max'])
    assert not list(c.execute('SELECT id FROM S0_AdamsE2_basis WHERE s=? AND t=?',degree))
    assert source['empty_incoming_E2'][str(degree)] == []
    counts['complete_empty_incoming_E2'] += 1

old = [load(ROOT/'Fact713ComparisonBatches/Batch06.json')['entries'][24]['wire'],
       load(ROOT/'Fact713NextSourceSearch/wires/b_S0_12_134_d3.json'),
       load(ROOT/'Fact713D4ComparisonBranches/wire/b_S0_12_134_d4.json')]
new = [load(ROOT/'Row2684D5Search/wire'/f'source{r}.json') for r in [2,3,4]]
assert old == new
counts['exact_old_source_comparisons'] = 3
square = load(ROOT/'Fact713SquareContinuation/wire/b_S0_12_134_d5.json')
main = new+[square]
v = 1
for w in main:
    o = columns(w['outgoing'],w['k'],w['m'])
    inc = columns(w['incoming'],w['m'],w['n'])
    p = columns(w['projection'],w['h'],w['m'])
    assert apply(o,v)==0 and v not in {apply(inc,x) for x in range(1<<w['n'])}
    v = apply(p,v)
    counts['same_input_steps_to_E6'] += 1
assert v == 1
w=new[0];inc=columns(w['incoming'],w['m'],w['n']);p=columns(w['projection'],w['h'],w['m'])
assert 1 != 5 and 1^5 in {apply(inc,x) for x in range(1<<w['n'])}
assert apply(p,1)==apply(p,5)
assert c.execute('SELECT mon,s,t FROM S0_AdamsE2_basis WHERE id=2682').fetchone()==('18,1,188,1',12,134)

# Exhaust all possible dimensions through the two target collapses. Replacing
# either complete incoming/source or outgoing data would change the conclusion.
w=source['blocks']['d6target3']['wire']
assert w['m']==2 and w['n']==1 and w['k']==3 and w['h']==0
assert columns(w['incoming'],2,1)==[1] and columns(w['outgoing'],3,2)==[0,4]
for inc_col,out0,out1 in itertools.product(range(4),range(8),range(8)):
    out=[out0,out1]
    if apply(out,inc_col):
        continue
    cycles={x for x in range(4) if apply(out,x)==0}
    boundaries={0,inc_col}
    homology_zero=cycles==boundaries
    if inc_col==1 and out==[0,4]:assert homology_zero
    if inc_col==0 and out==[0,4]:assert not homology_zero
    if inc_col==1 and out==[0,0]:assert not homology_zero
    counts['complete_target_mutation_models'] += 1

# Every labelling of one-dimensional successive source pages preserves the
# exact nonzero element; nonempty incoming would invalidate this implication.
for p6,p7,p8 in itertools.product(itertools.permutations(range(2)),repeat=3):
    initial=p6.index(1)
    next7=p7.index(p6[initial]);next8=p8.index(p7[next7])
    assert next7!=p7.index(0) and next8!=p8.index(0)
    counts['same_input_E6_E7_E8_label_models'] += 1

historical_dependency_changes=[]
for module in (HERE/'modules.txt').read_text().splitlines():
    name=module.rsplit('.',1)[1];record=load(HERE/f'{name}-compile.json')
    assert record['observed_exit_code']==0 and record['inputs_stable']
    assert sha(HERE/f'{name}.lean')==record['source_sha256']
    assert sha(HERE/record['log'])==record['log_sha256']
    assert sha(ROOT/'.lake/build/lib/lean'/Path(*module.split('.')).with_suffix('.olean'))==record['olean_sha256']
    for path,h in record['external_input_sha256'].items():assert sha(ROOT/path)==h
    for path,h in record['dependencies_sha256'].items():
        if sha(ROOT/path)!=h:historical_dependency_changes.append(dict(module=module,path=path))
    log=(HERE/record['log']).read_text()
    assert 'error:' not in log and 'warning:' not in log and 'sorryAx' not in log
    for names in re.findall(r'depends on axioms:\s*\[([^]]*)\]',log):
        assert {x.strip() for x in names.split(',')} <= {'propext','Classical.choice','Quot.sound'}
        counts['standard_axiom_reports'] += 1
    counts['empty_axiom_reports'] += log.count('does not depend on any axioms')
    counts['modules'] += 1
assert all(sha(HERE/p)==h for p,h in frozen['files'].items())
report=dict(status='independent_read_only_review_passed',findings=[],counts=dict(counts),
    historical_dependency_changes=historical_dependency_changes,
    frozen_manifest_sha256=sha(HERE/'frozen-source.json'),review_script_sha256=sha(Path(__file__)),
    limitations=['No fresh compilation was run; frozen successful compiler records and object hashes were checked.',
      'Actual E2 basis, stored differential, product, and quotient meanings remain explicit premises.',
      'Same-input nonzero E8 is proved conditionally; permanence and topological realization are not asserted.'])
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
