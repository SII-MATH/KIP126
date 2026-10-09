import hashlib,json,pathlib,subprocess
p=pathlib.Path(__file__).resolve().parent;r=p.parents[1]
rows=[json.loads(x) for x in (p/'all88.jsonl').read_text().splitlines()];indexed=[json.loads(x) for x in (p/'indexed88.jsonl').read_text().splitlines()];prov=json.loads((p/'provenance.json').read_text())['records'];inv={x['staircase_id']:x for x in json.loads((r/'AggregateTargetInventory/inventory.json').read_text())['staircase']}
assert len(rows)==len(indexed)==len(prov)==88
# Reuse only the independent GF(2) arithmetic oracle, not a generator.
ns={};helper=(p.parent/'test.py').read_text();exec(helper[helper.index('def ev('):helper.index('for row in rows:')],ns);ev=ns['ev'];comparison=ns['comparison']
for w,ix,pr in zip(rows,indexed,prov,strict=True):
 assert ix['finite']==w;row=inv[pr['staircase_id']];q=row['event_page'];source=[row['filtration'],row['total_degree']] if row['status']=='stored_outgoing' else row['other_degree'];target=[source[0]+q,source[1]+q-1]
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
oldprov=json.loads((p.parent/'provenance.json').read_text())['records'];old=[json.loads(x) for x in (p.parent/'all87.jsonl').read_text().splitlines()];lookup={x['staircase_id']:w for x,w in zip(prov,rows)}
for pr,w in zip(oldprov,old,strict=True):assert lookup[pr['staircase_id']]==w
assert set(lookup)-{x['staircase_id'] for x in oldprov}=={3254}
new=next(x for x in prov if x['staircase_id']==3254);assert {u['kind'] for u in new['conditional_uses']}=={'conditional_csigma','conditional_h3_d0','conditional_d4_module'}
tr=json.loads((r/'AggregateD4Conditional/trajectory-cycles.json').read_text());tr=next(x for x in tr if x['staircase_id']==3254)
for endpoint in tr['endpoints']:
 name=endpoint['endpoint'];assert new[name+'_trace']==[dict(comparison=x['comparison'],coordinates=[bool(a) for a in x['coordinates']]) for x in endpoint['prior_stages']]
for name,exe in [('all88','finite-event-export'),('indexed88','indexed-event-export')]:
 run=subprocess.run([str(p.parent/exe),str(p/f'{name}.input.jsonl')],check=True,capture_output=True)
 assert run.stdout==(p/f'{name}.jsonl').read_bytes()==(p/f'{name}.input.jsonl').read_bytes()
report=dict(status='88 original-inventory and full finite/indexed trace checks passed',events=88,unchanged_old_events=87,new_event=3254,prior_stages=sum(len(x['sourceStages'])+len(x['targetStages']) for x in rows),new_conditional_kinds=sorted({u['kind'] for u in new['conditional_uses']}),sha256={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in ['all88.jsonl','indexed88.jsonl','event3254.json','indexed-event3254.json','provenance.json']})
(p/'audit.json').write_text(json.dumps(report,indent=2)+'\n');print(report)
