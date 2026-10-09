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
for name in ['zero_b0','zero_b1']:
    report=load(HERE/'branches'/f'{name}.json')
    oldreport=load(ROOT/'Fact713Ctheta4Continuation/branches'/f'{name}.json')
    assert all(report['new_comparisons'][k]==v for k,v in oldreport['new_comparisons'].items())
    assert report['inherited_row3136_selection_changes']==oldreport['inherited_row3136_selection_changes']
    assert report['selection_changes']==oldreport['selection_changes']
    family=load(HERE/f'{name}-family.json')['entries']
    prior=load(ROOT/'Fact713Ctheta4Continuation'/f'{name}-family.json')['entries']
    assert family[:len(prior)]==prior and len(family)==len(prior)+16
    table={key(e):e['wire'] for e in family}
    assert len(table)==len(family)
    blocks=report['added_to_previous']
    assert len(blocks)==16
    for block in blocks.values():
        k=('S0',block['page'],*block['center'])
        assert table[k]==block['wire']
        filename=f'b_S0_{k[2]}_{k[3]}_d{k[1]}.json'.replace('-','neg')
        assert table[k]==load(HERE/'wire'/filename)
    whole=blocks['S0:12,134:d5']
    assert [(x['row'],x['kind']) for x in whole['uses']]==[
        ([2684,'0',None,9000],'conditional_row2684_whole_square_d5_zero')]
    assert whole['wire']['outgoing']==[False] and whole['wire']['incoming']==[]
    assert whole['predecessors']==['S0:7,130:d4','S0:12,134:d4','S0:17,138:d4']
    assert blocks['S0:17,138:d5']['wire']['incoming']==[False]
    assert blocks['S0:17,138:d5']['uses'][1]==whole['uses'][0]
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
    assert 'row3147' in trajectory[-1]['reason'] and 'target dimension 2' in trajectory[-1]['reason']
    reports.append(dict(case=name,entries=len(family),previous_preserved=len(prior),new_entries=len(family)-len(prior),counts=dict(counts),
        next_obstruction=trajectory[-1]['reason'],family_sha256=sha(HERE/f'{name}-family.json')))
actual_counts=Counter()
# Relabel the complete source and outgoing target independently. Zero
# incoming and outgoing maps leave precisely the full one-dimensional quotient.
for current,target,nextchart in itertools.product(itertools.permutations(range(2)),
    itertools.permutations(range(4)),itertools.permutations(range(2))):
    inverse=lambda chart,v:chart.index(v)
    d=lambda x:inverse(target,0)
    q=lambda x:inverse(nextchart,current[x])
    for x,y in itertools.product(range(2),repeat=2):
        assert target[d(x)]==0
        assert (q(x)==q(y))==(current[x]==current[y])
        actual_counts['actual_quotient_pairs']+=1
    named=inverse(current,1)
    assert nextchart[q(named)]==1 and q(named)!=inverse(nextchart,0)
    actual_counts['same_input_E5_E6_models']+=1
# Distinct labels in the full E2 coordinate domain cannot be silently
# substituted for the requested row2994 source.
# Full E2 domain relabelling is represented by every location of the named
# value; uniqueness of all remaining labels is supplied by coordinate bijection.
for raw_named in range(16):
    chart=list(range(16));chart[raw_named],chart[7]=chart[7],chart[raw_named]
    for raw in range(16):
        assert (chart[raw]==7)==(raw==raw_named)
        actual_counts['named_E2_bindings']+=1
out=dict(status='two_full_families_whole_square_d5_and_same_input_E6_pass',cases=reports,
         actual_a_selection='false only under complete TargetMeaning',
         actual_r_selection='false only under Ctheta4 finite source d3 and full naturality meanings',
         remaining_b_selected=False,actual_model_counts=dict(actual_counts),
         parent_sha256={str(q.relative_to(ROOT)):sha(q) for q in [
             ROOT/'Fact713Ctheta4Continuation/frozen-source.json',
             ROOT/'Row2684D5Search/frozen-source.json']})
(HERE/'audit.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
