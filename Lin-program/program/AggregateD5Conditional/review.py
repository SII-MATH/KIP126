"""Independent unchanged-baseline, full-matrix, raw-role and trajectory review."""
import hashlib
import importlib.util
import json
import sqlite3
from pathlib import Path

P = Path(__file__).resolve().parent
R = P.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
spec = importlib.util.spec_from_file_location('arithmetic', R / 'Row2925Detector/source_independent_audit.py')
a = importlib.util.module_from_spec(spec)
spec.loader.exec_module(a)

def run():
    data = json.loads((P / 'source.json').read_text())
    old = json.loads((R / 'AggregateC2Row3019Conditional/source.json').read_text())
    blocks = data['blocks']
    assert len(blocks) == 358 and len(old['blocks']) == 357
    assert set(blocks) - set(old['blocks']) == {'S0:13,139:d5'}
    assert all(blocks[k] == v for k, v in old['blocks'].items())
    assert data['database_sha256'] == old['database_sha256']
    assert (P / 'dag.json').read_bytes() == (R / 'AggregateC2Row3019Conditional/dag.json').read_bytes()
    dag = json.loads((P / 'dag.json').read_text())
    db = R / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
    c = sqlite3.connect(f'file:{db}?mode=ro', uri=True)
    lean = (P / 'Data.lean').read_text()
    horizontal = vertical = 0
    fields = ['version', 'k', 'm', 'n', 'h', 'outgoing', 'incoming', 'inclusion', 'projection', 'up', 'down']
    for key, b in blocks.items():
        w = b['wire']
        a.wire_laws(w)
        assert all(k in blocks for k in b['predecessors'])
        name = 'b_' + key.replace(':', '_').replace(',', '_').replace('-', 'neg')
        literal = ','.join(json.dumps(w[f], separators=(',', ':')) for f in fields)
        assert f'def {name} : WireComparison := ⟨{literal}⟩' in lean
        assert f'theorem {name}_complete : {name}.Valid := by lin_cert using ()' in lean
        o = b['object']; s, t = b['center']; q = b['page']
        nxt = blocks.get(f'{o}:{s+q},{t+q-1}:d{q}')
        if nxt:
            assert w['k'] == nxt['wire']['m'] and w['m'] == nxt['wire']['n']
            assert w['outgoing'] == nxt['wire']['incoming']
            horizontal += 1
        nxt = blocks.get(f'{o}:{s},{t}:d{q+1}')
        if nxt:
            assert w['h'] == nxt['wire']['m']
            vertical += 1
    new = blocks['S0:13,139:d5']
    assert new['wire'] == dict(version=1,k=1,m=1,n=2,h=0,outgoing=[True],incoming=[False,False],
                               inclusion=[],projection=[],up=[False,False],down=[True])
    assert new['predecessors'] == ['S0:8,135:d4', 'S0:13,139:d4', 'S0:18,143:d4']
    assert [(u['row'],u['kind']) for u in new['uses']] == [
        ([3083,'0','0',9995],'stored_event'),
        ([2796,'2',None,9000],'conditional_dc2h6_d5'),
        ([2797,'1',None,9991],'stored_zero_prefix_or_boundary')]
    for u in new['uses']:
        s,t = u['source']
        assert list(c.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE id=? AND s=? AND t=?',
                              (u['row'][0],s,t)).fetchone()) == u['row']
        assert u['page'] == 5 and u['target_predecessor'] == f'S0:{s+5},{t+4}:d4'
    assert not 'S0:8,135:d5' in blocks
    inventory = {x['staircase_id']: x for x in json.loads((R / 'AggregateTargetInventory/inventory.json').read_text())['staircase']}
    events = json.loads((P / 'event-results.json').read_text())
    old_events = json.loads((R / 'AggregateC2Row3019Conditional/event-results.json').read_text())
    assert len(events) == 101 and len({x['staircase_id'] for x in events}) == 101
    assert [e['staircase_id'] for e,old in zip(events,old_events,strict=True) if e != old] == [3391]
    assert sum(e['status']=='finite_nonzero_event' for e in events) == 95
    assert sum(e['status']=='unresolved' for e in events) == 6
    traces = 0
    for e in events:
        if e['status'] != 'finite_nonzero_event': continue
        row = inventory[e['staircase_id']]; q = e['event_page']
        assert list(c.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?',
                             (row['staircase_id'],)).fetchone()) == [row['staircase_id'],row['filtration'],row['total_degree'],row['base'],row['diff'],row['level']]
        sd = [row['filtration'],row['total_degree']] if row['status']=='stored_outgoing' else row['other_degree']
        td = [sd[0]+q,sd[1]+q-1]
        seen = set()
        def visit(k):
            if k in seen: return
            seen.add(k)
            for pred in blocks[k]['predecessors']: visit(pred)
        visit(e['root'])
        for side,degree,indices in [('source',sd,row['base_local_indices'] if row['status']=='stored_outgoing' else row['diff_local_indices']),
                                    ('target',td,row['diff_local_indices'] if row['status']=='stored_outgoing' else row['base_local_indices'])]:
            s,t=degree
            basis=[list(x) for x in c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))]
            assert dag['degrees'][f'S0:{s},{t}']['e2']==basis
            v=[i in indices for i in range(len(basis))]
            for page in range(2,q):
                key=f'S0:{s},{t}:d{page}';w=blocks[key]['wire'];visit(key)
                assert not any(a.matmul(w['outgoing'],v,w['k'],w['m'],1))
                v=a.matmul(w['projection'],v,w['h'],w['m'],1)
                assert any(v);traces+=1
            assert v==e[side+'_coordinates']
        w=blocks[e['root']]['wire']
        assert a.matmul(w['outgoing'],e['source_coordinates'],w['k'],w['m'],1)==e['target_coordinates']
        assert any(e['target_coordinates'])
        assert e['conditional_uses']==[dict(block=k,**u) for k in sorted(seen) for u in blocks[k]['uses'] if u['kind'].startswith('conditional')]
    assert traces == 102
    match=(P/'Matches.lean').read_text().split('namespace AggregateD5Conditional.D5\n')[1]
    for text in ['(c : Completion3) (d : Completion4 c)',
                 'Row2796D5Detector.Source.named_d5_zero c d ds dt zeroPreserving naturality',
                 'matrixOf 1 2 b_S0_13_139_d5.incoming i 0',
                 'b_S0_8_135_d4 = Row2796D5Detector.Higher.source4',
                 'b_S0_13_139_d4 = Row2796D5Detector.Higher.targetS']:
        assert text in match
    files=[P/'source.json',P/'dag.json',P/'event-results.json',P/'generate.py',P/'events.py',Path(__file__),
           R/'AggregateC2Row3019Conditional/source.json',R/'AggregateC2Row3019Conditional/event-results.json',
           R/'Row2796D5Detector/review.json',R/'Row2796D5Detector/Source.lean',R/'AggregateTargetInventory/inventory.json',db]+sorted(P.glob('*.lean'))
    report=dict(status='independent_358_block_95_event_review_passed',findings=[],complete_comparisons=358,
                unchanged_previous_comparisons=357,new_keys=['S0:13,139:d5'],finite_nonzero_events=95,
                unchanged_previous_events=94,new_events=[3391],unresolved=6,all_accepted_prior_stages=102,
                horizontal_pairs=horizontal,consecutive_pairs=vertical,new_block_uses=new['uses'],
                limitations='The new zero incoming column has explicit Completion3/Completion4, naturality and zero-preservation premises. The other incoming prefix and stored outgoing event retain their staircase meanings. The unknown S0 source d5 block is not constructed. Finite conditional events do not establish Adams realization.',
                generated_sha256={f.name:sha(f) for f in sorted(P.glob('*.lean'))+[P/'source.json',P/'event-results.json']},
                dependency_sha256={str(f.relative_to(R)):sha(f) for f in files},
                inputs_sha256={str(f.relative_to(R)):sha(f) for f in files})
    (P/'review.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
    print('PASS:358 full comparisons/357 unchanged;95 events/94 unchanged;102 prior stages;row2796 explicit conditional d5 role;6 unresolved')

if __name__=='__main__':run()
