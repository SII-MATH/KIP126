import hashlib,json,pathlib
p=pathlib.Path(__file__).resolve().parent;src=p.parent/'AggregateTargetInventory/EventAudit'
finite=[json.loads(x) for x in (p/'all87.jsonl').read_text().splitlines()]
events=[e for e in json.loads((src/'event-results.json').read_text()) if e['status']=='finite_nonzero_event'];blocks=json.loads((src/'source.json').read_text())['blocks']
records=[]
for f,e in zip(finite,events,strict=True):
 s,t=blocks[e['root']]['center'];r=e['event_page'];target=(s+r,t+r-1)
 def d(x):return dict(s=x[0],t=x[1])
 def labels(center):
  a,b=center
  return [dict(page=k,center=d(center),incoming=d((a-k,b-k+1)),outgoing=d((a+k,b+k-1))) for k in range(2,r)]
 records.append(dict(version=1,sourceDegree=d((s,t)),targetDegree=d(target),eventPage=r,sourceLabels=labels((s,t)),targetLabels=labels(target),finite=f))
(p/'indexed87.input.jsonl').write_text(''.join(json.dumps(x,sort_keys=True,separators=(',',':'))+'\n' for x in records))
