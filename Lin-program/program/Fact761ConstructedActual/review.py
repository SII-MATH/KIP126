"""Independent complete quotient, source snapshot and trace replay."""
import hashlib
import itertools
import json
import re
import sqlite3
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
data = json.loads((HERE / 'source.json').read_text())
upstream = ROOT / data['source_document']['path']
assert sha(upstream) == data['source_document']['sha256']
assert data['blocks'] == json.loads(upstream.read_text())['blocks']
database = ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
assert sha(database) == data['database_sha256']
connection = sqlite3.connect(f'file:{database}?mode=ro', uri=True)
counts = dict(comparisons=0, cycle_vectors=0, quotient_pairs=0,
              source_rows=0, raw_queries=0, named_steps=0, source_steps=0)

def ev(a, m, n, x):
    assert len(a) == m*n and len(x) == n
    return tuple(sum(a[i*n+j]*x[j] for j in range(n)) % 2 for i in range(m))

def vectors(n):
    return itertools.product((0,1), repeat=n)

def xor(a, b):
    return tuple(x^y for x,y in zip(a,b))

def mm(a,m,k,b,n):
    return [sum(a[i*k+l]*b[l*n+j] for l in range(k)) % 2
            for i in range(m) for j in range(n)]

def identity(n):
    return [int(i == j) for i in range(n) for j in range(n)]

lean = (ROOT / 'NamedPageComparison/ConditionalHigherData.lean').read_text()
for key, block in data['blocks'].items():
    w = block['wire']; k,m,n,h = (w[x] for x in ['k','m','n','h'])
    fields = ['outgoing','incoming','inclusion','projection','up','down']
    representation = '1,'+','.join(map(str,[k,m,n,h]))+','+','.join(
        '['+','.join('true' if b else 'false' for b in w[f])+']' for f in fields)
    assert f'def {key} : WireComparison := ⟨{representation}⟩' in lean
    o,i,u,p,up,dn = (w[x] for x in fields)
    assert not any(mm(o,k,m,i,n))
    assert not any(mm(o,k,m,u,h))
    assert not any(mm(p,h,m,i,n))
    assert mm(p,h,m,u,h) == identity(h)
    assert xor(xor(mm(u,m,h,p,m),mm(i,m,n,up,m)),mm(dn,m,k,o,m)) == tuple(identity(m))
    boundaries = {ev(i,m,n,x) for x in vectors(n)}
    cycles = [x for x in vectors(m) if not any(ev(o,k,m,x))]
    for x in cycles:
        assert (not any(ev(p,h,m,x))) == (x in boundaries)
        counts['cycle_vectors'] += 1
        for y in cycles:
            assert (ev(p,h,m,x) == ev(p,h,m,y)) == (xor(x,y) in boundaries)
            counts['quotient_pairs'] += 1
    counts['comparisons'] += 1
    for degree, rows in block['raw'].items():
        s,t = map(int, degree.strip('()').split(','))
        actual = connection.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',(s,t)).fetchall()
        assert [list(row) for row in actual] == rows
        actual_basis = connection.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall()
        assert [list(row) for row in actual_basis] == block['e2'][degree]
        counts['source_rows'] += len(rows)
        counts['raw_queries'] += 1

trajectory=[]
for label,s,t,start,pages in [('named',8,134,(1,0,0,1,0,0),range(2,6)),
                             ('source',3,130,(1,0),range(2,5))]:
    x=start
    for r in pages:
        w=data['blocks'][f'b{s}_{t}_{r}']['wire']
        assert not any(ev(w['outgoing'],w['k'],w['m'],x))
        assert x not in {ev(w['incoming'],w['m'],w['n'],v) for v in vectors(w['n'])}
        y=ev(w['projection'],w['h'],w['m'],x)
        trajectory.append(dict(path=label,page=r,vector=x,next=y));x=y
        counts[label+'_steps'] += 1
    assert x == ((0,1) if label=='named' else (1,))

assert data['blocks']['b17_141_2']['wire']['h']==0
assert data['blocks']['b12_137_3']['wire']['h']==0
assert data['blocks']['b13_138_4']['wire']['h']==0
assert data['blocks']['b10_136_2']['wire']['h']==1
for row in [2858,3080]:
    assert connection.execute('select diff,level from S0_AdamsE2_ss where id=?',(row,)).fetchone()==(None,9000)
assert connection.execute('select base,diff,level from S0_AdamsE2_ss where id=2438').fetchone()==('0',None,9986)

# A forged incoming boundary for the named E5 vector contradicts projection.
w=dict(data['blocks']['b8_134_5']['wire']);w['incoming']=[False,True]
assert ev(w['incoming'],2,1,(1,))==(0,1)
assert ev(w['projection'],2,2,(0,1))!=(0,0)

modules=(HERE/'modules.txt').read_text().splitlines();axioms=0;empty_reports=0
for module in modules:
    name=module.split('.')[-1];record=json.loads((HERE/(name+'-compile.json')).read_text())
    assert record['observed_exit_code']==0 and record['inputs_stable']
    assert sha(HERE/(name+'.lean'))==record['source_sha256']
    assert sha(HERE/record['log'])==record['log_sha256']
    assert sha(ROOT/'.lake/build/lib/lean'/(module.replace('.','/')+'.olean'))==record['olean_sha256']
    for dep,digest in record['dependencies_sha256'].items():assert sha(ROOT/dep)==digest
    for dep,digest in record['external_input_sha256'].items():assert sha(ROOT/dep)==digest
    log=(HERE/record['log']).read_text()
    assert 'sorryAx' not in log and 'error:' not in log
    reports=re.findall(r"depends on axioms:\s*\[([^\]]*)\]",log)
    for report in reports:
        assert set(x.strip() for x in report.split(',')) <= {'propext','Classical.choice','Quot.sound'}
    axioms+=len(reports);empty_reports+=log.count('does not depend on any axioms')
    source=(HERE/(name+'.lean')).read_text()
    assert not re.search(r'\b(sorry|admit|axiom|unsafe|native_decide)\b',source)
counts.update(modules=len(modules),standard_axiom_reports=axioms,empty_axiom_reports=empty_reports)
result=dict(status='passed',counts=counts,trajectory=trajectory,
    unknowns=dict(row2858='NULL9000 retained; whole d3 derived by quotient Leibniz',
                  row3080='NULL9000 retained; whole d3 derived by complete zero target',
                  row2438='NULL9986 retained; finite d3,d4,d5 meanings are explicit premises'),
    trust='Only finite algebra and conditionally interpreted actual pages are proved. No original topological realization or unprovided prefix proof is inferred.',
    inputs=dict(source_sha256=sha(HERE/'source.json'),database_sha256=sha(database)))
(HERE/'review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(counts,indent=2))
