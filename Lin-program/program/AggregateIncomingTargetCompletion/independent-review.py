"""Independent completion closure, raw coordinates, full family and named quotients."""
import collections
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda p: json.loads((ROOT/p).read_text())
snapshot = read('AggregateIncomingTargetCompletion/data.json')
old_blocks = read('AggregateD5Conditional/source.json')['blocks']
e4 = read('Stem125E4Search/search.json')
e5 = read('Stem125E5Search/search.json')
assert e5['branches'][0]['new_blocks'] == e5['branches'][1]['new_blocks']
new4, new5 = e4['new_blocks'], e5['branches'][0]['new_blocks']
assert not (set(old_blocks)&set(new4) or set(old_blocks)&set(new5) or set(new4)&set(new5))
blocks = {**old_blocks, **new4, **new5}
old_entries = read('IndexedFamilyProducer/D5/family-extension.json')['entries']
key = lambda d: (d['object'],d['page'],d['s'],d['t'])
blockkey = lambda obj,page,s,t: f'{obj}:{s},{t}:d{page}'
old = {key(e['key']):e['wire'] for e in old_entries}
assert len(old_entries) == len(old) == len(old_blocks) == 358
for k,w in old.items():
    assert blocks[blockkey(*k)]['wire'] == w
inventory = {x['staircase_id']:x for x in read('AggregateTargetInventory/inventory.json')['staircase']}
bound_path = ROOT/'IndexedFamilyProducer/D5/bound95.jsonl'
bound_lines = bound_path.read_bytes().splitlines()
assert len(bound_lines)==95
events = {}
for path in sorted((ROOT/'IndexedFamilyProducer/D5/events').glob('event*.json')):
    row = int(path.stem[5:])
    text=path.read_bytes().strip()
    assert text in bound_lines
    events[row]=json.loads(text)
assert len(events)==95
missing = []
for row,bound in events.items():
    e=bound['event'];d=e['targetDegree']
    if inventory[row]['status']=='stored_incoming' and (bound['object'],e['eventPage'],d['s'],d['t']) not in old:
        missing.append(row)
assert sorted(missing)==[3010,3011,3254,3391,3629,3744,3745,4764,4929,5862,5977,6296,7247]
ids=sorted(set(missing)-{3391})
assert snapshot['ids']==ids
roots=set()
for row in ids:
    e=events[row]['event'];d=e['targetDegree']
    k=blockkey('S0',e['eventPage'],d['s'],d['t'])
    assert snapshot['targets'][str(row)]==k
    roots.add(k)
assert len(roots)==10
closure=set()
def visit(k):
    if k in closure:
        return
    closure.add(k)
    b=blocks[k];s,t=b['center'];r=b['page']
    expected=[] if r==2 else [blockkey(b['object'],r-1,a,c)
        for a,c in [(s-r,t-r+1),(s,t),(s+r,t+r-1)]]
    assert b['predecessors']==expected
    for p in expected:
        visit(p)
for k in roots:
    visit(k)
assert len(closure)==88 and set(snapshot['closure'])==closure
assert all(snapshot['closure'][k]==blocks[k] for k in closure)
extra_keys=sorted(closure-set(old_blocks))
assert len(extra_keys)==26 and list(snapshot['extra'])==extra_keys
family=dict(old)
for k in extra_keys:
    b=blocks[k];s,t=b['center'];kk=(b['object'],b['page'],s,t)
    assert kk not in family and snapshot['extra'][k]==b
    family[kk]=b['wire']
assert len(family)==384 and all(family[k]==w for k,w in old.items())

def vector(bits):
    assert all(type(x) in [bool,int] and x in [0,1] for x in bits)
    return sum(int(x)<<i for i,x in enumerate(bits))
def columns(flat,m,n):
    assert len(flat)==m*n
    return [vector([flat[i*n+j] for i in range(m)]) for j in range(n)]
def apply(a,x):
    result=0
    for j,c in enumerate(a):
        if x>>j&1:
            result ^= c
    return result
def matrices(w):
    assert w['version']==1
    return [columns(w[f],m,n) for f,m,n in [
        ('outgoing',w['k'],w['m']),('incoming',w['m'],w['n']),
        ('projection',w['h'],w['m']),('inclusion',w['m'],w['h']),
        ('up',w['n'],w['m']),('down',w['m'],w['k'])]]
full_vector_checks=cycle_pairs=0
for k,w in family.items():
    a,b,q,inc,u,down=matrices(w)
    boundaries={apply(b,x) for x in range(1<<w['n'])}
    cycles=[x for x in range(1<<w['m']) if apply(a,x)==0]
    assert all(apply(a,x)==apply(q,x)==0 for x in boundaries)
    for x in range(1<<w['h']):
        assert apply(a,apply(inc,x))==0 and apply(q,apply(inc,x))==x
    for x in range(1<<w['m']):
        assert apply(inc,apply(q,x))^apply(b,apply(u,x))^apply(down,apply(a,x))==x
        full_vector_checks+=1
    for x,y in itertools.product(cycles,repeat=2):
        assert (apply(q,x)==apply(q,y))==(x^y in boundaries)
        cycle_pairs+=1
horizontal=consecutive=0
for ka,wa in family.items():
    for kb,wb in family.items():
        oa,pa,sa,ta=ka;ob,pb,sb,tb=kb
        if oa==ob and pa==pb and sb==sa+pa and tb==ta+pa-1:
            assert wa['k']==wb['m'] and wa['m']==wb['n'] and wa['outgoing']==wb['incoming']
            horizontal+=1
        if oa==ob and pb==pa+1 and (sa,ta)==(sb,tb):
            assert wa['h']==wb['m']
            consecutive+=1

# Every new source/target basis record is checked against read-only raw SQL.
degree_data={}
for data in [read('AggregateD5Conditional/dag.json')['degrees'],e4['degree_data'],
             e5['branches'][0]['degree_data'],e5['branches'][1]['degree_data']]:
    for k,v in data.items():
        if k in degree_data:
            assert degree_data[k]==v
        degree_data[k]=v
db=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
sql=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
needed=set()
for k in closure:
    b=blocks[k];s,t=b['center'];r=b['page']
    needed.update((a,c) for a,c in [(s-r,t-r+1),(s,t),(s+r,t+r-1)])
for s,t in needed:
    saved=degree_data[f'S0:{s},{t}']
    e2rows=[list(x) for x in sql.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))]
    ssrows=[list(x) for x in sql.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t))]
    assert saved['e2']==e2rows and saved['staircase']==ssrows
sql.close()
def raw(s,t):
    return degree_data[f'S0:{s},{t}']
def rawbits(value,n):
    assert value is not None and value not in ['?','[NULL]','-1']
    indices=[] if not value else [int(x) for x in value.split(',')]
    assert len(indices)==len(set(indices)) and all(0<=x<n for x in indices)
    return sum(1<<i for i in indices)
def selected(s,t,r):
    return [row for row in raw(s,t)['staircase'] if r<=row[3]<5000 or 5000<=row[3]<=10000-r]
def project(s,t,r,x):
    for page in range(2,r):
        w=blocks[blockkey('S0',page,s,t)]['wire']
        x=apply(matrices(w)[2],x)
    return x
raw_d2_columns=higher_columns=selected_representatives=0
for k in extra_keys:
    b=blocks[k];s,t=b['center'];r=b['page'];w=b['wire'];a,inc,q,inclusion,_,_=matrices(w)
    if r>2:
        ps=blocks[blockkey('S0',r-1,s-r,t-r+1)]['wire']
        pc=blocks[blockkey('S0',r-1,s,t)]['wire']
        pt=blocks[blockkey('S0',r-1,s+r,t+r-1)]['wire']
        assert (ps['h'],pc['h'],pt['h'])==(w['n'],w['m'],w['k'])
    for source_s,source_t,target_s,target_t,map_columns,dimension in [
            (s,t,s+r,t+r-1,a,w['m']),(s-r,t-r+1,s,t,inc,w['n'])]:
        if r==2:
            rows=raw(source_s,source_t)['e2']
            assert len(rows)==dimension
            for j,row in enumerate(rows):
                assert map_columns[j]==rawbits(row[2],len(raw(target_s,target_t)['e2']))
                raw_d2_columns+=1
        else:
            rows=selected(source_s,source_t,r)
            assert len(rows)==dimension
            for j,row in enumerate(rows):
                uses=[u for u in b['uses'] if u['source']==[source_s,source_t] and u['row']==row]
                assert len(uses)==1
                u=uses[0]
                assert u['page']==r and u['target_predecessor']==blockkey('S0',r-1,target_s,target_t)
                if row[3]==10000-r and row[2] is not None:
                    assert u['kind']=='stored_event'
                    value=project(target_s,target_t,r,rawbits(row[2],len(raw(target_s,target_t)['e2'])))
                elif 2<=row[3]<5000 or 9000<row[3]<10000-r:
                    assert u['kind']=='stored_zero_prefix_or_boundary'
                    value=0
                else:
                    assert u['kind']=='checked_zero_codomain'
                    assert blocks[u['target_predecessor']]['wire']['h']==0
                    value=0
                assert map_columns[j]==value
                higher_columns+=1
    chosen=selected(s,t,r+1)
    assert len(chosen)==w['h']
    for j,row in enumerate(chosen):
        assert inclusion[j]==project(s,t,r,rawbits(row[1],len(raw(s,t)['e2'])))
        selected_representatives+=1

stage_count=event_count=0
for row,bound in events.items():
    e=bound['event'];f=e['finite'];r=e['eventPage'];sd=e['sourceDegree'];td=e['targetDegree']
    assert (td['s'],td['t'])==(sd['s']+r,sd['t']+r-1)
    assert family[(bound['object'],r,sd['s'],sd['t'])]==f['event']
    a=matrices(f['event'])[0]
    assert len(f['source'])==f['event']['m'] and len(f['target'])==f['event']['k']
    assert apply(a,vector(f['source']))==vector(f['target'])!=0
    for role,degree in [('source',sd),('target',td)]:
        stages=f[role+'Stages'];labels=e[role+'Labels'];rawname='raw'+role.title()
        assert len(stages)==len(labels)==r-2
        x=vector(f[rawname])
        for page,(stage,label) in enumerate(zip(stages,labels),2):
            w=stage['wire'];aa,bb,qq,_,_,_=matrices(w)
            assert family[(bound['object'],page,degree['s'],degree['t'])]==w
            assert label==dict(page=page,center=degree,
                incoming=dict(s=degree['s']-page,t=degree['t']-page+1),
                outgoing=dict(s=degree['s']+page,t=degree['t']+page-1))
            assert len(stage['representative'])==w['m'] and vector(stage['representative'])==x
            assert apply(aa,x)==0 and x not in {apply(bb,z) for z in range(1<<w['n'])}
            x=apply(qq,x)
            stage_count+=1
        assert x==vector(f[role])
    event_count+=1
assert stage_count==102 and event_count==95
for row in ids:
    e=events[row]['event'];f=e['finite'];d=e['targetDegree'];k=blockkey('S0',e['eventPage'],d['s'],d['t'])
    w=blocks[k]['wire'];a,b,q,_,_,_=matrices(w)
    assert w['incoming']==f['event']['outgoing']
    assert (w['m'],w['n'])==(f['event']['k'],f['event']['m'])
    src,tgt=vector(f['source']),vector(f['target'])
    assert apply(b,src)==tgt and apply(a,tgt)==0 and apply(q,tgt)==0
    assert w['h']==0
    item=inventory[row]
    assert item['status']=='stored_incoming' and (item['filtration'],item['total_degree'])==(d['s'],d['t'])
    assert rawbits(item['base'],len(f['rawTarget']))==vector(f['rawTarget'])
conditional=[dict(key=k,**u) for k in sorted(closure) for u in blocks[k]['uses'] if u['kind'].startswith('conditional')]
assert len(conditional)==7
assert not any(u['kind'].startswith('conditional') for k in extra_keys for u in blocks[k]['uses'])

source=(HERE/'Data.lean').read_text()
for k in extra_keys:
    b=blocks[k];s,t=b['center'];ns='Stem125E4Search.Data' if k in new4 else 'Stem125E5Search.Data'
    const=ns+'.b_'+k.replace(':','_').replace(',','_').replace('-','neg')
    assert f'⟨⟨"S0",{b["page"]},{s},{t}⟩,{const}⟩' in source
    assert const+'_complete' in source
    definition=(ROOT/('Stem125E4Search/Data.lean' if k in new4 else 'Stem125E5Search/Data.lean')).read_text()
    local_name=const.split('.')[-1]
    raw_literal=re.search(r'def '+local_name+r' : WireComparison := ⟨([^\n]*)⟩',definition).group(1)
    literal=json.loads('['+raw_literal+']')
    fields=['version','k','m','n','h','outgoing','incoming','inclusion','projection','up','down']
    assert dict(zip(fields,literal))==b['wire']
family_source=(HERE/'Family.lean').read_text()
assert 'IndexedD5Certificates.family ++ extra' in family_source
assert 'bound_extension extends_old unique (IndexedD5Certificates.all_events e he)' in family_source
target_source=(HERE/'Targets.lean').read_text()
for row in ids:
    for suffix in ['lookup','exact_previous','complete','full_incoming','event_target','event_source',
                   'image','quotient_zero','whole_quotient_zero']:
        assert f'theorem target{row}_{suffix}' in target_source
    assert f'theorem event{row}_full_stage_binding' in target_source
    assert f'target_boundary_zero target{row} target{row}_complete _ target{row}_image' in target_source
builds=[];reports=0
for name in ['Data','Family','Targets']:
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
        current_olean_exists=obj.exists(),current_olean_matches_direct=
        sha(obj)==rec['olean_sha256'] if obj.exists() else None))
assert reports==18
files=[HERE/(name+'.lean') for name in ['Data','Family','Targets']]+[HERE/'data.json',HERE/'README.md',
    Path(__file__),ROOT/'AggregateD5Conditional/source.json',ROOT/'Stem125E4Search/search.json',
    ROOT/'Stem125E5Search/search.json',ROOT/'Stem125E4Search/Data.lean',ROOT/'Stem125E5Search/Data.lean',
    ROOT/'IndexedFamilyProducer/D5/family-extension.json',bound_path,
    ROOT/'AggregateTargetInventory/inventory.json',ROOT/'IndexedD5Certificates/Extension.lean',
    ROOT/'IndexedFamilyCertificates/Coherence.lean',db]
report=dict(status='independent_review_passed',findings=[],reviewer='/root/map_search_next',
    finite_replay=dict(completed_incoming_rows=ids,unique_target_keys=10,old_family_blocks=358,
        added_blocks=26,merged_family_blocks=384,complete_predecessor_closure=88,old_closure_blocks=62,
        full_family_vector_checks=full_vector_checks,cycle_pairs=cycle_pairs,
        ordered_family_pairs=384**2,horizontal_links=horizontal,consecutive_links=consecutive,
        raw_sql_degrees=len(needed),new_raw_d2_columns=raw_d2_columns,new_higher_columns=higher_columns,
        new_selected_representatives=selected_representatives,preserved_events=event_count,
        preserved_prior_stage_bindings=stage_count,inherited_conditional_uses=conditional),
    semantics=['All old358 full keyed wires preserved, all95 original events and102 stages retain full binding.',
        '26 additions reuse exact checked comparisons; closure preserves62 shared predecessors and complete88 blocks.',
        'Each target full incoming matrix equals event outgoing matrix, including source/target dimensions.',
        'Same raw inventory name, same page vectors, explicit event source preimage yield target cycle and finite quotient zero.',
        'Generic target_boundary_zero uses complex law and Quot.sound rather than assuming homology dimension0.',
        'Whole-quotient zero additionally follows from complete h0 comparison.',
        'No new NULL override is introduced; seven transitive earlier conditional uses remain explicit.'],
    limitations=['Only12 previously missing incoming targets covered;3391 remains separate.',
        'Other outgoing-event targets in stem124 are not covered by this completion.',
        'Finite Homology matrix quotient, not an actual Adams S realization or topological elimination theorem.',
        'Same-page full family coherence is a finite condition; consecutive dimensions alone do not identify actual page maps.'],
    build_evidence=builds,standard_axiom_reports=reports,
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in files})
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(f'Independent target completion:384 blocks/147456 pairs/88 closure;12 named quotient zeros;'
      f'95 events/102 stages;3direct0/{reports}reports')
