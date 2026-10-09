"""Numerical candidate-completion probe; no original inputs are mutated."""
import collections,hashlib,json,pathlib
p=pathlib.Path(__file__).resolve().parent;r=p.parent;up=r/'AggregateD4Conditional'
base=(up/'generate.py').read_text().split("def tag(K):")[0]
base=base.replace("P=Path(__file__).resolve().parent;R=P.parent", "P=Path(INPUT_DIRECTORY);R=P.parent")
needle="  elif k==0:v=[];kind='checked_zero_codomain'"
replace="  elif (o,s,t,r,rid,base,diff,level)==('S0',6,132,3,2574,'0',None,9997):v=project(o,s+r,t+r-1,r,bits(CANDIDATE_RAW,len(e2(o,s+r,t+r-1))));kind='conditional_row2574_candidate'\n"+needle
assert needle in base;base=base.replace(needle,replace)
reports=[]
for raw,coords in [('3',[0,0,1]),('2,3',[0,1,1])]:
 env=dict(__file__=str(p/'prototype.py'),INPUT_DIRECTORY=str(up),CANDIDATE_RAW=raw);exec(compile(base,'candidate-generator','exec'),env)
 output=[]
 for item in env['candidates']:
  row=item['raw']['event']['inventory_row'];eid=row['staircase_id'];e=item['raw']['event'];entry=dict(event=eid,status=item['status'])
  if item['status']!='complete_event_comparison':entry['reason']=item['reason'];output.append(entry);continue
  a,t=e['event_source'];page=e['event_page'];root=e['comparison'];w=env['cache'][root]['wire']
  try:
   src=row['base'] if row['status']=='stored_outgoing' else row['diff'];tgt=row['diff'] if row['status']=='stored_outgoing' else row['base'];b=(a+page,t+page-1)
   sv=env['project']('S0',a,t,page,env['bits'](src,len(env['e2']('S0',a,t))));tv=env['project']('S0',*b,page,env['bits'](tgt,len(env['e2']('S0',*b))))
   actual=[sum(w['outgoing'][i*w['m']+j]*sv[j] for j in range(w['m']))%2 for i in range(w['k'])]
   assert actual==tv and any(tv)
   entry.update(status='finite_nonzero_event',source=sv,target=tv)
  except (ValueError,AssertionError) as err:entry.update(status='event_rejected',reason=str(err))
  output.append(entry)
 report=dict(candidate_raw=raw,candidate_E3=coords,counts=dict(collections.Counter(x['status'] for x in output)),comparisons=len(env['cache']),affected=[x for x in output if x['event'] in [2696,2697,2852]],events=output,failures=env['failures'],candidate_uses=[x for x in env['attempted'] if x['kind']=='conditional_row2574_candidate'])
 (p/('branch_'+raw.replace(',','_')+'.json')).write_text(json.dumps(dict(blocks=env['cache'],candidate_uses=report['candidate_uses']),indent=2)+'\n')
 reports.append(report);print({k:report[k] for k in ['candidate_raw','counts','comparisons','affected']})
(p/'prototype.json').write_text(json.dumps(dict(input_sha256={f.name:hashlib.sha256(f.read_bytes()).hexdigest() for f in [up/'generate.py',up/'dag.json']},branches=reports),indent=2)+'\n')
