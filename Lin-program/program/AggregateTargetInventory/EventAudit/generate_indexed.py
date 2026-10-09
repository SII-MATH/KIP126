import json
from pathlib import Path
p=Path(__file__).resolve().parent;dag=json.loads((p/'dag.json').read_text());ev=[x for x in json.loads((p/'event-results.json').read_text()) if x['status']=='finite_nonzero_event'];pro=json.loads((p/'executable-batch-audit.json').read_text())['records'];(p/'indexed-batch').mkdir(exist_ok=True);audit=[]
for e,pr in zip(ev,pro):
 assert e['staircase_id']==pr['staircase_id'];a,t=dag['blocks'][e['root']]['center'];r=e['event_page'];b,u=a+r,t+r-1
 def labels(s,t):
  return [dict(page=q,center=dict(s=s,t=t),incoming=dict(s=s-q,t=t-q+1),outgoing=dict(s=s+q,t=t+q-1)) for q in range(2,r)]
 w=dict(version=1,sourceDegree=dict(s=a,t=t),targetDegree=dict(s=b,t=u),eventPage=r,sourceLabels=labels(a,t),targetLabels=labels(b,u),finite=json.loads((p/pr['file']).read_text()));assert all(l['incoming']['s']>=0 for l in w['sourceLabels']+w['targetLabels'])
 rid=e['staircase_id'];filename=f'indexed-batch/event{rid}.json';(p/filename).write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n');audit.append(dict(staircase_id=rid,file=filename,source=[a,t],target=[b,u],page=r,conditional_uses=e['conditional_uses']))
for index,start in enumerate(range(0,87,10)):
 lines=['import AggregateTargetInventory.EventAudit.Indexed',f'namespace AggregateTargetInventory.EventAudit.IndexedBatch{index}','open Indexed']
 for e in audit[start:start+10]:
  rid=e['staircase_id'];lines += [f'def event{rid} : Wire := indexed_event% "AggregateTargetInventory/EventAudit/{e["file"]}"',f'theorem event{rid}_valid : event{rid}.Valid := by lin_cert using ()']
 lines += [f'end AggregateTargetInventory.EventAudit.IndexedBatch{index}'];(p/f'IndexedBatch{index}.lean').write_text('\n'.join(lines)+'\n')
(p/'IndexedAll.lean').write_text('\n'.join(f'import AggregateTargetInventory.EventAudit.IndexedBatch{i}' for i in range(9))+'\n');(p/'indexed-audit.json').write_text(json.dumps(audit,indent=2)+'\n');print('87 exact indexed event wrappers generated')
