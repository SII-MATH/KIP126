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
    oldreport=load(ROOT/'Fact713SquareContinuation/branches'/f'{name}.json')
    assert all(report['new_comparisons'][k]==v for k,v in oldreport['new_comparisons'].items())
    assert report['inherited_row3136_selection_changes']==oldreport['inherited_row3136_selection_changes']
    assert report['selection_changes']==oldreport['selection_changes']
    family=load(HERE/f'{name}-family.json')['entries']
    prior=load(ROOT/'Fact713SquareContinuation'/f'{name}-family.json')['entries']
    assert family[:len(prior)]==prior and len(family)==len(prior)+18
    table={key(e):e['wire'] for e in family}
    assert len(table)==len(family)
    blocks=report['added_to_previous']
    assert len(blocks)==18
    for block in blocks.values():
        k=('S0',block['page'],*block['center'])
        assert table[k]==block['wire']
        filename=f'b_S0_{k[2]}_{k[3]}_d{k[1]}.json'.replace('-','neg')
        assert table[k]==load(HERE/'wire'/filename)
    whole=blocks['S0:16,140:d3']
    assert [(x['row'],x['kind']) for x in whole['uses'][:3]]==[
        ([3146,'1','1',3],'stored_zero_prefix_or_boundary'),
        ([3147,'4',None,9000],'conditional_row3147_named_h2_product_d3_zero'),
        ([3148,'0','0,1,2',9997],'stored_event')]
    assert whole['wire']['outgoing']==[False,False,True,False,False,False]
    assert whole['wire']['incoming']==[False,False,True,False,False,False,False,False,False]
    assert whole['predecessors']==['S0:13,138:d2','S0:16,140:d2','S0:19,142:d2']
    assert blocks['S0:19,142:d3']['wire']['incoming']==whole['wire']['outgoing']
    assert blocks['S0:19,142:d3']['uses'][-3:]==whole['uses'][:3]
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
    assert 'row2693' in trajectory[-1]['reason'] and 'target dimension 1' in trajectory[-1]['reason']
    reports.append(dict(case=name,entries=len(family),previous_preserved=len(prior),new_entries=len(family)-len(prior),counts=dict(counts),
        next_obstruction=trajectory[-1]['reason'],family_sha256=sha(HERE/f'{name}-family.json')))
actual_counts=Counter()
# Every additive F2 map from a three-dimensional source to a two-dimensional
# target is determined by 3 columns. Preserve column2; squared-zero on the
# complete incoming image forces column0; h2 product forces column1.
w=load(HERE/'wire/b_S0_16_140_d3.json')
for columns in itertools.product(range(4),repeat=3):
    evaluate=lambda x: columns[0]*(x&1) ^ columns[1]*((x>>1)&1) ^ columns[2]*((x>>2)&1)
    accepted=columns[0]==0 and columns[1]==0 and columns[2]==1
    actual_counts['whole_d3_candidates']+=1
    if not accepted: actual_counts['rejected_d3_candidates']+=1;continue
    for x in range(8):
        assert evaluate(x)==apply(w['outgoing'],2,3,x)
        actual_counts['whole_d3_vector_checks']+=1
    for x,y in itertools.product(range(8),repeat=2):
        if evaluate(x)==0 and evaluate(y)==0:
            assert (apply(w['projection'],1,3,x)==apply(w['projection'],1,3,y))==((x^y) in [0,1])
            actual_counts['full_source_cycle_quotient_pairs']+=1
    assert evaluate(2)==0 and apply(w['projection'],1,3,2)==1
# Coordinate labels can be arbitrary; enumerate every source label and every
# four-element target relabelling with both possible quotient labels.
for raw_named,target,nextchart in itertools.product(range(8),itertools.permutations(range(4)),
    itertools.permutations(range(2))):
    source=list(range(8));source[raw_named],source[2]=source[2],source[raw_named]
    d=lambda x: target.index(apply(w['outgoing'],2,3,source[x]))
    q=lambda x: nextchart.index(apply(w['projection'],1,3,source[x]))
    assert target[d(raw_named)]==0 and nextchart[q(raw_named)]==1
    assert q(raw_named)!=nextchart.index(0)
    actual_counts['same_input_E3_E4_models']+=1
    for x in range(8):
        assert (source[x]==2)==(x==raw_named)
        actual_counts['named_binding_tests']+=1
out=dict(status='two_full_families_named_h2_d3_and_same_input_E4_pass',cases=reports,
         remaining_b_selected=False,actual_model_counts=dict(actual_counts),
         parent_sha256={str(q.relative_to(ROOT)):sha(q) for q in [
             ROOT/'Fact713SquareContinuation/frozen-source.json',
             ROOT/'Row3147H2Product/frozen-source.json']})
(HERE/'audit.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
