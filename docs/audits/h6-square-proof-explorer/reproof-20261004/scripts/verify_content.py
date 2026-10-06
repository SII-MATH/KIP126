#!/usr/bin/env python3
"""Check data consistency without changing mathematical or audit statements."""
from pathlib import Path
from datetime import datetime, timezone
import hashlib
import json
import re

ROOT = Path(__file__).resolve().parents[1]
data = {name: json.loads((ROOT / 'data' / (name + '.json')).read_text()) for name in ['math', 'dependencies', 'checks', 'review', 'metadata']}
math, deps, formal = data['math'], data['dependencies'], data['checks']
checks = []

def check(name, test, detail=None):
    record = {'name': name, 'passed': bool(test)}
    if detail is not None:
        record['detail'] = detail
    checks.append(record)

check('独立目标和结论', bool(math.get('target', {}).get('paragraphs')) and bool(math.get('conclusion', {}).get('paragraphs')))
check('数学章节非空', bool(math.get('chapters')) and all(chapter.get('steps') for chapter in math['chapters']))
check('稳定依赖编号唯一', len({dep['id'] for dep in deps}) == len(deps))
check('读者引用编号唯一', len({dep['number'] for dep in deps}) == len(deps))
blocks = [math.get('target', {}), dict(math.get('notation', {}), id=math.get('notation', {}).get('id', 'notation'))]
blocks += [step for chapter in math.get('chapters', []) for step in chapter['steps']]
blocks += [math.get('conclusion', {})]
block_ids = [block['id'] for block in blocks if block.get('id')]
check('正文锚点唯一', len(block_ids) == len(set(block_ids)))
dep_ids = {dep['id'] for dep in deps}
expected = []
for block in blocks:
    for paragraph_index, paragraph in enumerate(block.get('paragraphs', [])):
        text = paragraph if isinstance(paragraph, str) else paragraph['text']
        for match in re.finditer(r'\[\[(EXT-\d+)\]\]', text):
            expected.append((match[1], block['id'], paragraph_index))
        cleaned = re.sub(r'\[\[EXT-\d+\]\]', '', text)
        forbidden = re.findall(r'\b(?:STEP|EXT|INT)-\d+|本\s*demo|Reasoner|Judger|Checker|Maker|Master|Searcher|审查通过|核查未通过|MainPaper/|Git 版本', cleaned)
        check('正文纯净 ' + block.get('id', '?') + ':' + str(paragraph_index), not forbidden, forbidden or None)
occurrences = math.get('reference_occurrences', [])
actual = [(occ['dependency_id'], occ.get('step_id', occ.get('block_id')), occ['paragraph_index']) for occ in occurrences]
check('引用出现位置逐项一致', sorted(expected) == sorted(actual))
check('引用出现锚点唯一', len({occ['id'] for occ in occurrences}) == len(occurrences))
check('无悬空引用', all(dep_id in dep_ids for dep_id, _, _ in expected))
check('无未使用依赖', {item[0] for item in expected} == dep_ids)
for dep in deps:
    key = dep['id']
    check('固定命题内容 ' + key, bool(dep.get('used_statement')) and bool(dep.get('proposition_version')))
    check('有可读短标题 ' + key, bool(dep.get('name')))
    check('命题来源 ' + key, bool(dep.get('sources')))
    candidates = [item for item in formal if item['dependency_id'] == key and item['proposition_version'] == dep['proposition_version']]
    check('匹配版本唯一核查 ' + key, len(candidates) == 1)
    if not candidates:
        continue
    item = candidates[-1]
    status, rounds = item.get('semantic_status'), item.get('rounds', [])
    check('合法语义状态 ' + key, status in ['通过', '未找到', '未通过', '核查未完成'])
    check('关键原因和形式化状态独立 ' + key, bool(item.get('short_reason')) and bool(item.get('formal_status')) and bool(item.get('full_reason')))
    check('最多三轮 ' + key, len(rounds) <= 3)
    if status == '未通过':
        check('最终未通过须三轮 ' + key, len(rounds) == 3)
    if status == '通过':
        check('通过有候选和执行轮次 ' + key, bool(item.get('candidates')) and bool(rounds))
    if status == '未找到':
        check('未找到有实际检索 ' + key, bool(rounds))
check('不存在未知依赖核查', all(item['dependency_id'] in dep_ids for item in formal))
payload = (ROOT / 'web/data.js').read_text()
packaged = json.loads(payload.split('window.EXPLORER = ', 1)[1].removesuffix(';\n'))
check('网页数据与分层来源完全一致', packaged == data)
result = {'executed_at': datetime.now(timezone.utc).isoformat(), 'checks': checks, 'passed': sum(item['passed'] for item in checks), 'total': len(checks), 'statistics': {'dependencies': len(deps), 'reference_occurrences': len(occurrences), 'rounds': sum(len(item.get('rounds', [])) for item in formal)}, 'data_sha256': {name: hashlib.sha256((ROOT / 'data' / (name + '.json')).read_bytes()).hexdigest() for name in data}}
(ROOT / 'records').mkdir(exist_ok=True)
(ROOT / 'records/content-validation.json').write_text(json.dumps(result, ensure_ascii=False, indent=2))
failures = [item for item in checks if not item['passed']]
print(json.dumps({'passed': result['passed'], 'total': result['total'], 'failures': failures}, ensure_ascii=False))
raise SystemExit(1 if failures else 0)
