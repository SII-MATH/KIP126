import hashlib,json,pathlib,subprocess
p=pathlib.Path(__file__).resolve().parent;r=p.parents[1]
rows=[json.loads(x) for x in (p/'all90.jsonl').read_text().splitlines()];indexed=[json.loads(x) for x in (p/'indexed90.jsonl').read_text().splitlines()];prov=json.loads((p/'provenance.json').read_text())['records'];inv={x['staircase_id']:x for x in json.loads((r/'AggregateTargetInventory/inventory.json').read_text())['staircase']}
assert len(rows)==len(indexed)==len(prov)==90
# Reuse only the independent GF(2) arithmetic oracle, not a generator.
ns={};helper=(p.parent/'test.py').read_text();exec(helper[helper.index('def ev('):helper.index('for row in rows:')],ns);ev=ns['ev'];comparison=ns['comparison']
for w,ix,pr in zip(rows,indexed,prov,strict=True):
 assert ix['finite']==w;row=inv[pr['staircase_id']];assert row==pr['inventory'];q=row['event_page'];assert q==pr['event_page'];source=[row['filtration'],row['total_degree']] if row['status']=='stored_outgoing' else row['other_degree'];target=[source[0]+q,source[1]+q-1]
 assert ix['sourceDegree']==dict(zip(('s','t'),source)) and ix['targetDegree']==dict(zip(('s','t'),target)) and ix['eventPage']==q
 for side,center,ids in [('source',source,row['base_local_indices'] if row['status']=='stored_outgoing' else row['diff_local_indices']),('target',target,row['diff_local_indices'] if row['status']=='stored_outgoing' else row['base_local_indices'])]:
  v=w['raw'+side.title()];assert [i for i,a in enumerate(v) if a]==ids
  assert len(ix[side+'Labels'])==len(w[side+'Stages'])==q-2
  for page,st,lab in zip(range(2,q),w[side+'Stages'],ix[side+'Labels'],strict=True):
   assert lab['page']==page and lab['center']==dict(zip(('s','t'),center))
   assert [lab['incoming']['s']+page,lab['incoming']['t']+page-1]==center
   assert [lab['outgoing']['s'],lab['outgoing']['t']]==[center[0]+page,center[1]+page-1]
   a=st['wire'];comparison(a);assert st['representative']==v;assert not any(ev(a['outgoing'],a['k'],a['m'],v));v=ev(a['projection'],a['h'],a['m'],v);assert any(v)
  assert v==w[side]
 a=w['event'];comparison(a);assert ev(a['outgoing'],a['k'],a['m'],w['source'])==w['target'] and any(w['target'])
oldp=p.parent/'D4'
oldprov=json.loads((oldp/'provenance.json').read_text())['records']
oldlines=(oldp/'all88.jsonl').read_bytes().splitlines(keepends=True)
oldindexed=(oldp/'indexed88.jsonl').read_bytes().splitlines(keepends=True)
lookup={x['staircase_id']:w for x,w in zip(prov,rows,strict=True)}
newlines={x['staircase_id']:w for x,w in zip(prov,(p/'all90.jsonl').read_bytes().splitlines(keepends=True),strict=True)}
newindexed={x['staircase_id']:w for x,w in zip(prov,(p/'indexed90.jsonl').read_bytes().splitlines(keepends=True),strict=True)}
for pr,w,ix in zip(oldprov,oldlines,oldindexed,strict=True):
 assert newlines[pr['staircase_id']]==w
 assert newindexed[pr['staircase_id']]==ix
assert set(lookup)-{x['staircase_id'] for x in oldprov}=={3744,3745}
new=[x for x in prov if x['staircase_id'] in {3744,3745}]
assert all({u['kind'] for u in x['conditional_uses']}=={'conditional_three_products'} for x in new)
traces=json.loads((r/'AggregateThreeProductConditional/Pipeline/trajectory-cycles.json').read_text())
for newrow in new:
 tr=next(x for x in traces if x['staircase_id']==newrow['staircase_id'])
 for endpoint in tr['endpoints']:
  name=endpoint['endpoint'];assert newrow[name+'_trace']==[dict(comparison=x['comparison'],coordinates=[bool(a) for a in x['coordinates']]) for x in endpoint['prior_stages']]
 for name in ['event','indexed-event']:
  rid=newrow['staircase_id'];expected=newlines[rid] if name=='event' else newindexed[rid]
  assert (p/f'{name}{rid}.json').read_bytes()==expected
for name,exe in [('all90','finite-event-export'),('indexed90','indexed-event-export')]:
 run=subprocess.run([str(p.parent/exe),str(p/f'{name}.input.jsonl')],check=True,capture_output=True)
 assert run.stdout==(p/f'{name}.jsonl').read_bytes()==(p/f'{name}.input.jsonl').read_bytes()
metadata=json.loads((p/'provenance.json').read_text())
for name,digest in metadata['input_hashes'].items():assert hashlib.sha256((r/name).read_bytes()).hexdigest()==digest
source=json.loads((r/'AggregateThreeProductConditional/source.json').read_text());blocks=source['blocks']
assert len(blocks)==333
for w,pr in zip(rows,prov,strict=True):
 assert w['event']==blocks[pr['root']]['wire']
 seen=set()
 def visit(k):
  if k in seen:return
  seen.add(k)
  for dep in blocks[k]['predecessors']:visit(dep)
 visit(pr['root'])
 for side in ['source','target']:
  for st,trace in zip(w[side+'Stages'],pr[side+'_trace'],strict=True):
   assert st['wire']==blocks[trace['comparison']]['wire'] and st['representative']==trace['coordinates']
   visit(trace['comparison'])
 expected=[dict(block=k,**u) for k in sorted(seen) for u in blocks[k]['uses'] if u['kind'].startswith('conditional')]
 assert pr['conditional_uses']==expected
report=dict(status='90 original-inventory and full finite/indexed trace checks passed',events=90,source_blocks=333,byte_unchanged_old_events=88,new_events=[3744,3745],prior_stages=sum(len(x['sourceStages'])+len(x['targetStages']) for x in rows),new_conditional_kinds=['conditional_three_products'],sha256={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in ['all90.jsonl','indexed90.jsonl','event3744.json','indexed-event3744.json','event3745.json','indexed-event3745.json','provenance.json']})
(p/'audit.json').write_text(json.dumps(report,indent=2)+'\n');print(report)
