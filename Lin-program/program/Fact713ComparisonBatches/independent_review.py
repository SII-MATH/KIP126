"""Independent SQL, packaging, whole-homology, and dependency coverage review."""
from collections import Counter
from itertools import product
from pathlib import Path
import hashlib
import json
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
OLD = ROOT / 'Fact713E12Search'
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
load = lambda p: json.loads(p.read_text())
canonical = lambda x: json.dumps(x, sort_keys=True, separators=(',', ':')) + '\n'
snapshot = load(OLD / 'successor-search.json')
baseline = load(OLD / 'search.json')
history = load(ROOT / 'Fact713TrajectoryAudit/dag.json')
manifest = load(HERE / 'manifest.json')
cache = snapshot['comparisons']
assert len(cache) == snapshot['available_comparisons'] == manifest['comparisons'] == 1234
assert manifest['snapshot'] == 'Fact713E12Search/successor-search.json'
assert manifest['snapshot_sha256'] == sha(OLD / 'successor-search.json')
assert snapshot['baseline_search_sha256'] == sha(OLD / 'search.json')
assert all(cache[key] == block for key, block in baseline['comparisons'].items())

graph = {}
pending = [(9,132,r) for r in range(2,12)]
keyof = lambda s,t,r: f'S0:{s},{t}:d{r}'
while pending:
    s,t,r = pending.pop()
    key = keyof(s,t,r)
    if key in graph:
        continue
    preds = [] if r == 2 else [(s-r,t-r+1,r-1),(s,t,r-1),(s+r,t+r-1,r-1)]
    graph[key] = dict(center=[s,t],page=r,predecessors=[keyof(*p) for p in preds])
    pending.extend(preds)
assert graph == baseline['graph'] and len(graph) == 1420
assert len(set(graph)-set(cache)) == manifest['unresolved_comparisons'] == 186

ordered = sorted(cache, key=lambda key: (cache[key]['page'],cache[key]['center']))
assert manifest['keys'] == ordered
assert manifest['uses'] == {k:cache[k]['uses'] for k in ordered if cache[k]['uses']}
expected_entries = [dict(key=dict(object=cache[k]['object'],page=cache[k]['page'],
    s=cache[k]['center'][0],t=cache[k]['center'][1]),wire=cache[k]['wire']) for k in ordered]
batch_names = [f'Batch{i:02}' for i in range(31)]
assert manifest['modules'] == batch_names + ['Imported']
assert sorted(p.stem for p in HERE.glob('Batch[0-9][0-9].json')) == batch_names
assert sorted(p.stem for p in HERE.glob('Batch*.lean')) == batch_names
flattened = []
packaging_hashes = {}
for i,name in enumerate(batch_names):
    path = HERE / (name + '.json')
    package = load(path)
    assert set(package) == {'version','entries'} and package['version'] == 1
    assert path.read_text() == canonical(package)
    assert package['entries'] == expected_entries[40*i:40*(i+1)]
    assert len(package['entries']) == (40 if i < 30 else 34)
    for entry in package['entries']:
        assert set(entry) == {'key','wire'}
        key = entry['key']
        assert set(key) == {'object','page','s','t'}
        assert key['object'] == 'S0' and type(key['page']) is int and key['page'] >= 2
        assert type(key['s']) is int and type(key['t']) is int
    source = (HERE / (name + '.lean')).read_text()
    assert source.count('family_input%') == 1
    assert f'family_input% "Fact713ComparisonBatches/{name}.json"' in source
    assert f'theorem batch{i:02}_valid' in source
    flattened.extend(package['entries'])
    packaging_hashes[path.name] = sha(path)
assert flattened == expected_entries
assert len({tuple(e['key'][f] for f in ['object','page','s','t']) for e in flattened}) == 1234
family = load(HERE / 'family.json')
assert family == dict(version=1, entries=flattened)
assert (HERE / 'family.json').read_text() == canonical(family)
imported = (HERE / 'Imported.lean').read_text()
assert [line.split('.')[-1] for line in imported.splitlines() if line.startswith('import ')] == batch_names
assert 'def family : Family := ' + ' ++ '.join(f'batch{i:02}' for i in range(31)) in imported

db = ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
assert sha(db) == history['summary']['database_sha256']
sql = sqlite3.connect(f'file:{db}?mode=ro',uri=True)
raw = {}
for block in history['blocks']:
    for space in block['spaces']:
        degree = tuple(space['degree'])
        if degree not in raw:
            raw[degree] = dict(e2=[list(x) for x in sql.execute(
                'SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', degree)],
                staircase=[list(x) for x in sql.execute(
                'SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id', degree)])
        assert raw[degree]['e2'] == space['e2']
        assert raw[degree]['staircase'] == space['staircase']
sql.close()
assert len(raw) == 681


def cols(bits,m,n):
    assert len(bits) == m*n and all(type(b) is bool for b in bits)
    return tuple(sum(int(bits[i*n+j]) << i for i in range(m)) for j in range(n))


def apply(columns,x):
    result = 0
    for i,value in enumerate(columns):
        if x & (1 << i):
            result ^= value
    return result


def sparse(text):
    assert text is not None
    items = [] if not text else list(map(int,text.split(',')))
    assert len(items) == len(set(items)) and all(i >= 0 for i in items)
    return sum(1 << i for i in items)


def project(degree,page,x):
    for r in range(2,page):
        w = cache[keyof(*degree,r)]['wire']
        assert x < 1 << w['m'] and apply(cols(w['outgoing'],w['k'],w['m']),x) == 0
        x = apply(cols(w['projection'],w['h'],w['m']),x)
    return x


counts = Counter()
uses = Counter()
for key,block in cache.items():
    w = block['wire']
    assert set(w) == {'version','k','m','n','h','outgoing','incoming','projection','inclusion','up','down'}
    assert w['version'] == 1 and all(type(w[k]) is int and w[k]>=0 for k in ['k','m','n','h'])
    k,m,n,h = (w[f] for f in ['k','m','n','h'])
    d,inc,proj,lift,up,down = [cols(w[name],r,c) for name,r,c in [
        ('outgoing',k,m),('incoming',m,n),('projection',h,m),('inclusion',m,h),('up',n,m),('down',m,k)]]
    image = {apply(inc,x) for x in range(1 << n)}
    kernel = {x for x in range(1 << m) if apply(d,x)==0}
    assert image <= kernel
    assert all(apply(proj,x)==0 for x in image)
    assert all(apply(d,apply(lift,x))==0 and apply(proj,apply(lift,x))==x for x in range(1 << h))
    for x in range(1 << m):
        assert apply(lift,apply(proj,x)) ^ apply(inc,apply(up,x)) ^ apply(down,apply(d,x)) == x
        counts['full_homotopy_vectors'] += 1
    for x,y in product(kernel,repeat=2):
        assert (apply(proj,x)==apply(proj,y)) == (x ^ y in image)
        counts['quotient_cycle_pairs'] += 1
    assert len(kernel)==len(image)*(1 << h)
    s,t = block['center'];r = block['page']
    assert key == keyof(s,t,r) and block['object']=='S0'
    assert block['predecessors'] == graph[key]['predecessors']
    assert all(pred in cache for pred in block['predecessors'])
    counts['predecessor_edges'] += len(block['predecessors'])
    if r > 2:
        assert [cache[p]['wire']['h'] for p in block['predecessors']] == [n,m,k]
        counts['predecessor_dimension_checks'] += 3
    next_key = keyof(s,t,r+1)
    if next_key in cache:
        assert h == cache[next_key]['wire']['m']
        counts['consecutive_pairs'] += 1
    target_key = keyof(s+r,t+r-1,r)
    if target_key in cache:
        v = cache[target_key]['wire']
        assert (k,m,w['outgoing']) == (v['m'],v['n'],v['incoming'])
        counts['adjacent_pairs'] += 1
    for source,target,columns in [((s,t),(s+r,t+r-1),d),((s-r,t-r+1),(s,t),inc)]:
        if r == 2:
            assert columns == tuple(sparse(row[2]) for row in raw[source]['e2'])
            counts['raw_d2_columns'] += len(columns)
        else:
            selected = [row for row in raw[source]['staircase'] if r <= row[3] < 5000 or 5000 <= row[3] <= 10000-r]
            assert len(selected) == len(columns)
            for row,value in zip(selected,columns):
                matches = [u for u in block['uses'] if u['source']==list(source) and u['row']==row]
                assert len(matches)==1
                use = matches[0];kind = use['kind'];uses[kind]+=1
                assert use['object']=='S0' and use['page']==r
                assert use['target_predecessor']==keyof(*target,r-1)
                if kind=='stored_event':
                    assert row[3]==10000-r and value==project(target,r,sparse(row[2]))
                elif kind=='stored_zero_prefix_or_boundary':
                    assert (2 <= row[3] < 5000 or 9000 < row[3] < 10000-r) and value==0
                elif kind=='checked_zero_codomain':
                    assert cache[use['target_predecessor']]['wire']['h']==0 and value==0
                else:
                    assert kind.startswith('conditional_') and value==0
                counts['raw_higher_columns'] += 1
    counts['comparisons'] += 1
assert uses == Counter(u['kind'] for b in cache.values() for u in b['uses'])

old_keys = set(load(OLD / 'generated-manifest.json')['keys']) | set(load(OLD / 'successor-manifest.json')['keys'])
assert len(old_keys)==85 and old_keys <= set(ordered)
for key in old_keys:
    path=OLD/'wires'/('b_'+key.replace(':','_').replace(',','_').replace('-','neg')+'.json')
    assert load(path)==cache[key]['wire']
old_nulls = [x for x in history['differential_rows'] if x['row'][2] is None]
obligations=load(OLD/'NULL-obligations.json')['rows']
assert len(old_nulls)==len(obligations)==82
assert {x['key'] for x in old_nulls}=={x['key'] for x in obligations}
assert sum(x['classification']=='stored_earlier_zero_prefix' for x in old_nulls)==25

report=dict(findings=[],review='all1234comparison packaging/SQL/full identities',
    batches=31,last_batch_size=34,unique_keys=1234,old85_exactly_preserved=True,
    uses_records=sum(uses.values()),uses_by_kind=dict(uses),uses_in_manifest_keys=len(manifest['uses']),
    sql_degrees=681,full_dependency_nodes=1420,blocked_nodes_preserved=186,
    null_obligations_preserved=82,null_zero_prefix_obligations=25,counts=dict(counts),
    scope=['all finite blocks kernel-checked by batch modules when their separate compilation completes',
        'this review independently checks full pair compatibility and predecessor dimensions',
        'the currently generated Imported theorem proves individual validity,count,uniqueness; it does not assert Coherent',
        'negative auxiliary filtration keys allowed by KeyValid are preserved as Int',
        'known columns and conditional/NULL prefix uses retain actual interpretation obligations',
        'no E12 survival,unknown-value resolution,or actual topology realization claimed'],
    source_sha256={p.name:sha(p) for p in sorted(HERE.glob('*.lean'))},
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in [
        OLD/'successor-search.json',OLD/'search.json',OLD/'NULL-obligations.json',
        OLD/'generated-manifest.json',OLD/'successor-manifest.json',
        ROOT/'Fact713TrajectoryAudit/dag.json',db,HERE/'manifest.json',HERE/'family.json']},
    batch_json_sha256=packaging_hashes,script_sha256=sha(Path(__file__)),
    lean_compilation_reviewed=False)
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps({k:v for k,v in report.items() if k not in ['source_sha256','input_sha256','batch_json_sha256']},indent=2))
