"""Review the four new centers, both coordinate branches and full finite family."""
import hashlib,importlib.util,itertools,json,re,sqlite3
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
spec=importlib.util.spec_from_file_location('arithmetic',R/'Stem125HomologyCertificates/review.py')
a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)

def run():
 search=json.loads((P/'search.json').read_text());coverage=json.loads((P/'coverage.json').read_text())
 for path,h in search['input_sha256'].items():assert sha(R/path)==h,path
 for path,h in coverage['source_sha256'].items():assert sha(R/path)==h,path
 old=json.loads((R/'AggregateD5Conditional/source.json').read_text())['blocks'];blocks=dict(old);blocks.update(search['new_blocks'])
 assert len(old)==358 and len(search['new_blocks'])==8
 db=R/'upstream/kervaire-49/S0_AdamsSS_t261.db';sql=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
 metadata=dict(sql.execute('SELECT name,value FROM version'))
 for k,d in search['degree_data'].items():
  s,t=d['degree'];assert k==f'S0:{s},{t}'
  assert d['e2']==[list(x) for x in sql.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))]
  assert d['staircase']==[list(x) for x in sql.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t))]
 def basis(s,t):return search['degree_data'][f'S0:{s},{t}']['e2']
 def selected(s,t,q):return [x for x in search['degree_data'][f'S0:{s},{t}']['staircase'] if q<=x[3]<5000 or 5000<=x[3]<=10000-q]
 projection_count=0
 def project(s,t,q,v):
  nonlocal projection_count
  for r in range(2,q):
   w=blocks[f'S0:{s},{t}:d{r}']['wire'];A=a.columns(w['outgoing'],w['k'],w['m']);Q=a.columns(w['projection'],w['h'],w['m'])
   assert a.apply(A,v)==0
   v=a.apply(Q,v);projection_count+=1
  return v
 def parse(raw):
  assert raw is not None
  out=0
  for i in ([] if raw=='' else list(map(int,raw.split(',')))):out^=1<<i
  return out
 new_columns=0;new_statuses=[]
 for k,b in search['new_blocks'].items():
  s,t=b['center'];q=b['page'];w=b['wire']
  assert b['predecessors']==([] if q==2 else [f'S0:{u},{v}:d{q-1}' for u,v in [(s-q,t-q+1),(s,t),(s+q,t+q-1)]])
  for field,u,v,tu,tv,m,n in [('outgoing',s,t,s+q,t+q-1,w['m'],w['k']),('incoming',s-q,t-q+1,s,t,w['n'],w['m'])]:
   cols=a.columns(w[field],n,m)
   if q==2:
    rows=basis(u,v);assert len(rows)==m
    if v>metadata['d2_t_max']:assert rows==[]
    assert cols==[parse(row[2]) for row in rows]
   else:
    rows=selected(u,v,q);assert len(rows)==m
    reconstructed=[]
    for rid,base,diff,level in rows:
     uses=[z for z in b['uses'] if z['source']==[u,v] and z['row']==[rid,base,diff,level]];assert len(uses)==1
     use=uses[0]
     if level==10000-q and diff is not None:
      assert use['kind']=='stored_event';value=project(tu,tv,q,parse(diff))
     else:
      assert 2<=level<5000 or 9000<level<10000-q
      assert use['kind']=='stored_zero_prefix_or_boundary';value=0
     reconstructed.append(value);new_statuses.append(dict(block=k,**use))
    assert cols==reconstructed
   new_columns+=len(cols)
  if q>2:
   reps=[project(s,t,q,parse(x[1])) for x in selected(s,t,q+1)]
   assert reps==a.columns(w['inclusion'],w['m'],w['h'])
 assert blocks['S0:60,184:d2']['wire']['m']==blocks['S0:60,184:d2']['wire']['n']==0
 assert blocks['S0:60,184:d2']['wire']['k']==1
 assert basis(62,185)==[[7607,'0,1,926,1',None]]
 assert [x['filtration'] for x in coverage['nonzero_centers']]==[g['filtration'] for g in json.loads((R/'Stem125HomologyCertificates/coverage.json').read_text())['pages']['2']['centers'] if g['h']]
 assert len(coverage['nonzero_centers'])==31 and len(coverage['zero_centers'])==14
 indices=[x['original_index'] for x in coverage['nonzero_centers']+coverage['zero_centers']]
 assert sorted(indices)==list(range(45))
 assert sum(x['h'] for x in coverage['nonzero_centers'])==44
 assert all(x['h']==0 for x in coverage['zero_centers'])
 # Detector and aggregate homology bases represent the same raw complex in different order.
 detector=json.loads((R/'Row2574Detector/detect.json').read_text())['right']
 sphere=old['S0:9,134:d2']['wire']
 assert (detector['m'],detector['n'],detector['k'],detector['outgoing'],detector['incoming'])==(sphere['m'],sphere['n'],sphere['k'],sphere['outgoing'],sphere['incoming'])
 detector_Q=a.columns(detector['projection'],3,5);detector_I=a.columns(detector['inclusion'],5,3)
 sphere_Q=a.columns(sphere['projection'],3,5)
 def perm(v):return ((v>>1)&1)|(((v>>2)&1)<<1)|((v&1)<<2)
 for raw in range(32):assert a.apply(sphere_Q,raw)==perm(a.apply(detector_Q,raw))
 for v in range(8):assert a.apply(sphere_Q,a.apply(detector_I,v))==perm(v)
 candidates=[v for v in range(8) if v&1==0 and (v>>2)&1==1]
 assert candidates==[4,6] and [perm(v) for v in candidates]==[2,3]
 closure=coverage['predecessor_closure'];assert len(closure)==125
 assert all(k in blocks for k in closure)
 assert all(p in closure for k in closure for p in blocks[k]['predecessors'])
 conditionals=[dict(block=k,**u) for k in closure for u in blocks[k]['uses'] if u['kind'].startswith('conditional')]
 total_pairs=0;branch_results=[]
 for bit in [0,1]:
  branch=json.loads((P/f'branch{bit}.json').read_text())
  assert branch==json.loads((R/f'AffineRemainingSearch/branch2574-{bit}.json').read_text())
  assert (branch['m'],branch['k'],branch['n'],branch['h'])==(3,1,1,1)
  assert branch['outgoing']==[False,False,True] and branch['incoming']==[bool(bit),True,False]
  family={k:blocks[k] for k in closure};family['S0:9,134:d3']=dict(object='S0',center=[9,134],page=3,wire=branch)
  assert len(family)==126
  adjacent=consecutive=0
  for k,b in family.items():
   s,t=b['center'];q=b['page'];w=b['wire'];m,n,l,h=(w[z] for z in ['m','n','k','h'])
   A=a.columns(w['outgoing'],l,m);B=a.columns(w['incoming'],m,n);I=a.columns(w['inclusion'],m,h);Q=a.columns(w['projection'],h,m);U=a.columns(w['up'],n,m);V=a.columns(w['down'],m,l)
   assert all(a.apply(A,v)==0 for v in B+I)
   assert all(a.apply(Q,v)==0 for v in B)
   assert all(a.apply(Q,v)==1<<j for j,v in enumerate(I))
   assert all(a.apply(I,a.apply(Q,1<<j))^a.apply(B,a.apply(U,1<<j))^a.apply(V,a.apply(A,1<<j))==1<<j for j in range(m))
   assert h==m-a.rank(A)-a.rank(B)
   target=family.get(f'S0:{s+q},{t+q-1}:d{q}')
   if target:
    tw=target['wire'];assert (w['k'],w['m'],w['outgoing'])==(tw['m'],tw['n'],tw['incoming']);adjacent+=1
   nxt=family.get(f'S0:{s},{t}:d{q+1}')
   if nxt:assert w['h']==nxt['wire']['m'];consecutive+=1
  total=0
  for center in coverage['nonzero_centers']:
   f=center['filtration'];w=family[f'S0:{f},{f+125}:d3']['wire'];m,n,l,h=(w[z] for z in ['m','n','k','h'])
   assert m==center['h'];total+=h
   A=a.columns(w['outgoing'],l,m);B=a.columns(w['incoming'],m,n);Q=a.columns(w['projection'],h,m)
   cycles=[x for x in range(1<<m) if a.apply(A,x)==0];boundaries={a.apply(B,y) for y in range(1<<n)}
   for x,y in itertools.product(cycles,repeat=2):
    assert (a.apply(Q,x)==a.apply(Q,y))==((x^y) in boundaries);total_pairs+=1
  assert total==24
  branch_results.append(dict(branch=bit,centers=31,input=44,homology=24,family_entries=126,adjacent_pairs=adjacent,consecutive_pairs=consecutive))
 result=dict(status='isolated_E4_completion_review_passed',source_hashes={str(f.relative_to(R)):sha(f) for f in [*sorted(P.glob('*.lean')),P/'search.py',P/'search.json',P/'generate.py',P/'coverage.json',P/'branch0.json',P/'branch1.json',Path(__file__),R/'AggregateD5Conditional/source.json',R/'AggregateD5Conditional/event-results.json',R/'Row2574Detector/Additional/Combined.lean']},database_sha256=sha(db),new_blocks=8,new_columns=new_columns,new_projected_cycles=projection_count,new_record_uses=new_statuses,conditional_dependencies=conditionals,branch_results=branch_results,all_cycle_pairs=total_pairs,detector_coordinates_to_aggregate='(v0,v1,v2) -> (v1,v2,v0)',zero_centers=14,limitations=['Actual Adams and E2 basis completeness, stored differential meanings, product/Leibniz conditions and prefix meanings remain explicit external mathematics.','Zero centers use a generic theorem for arbitrary neighboring dimensions and matrices; unknown neighboring pages are not fabricated.','Neither affine branch is selected; both full finite products have 24 coordinates.','No original 358-block or 95-event snapshot is modified.'])
 (P/'review.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
 print('PASS: 8 new blocks; both 126-entry coherent families; 31 nonzero centers44->24; 14 arbitrary-neighbor zero centers;',total_pairs,'cycle pairs')

if __name__=='__main__':run()
