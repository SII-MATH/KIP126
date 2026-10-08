# Blueprint 维护说明

本文档是数学 Blueprint 与 Lean 代码之间的当前维护入口，记录截至
2026 年 10 月 8 日工作区中的组织方式和未完成事项。它不是证明完成度
证书。

旧版维护说明、来源修订、转录统计、程序覆盖审计和历史声明索引保存在
[归档版本](BLUEPRINT_MAINTENANCE-20261008.md)中。归档中的日期化
审计结果只用于追溯，不能视为本次已经重新执行的检查。

## 权威记录

| 主题 | 记录 |
| --- | --- |
| 项目范围、最终目标和验收标准 | [PROJECT_BOUNDARY.md](../../PROJECT_BOUNDARY.md) |
| 代码职责和证明阶段约束 | [AGENTS.md](../../AGENTS.md) |
| 数学对象、命题和证明依赖 | [Blueprint 源码](../../blueprint/src/content.tex) |
| 实际 Lean 声明和证明体 | [Lean 代码库](../../KIP126/) |
| 文献、计算来源、定位信息和产物哈希 | [external-inputs.json](../external-inputs.json) |

仓库清单和构建审计不属于数学依赖图。来源清单仍以
`docs/external-inputs.json` 为唯一注册表；本文档不复制其中的哈希，也不
建立第二套 Lean 来源注册表。

## 章节与代码职责

章节顺序由 `blueprint/src/content.tex` 决定，不由
`blueprint/src/chapters/` 下的文件数量决定。当前有六个正文
章节和一个数学附录。

| Blueprint 内容 | 主要职责 | `blueprint/src/chapters/` 中的源码 |
| --- | --- | --- |
| 第 1 章：数学背景 | Def：稳定同伦和 Adams 的共享数学结构 | `stable_homotopy`、`classical_adams`、`adams_tower_foundations` |
| 第 2 章：ESS 与比较基础 | Def：扩张、synthetic 和页面比较 machinery | `extension_spectral_sequences`、`synthetic_homotopy`、`synthetic_extensions`、`page_extensions`、`comparison_foundations` |
| 第 3 章：广义证明工具 | Main：使用共享定义和文献前提证明 Leibniz、Mahowald 和 stretching 规则 | `generalized_tools` |
| 第 4 章：文献定理 | Interface：带来源绑定的外部结果和比较 | `external_results` |
| 第 5 章：有限计算及其解释 | LinProgram：数据和局部证书；Interface：固定模型比较和认证义务 | `computation_schema`、`computed_inputs` |
| 第 6 章：(h_6^2) 非零永久存活 | Main：应用、推导出的计算事实、微分约化和最终证明 | `h6_statement`、`h6_target`、`kervaire_setup`、`near126` |
| 附录：基础构造和辅助引理 | Def 与 Mathlib 适配层：代数和谱序列的低层支撑 | `algebraic_foundations`、`spectral_sequences` |

这张表描述的是数学职责，不是目录之间的排他性映射。Def 同时拥有可复用
的定理和定义；LinProgram 同时拥有生成数据和局部数学证书；Interface 将
输入认证到 Def 的固定对象上；Main 消费一个相关联的 Challenge2 witness，
并证明论文的内部推论。

第 5 章和第 6 章的边界是“输入解释与认证”对“基于交付输入的推导”。
有限页面到达这类输入可以放在第 5 章；使用 incoming exclusion、尾部界或
filtration separation 推出的 permanence，则属于第 6 章。声明所在目录或
论文表格中的状态本身不能决定其数学职责。

## 仍需整理的对应关系

章节重排还没有完成每个节点的语义分类，当前仍有以下事项：

- `h6_statement.tex` 仍同时包含目标专用构造，以及可复用的 Milnor cobar、
  同调、完整 (h_i) 族和 permanence 定义。此前将 Adams tower 的通用部分
  移到第 1 章，但这份文件还可以继续细分。
- 第 5 章同时包含示例表、条件性 transport lemma 和实际认证义务。
  `SphereFacts`、`SphereHopfInput` 的链接指向 Main 所有的前提结构；它们
  不是这些前提的证明，也不是 Challenge2 的新增根字段。
- `generalized_tools.tex` 还包含局部 Moss、weight comparison 和 tmf 来源
  应用，文件范围比两个主要规则更宽。
- 有些节点还没有 Lean 链接；另一些只链接到命题定义或接口投影，没有链接
  到真正承担证明的定理。链接到一个声明名不等于证明已经完成。

后续修改应依据完整的命题、假设和证明责任分类节点，保留公开名称和稳定
标签；需要时同时链接命题声明和实际证明目标。不要因为文件名含有最终类
的名字就整体移动文件。第一章与附录的区分是阅读层次选择，不直接决定
证明状态。

## Challenge2 与当前信任边界

[Challenge2](../../KIP126/Interface/Challenge/Challenge2.lean) 只有两个相关联的
交付字段：`literature` 和 `computation`。两者都有 bindings 和 results；
computation 依赖同一个 literature delivery；presentation 是 computation
binding。内部应用不应成为新的根字段。

类型和装配骨架已经存在，但
[Interface.Solution.challenge2](../../KIP126/Interface/Solution/Challenge2.lean)
的两个交付仍使用 `sorry`。Main 当前消费临时的
[Main.Axiom.challenge2](../../KIP126/Main/Axiom/Challenge2.lean)，而不是已经
证明的 producer。Def 中固定球面的 applicability 和 filtration separation
也仍是
[Sequence/Proofs.lean](../../KIP126/Def/StageInput/StandardSphere/Sequence/Proofs.lean)
里的显式未完成义务。

最终 Challenge/Solution theorem pair 只有 `h6_sq_permanent`。应保留
[Challenge](../../KIP126/Main/Challenge/h6_sq_permanent.lean) 作为有意保留的
占位声明；[Solution](../../KIP126/Main/Solution/h6_sq_permanent.lean) 不得调用
该占位声明。证明体没有 `sorry`，也不代表依赖锥已经摆脱 `sorryAx` 或项目
公理。

当前终点是标准 (h_6^2) 的非零永久存活。几何 Kervaire 结论不在范围内；
选定路线需要的经典 (	heta_5/h_5^2) 文献仍在范围内。最终验收以
`PROJECT_BOUNDARY.md` 为准。

## 验证与状态更新

- `blueprint_frontier.py` 检查活动数学标签和依赖结构；其中的完成分类只是
  Blueprint 标记的投影，不是独立的 Lean 证明审计。
- `check_external_inputs.py` 检查清单覆盖、记录状态和接口字段；可选的 Lean
  检查会验证声明归属和字段类型，但两者都不能证明来源真实性。
- `check_source_inventory.py` 检查登记产物的路径和身份。重现、哈希一致和转录
  检查不能证明实际 Adams 微分或永久存活。
- Blueprint PDF/web 应通过仓库的多文件入口 `web.tex` 和 `print.tex` 构建。
  当前桌面单文件编译器不能加载项目的 include 文件；它报告的缺失文件不是
  完整项目构建的结果。
- 声明检查要求匹配的 Lean 编译产物。最终证明验收需要严格的编译环境公理审计；
  缺少或过期的编译产物不能被当作审计通过。

只有在相应数学声明及其证明依赖真正完成时，才使用 `\leanok`。外部前提和
未完成比较必须保持显式。应报告实际执行过的检查及其限制，不能从编译成功
或图渲染成功推断证明完成。

请编辑 `.tex` 源文件，不要手工修改生成的 `blueprint/web` 或
`blueprint/print`。移动文件时要同步更新活动入口和导航链接，并在没有明确
要求改变数学内容时保留命题、来源定位、依赖和证明状态。
