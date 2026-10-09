"""Independent raw/source and complete-comparison replay for the page7 route."""
import hashlib
import importlib.util
import json
import sqlite3
from pathlib import Path

p = Path(__file__).resolve().parent
r = p.parent
sha = lambda f: hashlib.sha256(f.read_bytes()).hexdigest()
spec = importlib.util.spec_from_file_location('arithmetic', r/'Fact762IncomingCertificates/review.py')
a = importlib.util.module_from_spec(spec)
spec.loader.exec_module(a)
source = json.loads((p/'source.json').read_text())
for name, digest in source['inputs_sha256'].items():
    assert sha(r/name) == digest
db = sqlite3.connect(f'file:{r}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro', uri=True)
assert dict(db.execute('SELECT name,value FROM version')) == source['metadata']
assert source['row2632'] == list(db.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2632').fetchone()) == [2632, 7, 133, '0', None, 9982]
assert source['source_basis'] == [list(x) for x in db.execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=7 AND t=133 ORDER BY id')]
assert source['source_basis'][0] == [2631, '1,1,69,1,76,1']
saved = json.loads((r/'AggregateD5Conditional/source.json').read_text())['blocks']
rawcols = 0
for item in source['comparisons']:
    s, t = item['center']
    assert item['degrees'] == [[s-2, t-1], [s, t], [s+2, t+1]]
    w = item['wire']
    assert w == json.loads((p/f'{item["name"]}.json').read_text())
    a.check_wire(w)
    old = saved[f'S0:{s},{t}:d2']['wire']
    assert [w[f] for f in ['k','m','n','h','incoming','outgoing']] == [old[f] for f in ['k','m','n','h','incoming','outgoing']]
    assert list(map(len,item['groups'])) == [w['n'],w['m'],w['k']]
    for degree, rows in zip(item['degrees'],item['groups']):
        assert rows == [list(x) for x in db.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',degree)]
    for field, rows, dim in [('incoming',item['groups'][0],w['m']),('outgoing',item['groups'][1],w['k'])]:
        cols = [a.indices(x[2],dim) for x in rows]
        assert list(map(int,w[field])) == [col[i] for i in range(dim) for col in cols]
        rawcols += len(cols)
assert [x['wire']['h'] for x in source['comparisons']] == [1,0,0]
tests = 0
for k in range(33):
    w = dict(version=1,k=k,m=1,n=0,h=1,outgoing=[False]*k,incoming=[],
             inclusion=[True],projection=[True],up=[],down=[False]*k)
    a.check_wire(w)
    tests += 1
report = dict(status='independent_raw_and_arithmetic_review_passed',
    full_raw_comparisons=3,raw_columns=rawcols,arbitrary_target_dimension_smoke_cases=tests,
    theorem_scope='Lean proves arbitrary Nat target dimension; Python finite cases are regression evidence only.',
    source_row=source['row2632'],source_basis=source['source_basis'],
    assumptions=['full E3 source realization','surjective actual cycle-to-next-page transitions',
      'row2632 named cycles on pages3..6','same named class under transitions',
      'actual d7 row2632 zero prefix','full E7 source realization',
      'actual differential preserves zero',
      'for explicit E6/E7 coordinate models: zero incoming-source realizations and full linear column semantics'],
    remaining='This is conditional d7 full-source map vanishing. It is not source-space vanishing or proof of the imported d18 prefix.',
    inputs_sha256={str(f.relative_to(r)):sha(f) for f in [p/'prepare.py',p/'source.json',p/'review.py',
      r/'Fact762IncomingCertificates/review.py',r/'AggregateD5Conditional/source.json',
      *[p/f'{name}.json' for name in ['source-d2','incoming5','incoming6']],
      *[p/f'{name}.lean' for name in ['Finite','Propagation','Semantics','Inputs']]]})
(p/'review.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print('Independent page7 review: 3 raw comparisons,',rawcols,'raw columns, 33 target-dimension smoke cases')
