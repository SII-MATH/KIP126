#!/usr/bin/env python3
"""Check frozen handoffs, real round accounting, dependency DAG and file preservation."""
from pathlib import Path
from datetime import datetime, timezone
from collections import Counter
import hashlib, json
P=Path(__file__).resolve().parents[1]; R=P.parents[3]
def read(path):return json.loads((P/path).read_text())
def digest(path):return hashlib.sha256(path.read_bytes()).hexdigest()
m=read('data/math.json');deps=read('data/dependencies.json');checks=read('data/checks.json');judger=read('reviews/judger.json')
results=[]
def check(name,ok,detail=None):results.append({'name':name,'passed':bool(ok),'detail':detail})
check('正文恰为独立数学终审版本',digest(P/'data/math.json')==judger['math_sha256'])
check('独立数学终审已完成',judger['status']=='approved' and not judger['gaps'])
frozen={(x['dependency_id'],x['proposition_version']):x for x in judger['external_statements'] if x['status']=='approved'}
searches={n:{x['dependency_id']:x for x in read(f'data/search-round{n}.json')} for n in [1,2,3]}
verdicts={n:{x['dependency_id']:x for x in read(f'data/check-round{n}.json')} for n in [1,2,3]}
for d in deps:
 key=d['id'];h=hashlib.sha256(d['used_statement'].encode()).hexdigest()
 check('冻结命题未变 '+key,frozen[(key,d['proposition_version'])]['used_statement_sha256']==h)
 records=[x for x in checks if x['dependency_id']==key and x['proposition_version']==d['proposition_version']]
 check('最终核查唯一 '+key,len(records)==1)
 if not records:continue
 c=records[0];ns=[n for n in [1,2,3] if key in searches[n]];vs=[n for n in [1,2,3] if key in verdicts[n]]
 check('实际检索与独立核查轮次一致 '+key,ns==vs==list(range(1,len(c['rounds'])+1)),{'search':ns,'check':vs,'final':len(c['rounds'])})
 check('核查的完整命题哈希匹配 '+key,c.get('used_statement_sha256')==h)
 for n in vs:
  v=verdicts[n][key]
  if v.get('semantic_status')=='通过':check('通过即停止 '+key,n==len(c['rounds']))
 if c['semantic_status']=='未通过':check('最终失败有三轮 '+key,len(c['rounds'])==3)
steps=[s for chapter in m['chapters'] for s in chapter['steps']];ids={s['id'] for s in steps};edges=[]
for s in steps:
 for parent in s['depends_on']:
  check('内部依赖存在 '+s['id']+' '+parent,parent in ids);edges.append({'from':parent,'to':s['id'],'kind':'internal'})
for o in m['reference_occurrences']:edges.append({'from':o['dependency_id'],'to':o.get('step_id',o.get('block_id')),'kind':'external','occurrence_id':o['id']})
visiting=set();done=set();byid={s['id']:s for s in steps}
def visit(x):
 if x in visiting:raise ValueError('cycle: '+x)
 if x in done:return
 visiting.add(x)
 for y in byid[x]['depends_on']:visit(y)
 visiting.remove(x);done.add(x)
try:
 for s in steps:visit(s['id'])
 check('内部证明依赖图无环',True)
except ValueError as e:check('内部证明依赖图无环',False,str(e))
graph={'math_sha256':digest(P/'data/math.json'),'target':m['target']['id'],'conclusion':m['conclusion']['id'],'nodes':[{'id':s['id'],'title':s['title'],'kind':'internal'} for s in steps]+[{'id':d['id'],'title':d['name'],'kind':'external'} for d in deps],'edges':edges,'closing_step':steps[-1]['id']}
(P/'data/proof-graph.json').write_text(json.dumps(graph,ensure_ascii=False,indent=2)+'\n')
initial=read('records/initial-state.json');changed=[]
for path,expected in initial['protected_hashes'].items():
 f=R/path
 if not f.is_file() or digest(f)!=expected:changed.append(path)
check('所有既有受保护文件保持原样',not changed,{'protected_files':len(initial['protected_hashes']),'changed':changed})
out={'executed_at':datetime.now(timezone.utc).isoformat(),'checks':results,'passed':sum(x['passed'] for x in results),'total':len(results),'statistics':{'dependencies':len(deps),'occurrences':len(m['reference_occurrences']),'rounds':sum(len(c['rounds']) for c in checks),'states':dict(Counter(c['semantic_status'] for c in checks))}}
(P/'records/handoff-validation.json').write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
print(json.dumps({'passed':out['passed'],'total':out['total'],'failures':[x for x in results if not x['passed']]},ensure_ascii=False))
raise SystemExit(0 if out['passed']==out['total'] else 1)
