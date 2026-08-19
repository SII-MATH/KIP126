# KIP126 Roadmap

本 Roadmap 只回答“为了实现论文形式化，需要按什么模块和依赖顺序推进”。数学声明、`\label`、`\lean`、`\uses` 与状态以 [`../blueprint/src/content.tex`](../blueprint/src/content.tex) 及其章节为准；已实现接口和 import graph 以 `KIP126/**/*.lean` 为准；项目范围、信任边界与验收边界以 [`../PROJECT_BOUNDARY.md`](../PROJECT_BOUNDARY.md) 为准。实时进度镜像维护在 Multica 的 AIM-165 wiki 主帖，本文件的表格用于提供可复算的模块基线。

## 模块划分与进度口径

Blueprint 仍使用平铺 chapter：`content.tex` 中没有 `\part` 或嵌套目录，只用注释标出“数学定义 → 外部输入 → 内部证明”三层。Lean 文件列出各章当前最接近的公共入口；同一现有入口暂时承载两个新章时，后续实现任务再按 chapter 边界拆 facade。`Blueprint 节点`按正式 theorem-like environment 计数，状态依次为 `leanok / mathlibok / notready`。

| 层 | 顺序 | 模块（Blueprint chapter） | Lean 文件（当前最近入口） | Blueprint 节点 | 状态 |
| --- | ---: | --- | --- | ---: | --- |
| 定义 | 1 | Algebraic foundations | `KIP126/Core.lean` | 46 | 19 / 27 / 0 |
| 定义 | 2 | Spectral-sequence machinery | `KIP126/Core/SpectralSequence.lean` | 54 | 27 / 13 / 14 |
| 定义 | 3 | Stable-homotopy objects | — | 11 | 0 / 0 / 11 |
| 定义 | 4 | Classical mod-2 Adams spectral sequence | `KIP126/Classical/Adams.lean` | 15 | 0 / 0 / 15 |
| 定义 | 5 | Extension spectral sequences | `KIP126/Classical/ExtensionSS.lean` | 17 | 0 / 0 / 17 |
| 定义 | 6 | Synthetic homotopy and synthetic Adams objects | `KIP126/Synthetic.lean` | 8 | 0 / 0 / 8 |
| 定义 | 7 | Synthetic extension spectral sequences | `KIP126/Synthetic/ExtensionSS.lean` | 4 | 0 / 0 / 4 |
| 定义 | 8 | Extensions on a classical Adams page | `KIP126/Classical/PageExtensions.lean` | 4 | 0 / 0 / 4 |
| 定义 | 9 | Typed computation schemas | `KIP126/Kervaire/AppendixData.lean` | 13 | 0 / 0 / 13 |
| 定义 | 10 | Near-126 and Kervaire problem setup | `KIP126/Kervaire/Assumptions.lean` | 7 | 0 / 0 / 7 |
| 外部输入 | 11 | External literature results | `KIP126/External/Results.lean` | 23 | 1 / 0 / 22 |
| 外部输入 | 12 | External computed results | `KIP126/Kervaire/AppendixData.lean` | 31 | 0 / 0 / 31 |
| 内部证明 | 13 | Comparison and generalized rules | `KIP126/Comparison.lean` | 49 | 0 / 0 / 49 |
| 内部证明 | 14 | Near-126 reduction and permanent cycle | `KIP126/Kervaire/Assumptions.lean` | 19 | 0 / 0 / 19 |
| 内部证明 | 15 | Geometric conclusions | `KIP126/Kervaire/MainTheorem.lean` | 3 | 0 / 0 / 3 |
| 审计 | 16 | External-input provenance audit | `KIP126/External.lean` | 32 | 30 / 0 / 2 |
| 审计 | 17 | Source coverage and audit index | — | 0 | — |
|  |  | **合计** |  | **336** | **77 / 40 / 219** |

### 统计解释

- 336 是 DAG 的正式节点总数；其中 117 个节点已有完成标记（77 个项目声明为 `leanok`、40 个 Mathlib 根为 `mathlibok`），219 个节点仍为 `notready`。
- `leanok` 与 `mathlibok` 不等价于“整章完成”：Spectral-sequence machinery 仍有 14 个 `notready`，而外部结果、内部比较和 near-$126$ 主体仍基本未实现。
- `content.tex` 只保留按依赖顺序的平铺 `\input` 清单与三层注释；没有 LaTeX `\part`。`blueprint/web`、`blueprint/print` 和 `blueprint/lean_decls` 是生成/检查产物，不手工编辑；其中 `blueprint/lean_decls` 纳入版本控制，以支持干净检出后的声明检查。
- 章节不按代码行数均分，而按数学定义、外部黑盒和内部消费者的边界拆分。同一现有 Lean facade 暂时覆盖两个 chapter 不表示两章已经合并；实现层仍需最终形成一章一入口。

## 依赖顺序

1. **数学定义层**：Algebraic foundations → spectral-sequence machinery → stable objects → classical Adams → extension SS → synthetic objects → synthetic ESS → page extensions → computation schemas → Kervaire setup。
2. **外部输入层**：在所有 statement 所需对象已经定义后，再陈述逐条 external literature result；具体 Lin 输出与附录表则依赖 computation schema。
3. **内部证明层**：comparison/generalized rules 消费外部定理与计算输入，随后完成 near-$126$ reduction，最后推出 geometric conclusions。
4. **技术审计层**：provenance 与 coverage 章节保持平铺，但不作为所有数学章节的父节点；`ExternalResult` 等 Lean 技术类型按需 import，不改变数学 DAG 的方向。

## 阶段验收

每个模块进入下一依赖层前，必须满足：

1. `lake build` 通过，新增源码无项目 `sorry`、`admit` 或自定义 `axiom`；
2. 相关 Blueprint 节点有准确 `\lean`、`\uses` 和状态标记，DAG 无未知依赖、环或无意孤立节点；
3. `leanblueprint pdf`、`leanblueprint web` 和可用的声明检查通过；若仓库没有 `checkdecls` executable，必须在交付记录中明确说明；
4. 外部文献、Lin 输出和附录数据都以带 locator/provenance 的显式输入进入 Lean，不伪装成项目内部定理或全局公理；
5. 生成物只由工具生成，不手工编辑。

## 当前执行前沿

当前优先级是 Spectral-sequence machinery 的剩余 14 个节点与 Stable-homotopy objects 的最小接口；随后完成 Classical Adams/ESS 和 Synthetic 定义，使 external-results statements 获得真实类型，再推进 comparison、数据、near-$126$ 与几何端点。主帖负责更新完成状态、下一步和本表中的快照；本文件只在模块边界、依赖顺序或统计口径变化时更新。

## 架构边界

共享 Core 直接采用锁定 Mathlib 的 `CategoryTheory.SpectralSequence`，只增加实际下游共用的过滤、关联分次、filtered complex、spectral-object adapter 等结构。Classical、Synthetic、Comparison、External 和 Kervaire 保持领域边界；不得用一个项目本地别名替代 Mathlib 谱序列，也不得把外部证据提升为无条件 Lean 公理。
