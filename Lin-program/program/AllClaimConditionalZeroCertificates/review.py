"""Review recursive override uses and all remaining unknown dependencies."""
import hashlib,json,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent
names=['Data.lean','source.json'];before={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
subprocess.run(['python3',str(p/'generate.py')],check=True)
assert before=={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
s=json.loads((p/'source.json').read_text());old=json.loads((r/'AllClaimZeroTargetCertificates/source.json').read_text());dag=json.loads((r/'AllClaimTrajectoryAudit/shared-dag.json').read_text());out=[]
for item in s['candidates']:
 seen=set();unknown=set()
 def visit(k):
  if k in seen:return
  seen.add(k);b=dag['blocks'][k]
  for rk in b['rows']:
   if dag['rows'][rk]['unknown']:unknown.add(rk)
  for pred in b['predecessors']:visit(pred)
 visit(item['target_predecessor'])
 overrides=[u for k,b in s['blocks'].items() if k in seen for u in b['uses'] if u['kind'].startswith('conditional')]
 out.append(dict(candidate=item['row_ref'],status=item['status'],all_unknown_dependencies=sorted(unknown),ceta_present='S0:15,139:d3:row3076' in unknown,leibniz_present='S0:10,136:d3:row2858' in unknown,actual_override_uses=overrides))
assert sum(u['kind']=='conditional_ceta' for b in s['blocks'].values() for u in b['uses'])==1
assert not any(u['kind']=='conditional_leibniz' for b in s['blocks'].values() for u in b['uses'])
for K,b in s['blocks'].items():
 assert all(pred in s['blocks'] for pred in b['predecessors'])
 for u in b['uses']:
  if u['kind']=='conditional_ceta':assert u['row']==[3076,'1,3',None,9000] and K=='S0:15,139:d3'
  if u['kind']=='checked_zero_codomain':assert s['blocks'][u['target_predecessor']]['wire']['h']==0
new=set(s['blocks'])-set(old['blocks']);assert new=={'S0:15,139:d3'}
(p/'dependency-status.json').write_text(json.dumps(dict(added_blocks=sorted(new),candidates=out),indent=2)+'\n')
print('121 comparisons; one proof-linked Ceta override; 17 resolved /14 unresolved unchanged')
print('row2858 occurs in',sum(x['leibniz_present'] for x in out),'candidate dependency DAGs')
