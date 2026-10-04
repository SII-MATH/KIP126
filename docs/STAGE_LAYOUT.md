# 当前输入与证明结构

本文件记录用户批准的统一输入方案。原 Challenge1 阶段已取消，其实际数学义务保留在 `Challenge2.foundation`；历史报告记录当时的源码，不定义当前架构。

| 位置 | 职责 |
|---|---|
| `KIP126/Def/` | 数学对象、操作、谓词、固定实现、模型比较语言及通用定理。不得直接或间接导入 Interface 或 Main，不声明项目公理。 |
| `KIP126/Interface/Challenge/Challenge2.lean` | 在固定 Def 背景上定义统一输入结构及各子结构；结构本身即生产目标。 |
| `KIP126/Interface/Solution/` | 构造 foundation、文献、计算认证、模型比较和内部应用，并组装同一个 Challenge2。未完成证明保持明确的 `sorry`。 |
| `KIP126/Main/Axiom/Challenge2.lean` | 唯一临时项目公理：直接提供 `challenge2 : KIP126.Challenge2`。 |
| `KIP126/Main/Challenge/h6_sq_permanent.lean` | 唯一最终目标声明；定义依赖只来自 Def，保留约定的 `sorry`。 |
| `KIP126/Main/Solution/` | 本文工具、内部推导及最终证明，从同一 Challenge2 投影输入。 |
| `KIP126/LinProgram/` | 固定数据、确定性解析、数学解释及局部证书。 |
| `KIP126/Checks/` | 数学接口、导入依赖和局部数据检查。 |
| `docs/external-inputs.json` | 来源、locator、制品摘要及输入到 Lean/Blueprint 的唯一机器清单。 |
| `MainPaper/`、`Source/` | 主论文及外部原始资料与获取记录。 |

`Challenge2` 包含 foundation、同一 `routeInput` 的模型绑定、固定 presentation、literature、computation 和 internal applications。原来的 implementation 相等字段及独立存在性/选择传递已删除；基础对象直接引用 `Def.fixedImplementation`。

`FoundationInputs.sphereApplicability` 保留实际球塔的 HF₂ nilpotent completeness 和强收敛条件。countable-products 等结构仍在固定实现中。`InternalApplications` 包含 `route` 适配和 `sphereSeparated`，不能把它们重新登记为文献结论或程序输出。

Lean 接口只陈述数学。来源 metadata 不再通过 `ExternalResult`、`ExternalEvidence` 或 `SourceId` 进入类型。文献与 computation 清单链接到声明和 Blueprint 标签；检查器检验对应关系，数学审查判断陈述是否忠实于原文。

只为体积、生成方式或真实复用需要拆模块。不要为展示结构创建空目录、单模块转发文件或另一套 claim registry。唯一保留的 Challenge/Solution 定理对是 Main 最终目标；Interface 通过构造 Challenge2 值完成交付。

完整范围及未完成证明见 [STAGE0_INTERFACES.md](STAGE0_INTERFACES.md)。本次结构简化不解除任何模型构造、来源核验、计算认证或本文证明义务。
