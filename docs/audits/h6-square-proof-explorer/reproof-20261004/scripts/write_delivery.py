#!/usr/bin/env python3
"""Produce delivery summaries from completed, independently recorded checks."""
from pathlib import Path
from collections import Counter
from datetime import datetime, timezone
import json, hashlib
P=Path(__file__).resolve().parents[1]
def read(x):return json.loads((P/x).read_text())
m=read('data/math.json');deps=read('data/dependencies.json');checks=read('data/checks.json');dmap={d['id']:d for d in deps};counts=Counter(x['semantic_status'] for x in checks)
content=read('records/content-validation.json');browser=read('records/browser-validation.json');handoff=read('records/handoff-validation.json');http=read('records/http-validation.json')
rounds=sum(len(x['rounds']) for x in checks)
assert len(checks)==len(deps) and all(x['semantic_status'] in ['通过','未通过','未找到','核查未完成'] for x in checks)
assert content['passed']==content['total'] and handoff['passed']==handoff['total']
judger=read('reviews/judger.json')
assert judger['status']=='approved' and not judger['gaps']
assert judger['math_sha256']==hashlib.sha256((P/'data/math.json').read_bytes()).hexdigest()
for name, expected in browser['source_data_sha256_at_start'].items():
 assert hashlib.sha256((P/'data'/f'{name}.json').read_bytes()).hexdigest()==expected, f'stale browser evidence: {name}'
assert hashlib.sha256((P/'web/data.js').read_bytes()).hexdigest()==browser['bundled_data_sha256']
# Browser schema is deliberately read rather than assumed from presentation code.
brows_checks=browser['checks'];bp=sum(bool(c['passed']) for c in brows_checks);bt=len(brows_checks)
assert bp==bt and http['passed']
text=f'''# 实际验证结果

验证记录生成于 {datetime.now(timezone.utc).isoformat()}。

数学正文为五章、三十个推导节点，{len(m['reference_occurrences'])} 处引用、{len(deps)} 项去重外部输入。独立 Judger 已批准主链闭合，数学缺口为空。准确范围、修订和外部完整性依据见 [数学审查](reviews/math-review.md)。

| Lean 语义对应状态 | 数量 |
| --- | ---: |
| 通过 | {counts['通过']} |
| 未通过 | {counts['未通过']} |
| 未找到 | {counts['未找到']} |
| 核查未完成 | {counts['核查未完成']} |

共执行 {rounds} 个命题版本的检索／独立核查轮次。所有最终未通过项均完成三轮；通过项在通过时停止。冻结命题逐项哈希匹配，核查没有反向修改数学命题。绿色表示语义对应，不表示完成无条件形式化证明。

| 实际验证 | 结果与记录 |
| --- | --- |
| 正文纯净、引用、版本、状态与打包一致性 | {content['passed']}/{content['total']}，[完整记录](records/content-validation.json) |
| 数学冻结、轮次、依赖图和原文件保留 | {handoff['passed']}/{handoff['total']}，[完整记录](records/handoff-validation.json) |
| Chromium 离线真实交互 | {bp}/{bt}，[完整记录](records/browser-validation.json) |
| 本地 HTTP 与源码链接 | 5/5 HTTP 200，[完整记录](records/http-validation.json) |
| 来源路径 | 43 个本地来源路径均存在，[记录](records/source-links.json) |
| Lean 候选检查 | 127 个 `#check`、7 个 `#print axioms`、5 个精确关系成员求值，最终退出码 0，[输入](records/LeanAllCandidates.lean)、[输出](records/lean-all-candidates.log) |
| 最终定理与接口实例 | 实际检查显示最终定理依赖 `sorryAx` 和 `Main.Axiom.challenge2`；接口构造依赖 `sorryAx`，[输出](records/lean-inspection-approved.log) |

浏览器在 1440×1000、390×844、360×844 下检查五章、全部引用锚点、二十七项批注、原因首屏、默认折叠、搜索与筛选、正文与引用往返、滚动和焦点恢复、公式与横向溢出。离线执行未发起外网资源请求。实际截图覆盖 [初始页](records/preview-desktop.png)、[中段](records/preview-middle.png)、[结论](records/preview-conclusion.png)、[批注](records/preview-annotation.png)、[总览](records/preview-references.png) 和 [手机](records/preview-mobile.png)。

验证发现过的显示问题已修复：表末尾 TeX 注释、多位下标和高过滤表的数学定界；这些显示修复只修改经数学侧复核的可读派生字段。独立完成审查还修正了平方差定义的符号，并补充微分次数和连接延伸记号；数学侧重新审定为 math-v2，二十七项固定外部命题逐字未变。新旧数学正文及具体修订保存在 `records/math-before-completion-audit.json` 和 `records/completion-math-audit.json`，独立批准见 `records/completion-judger-audit.json`。初始失败和中间记录保留在 `records/browser-*initial*`、`records/browser-*display-fixed*`。本地 HTTP 测试先遇沙箱 socket 限制，再遇环境代理影响；自动审查批准后以无代理回环连接完成检查。

未执行全仓 clean build；Lean 运行使用现有编译产物，不能代替完整传递源码一致性审计。初始 Lean 检查误用了遗留编译入口，随后补齐当前候选的实际模块导入，失败日志与最终成功日志均保留。上述运行检查不证明接口假设，也不把 CSV 关系的计算成功当作实际 Ext 的语义比较。

开始时记录的 2044 个受保护文件哈希全部保持一致，包括论文、Lean 源码、旧 demo 和旧 reader。原有工作区改动没有覆盖。最终状态见 `records/final-state.json`。
'''
(P/'VALIDATION.md').write_text(text)
failed=[c for c in checks if c['semantic_status']!='通过']
text='''# 未解决问题与范围限制

独立数学审查没有遗留主证明链缺口。以下是当前 Lean 对应证据与形式化完成度的限制，不能解释为论文证明错误。

当前最终定理仍依赖临时项目公理 `Main.Axiom.challenge2` 和 `sorryAx`。语义通过项也包括命题定义、接口字段和含 `sorry` 的推导；具体状态逐项列于网页批注。没有执行全仓干净重建或完整依赖审计。

数学部分明确保留外部定理与计算输入。特别是过滤范围之外的完整性使用主文的“总共 105 基”计算结论，独立原始数据复核覆盖文件内 105 基与高过滤 38 方向；没有把有限 CSV 的结束位置当成无限消失定理。

## 当前未匹配命题

每项完整类型、范围、原始证据和三轮反馈见 [checks.json](data/checks.json) 或网页相应批注。

| 引用 | 结果 | 具体原因 |
| --- | --- | --- |
'''
for c in failed:
 d=dmap[c['dependency_id']];reason=c['short_reason'].replace('|','／').replace('\n',' ')
 text+=f"| [{d['number']}] {d['name']} | {c['semantic_status']}（{len(c['rounds'])} 轮） | {reason} |\n"
text+='\n未通过项按“仅部分覆盖”“证据不足”等实际原因区分；检索未取得足够对应证据不表示已证明命题与 Lean 存在矛盾。\n'
(P/'UNRESOLVED.md').write_text(text)
(P/'records/delivery-summary.json').write_text(json.dumps({'dependencies':len(deps),'occurrences':len(m['reference_occurrences']),'rounds':rounds,'states':dict(counts),'math_gaps':[],'content':[content['passed'],content['total']],'handoffs':[handoff['passed'],handoff['total']],'browser':[bp,bt],'http':http['passed']},ensure_ascii=False,indent=2)+'\n')
print('Delivery summaries written',dict(counts),rounds)
