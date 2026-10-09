"""Independent final conditional target, complete family, and raw source replay."""
import collections
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
read=lambda p:json.loads((ROOT/p).read_text())
old=read('AggregateD5Conditional/source.json')['blocks']
base=read('AggregateIncomingTargetCompletion/data.json')
successor=read('Row3743Successor/source.json')
conditional=read('AggregateIncomingTargetCompletion/conditional3391-search.json')
final=read('AggregateIncomingTargetCompletion/final-data.json')
blocks={**old,**base['extra']}
assert len(blocks)==384
extra={}
for data in [successor['blocks'],conditional['blocks']]:
    for k,b in data.items():
        if k in blocks:
            assert blocks[k]==b
        else:
            assert k not in extra
            extra[k]=b
assert final['extra']==dict(sorted(extra.items())) and len(extra)==15
blocks.update(extra)
assert len(blocks)==399
assert final['conditional_row']==[3743,'0',None,9000]
key=lambda s,t,r:f'S0:{s},{t}:d{r}'
def closure(root):
    seen=set()
    active=set()
    def visit(k):
        assert k not in active
        if k in seen:
            return
        active.add(k)
        b=blocks[k];s,t=b['center'];r=b['page']
        expected=[] if r==2 else [key(a,c,r-1) for a,c in [(s-r,t-r+1),(s,t),(s+r,t+r-1)]]
        assert b['predecessors']==expected
        for p in expected:
            visit(p)
        active.remove(k)
        seen.add(k)
    visit(root)
    return seen
target_closure=closure('S0:18,143:d5')
successor_closure=closure('S0:31,153:d4')
assert len(target_closure)==36 and len(successor_closure)==13
assert successor_closure==set(successor['blocks'])
assert 'S0:23,147:d4' not in successor_closure
assert not any(u['source']==[23,147] and u['page']==4 for k in successor_closure for u in blocks[k]['uses'])
assert not any(u['kind'].startswith('conditional') for k in successor_closure for u in blocks[k]['uses'])
assert set(extra)<=target_closure|successor_closure
def vec(xs):
    return sum(int(x)<<i for i,x in enumerate(xs))
def cols(xs,m,n):
    assert len(xs)==m*n
    return [vec([xs[i*n+j] for i in range(m)]) for j in range(n)]
def apply(a,x):
    result=0
    for j,c in enumerate(a):
        if x>>j&1:
            result^=c
    return result
def matrices(w):
    return [cols(w[f],m,n) for f,m,n in [('outgoing',w['k'],w['m']),('incoming',w['m'],w['n']),
        ('projection',w['h'],w['m']),('inclusion',w['m'],w['h']),('up',w['n'],w['m']),('down',w['m'],w['k'])]]
vector_checks=cycle_pairs=0
for k,b in blocks.items():
    w=b['wire'];a,inc,q,i,u,d=matrices(w)
    boundaries={apply(inc,x) for x in range(1<<w['n'])}
    cycles=[x for x in range(1<<w['m']) if apply(a,x)==0]
    assert all(apply(a,x)==apply(q,x)==0 for x in boundaries)
    assert all(apply(a,apply(i,x))==0 and apply(q,apply(i,x))==x for x in range(1<<w['h']))
    for x in range(1<<w['m']):
        assert apply(i,apply(q,x))^apply(inc,apply(u,x))^apply(d,apply(a,x))==x
        vector_checks+=1
    for x,y in itertools.product(cycles,repeat=2):
        assert (apply(q,x)==apply(q,y))==(x^y in boundaries)
        cycle_pairs+=1
indexed={(b['object'],b['page'],*b['center']):b['wire'] for b in blocks.values()}
assert len(indexed)==399
horizontal=consecutive=0
for (oa,pa,sa,ta),wa in indexed.items():
    for (ob,pb,sb,tb),wb in indexed.items():
        if oa==ob and pa==pb and (sb,tb)==(sa+pa,ta+pa-1):
            assert (wa['k'],wa['m'],wa['outgoing'])==(wb['m'],wb['n'],wb['incoming'])
            horizontal+=1
        if oa==ob and pb==pa+1 and (sa,ta)==(sb,tb):
            assert wa['h']==wb['m']
            consecutive+=1

# Query the unchanged raw source, including the genuinely unknown row3743.
db=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
sql=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
rawrows=[list(sql.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?',(r,)).fetchone())
         for r in [3743,3986,4256]]
assert rawrows==successor['raw_rows']
assert rawrows==[[3743,23,147,'0',None,9000],[3986,27,150,'3','0',9996],[4256,31,153,'0','3',4]]
degree_cache={}
def degree(s,t):
    if (s,t) not in degree_cache:
        degree_cache[s,t]=dict(e2=[list(x) for x in sql.execute(
            'SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))],
            rows=[list(x) for x in sql.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t))])
    return degree_cache[s,t]
def bits(text,n):
    assert text is not None and text not in ['?','[NULL]','-1']
    ids=[] if not text else [int(x) for x in text.split(',')]
    assert len(ids)==len(set(ids)) and all(0<=x<n for x in ids)
    return sum(1<<x for x in ids)
def selected(s,t,r):
    return [x for x in degree(s,t)['rows'] if r<=x[3]<5000 or 5000<=x[3]<=10000-r]
def project(s,t,r,x):
    for page in range(2,r):
        x=apply(matrices(blocks[key(s,t,page)]['wire'])[2],x)
    return x
d2_columns=higher_columns=representatives=0
for k,b in extra.items():
    w=b['wire'];s,t=b['center'];r=b['page'];a,inc,q,i,_,_=matrices(w)
    if r>2:
        assert tuple(blocks[key(ss,tt,r-1)]['wire']['h'] for ss,tt in [(s,t),(s-r,t-r+1),(s+r,t+r-1)])==(w['m'],w['n'],w['k'])
    for ss,tt,ts,tt2,cs,dim in [(s,t,s+r,t+r-1,a,w['m']),(s-r,t-r+1,s,t,inc,w['n'])]:
        if r==2:
            rows=degree(ss,tt)['e2']
            assert len(rows)==dim
            for j,row in enumerate(rows):
                assert cs[j]==bits(row[2],len(degree(ts,tt2)['e2']))
                d2_columns+=1
        else:
            rows=selected(ss,tt,r)
            assert len(rows)==dim
            for j,row in enumerate(rows):
                uses=[u for u in b['uses'] if u['source']==[ss,tt] and u['row']==row]
                assert len(uses)==1
                u=uses[0]
                if row[3]==10000-r and row[2] is not None:
                    assert u['kind']=='stored_event'
                    value=project(ts,tt2,r,bits(row[2],len(degree(ts,tt2)['e2'])))
                elif 2<=row[3]<5000 or 9000<row[3]<10000-r:
                    assert u['kind']=='stored_zero_prefix_or_boundary'
                    value=0
                elif u['kind']=='conditional_successor_row3986':
                    assert (ss,tt,r,row)==(23,147,4,[3743,'0',None,9000])
                    successor_matrix=matrices(blocks['S0:31,153:d4']['wire'])[1]
                    assert successor_matrix==[1] and cs[j]==0
                    value=0
                else:
                    assert u['kind']=='checked_zero_codomain' and blocks[u['target_predecessor']]['wire']['h']==0
                    value=0
                assert cs[j]==value
                higher_columns+=1
    selected_rows=selected(s,t,r+1)
    assert len(selected_rows)==w['h']
    for j,row in enumerate(selected_rows):
        assert i[j]==project(s,t,r,bits(row[1],len(degree(s,t)['e2'])))
        representatives+=1
sql.close()
target=blocks['S0:18,143:d5']['wire']
assert (target['k'],target['m'],target['n'],target['h'],target['incoming'],target['outgoing'])==(1,1,1,0,[True],[False])
events=[json.loads(x) for x in (ROOT/'IndexedFamilyProducer/D5/bound95.jsonl').read_text().splitlines()]
stages=0
for bound in events:
    e=bound['event'];f=e['finite'];s=e['sourceDegree'];r=e['eventPage']
    assert indexed[bound['object'],r,s['s'],s['t']]==f['event']
    for role in ['source','target']:
        d=e[role+'Degree']
        for page,stage in enumerate(f[role+'Stages'],2):
            assert indexed[bound['object'],page,d['s'],d['t']]==stage['wire']
            stages+=1
assert len(events)==95 and stages==102
e=json.loads((ROOT/'IndexedFamilyProducer/D5/events/event3391.json').read_text())['event'];f=e['finite']
assert e['eventPage']==5 and e['targetDegree']=={'s':18,'t':143}
assert target['incoming']==f['event']['outgoing'] and f['source']==f['target']==[True]
assert apply(matrices(target)[1],vec(f['source']))==vec(f['target'])
assert apply(matrices(target)[0],vec(f['target']))==apply(matrices(target)[2],vec(f['target']))==0
mapping=read('AggregateEliminationCertificates/mapping.json')
for row in mapping['matches']:
    if row['role']=='stored_incoming':
        assert row['target_same_page_key'] in blocks
assert sum(row['role']=='stored_incoming' for row in mapping['matches'])==36
conditional_uses=[dict(key=k,**u) for k in sorted(target_closure) for u in blocks[k]['uses'] if u['kind'].startswith('conditional')]
assert len(conditional_uses)==6

data_source=(HERE/'FinalData.lean').read_text()
for k,b in conditional['blocks'].items():
    name='b_'+k.replace(':','_').replace(',','_').replace('-','neg')
    raw=re.search(r'def '+name+r' : WireComparison := ⟨([^\n]*)⟩',data_source).group(1)
    fields=['version','k','m','n','h','outgoing','incoming','inclusion','projection','up','down']
    assert dict(zip(fields,json.loads('['+raw+']')))==b['wire']
target_source=(HERE/'FinalTarget.lean').read_text()
assert 'Row3743Successor.actual_d4_zero S meaning x' in target_source
assert 'meaning.coordinates (S.differential 4 Row3743Successor.sourceDegree x)' in target_source
assert 'ConditionalData.b_S0_23_147_d4.outgoing' in target_source
assert 'target_boundary_zero target3391 target3391_complete _ target3391_image' in target_source
builds=[];reports=0
for name in ['FinalData','FinalFamily','FinalTarget']:
    rec=json.loads((HERE/(name+'-compile.json')).read_text())
    assert rec['observed_exit_code']==0
    assert rec['source_sha256']==sha(HERE/(name+'.lean')) and rec['log_sha256']==sha(HERE/(name+'.log'))
    text=(HERE/(name+'.log')).read_text()
    deps=re.findall(r'depends on axioms: \[([^]]*)\]',text)
    assert all({x.strip() for x in d.split(',')} <= {'propext','Classical.choice','Quot.sound'} for d in deps)
    count=len(deps)+text.count('does not depend on any axioms');reports+=count
    assert 'sorryAx' not in text and 'error:' not in text
    obj=ROOT/'.lake/build/lib/lean/AggregateIncomingTargetCompletion'/(name+'.olean')
    builds.append(dict(module=name,exit_code=0,standard_axiom_reports=count,
        current_olean_exists=obj.exists(),current_olean_matches_direct=sha(obj)==rec['olean_sha256'] if obj.exists() else None))
assert reports==9
files=[HERE/(n+'.lean') for n in ['FinalData','FinalFamily','FinalTarget']]+[HERE/'final-data.json',
    HERE/'conditional3391-search.json',HERE/'README.md',HERE/'data.json',HERE/'independent-review.json',Path(__file__),
    ROOT/'Row3743Successor/source.json',ROOT/'Row3743Successor/Basic.lean',ROOT/'Row3743Successor/Named.lean',
    ROOT/'Row3743SuccessorReview/independent-review.json',ROOT/'Row3743SuccessorReview/raw-review.json',
    ROOT/'IndexedFamilyProducer/D5/bound95.jsonl',ROOT/'AggregateEliminationCertificates/mapping.json',db]
report=dict(status='independent_final_review_passed',findings=[],reviewer='/root/map_search_next',
    finite_replay=dict(base_family=384,additional_blocks=15,final_family=399,ordered_pairs=399**2,
        horizontal_links=horizontal,consecutive_links=consecutive,all_current_vectors=vector_checks,
        cycle_pairs=cycle_pairs,target3391_closure=36,independent_successor_closure=13,
        raw_sql_degrees=len(degree_cache),new_d2_columns=d2_columns,new_higher_columns=higher_columns,
        new_selected_representatives=representatives,preserved_events=95,preserved_stage_bindings=102,
        all_incoming_targets_present=36,target_closure_conditional_uses=conditional_uses),
    semantics=['Final family preserves all384 base blocks and all95 original events, adding15 full comparisons.',
        'Known successor closure does not depend on row3743 d4 and has no conditional overrides.',
        'Raw row3743 remains NULL9000; one new conditional_successor_row3986 interpretation is recorded.',
        'Actual d-squared and known injective successor force whole incoming mapzero, with explicit actual meanings.',
        'conditional_column_meaning binds that actual zero to same-degree zero numeric matrix for every actual source.',
        'Target3391 full incoming equals event outgoing; exact event vector/preimage proves finite quotient zero.',
        'All36 accepted incoming target comparison keys now exist; no new event or independence count asserted.'],
    limitations=['No construction of full actual PageData/Meaning for target3391 or the399-entry family.',
        'The numeric selected family is conditional on semantic interpretations including the known successor.',
        'Existing target closure also retains5 earlier conditional uses, not only the new successor condition.',
        'No claim about all outgoing event targets, actual sphere realization, permanence, convergence, or stable homotopy.'],
    build_evidence=builds,standard_axiom_reports=reports,
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in files})
(HERE/'final-independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(f'Independent final completion:399blocks/159201pairs/36incoming targets;95events/102stages;'
      f'15newblocks/1new explicit condition;3direct0/{reports}reports')
