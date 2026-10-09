"""Independent complete-wire and trajectory audit of both finite branches."""
import hashlib
import itertools
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
base = json.loads((ROOT/'Fact713DC2h6Source/refined.json').read_text())
baseline = base['comparisons'] | base['successor_closure']
vectors = lambda n: itertools.product([0,1], repeat=n)


def ev(matrix, m, n, vector):
    assert len(matrix) == m*n and len(vector) == n
    return tuple(sum(matrix[i*n+j]*vector[j] for j in range(n)) % 2 for i in range(m))


audits = []
for label in ['zero', 'residual_rebased']:
    report = json.loads((HERE/'branches'/f'{label}.json').read_text())
    assert not (set(baseline) & set(report['new_comparisons']))
    cache = baseline | report['new_comparisons']
    checked = pairs = adjacent = dimensions = 0
    for key, block in cache.items():
        w = block['wire']; k,m,n,h = [w[f] for f in ['k','m','n','h']]
        A = lambda x: ev(w['outgoing'],k,m,x)
        B = lambda x: ev(w['incoming'],m,n,x)
        I = lambda x: ev(w['inclusion'],m,h,x)
        P = lambda x: ev(w['projection'],h,m,x)
        U = lambda x: ev(w['up'],n,m,x)
        D = lambda x: ev(w['down'],m,k,x)
        boundaries = {B(x) for x in vectors(n)}
        cycles = [x for x in vectors(m) if A(x) == (0,)*k]
        assert all(A(x)==(0,)*k and P(x)==(0,)*h for x in boundaries)
        assert all(A(I(x))==(0,)*k and P(I(x))==x for x in vectors(h))
        for x in vectors(m):
            assert tuple(a^b^c for a,b,c in zip(I(P(x)),B(U(x)),D(A(x))))==x
            checked += 1
        for x,y in itertools.product(cycles,repeat=2):
            assert (P(x)==P(y)) == (tuple(a^b for a,b in zip(x,y)) in boundaries)
            pairs += 1
        s,t=block['center']; page=block['page']
        if page>2:
            for dimension,a,b in [(n,s-page,t-page+1),(m,s,t),(k,s+page,t+page-1)]:
                assert cache[f'S0:{a},{b}:d{page-1}']['wire']['h']==dimension
                dimensions += 1
        source=f'S0:{s-page},{t-page+1}:d{page}'
        if source in cache:
            assert cache[source]['wire']['outgoing']==w['incoming']
            assert cache[source]['wire']['m']==n and cache[source]['wire']['k']==m
            adjacent += 1
    d3=cache['S0:17,138:d3']
    assert d3['wire']['outgoing']==[bool(x) for x in report['assumed_staircase_d3']]
    assert d3['uses'][0]['row']==[2994,'0,1,2',None,9000]
    v=(1,1)
    for record in report['named_trajectory']:
        page=record['page']; key=f'S0:9,132:d{page}'
        if record.get('status')=='unresolved':
            assert key not in cache
            break
        w=cache[key]['wire']
        assert list(v)==record['vector']
        assert ev(w['outgoing'],w['k'],w['m'],v)==(0,)*w['k']
        assert v not in {ev(w['incoming'],w['m'],w['n'],x) for x in vectors(w['n'])}
        v=ev(w['projection'],w['h'],w['m'],v)
        assert list(v)==record['next']
    assert v==(1,)
    audits.append(dict(branch=label,baseline_preserved=len(baseline),comparisons=len(cache),
        new_comparisons=len(report['new_comparisons']),all_vectors=checked,all_cycle_pairs=pairs,
        adjacent_differentials=adjacent,predecessor_dimensions=dimensions,
        finite_named_page=9,
        sha256=hashlib.sha256((HERE/'branches'/f'{label}.json').read_bytes()).hexdigest()))
out=dict(status='both_finite_candidate_branches_independently_audited',branches=audits,
    limitation='These are conditional finite branches, not a proof of actual E9 or an unconditional d3 value.')
(HERE/'branches'/'audit.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
