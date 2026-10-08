# h₆² 非零永久存活证明阅读器

打开 [web/index.html](web/index.html) 即可离线阅读。公式、字体和数据均随目录提供，不需要安装前端依赖。

也可在项目根目录运行：

```bash
python3 docs/audits/h6-square-proof-explorer/reproof-20261004/serve.py
```

终端会输出本地网址。服务器只监听 `127.0.0.1`；网页内的仓库源码链接需要保留此目录相对于项目根目录的位置。

正文覆盖二完备球谱的模二 Adams 谱序列中，`h₆² ∈ E₂^{2,128}` 的全部出射消失、无入射、非零极限类及其同伦检测。五章共三十个推导节点，目标与结论独立于步骤编号。所需内部论证包括选择无关性、过滤误差、Massey/Toda 不定性、对每个代表元成立的延伸、广义 Mahowald 论证的所需特化，以及余纤维中全部短入射的排除。后续流形应用不在此阅读器范围内。

数学终审已批准该证明在二十七项明确外部输入下闭合。计算表和文献定理仍是外部输入；审查没有重新证明全部外部定理或重跑原程序的完整计算。完整计算范围的依据及原文中采用充分弱化的推论，见 [数学审查](reviews/math-review.md)。

页面将数学正文、四块简明批注和默认折叠的证据分开。绿色仅表示本处固定命题与当前 Lean 内容语义对应；命题定义、接口假设和含 `sorry` 的结果也可能语义对应，它们的证明状态单独列出。

## 文件与记录

- [proof.zh.md](proof.zh.md)：纯数学中文证明。
- [data/math.json](data/math.json)：正文、章节及每处引用；[data/proof-graph.json](data/proof-graph.json)：内部和外部依赖图。
- [data/dependencies.json](data/dependencies.json)：固定命题、可读摘要与来源；历史粒度调整单独保存在 `dependencies-history.json`。
- [data/checks.json](data/checks.json)：最终语义对应与形式化状态；`search-round*.json`、`check-round*.json`：实际逐轮记录。
- [reviews/judger.json](reviews/judger.json)：独立数学审查、修订、冻结命题与正文哈希。
- [records/orchestration.json](records/orchestration.json)：实际多智能体分工及交接。Master 同时分角色承担 Searcher；数学侧没有接收形式核查反馈。
- [VALIDATION.md](VALIDATION.md)：实际验证结果、统计和执行限制。
- [records/completion-audit.json](records/completion-audit.json)：对原始十三部分要求的完成复核及当前版本证据；数学全文复核、三处修订复核、形式化协议复核分别由独立角色执行。
- [UNRESOLVED.md](UNRESOLVED.md)：未匹配的命题及未完成形式化部分。

原始 Lean 类型及其词法上下文按检索时源码保存。当前工作区以提交 `e4b916b1ae0889a8f6c053aa27eba52f078a4b22` 为基点；开始时已有的改动列在 `records/initial-state.json`。当前架构依据源码核实，见 `data/metadata.json`。未修改论文或 Lean 数学声明、接口、公理与证明；旧 demo、旧 reader 和既有改动均保留。

## 重新验证

在项目根目录运行：

```bash
python3 docs/audits/h6-square-proof-explorer/reproof-20261004/scripts/export_math.py
python3 docs/audits/h6-square-proof-explorer/reproof-20261004/scripts/build_web.py
python3 docs/audits/h6-square-proof-explorer/reproof-20261004/scripts/verify_content.py
python3 docs/audits/h6-square-proof-explorer/reproof-20261004/scripts/verify_handoffs.py
python3 docs/audits/h6-square-proof-explorer/reproof-20261004/scripts/verify_browser.py
```

最后一项需要 Python Playwright 与 Chromium；只读网页不需要这些工具。验证输出写入 `records/`。Lean 检查源文件和实际输出也保存在该目录；它们使用现有编译产物，不等于全仓干净重建或完整依赖审计。

当前正文为独立复核后的 `math-v2`。新增的微分与连接延伸定义，以及平方差定义的符号修正，见 [限定修订的独立审查](records/completion-judger-audit.json)。二十七项外部命题及其版本未变；`records/math-before-completion-audit.json` 保留旧正文。`math-work/build.py` 是历史工作稿，不是当前数据的重建入口；上面的导出与打包脚本只读取已审定的 `data/`。
