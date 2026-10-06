# 实际验证结果

验证记录生成于 2026-10-04T09:48:59.091084+00:00。

数学正文为五章、三十个推导节点，66 处引用、27 项去重外部输入。独立 Judger 已批准主链闭合，数学缺口为空。准确范围、修订和外部完整性依据见 [数学审查](reviews/math-review.md)。

| Lean 语义对应状态 | 数量 |
| --- | ---: |
| 通过 | 10 |
| 未通过 | 17 |
| 未找到 | 0 |
| 核查未完成 | 0 |

共执行 64 个命题版本的检索／独立核查轮次。所有最终未通过项均完成三轮；通过项在通过时停止。冻结命题逐项哈希匹配，核查没有反向修改数学命题。绿色表示语义对应，不表示完成无条件形式化证明。

| 实际验证 | 结果与记录 |
| --- | --- |
| 正文纯净、引用、版本、状态与打包一致性 | 310/310，[完整记录](records/content-validation.json) |
| 数学冻结、轮次、依赖图和原文件保留 | 189/189，[完整记录](records/handoff-validation.json) |
| Chromium 离线真实交互 | 843/843，[完整记录](records/browser-validation.json) |
| 本地 HTTP 与源码链接 | 5/5 HTTP 200，[完整记录](records/http-validation.json) |
| 来源路径 | 43 个本地来源路径均存在，[记录](records/source-links.json) |
| Lean 候选检查 | 127 个 `#check`、7 个 `#print axioms`、5 个精确关系成员求值，最终退出码 0，[输入](records/LeanAllCandidates.lean)、[输出](records/lean-all-candidates.log) |
| 最终定理与接口实例 | 实际检查显示最终定理依赖 `sorryAx` 和 `Main.Axiom.challenge2`；接口构造依赖 `sorryAx`，[输出](records/lean-inspection-approved.log) |

浏览器在 1440×1000、390×844、360×844 下检查五章、全部引用锚点、二十七项批注、原因首屏、默认折叠、搜索与筛选、正文与引用往返、滚动和焦点恢复、公式与横向溢出。离线执行未发起外网资源请求。实际截图覆盖 [初始页](records/preview-desktop.png)、[中段](records/preview-middle.png)、[结论](records/preview-conclusion.png)、[批注](records/preview-annotation.png)、[总览](records/preview-references.png) 和 [手机](records/preview-mobile.png)。

验证发现过的显示问题已修复：表末尾 TeX 注释、多位下标和高过滤表的数学定界；这些显示修复只修改经数学侧复核的可读派生字段。独立完成审查还修正了平方差定义的符号，并补充微分次数和连接延伸记号；数学侧重新审定为 math-v2，二十七项固定外部命题逐字未变。新旧数学正文及具体修订保存在 `records/math-before-completion-audit.json` 和 `records/completion-math-audit.json`，独立批准见 `records/completion-judger-audit.json`。初始失败和中间记录保留在 `records/browser-*initial*`、`records/browser-*display-fixed*`。本地 HTTP 测试先遇沙箱 socket 限制，再遇环境代理影响；自动审查批准后以无代理回环连接完成检查。

未执行全仓 clean build；Lean 运行使用现有编译产物，不能代替完整传递源码一致性审计。初始 Lean 检查误用了遗留编译入口，随后补齐当前候选的实际模块导入，失败日志与最终成功日志均保留。上述运行检查不证明接口假设，也不把 CSV 关系的计算成功当作实际 Ext 的语义比较。

开始时记录的 2044 个受保护文件哈希全部保持一致，包括论文、Lean 源码、旧 demo 和旧 reader。原有工作区改动没有覆盖。最终状态见 `records/final-state.json`。
