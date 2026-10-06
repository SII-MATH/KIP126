from pathlib import Path
import json,re,hashlib
P=Path(__file__).resolve().parents[1];ROOT=P.parents[3]
def read(s): return json.loads((P/s).read_text())
math=read('data/math.json');deps=read('data/dependencies.json');checks=read('data/checks.json');judger=read('reviews/judger.json');results=[]
def ck(name,condition): results.append({'name':name,'passed':bool(condition)})
ck('数学终稿经独立审查',judger['status']=='approved' and not judger['mathematical_gaps'])
ck('独立目标和结论',math['target']['id']=='target' and math['conclusion']['id']=='conclusion')
ck('三个自然章节',len(math['chapters'])==3)
dmap={d['id']:d for d in deps};cmap={c['dependency_id']:c for c in checks};ck('依赖去重',len(dmap)==len(deps));ck('核查逐项覆盖',set(dmap)==set(cmap))
seen=[]
for ch in math['chapters']:
 for st in ch['steps']:
  for n,p in enumerate(st['paragraphs']):
   seen.extend((m.group(1),st['id'],n) for m in re.finditer(r'\[\[(EXT-\d+)\]\]',p))
ck('引用位置与正文完全一致',seen==[(r['dependency_id'],r['step_id'],r['paragraph_index']) for r in math['reference_occurrences']])
alltext='\n'.join([*math['target']['paragraphs'],*math['notation']['paragraphs'],*[p for ch in math['chapters'] for st in ch['steps'] for p in st['paragraphs']],*math['conclusion']['paragraphs']])
pure=re.sub(r'\[\[EXT-\d+\]\]','',alltext)
ck('正文不含执行或审计字段',not re.search(r'本 demo|本次任务|本轮|页面实现|Master|Reasoner|Judger|Searcher|Checker|Maker|审查通过|核查|检索|STEP-\d|INT-\d|EXT-\d|MainPaper/|\.lean|Git',pure))
ck('正文无渲染残留',not any(s in pure for s in ['&#x20;','**','`']))
ck('没有误报全h6定理完成','h_6^2' not in pure)
for d in deps:
 c=cmap[d['id']];ck(d['id']+'命题版本匹配',d['version']==c['proposition_version'])
 ck(d['id']+'数学命题已审定',d['math_review']['status']=='approved')
 ck(d['id']+'轮数符合规则',1<=len(c['rounds'])<=3)
 ck(d['id']+'失败有三轮',c['semantic_status']!='未通过' or len(c['rounds'])==3)
 ck(d['id']+'无待核查',c['semantic_status']!='核查未完成')
 ck(d['id']+'状态理由与证明状态分开',all(c.get(k) for k in ['short_reason','full_reason','formal_status']))
 for rnd in c['rounds']:
  rows=read('data/search-round'+str(rnd['round'])+'.json');ck(d['id']+'第'+str(rnd['round'])+'轮有实际检索',any(x['dependency_id']==d['id'] and x['proposition_version']==d['version'] for x in rows))
 for s in d.get('sources',[]): ck(d['id']+'来源存在 '+s['path'],(ROOT/s['path']).is_file())
for f,h in judger['final_prose_review']['artifact_sha256'].items():ck('数学审定哈希 '+f,hashlib.sha256((P/f).read_bytes()).hexdigest()==h)
initial=read('records/initial-state.json');mismatches=[f for f,h in initial['protected_hashes'].items() if not (ROOT/f).is_file() or hashlib.sha256((ROOT/f).read_bytes()).hexdigest()!=h]
ck('论文/Lean/旧demo保持原样',not mismatches)
result={'checks':results,'passed':sum(r['passed'] for r in results),'total':len(results),'protected_file_count':len(initial['protected_hashes']),'protected_mismatches':mismatches,'statistics':{'dependencies':len(deps),'reference_occurrences':len(seen),'rounds':sum(len(c['rounds']) for c in checks),'statuses':{s:sum(c['semantic_status']==s for c in checks) for s in ['通过','未找到','未通过','核查未完成']}}}
(P/'records/content-validation.json').write_text(json.dumps(result,ensure_ascii=False,indent=2));print(json.dumps({k:v for k,v in result.items() if k!='checks'},ensure_ascii=False));assert all(r['passed'] for r in results),[r for r in results if not r['passed']]
