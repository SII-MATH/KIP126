import hashlib,json,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent
names=['Data.lean','source.json'];before={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
subprocess.run(['python3',str(p/'generate.py')],check=True)
assert before=={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
s=json.loads((p/'source.json').read_text());dag=json.loads((r/'AllClaimTrajectoryAudit/shared-dag.json').read_text());out=[]
for item in s['candidates']:
 seen=set();unknown=set()
 def visit(k):
  if k in seen:return
  seen.add(k);b=dag['blocks'][k]
  unknown.update(rk for rk in b['rows'] if dag['rows'][rk]['unknown'])
  for pred in b['predecessors']:visit(pred)
 visit(item['target_predecessor'])
 out.append(dict(candidate=item['row_ref'],status=item['status'],all_unknown_dependencies=sorted(unknown),ceta_present='S0:15,139:d3:row3076' in unknown,c2_present='S0:17,140:d3:row3143' in unknown,completed_blocks=sorted(seen&s['blocks'].keys())))
uses=[]
for K,b in s['blocks'].items():
 assert all(pred in s['blocks'] for pred in b['predecessors'])
 for u in b['uses']:
  if u['kind'].startswith('conditional'):
   uses.append(dict(block=K,**u))
   assert (K,u['row']) in [('S0:15,139:d3',[3076,'1,3',None,9000]),('S0:20,142:d3',[3143,'0',None,9000]),('S0:17,140:d3',[3143,'0',None,9000]),('S0:14,138:d3',[3005,'2',None,9000]),('S0:17,140:d3',[3005,'2',None,9000])]
  if u['kind']=='checked_zero_codomain':assert s['blocks'][u['target_predecessor']]['wire']['h']==0
assert len(uses)==5
assert s['blocks']['S0:20,142:d3']['wire']['incoming']==[False]
assert len(out)==31 and sum(x['status']=='unresolved' for x in out)==14
(p/'dependency-status.json').write_text(json.dumps(dict(conditional_uses=uses,candidates=out),indent=2)+'\n')
print('383 complete comparisons; Ceta/C2/prefix exact override uses; 17/14 statuses retained')
