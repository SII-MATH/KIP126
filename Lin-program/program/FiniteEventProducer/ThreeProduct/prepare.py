"""Construct all 90 witnesses from the 333-block conditional DAG, without imports."""
import hashlib,json,pathlib,subprocess
p=pathlib.Path(__file__).resolve().parent;producer=p.parent;r=producer.parent;src=r/'AggregateThreeProductConditional'
s=json.loads((src/'source.json').read_text());dag=json.loads((src/'dag.json').read_text());events=json.loads((src/'event-results.json').read_text());inv={x['staircase_id']:x for x in json.loads((r/'AggregateTargetInventory/inventory.json').read_text())['staircase']}
def ev(a,m,n,v):return [sum(a[i*n+j] and v[j] for j in range(n))%2==1 for i in range(m)]
def degree(s,t):return dict(s=s,t=t)
def path(center,indices,page):
 s,t=center;v=[i in indices for i in range(len(dag['degrees'][f'S0:{s},{t}']['e2']))];raw=v;stages=[];labels=[];trace=[]
 for q in range(2,page):
  key=f'S0:{s},{t}:d{q}'
  w=blocks[key]['wire'];stages.append(dict(wire=w,representative=v));labels.append(dict(page=q,center=degree(s,t),incoming=degree(s-q,t-q+1),outgoing=degree(s+q,t+q-1)))
  trace.append(dict(comparison=key,coordinates=v));v=ev(w['projection'],w['h'],w['m'],v)
 return raw,stages,labels,v,trace
blocks=s['blocks'];records=[];indexed=[];pro=[]
for e in events:
 if e['status']!='finite_nonzero_event':continue
 row=inv[e['staircase_id']];page=e['event_page'];source=[row['filtration'],row['total_degree']] if row['status']=='stored_outgoing' else row['other_degree'];target=[source[0]+page,source[1]+page-1]
 si=row['base_local_indices'] if row['status']=='stored_outgoing' else row['diff_local_indices'];ti=row['diff_local_indices'] if row['status']=='stored_outgoing' else row['base_local_indices']
 rawS,stS,labS,vS,trS=path(source,si,page);rawT,stT,labT,vT,trT=path(target,ti,page)
 assert vS==e['source_coordinates'] and vT==e['target_coordinates']
 w=dict(version=1,rawSource=rawS,rawTarget=rawT,sourceStages=stS,targetStages=stT,event=blocks[e['root']]['wire'],source=vS,target=vT)
 ix=dict(version=1,sourceDegree=degree(*source),targetDegree=degree(*target),eventPage=page,sourceLabels=labS,targetLabels=labT,finite=w)
 records.append(w);indexed.append(ix)
 seen=set()
 def visit(key):
  if key in seen:return
  seen.add(key)
  for k in blocks[key]['predecessors']:visit(k)
 visit(e['root'])
 for q in trS+trT:visit(q['comparison'])
 uses=[dict(block=k,**u) for k in sorted(seen) for u in blocks[k]['uses'] if u['kind'].startswith('conditional')]
 pro.append(dict(staircase_id=e['staircase_id'],inventory=row,event_page=page,root=e['root'],conditional_uses=uses,source_trace=trS,target_trace=trT))
assert len(records)==90
canonical=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
for name,data,exe in [('all90',records,'finite-event-export'),('indexed90',indexed,'indexed-event-export')]:
 (p/f'{name}.input.jsonl').write_text(''.join(map(canonical,data)))
 with (p/f'{name}.jsonl').open('w') as out:subprocess.run([str(producer/exe),str(p/f'{name}.input.jsonl')],stdout=out,check=True)
for rid in [3744,3745]:
 j=next(i for i,x in enumerate(pro) if x['staircase_id']==rid)
 (p/f'event{rid}.json').write_text((p/'all90.jsonl').read_text().splitlines(keepends=True)[j])
 (p/f'indexed-event{rid}.json').write_text((p/'indexed90.jsonl').read_text().splitlines(keepends=True)[j])
(p/'provenance.json').write_text(json.dumps(dict(records=pro,database_sha256=s['database_sha256'],attempted_overrides=s['attempted_overrides'],input_hashes={str(f.relative_to(r)):hashlib.sha256(f.read_bytes()).hexdigest() for f in [src/'source.json',src/'dag.json',src/'event-results.json',r/'AggregateTargetInventory/inventory.json']}),indent=2)+'\n')
print('90 finite and indexed records; new rows3744/3745; all conditional dependency closures retained')
