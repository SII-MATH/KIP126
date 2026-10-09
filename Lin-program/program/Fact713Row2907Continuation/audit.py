"""Independently check both preserved parents and every merged comparison."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
key = lambda e: tuple(e['key'][k] for k in ['object','page','s','t'])

def apply(bits,m,n,x):
    assert len(bits)==m*n
    value=0
    for i in range(m):
        bit=0
        for j in range(n):bit ^= int(bits[i*n+j]) * ((x>>j)&1)
        value |= bit<<i
    return value

reports=[]
for name in ['zero_b0','zero_b1','residual']:
    report=load(HERE/'branches'/f'{name}.json')
    oldreport=load(ROOT/'Fact713Row2916Continuation/branches'/f'{report["parent_case"]}.json')
    assert all(report['new_comparisons'][k]==v for k,v in oldreport['new_comparisons'].items())
    assert report['inherited_row3136_selection_changes']==oldreport['inherited_row3136_selection_changes']
    assert report['selection_changes']==oldreport['selection_changes']
    family=load(HERE/f'{name}-family.json')['entries']
    prior=load(ROOT/'Fact713Row2916Continuation'/f'{report["parent_case"]}-family.json')['entries']
    assert family[:len(prior)]==prior and len(family)==len(prior)+(19 if name=='residual' else 7)
    table={key(e):e['wire'] for e in family}
    assert len(table)==len(family)
    blocks=report['added_to_previous']
    scope={'zero_b0':'ZeroB0','zero_b1':'ZeroB1','residual':'Residual'}[name]
    for block in blocks.values():
        k=('S0',block['page'],*block['center'])
        assert table[k]==block['wire']
        filename=f'b_{scope}_S0_{k[2]}_{k[3]}_d{k[1]}.json'.replace('-','neg')
        assert table[k]==load(HERE/'wire'/filename)
    whole=blocks['S0:16,137:d4']
    use=whole['uses'][0]
    assert use['row']==[2907,'1',None,9996]
    assert use['kind']=='conditional_row2907_actual_whole_d4_candidate'
    canonical=([1] if name=='residual' else [1,int(name=='zero_b1')])
    stairs=([1] if name=='residual' else list(reversed(canonical)))
    assert use['canonical_column']==canonical and use['staircase_column']==stairs
    assert whole['wire']['outgoing']==list(map(bool,stairs))
    assert whole['wire']['incoming']==[False] and whole['wire']['h']==0
    assert whole['predecessors']==['S0:12,134:d3','S0:16,137:d3','S0:20,140:d3']
    counts=Counter()
    for k,w in table.items():
        obj,r,s,t=k
        assert obj and r>=2
        shape={'outgoing':(w['k'],w['m']),'incoming':(w['m'],w['n']),
               'projection':(w['h'],w['m']),'inclusion':(w['m'],w['h']),
               'up':(w['n'],w['m']),'down':(w['m'],w['k'])}
        assert all(len(w[field])==m*n for field,(m,n) in shape.items())
        ev=lambda field,v:apply(w[field],*shape[field],v)
        boundaries={ev('incoming',v) for v in range(1<<w['n'])}
        cycles=[v for v in range(1<<w['m']) if ev('outgoing',v)==0]
        assert all(ev('outgoing',v)==0 for v in boundaries)
        for v in range(1<<w['h']):
            assert ev('outgoing',ev('inclusion',v))==0 and ev('projection',ev('inclusion',v))==v
        for v in boundaries:assert ev('projection',v)==0
        for v in range(1<<w['m']):
            assert ev('inclusion',ev('projection',v)) ^ ev('incoming',ev('up',v)) ^ ev('down',ev('outgoing',v)) == v
        for a,b in itertools.product(cycles,repeat=2):
            assert (ev('projection',a)==ev('projection',b))==(a^b in boundaries)
            counts['cycle_pairs']+=1
        if r>2:
            for dimension,ss,tt in [(w['n'],s-r,t-r+1),(w['m'],s,t),(w['k'],s+r,t+r-1)]:
                assert table[obj,r-1,ss,tt]['h']==dimension
                counts['predecessor_dimensions']+=1
    for (obj,r,s,t),a in table.items():
        for (oo,rr,ss,tt),b in table.items():
            counts['ordered_pairs']+=1
            if obj==oo and r==rr and (ss,tt)==(s+r,t+r-1):
                assert a['k']==b['m'] and a['m']==b['n'] and a['outgoing']==b['incoming']
                counts['adjacent']+=1
            if obj==oo and rr==r+1 and (s,t)==(ss,tt):
                assert a['h']==b['m']
                counts['consecutive']+=1
    trajectory=report['named_trajectory']
    assert [x['page'] for x in trajectory[:-1]]==list(range(2,10))
    assert trajectory[0]['vector']==[1,1] and trajectory[-2]['next']==[1]
    assert trajectory[-1]['page']==10 and trajectory[-1]['status']=='unresolved'
    assert all(not any(x['outgoing']) and not x['is_boundary'] for x in trajectory[:-1])
    assert ('row3147' if name=='residual' else 'row2994') in trajectory[-1]['reason']
    reports.append(dict(case=name,entries=len(family),previous_preserved=len(prior),new_entries=len(family)-len(prior),counts=dict(counts),
        next_obstruction=trajectory[-1]['reason'],family_sha256=sha(HERE/f'{name}-family.json')))
actual_counts=Counter()
# Canonical-to-staircase quotient identity for all current vectors.
for residual in [0,1]:
    for vector in range(4):
        swapped=((vector&1)<<1)|((vector>>1)&1)
        canonical_projection=(vector&1) if residual else vector
        stairs_projection=((swapped>>1)&1) if residual else swapped
        changed=(canonical_projection if residual else
                 ((canonical_projection&1)<<1)|((canonical_projection>>1)&1))
        assert changed==stairs_projection
        actual_counts['full_quotient_coordinate_values']+=1
# Exhaust all labelled actual source and target carriers. The canonical
# full differential has first coefficient one; the staircase swaps it.
for residual in [0,1]:
    dimension=1 if residual else 2
    for src,tar in itertools.product(itertools.permutations(range(2)),
                                    itertools.permutations(range(1<<dimension))):
        for bit in ([0] if residual else [0,1]):
            inverse=lambda chart,v:chart.index(v)
            column=1 if residual else 1+2*bit
            stairscol=1 if residual else bit+2
            d=lambda x:inverse(tar,column*src[x])
            for x in range(2):
                image=tar[d(x)]
                swapped=image if residual else ((image&1)<<1)|((image>>1)&1)
                assert swapped==stairscol*src[x]
                assert (image==0)==(src[x]==0)
                actual_counts['whole_d4_input_values']+=1
            assert [x for x in range(2) if tar[d(x)]==0]==[inverse(src,0)]
            actual_counts['actual_source_E5_zero_models']+=1
out=dict(status='three_complete_families_full_quotient_basis_bridge_and_zero_source_pass',cases=reports,
         actual_a_selection='false only under Row2907TargetProduct.Actual.TargetMeaning',
         actual_r_selected=False,remaining_b_selected=False,actual_model_counts=dict(actual_counts),
         parent_sha256={str(p.relative_to(ROOT)):sha(p) for p in [
             ROOT/'Fact713Row2916Continuation/frozen-source.json',
             ROOT/'Row2907D4Candidates/frozen-source.json']})
(HERE/'audit.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
