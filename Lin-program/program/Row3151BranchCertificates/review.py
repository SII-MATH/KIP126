"""Independent SQL, exhaustive matrix and four separate finite-family audit."""
import hashlib
import importlib.util
import itertools
import json
import sqlite3
from pathlib import Path

P=Path(__file__).resolve().parent
R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
load=lambda p:json.loads(p.read_text())
spec=importlib.util.spec_from_file_location('arithmetic',R/'Row2925Detector/source_independent_audit.py')
a=importlib.util.module_from_spec(spec)
spec.loader.exec_module(a)

def run():
    provenance=load(P/'provenance.json')
    data=load(R/'AggregateD5Conditional/source.json')['blocks']
    db=R/'upstream/kervaire-49/S0_AdamsSS_t261.db'
    c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
    for path,digest in provenance['input_sha256'].items():assert sha(R/path)==digest
    expected={2707:[2707,7,134,'2',None,9990],2708:[2708,7,134,'0,1',None,9997],
              2925:[2925,11,137,'1,2',None,9000],2926:[2926,11,137,'2','1',9996],
              3151:[3151,15,140,'1','2',4]}
    for rid,row in expected.items():
        assert provenance['raw_rows'][str(rid)]==row
        assert list(c.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?',(rid,)).fetchone())==row
    finite_rows=[json.loads(x) for x in (P/'finite4.jsonl').read_text().splitlines()]
    indexed_rows=[json.loads(x) for x in (P/'indexed4.jsonl').read_text().splitlines()]
    assert len(finite_rows)==len(indexed_rows)==4
    for name in ['finite4','indexed4']:
        assert (P/f'{name}.jsonl').read_bytes()==(P/f'{name}.input.jsonl').read_bytes()
    seen=set()
    def visit(k):
        if k in seen:return
        seen.add(k)
        for dep in data[k]['predecessors']:visit(dep)
    branch_records=[]
    for j,(b,d) in enumerate(itertools.product([False,True],repeat=2)):
        code=f'{int(b)}{int(d)}'
        w=load(P/f'comparison{code}.json');a.wire_laws(w)
        assert (w['k'],w['m'],w['n'],w['h'])==(2,2,1,0 if d else 1)
        assert w['outgoing']==[b,True,d,False] and w['incoming']==[False,False]
        assert a.matmul(w['outgoing'],[False,True],2,2,1)==[True,False]
        f=load(P/f'finite{code}.json');ix=load(P/f'indexed{code}.json');bound=load(P/f'bound{code}.json')
        assert f==finite_rows[j] and ix==indexed_rows[j] and ix['finite']==f
        assert bound==dict(version=1,object='S0',event=ix)
        assert f['event']==w and f['source']==[False,True] and f['target']==[True,False]
        assert ix['eventPage']==4 and ix['sourceDegree']==dict(s=11,t=137) and ix['targetDegree']==dict(s=15,t=140)
        family=load(P/f'family{code}.json')['entries']
        lookup={(e['key']['object'],e['key']['page'],e['key']['s'],e['key']['t']):e['wire'] for e in family}
        assert len(lookup)==len(family)==5
        assert set(lookup)=={('S0',2,11,137),('S0',2,15,140),('S0',3,11,137),('S0',3,15,140),('S0',4,11,137)}
        assert lookup['S0',4,11,137]==w
        for e in family:
            a.wire_laws(e['wire'])
            obj,q,s,t=e['key']['object'],e['key']['page'],e['key']['s'],e['key']['t']
            nxt=lookup.get((obj,q,s+q,t+q-1))
            if nxt:assert (e['wire']['k'],e['wire']['m'],e['wire']['outgoing'])==(nxt['m'],nxt['n'],nxt['incoming'])
            nxt=lookup.get((obj,q+1,s,t))
            if nxt:assert e['wire']['h']==nxt['m']
        endpoints=[]
        for side,s,t,index,gid in [('source',11,137,2,2925),('target',15,140,1,3151)]:
            basis=[list(x) for x in c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))]
            assert basis[index][0]==gid
            assert f['raw'+side.title()]==[i==index for i in range(len(basis))]
            v=f['raw'+side.title()];stages=f[side+'Stages'];labels=ix[side+'Labels']
            assert len(stages)==len(labels)==2
            for q,(st,lab) in enumerate(zip(stages,labels,strict=True),2):
                key=f'S0:{s},{t}:d{q}';visit(key);wire=data[key]['wire']
                assert st==dict(wire=wire,representative=v)
                assert lookup['S0',q,s,t]==wire
                assert lab==dict(page=q,center=dict(s=s,t=t),incoming=dict(s=s-q,t=t-q+1),outgoing=dict(s=s+q,t=t+q-1))
                assert not any(a.matmul(wire['outgoing'],v,wire['k'],wire['m'],1))
                v=a.matmul(wire['projection'],v,wire['h'],wire['m'],1)
                assert any(v)
            assert v==f[side]
            endpoints.append(dict(side=side,degree=[s,t],basis_id=gid,local_index=index,final=v))
        lean=(P/f'Branch{code}.lean').read_text()
        for prefix,syntax in [('comparison','page_comparison%'),('finite','finite_event%'),('indexed','indexed_event%'),('family','family_input%'),('bound','bound_event%')]:
            assert f'{syntax} "Row3151BranchCertificates/{prefix}{code}.json"' in lean
        assert 'theorem result : DifferentialAt family ⟨"S0",4,11,137⟩ [false,true] [true,false]' in lean
        assert 'keys ++ [⟨"S0",4,15,140⟩]' in lean
        branch_records.append(dict(branch=code,unknown_column=[b,d],homology_dimension=w['h'],endpoints=endpoints))
    uses=[dict(block=k,**u) for k in sorted(seen) for u in data[k]['uses'] if u['kind'].startswith('conditional')]
    assert provenance['conditional_uses']==uses and len(uses)==2
    for u in uses:
        assert list(c.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE id=? AND s=? AND t=?',(u['row'][0],*u['source'])).fetchone())==u['row']
    all_matrices=list(itertools.product([False,True],repeat=4))
    matching=[list(x) for x in all_matrices if a.matmul(x,[False,True],2,2,1)==[True,False]]
    assert sorted(matching)==sorted([[b,True,d,False] for b,d in itertools.product([False,True],repeat=2)])
    assert [list(x) for x in itertools.product([False,True],repeat=2) if a.matmul(x,[True],2,1,1)==[False,False]]==[[False,False]]
    for path in P.glob('*.json'):
        if path.name.startswith(('comparison','finite','indexed','bound','family')):
            assert path.read_text()==json.dumps(load(path),sort_keys=True,separators=(',',':'))+'\n'
    semantics=(P/'Semantics.lean').read_text()
    assert '(known : eval d named = target)' in semantics
    assert '(prefixValue : eval inc (fun _ => true) = zero)' in semantics
    assert 'obtain ⟨b,c,hd⟩ := exhaustive d known' in semantics
    assert 'Row2708KernelConditional.actual_d3_unique' not in semantics
    files=sorted(P.glob('*.lean'))+[P/'prepare.py',P/'provenance.json',Path(__file__),R/'AggregateD5Conditional/source.json',R/'Row2708KernelConditional/Conflict.lean',db]
    files+=sorted(f for f in P.glob('*.json') if f.name.startswith(('comparison','finite','indexed','bound','family')))
    files+=sorted(P.glob('*.jsonl'))
    report=dict(status='independent_four_branch_SQL_matrix_and_semantic_review_passed',findings=[],event=3151,
                distinct_events=1,branches=branch_records,family_entries_each=5,prior_stages_each=4,
                all_possible_unknown_columns=4,raw_rows=expected,conditional_uses=uses,
                limitations=['Four finite families are separate alternatives; no branch is chosen, and accepted aggregate95 is not extended.',
                    'actual_comparison_exists requires the stored named d4 value and zero incoming prefix; it constructs a matching comparison only for the supplied matrices.',
                    'The incoming source-page dimension, complete-kernel condition at row2708, and inherited earlier staircase meanings are not established by these branches.',
                    'The supplied key window omits target d4 and explicitly rejects a coverage request adding it. Full Adams realization remains external.'],
                inputs_sha256={str(f.relative_to(R)):sha(f) for f in files})
    (P/'review.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
    print('PASS:4 exhaustive unknown columns/4 complete comparisons/4 finite-indexed-bound families;exact3151 SQL endpoints;no branch selected')

if __name__=='__main__':run()
