import json,hashlib
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parents[1];producer=r/'FiniteEventProducer';wire=[json.loads(l) for l in (producer/'all87.jsonl').read_text().splitlines()];events=[x for x in json.loads((p/'event-results.json').read_text()) if x['status']=='finite_nonzero_event'];traces={x['staircase_id']:x for x in json.loads((p/'trajectory-cycles.json').read_text())};dag=json.loads((p/'dag.json').read_text());source=json.loads((p/'source.json').read_text());assert len(wire)==len(events)==87
(p/'executable-batch').mkdir(exist_ok=True);report=[]
for line,(w,e) in enumerate(zip(wire,events),1):
 rid=e['staircase_id'];trace=traces[rid];assert w['event']==source['blocks'][e['root']]['wire']
 for ep in trace['endpoints']:
  field=ep['endpoint'];ss,tt=ep['degree'];n=len(dag['degrees'][f'S0:{ss},{tt}']['e2']);assert w['raw'+field.capitalize()]==[i in ep['raw_local_indices'] for i in range(n)]
  assert w[field]==[bool(x) for x in e[field+'_coordinates']]
  assert w[field+'Stages']==[dict(wire=source['blocks'][s['comparison']]['wire'],representative=[bool(x) for x in s['coordinates']]) for s in ep['prior_stages']]
 filename=f'executable-batch/event{rid}.json';(p/filename).write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n');report.append(dict(line=line,staircase_id=rid,file=filename,root=e['root'],conditional_uses=e['conditional_uses']))
for index,start in enumerate(range(0,87,10)):
 lines=['import AggregateTargetInventory.EventAudit.Executable',f'namespace AggregateTargetInventory.EventAudit.ExecutableBatch{index}','open Executable']
 for e in report[start:start+10]:
  rid=e['staircase_id'];lines += [f'def event{rid} : Wire := finite_event% "AggregateTargetInventory/EventAudit/{e["file"]}"',f'theorem event{rid}_valid : event{rid}.Valid := by lin_cert using ()']
 lines += [f'end AggregateTargetInventory.EventAudit.ExecutableBatch{index}'];(p/f'ExecutableBatch{index}.lean').write_text('\n'.join(lines)+'\n')
(p/'ExecutableAll.lean').write_text('\n'.join(f'import AggregateTargetInventory.EventAudit.ExecutableBatch{i}' for i in range(9))+'\n')
(p/'executable-batch-audit.json').write_text(json.dumps(dict(producer_sha256=hashlib.sha256((producer/'all87.jsonl').read_bytes()).hexdigest(),records=report),indent=2)+'\n');print('87 producer wires exactly match eventID,raw E2 vectors,full path matrices and conditional provenance')
