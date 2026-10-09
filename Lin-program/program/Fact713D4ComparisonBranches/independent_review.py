"""Independent exact extension, full quotient, graph and compiler review."""
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
entries = lambda p: load(p)['entries']
key = lambda e: tuple(e['key'][f] for f in ['object','page','s','t'])
graph = set(load(ROOT / 'Fact713E12Search/search.json')['graph'])
label = lambda k: f'{k[0]}:{k[2]},{k[3]}:d{k[1]}'

def matrix(bits, rows, cols):
    assert len(bits) == rows * cols and all(type(b) is bool for b in bits)
    return [sum(int(bits[i*cols+j]) << i for i in range(rows)) for j in range(cols)]

def apply(columns, vector):
    value = 0
    for j, column in enumerate(columns):
        if vector & (1 << j):
            value ^= column
    return value

reports = []
families = []
for mode, prior in [('zero','Fact713D4Branches/zero-family.json'),
                    ('residual','Fact713Row2994Branches/family.json')]:
    family = entries(HERE / (mode+'-family.json'))
    base = entries(ROOT / prior)
    extra = entries(HERE / (mode+'-extra.json'))
    assert family == base + extra
    assert (len(base),len(extra),len(family)) == ((1283,7,1290) if mode=='zero' else (1284,8,1292))
    by_key = {key(e): e['wire'] for e in family}
    assert len(by_key) == len(family)
    vectors = pairs = adjacent = consecutive = 0
    for w in by_key.values():
        n,m,k,h = (w[f] for f in ['n','m','k','h'])
        out = matrix(w['outgoing'],k,m)
        inc = matrix(w['incoming'],m,n)
        projection = matrix(w['projection'],h,m)
        inclusion = matrix(w['inclusion'],m,h)
        boundaries = {apply(inc,x) for x in range(1 << n)}
        cycles = [x for x in range(1 << m) if apply(out,x)==0]
        assert all(x in cycles for x in boundaries)
        assert all(apply(out,apply(inclusion,x))==0 and
                   apply(projection,apply(inclusion,x))==x for x in range(1 << h))
        for x,y in itertools.product(cycles,repeat=2):
            assert (apply(projection,x)==apply(projection,y)) == ((x^y) in boundaries)
            pairs += 1
        vectors += 1 << m
    for (obj,r,s,t),w in by_key.items():
        neighbor = by_key.get((obj,r,s+r,t+r-1))
        if neighbor is not None:
            assert (w['k'],w['m'],w['outgoing']) == (neighbor['m'],neighbor['n'],neighbor['incoming'])
            adjacent += 1
        following = by_key.get((obj,r+1,s,t))
        if following is not None:
            assert w['h'] == following['m']
            consecutive += 1
    assert (adjacent,consecutive,pairs) == ((983,790,9525) if mode=='zero' else (985,792,9527))
    assert ('S0',8,9,132) not in by_key and ('S0',3,18,141) not in by_key
    assert by_key['S0',4,12,134]['outgoing']==[False]
    available = set(map(label,by_key)) & graph
    assert (len(available),len(graph-available)) == ((1287,133) if mode=='zero' else (1289,131))
    current = 3
    for r in range(2,8):
        w=by_key['S0',r,9,132]
        assert apply(matrix(w['outgoing'],w['k'],w['m']),current)==0
        assert current not in {apply(matrix(w['incoming'],w['m'],w['n']),x) for x in range(1 << w['n'])}
        current=apply(matrix(w['projection'],w['h'],w['m']),current)
        assert current==1
    reports.append(dict(branch=mode,entries=len(family),new_entries=len(extra),
        vectors=vectors,quotient_pairs=pairs,adjacent=adjacent,consecutive=consecutive,
        graph_available=len(available),graph_missing=len(graph-available)))
    families.append(by_key)
assert all(families[0]['S0',r,9,132]==families[1]['S0',r,9,132] for r in range(2,8))

frozen=load(HERE/'freeze.json')
report_count=0
for row in frozen['modules']:
    leaf=row['module'].split('.')[-1]
    src,log=HERE/(leaf+'.lean'),HERE/(leaf+'.log')
    rec=load(HERE/(leaf+'-compile.json'))
    assert row['observed_exit_code']==rec['observed_exit_code']==0
    assert row['source_sha256']==rec['source_sha256']==sha(src)
    assert rec['log_sha256']==sha(log)
    assert not re.search(r'error:|sorryAx|Lean\.ofReduceBool',log.read_text())
    values=re.findall(r'depends on axioms: \[([^\]]*)\]',log.read_text())
    for value in values:
        assert set(filter(None,map(str.strip,value.split(',')))) <= {'propext','Classical.choice','Quot.sound'}
    count=len(values)+log.read_text().count('does not depend on any axioms')
    assert row['axiom_reports']==count
    report_count+=count
assert report_count==27
inputs=[HERE/(mode+'-family.json') for mode in ['zero','residual']] + sorted(HERE.glob('*.lean'))
result=dict(status='no_correctness_findings',findings=[],branches=reports,axiom_reports=report_count,
    same_fixed_E2_to_E8_path=True, E9_proved=False,
    source_sha256={str(p.relative_to(ROOT)):sha(p) for p in inputs},
    scope='Separate coherent finite families with conditional source meanings; no actual branch choice or sphere realization.')
(HERE/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k!='source_sha256'}))
