"""Audit every four-case comparison and every old/new adjacency before Lean."""
import hashlib
import importlib.util
import itertools
import json
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
load=lambda p:json.loads(p.read_text())
spec=importlib.util.spec_from_file_location('independent',ROOT/'Row3147MapSearch/review.py')
a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
base=load(ROOT/'Fact713DC2h6Source/refined.json')
baseline=base['comparisons']|base['successor_closure']
graph=load(ROOT/'Fact713E12Search/search.json')['graph']
cases=[]
for name in ['zero_a0','zero_a1','residual_a0','residual_a1']:
    report=load(HERE/'branches'/f'{name}.json')
    old=load(ROOT/'Fact713Row2431Continuation/branches'/f'{report["branch"]}.json')
    assert all(report['new_comparisons'][key]==value for key,value in old['new_comparisons'].items())
    cache=baseline|report['new_comparisons']
    assert len(cache)==len(baseline)+len(report['new_comparisons'])
    adj=consecutive=pred=0
    cycles=pairs=0
    for key,block in cache.items():
        w=block['wire'];a.check_wire(w)
        ev=lambda bits,m,n,v:tuple(a.matmul(bits,list(v),m,n,1))
        boundaries={ev(w['incoming'],w['m'],w['n'],v) for v in itertools.product([0,1],repeat=w['n'])}
        cycle=[v for v in itertools.product([0,1],repeat=w['m']) if not any(ev(w['outgoing'],w['k'],w['m'],v))]
        cycles+=len(cycle)
        for x,y in itertools.product(cycle,repeat=2):
            assert (ev(w['projection'],w['h'],w['m'],x)==ev(w['projection'],w['h'],w['m'],y))==(
                tuple(i^j for i,j in zip(x,y)) in boundaries)
            pairs+=1
        s,t=block['center'];r=block['page']
        if r>2:
            for dim,ss,tt in [(w['n'],s-r,t-r+1),(w['m'],s,t),(w['k'],s+r,t+r-1)]:
                assert cache[f'S0:{ss},{tt}:d{r-1}']['wire']['h']==dim
                pred+=1
        nextkey=f'S0:{s+r},{t+r-1}:d{r}'
        if nextkey in cache:
            nextwire=cache[nextkey]['wire']
            assert w['k']==nextwire['m'] and w['m']==nextwire['n'] and w['outgoing']==nextwire['incoming']
            adj+=1
        nextpage=f'S0:{s},{t}:d{r+1}'
        if nextpage in cache:
            assert w['h']==cache[nextpage]['wire']['m'];consecutive+=1
    source=cache['S0:20,140:d3']['wire'];target=cache['S0:23,142:d3']['wire']
    coefficient=report['row3136_coefficient'];residual=int(report['branch']=='residual_rebased')
    assert source['h']==2-coefficient-residual and target['h']==1-coefficient
    assert source['outgoing']==[False,bool(coefficient),False,False]
    assert source['incoming']==[bool(residual),False]
    assert target['outgoing']==[False,True] and target['incoming']==source['outgoing']
    restored=[x for x in report['selection_changes'] if x.get('restored')==2907]
    if coefficient and residual:
        assert restored and cache['S0:16,137:d4']['wire']['h']==1
        assert cache['S0:16,137:d4']['wire']['k']==0
        original=load(HERE/'initial-unrebased/residual_a1.json')
        assert original['extra_requested']['S0:11,133:d5']['first_failure']=='selected dimension mismatch 0 != homology 1'
    else:assert not restored
    cases.append(dict(case=name,entries=len(cache),prior_entries=len(baseline)+len(old['new_comparisons']),
        added=len(report['added_to_previous']),graph_available=len(set(cache)&set(graph)),
        graph_missing=len(set(graph)-set(cache)),adjacent=adj,consecutive=consecutive,
        predecessor_dimensions=pred,cycle_vectors=cycles,cycle_pairs=pairs,
        source_E4_dimension=source['h'],target_E4_dimension=target['h'],rebase=restored,
        compatibility='all_complete_old_and_new_keys_compatible'))
result=dict(status='all_four_cases_complete_matrix_compatible',cases=cases,
    actual_branches_selected=False,raw_NULL_unchanged=True,
    limitation='Rebased residual/nonzero case retains row2907 after forced-zero d4; no assertion that a raw scheduled NULL event is mathematically nonzero.',
    sha256={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in [Path(__file__),HERE/'generate.py']})
(HERE/'audit.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
