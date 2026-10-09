import copy,hashlib,json,pathlib,subprocess,tempfile
p=pathlib.Path(__file__).resolve().parent;root=p.parent
rows=[json.loads(x) for x in (p/'indexed87.jsonl').read_text().splitlines()];prov=json.loads((p/'provenance.json').read_text())['records']
inv={x['staircase_id']:x for x in json.loads((root/'AggregateTargetInventory/inventory.json').read_text())['staircase']}
assert len(rows)==len(prov)==87
for x,pr in zip(rows,prov):
 row=inv[pr['staircase_id']];source=(row['filtration'],row['total_degree']) if row['status']=='stored_outgoing' else tuple(row['other_degree']);r=row['event_page'];target=(source[0]+r,source[1]+r-1)
 assert x['sourceDegree']==dict(zip(('s','t'),source)) and x['targetDegree']==dict(zip(('s','t'),target)) and x['eventPage']==r
 for side,center in [('source',source),('target',target)]:
  labels=x[side+'Labels'];assert len(labels)==len(x['finite'][side+'Stages'])==r-2
  for q,k in zip(labels,range(2,r),strict=True):
   assert q['page']==k and tuple(q['center'][a] for a in ['s','t'])==center
   assert (q['incoming']['s']+k,q['incoming']['t']+k-1)==center
   assert (q['outgoing']['s'],q['outgoing']['t'])==(center[0]+k,center[1]+k-1)
r=subprocess.run([str(p/'indexed-event-export'),str(p/'indexed87.input.jsonl')],capture_output=True,text=True,check=True);assert r.stdout==(p/'indexed87.jsonl').read_text()==(p/'indexed87.input.jsonl').read_text()
d4=next(x for x in rows if x['eventPage']==4)
with tempfile.TemporaryDirectory(dir=p) as temp:
 path=pathlib.Path(temp)/'input.jsonl';bad=[]
 for mutate in [lambda x:x.update(eventPage=1),lambda x:x.update(eventPage=5),lambda x:x.update(sourceLabels=[]),lambda x:x['targetDegree'].update(s=0),lambda x:x['sourceLabels'][0].update(page=3),lambda x:x['sourceLabels'][0]['incoming'].update(s=0),lambda x:x.update(extra=True),lambda x:x['sourceDegree'].update(s=None)]:
  x=copy.deepcopy(d4);mutate(x);bad.append(json.dumps(x))
 bad.append('{"version":1,'+json.dumps(d4)[1:])
 for line in bad:
  path.write_text(line+'\n');r=subprocess.run([str(p/'indexed-event-export'),str(path)],capture_output=True,text=True);assert r.returncode==1 and ':1:' in r.stderr
report=dict(status='87 indexed events match original inventory degrees and contiguous prior pages',records=87,prior_labels=sum(len(x['sourceLabels'])+len(x['targetLabels']) for x in rows),negative_cases=len(bad),sha256=hashlib.sha256((p/'indexed87.jsonl').read_bytes()).hexdigest())
(p/'indexed_audit.json').write_text(json.dumps(report,indent=2)+'\n');print(report)
