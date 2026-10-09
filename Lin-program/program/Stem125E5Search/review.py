"""Independent exhaustive local chain, source-column and conditional E5 product review."""
import hashlib,importlib.util,itertools,json,sqlite3
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
spec=importlib.util.spec_from_file_location('arithmetic',R/'Stem125HomologyCertificates/review.py')
a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)

def run():
 search=json.loads((P/'search.json').read_text());data=json.loads((P/'branches.json').read_text())
 for p,h in search['input_sha256'].items():assert sha(R/p)==h
 assert search['branches'][0]['new_blocks']==search['branches'][1]['new_blocks']==data['new_blocks']
 old=json.loads((R/'AggregateD5Conditional/source.json').read_text())['blocks'];blocks=dict(old);blocks.update(json.loads((R/'Stem125E4Search/search.json').read_text())['new_blocks']);blocks.update(data['new_blocks']);blocks['S0:21,147:d3']=json.loads((R/'AggregateLeibniz3564Conditional/source.json').read_text())['blocks']['S0:21,147:d3']
 assert len(old)==358 and len(data['new_blocks'])==21
 db=R/'upstream/kervaire-49/S0_AdamsSS_t261.db';sql=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
 degrees=search['branches'][0]['degree_data']
 for k,d in degrees.items():
  s,t=d['degree'];assert d['e2']==[list(x) for x in sql.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))]
  assert d['staircase']==[list(x) for x in sql.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t))]
 def degree(s,t):return degrees[f'S0:{s},{t}']
 def selected(s,t,q):return [x for x in degree(s,t)['staircase'] if q<=x[3]<5000 or 5000<=x[3]<=10000-q]
 def bitset(raw):
  assert raw is not None
  value=0
  for i in ([] if raw=='' else map(int,raw.split(','))):value^=1<<i
  return value
 projection_count=0
 def project(s,t,q,v):
  nonlocal projection_count
  for r in range(2,q):
   w=blocks[f'S0:{s},{t}:d{r}']['wire'];assert a.apply(a.columns(w['outgoing'],w['k'],w['m']),v)==0
   v=a.apply(a.columns(w['projection'],w['h'],w['m']),v);projection_count+=1
  return v
 raw_columns=higher_columns=0
 for k,b in data['new_blocks'].items():
  s,t=b['center'];q=b['page'];w=b['wire']
  for field,u,v,tu,tv,m,n in [('outgoing',s,t,s+q,t+q-1,w['m'],w['k']),('incoming',s-q,t-q+1,s,t,w['n'],w['m'])]:
   cols=a.columns(w[field],n,m)
   if q==2:
    rows=degree(u,v)['e2'];assert len(rows)==m
    assert cols==[bitset(row[2]) for row in rows];raw_columns+=len(rows)
   else:
    rows=selected(u,v,q);assert len(rows)==m;values=[]
    for row in rows:
     rid,base,diff,level=row;uses=[z for z in b['uses'] if z['source']==[u,v] and z['row']==row];assert len(uses)==1
     if level==10000-q and diff is not None:
      assert uses[0]['kind']=='stored_event';value=project(tu,tv,q,bitset(diff))
     else:
      assert 2<=level<5000 or 9000<level<10000-q
      assert uses[0]['kind']=='stored_zero_prefix_or_boundary';value=0
     values.append(value)
    assert values==cols;higher_columns+=len(rows)
  if q>2:assert [project(s,t,q,bitset(row[1])) for row in selected(s,t,q+1)]==a.columns(w['inclusion'],w['m'],w['h'])
 closure=set()
 def visit(k):
  if k in closure:return
  closure.add(k)
  for dep in blocks[k]['predecessors']:visit(dep)
 for row in data['known_centers']:visit(f'S0:{row["filtration"]},{row["filtration"]+125}:d4')
 assert len(closure)==163
 conditional=[dict(block=k,**u) for k in sorted(closure) for u in blocks[k]['uses'] if u['kind'].startswith('conditional')]
 cycles_checked=0
 def check(w):
  nonlocal cycles_checked
  m,n,k,h=(w[z] for z in ['m','n','k','h']);A=a.columns(w['outgoing'],k,m);B=a.columns(w['incoming'],m,n);I=a.columns(w['inclusion'],m,h);Q=a.columns(w['projection'],h,m);U=a.columns(w['up'],n,m);V=a.columns(w['down'],m,k)
  assert all(a.apply(A,v)==0 for v in B+I) and all(a.apply(Q,v)==0 for v in B)
  assert all(a.apply(Q,v)==1<<j for j,v in enumerate(I))
  assert all(a.apply(I,a.apply(Q,1<<j))^a.apply(B,a.apply(U,1<<j))^a.apply(V,a.apply(A,1<<j))==1<<j for j in range(m))
  assert h==m-a.rank(A)-a.rank(B)
  cycles=[x for x in range(1<<m) if a.apply(A,x)==0];boundaries={a.apply(B,y) for y in range(1<<n)}
  for x,y in itertools.product(cycles,repeat=2):assert (a.apply(Q,x)==a.apply(Q,y))==((x^y) in boundaries);cycles_checked+=1
 for k in closure:check(blocks[k]['wire'])
 for rows in data['branches'].values():
  for row in rows:check(row['wire'])
 branch=data['branches'];assert list(map(len,[branch[x] for x in ['nine','fourteen','fifteen','twentyfive','target9prefix','source14prefix']]))==[2,3,4,20,2,2]
 lean=(P/'Data.lean').read_text();fields=['version','k','m','n','h','outgoing','incoming','inclusion','projection','up','down']
 for key,record in data['new_blocks'].items():
  name='b_'+key.replace(':','_').replace(',','_').replace('-','neg')
  literal=','.join(json.dumps(record['wire'][field],separators=(',',':')) for field in fields)
  assert f'def {name} : WireComparison := ⟨{literal}⟩' in lean
  assert f'theorem {name}_complete : {name}.Valid := by lin_cert using ()' in lean
 for group,rows in branch.items():
  for i,row in enumerate(rows):
   literal=','.join(json.dumps(row['wire'][field],separators=(',',':')) for field in fields)
   assert f'def {group}_{i} : WireComparison := ⟨{literal}⟩' in lean
 # Enumerate every possible complete incoming/outgoing map satisfying the one known incoming event.
 allowed=[]
 for out in range(8):
  for col in range(8):
   if out&1:continue
   if (out&col).bit_count()%2:continue
   allowed.append((out,col))
 actual=[]
 for row in branch['twentyfive']:
  w=row['wire'];A=a.columns(w['outgoing'],1,3);B=a.columns(w['incoming'],3,2)
  assert B[0]==1
  actual.append((sum(v<<i for i,v in enumerate(A)),B[1]))
 assert len(allowed)==len(actual)==20 and sorted(allowed)==sorted(actual)
 # Local source/target shared matrices are exactly the earlier accepted exhaustive branch sources.
 for row in branch['fifteen']:
  ps=row['parameters'];oldwire=json.loads((R/f'Row3151BranchCertificates/comparison{ps["b"]}{ps["c"]}.json').read_text());assert row['wire']['incoming']==oldwire['outgoing']
 for row in branch['twentyfive']:
  ps=row['parameters'];oldwire=json.loads((R/f'Row3992BranchCertificates/comparison{ps["b"]}{ps["c"]}{ps["d"]}.json').read_text());assert row['wire']['incoming']==oldwire['outgoing']
 assert [x['wire']['h'] for x in branch['target9prefix']]==[1,1]
 assert [x['wire']['h'] for x in branch['source14prefix']]==[1,0]
 assert [x['wire']['n'] for x in branch['fourteen']]==[0,1,1]
 known=data['known_centers'];assert len(known)==13 and sum(x['E4_dimension'] for x in known)==17 and sum(x['homology'] for x in known)==2
 dimensions=[2+sum(x['wire']['h'] for x in rows) for rows in itertools.product(*(branch[k] for k in ['nine','fourteen','fifteen','twentyfive']))]
 assert len(dimensions)==480 and set(dimensions)==set(range(2,8))
 results=dict(status='conditional_E5_branch_review_passed',known_centers=13,known_input_dimension=17,known_homology=2,new_blocks=21,known_predecessor_closure=len(closure),new_raw_d2_columns=raw_columns,new_higher_columns=higher_columns,projected_cycles=projection_count,cycle_pairs=cycles_checked,branch_counts={k:len(v) for k,v in branch.items()},local_compatible_product_choices=480,possible_coordinate_counts=sorted(set(dimensions)),inherited_conditions=conditional,limitations=['480 local choices are not proved realizable Adams spectral sequences or a globally constructed subsequent-page family.','Every full-product theorem is parameterized by choice and requires exact interpretation of incoming/outgoing columns and prefix basis changes.','Zero factors remain arbitrary neighboring-dimension zero-current quotients; earlier zero-group propagation needs actual page semantics.','No branch, unknown column, or missing quotient basis is implicitly selected.'],inputs_sha256={str(p.relative_to(R)):sha(p) for p in [*sorted(P.glob('*.lean')),P/'search.py',P/'search.json',P/'generate.py',P/'product_generate.py',P/'family_generate.py',P/'branches.json',Path(__file__),R/'AggregateD5Conditional/source.json',R/'AggregateD5Conditional/event-results.json',R/'Stem125E4Search/coverage.json']})
 (P/'review.json').write_text(json.dumps(results,indent=2,sort_keys=True)+'\n')
 print('PASS conditional E5:13known17->2,21new,163closure;480unselected choices; possible coordinate counts2..7;',cycles_checked,'cycle pairs')

if __name__=='__main__':run()
