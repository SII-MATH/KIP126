# KIP126 Roadmap

本 Roadmap 只回答“为了实现论文形式化，需要按什么模块和依赖顺序推进”。数学声明、`\label`、`\lean`、`\uses` 与状态以 [`../blueprint/src/content.tex`](../blueprint/src/content.tex) 及其章节为准；已实现接口和 import graph 以 `KIP126/**/*.lean` 为准；项目范围、信任边界与验收边界以 [`../PROJECT_BOUNDARY.md`](../PROJECT_BOUNDARY.md) 为准。实时进度镜像维护在 Multica 的 AIM-165 wiki 主帖，本文件的表格用于提供可复算的模块基线。

## 模块划分与进度口径

每个模块对应一个 Blueprint chapter。Lean 文件列出该模块当前最接近的公共入口或实现承载文件；一个模块在实际代码中可以依赖多个内部文件，但不会把依赖文件重复计入本模块行数。`Blueprint 节点`按 DAG 工具统计的正式节点计数；括号内给出 `leanok / mathlibok / notready` 标记计数。`Lean 行数`为对应文件当前物理行数，包括注释和空行，用于显示实现规模而不是证明完成度。占位文件的行数保留显示，避免把“文件存在”误读为“模块已实现”。

| 顺序 | 模块（Blueprint chapter） | Lean 文件（当前公共入口） | Blueprint 节点 | 状态 | Lean 行数 |
| ---: | --- | --- | ---: | --- | ---: |
| 0 | Formalization contract | `KIP126/External/Provenance.lean` | 32 | 30 / 0 / 2 | 561 |
| 1 | Shared algebraic and spectral-sequence core | `KIP126/Core/SpectralSequence/FilteredComplex.lean` | 21 | 19 / 2 / 0 | 770 |
| 2 | Algebraic and spectral-sequence background | `KIP126/Core/SpectralSequence/SpectralObjectAdapter.lean` | 79 | 27 / 38 / 14 | 411 |
| 3 | Stable-homotopy interfaces | — | 15 | 0 / 0 / 15 | 0 |
| 4 | Classical mod-2 Adams spectral sequence | `KIP126/Classical/Adams/Basic.lean` | 18 | 1 / 0 / 17 | 490 |
| 5 | Extension spectral sequences | `KIP126/Classical/ExtensionSS/Basic.lean` | 21 | 0 / 0 / 21 | 292 |
| 6 | $H\mathbb F_2$-synthetic foundations | `KIP126/Synthetic/SpectralSequence/Basic.lean` | 24 | 0 / 0 / 24 | 107 |
| 7 | Synthetic extension spectral sequences | `KIP126/Synthetic/ExtensionSS/Basic.lean` | 17 | 0 / 0 / 17 | 9 |
| 8 | Extensions on a classical Adams page | `KIP126/Classical/PageExtensions/Basic.lean` | 13 | 0 / 0 / 13 | 9 |
| 9 | Generalized Leibniz and Mahowald rules | — | 19 | 0 / 0 / 19 | 0 |
| 10 | Typed appendix and computation data | `KIP126/Kervaire/AppendixData.lean` | 31 | 0 / 0 / 31 | 9 |
| 11 | Near-$126$ reduction and permanent cycle | `KIP126/Kervaire/Assumptions.lean` | 33 | 0 / 0 / 33 | 9 |
| 12 | Conditional geometric conclusions | `KIP126/Kervaire/MainTheorem.lean` | 13 | 0 / 0 / 13 | 9 |
|  | **合计** |  | **336** | **77 / 40 / 219** |  |

### 统计解释

- 336 是 DAG 的正式节点总数；其中 116 个节点已有完成标记（77 个项目声明为 `leanok`、40 个 Mathlib 根为 `mathlibok`），219 个节点仍为 `notready`。
- `leanok` 与 `mathlibok` 不等价于“整章完成”：例如 Background 仍有 14 个 `notready` 节点，Classical 还有 17 个；代码行数也不等价于证明进度。
- `content.tex` 只保留按依赖顺序的 `\input` 清单；Core 正文在 `chapters/core.tex`。`blueprint/web`、`blueprint/print` 和 `blueprint/lean_decls` 是生成/检查产物，不手工编辑。
- 章节内容规模并不强行按行数均分；先按数学依赖和可审计边界划分模块，再用节点与 Lean 行数展示不均衡处。后续若某章明显过大，将在不拆断 `\uses` 语义的前提下拆成独立 chapter 与对应入口文件。

## 依赖顺序

1. **Contract → Core**：先固定 provenance、外部输入边界和共享过滤/谱序列结构。
2. **Background → Stable**：补齐 Mathlib 适配、收敛/端点接口和最小稳定同伦接口。
3. **Classical → Extension SS**：建立 classical Adams、Ext、ESS、essentiality、crossing 和页面扩张的共同基础。
4. **Synthetic → Synthetic ESS**：建立 synthetic Adams、权重保持、`λ/ρ/δ` 传输和 synthetic extension 语义。
5. **Page extensions → Generalized rules**：完成 classical page extension 后，接入 generalized Leibniz、May/Mahowald 规则和有限页 loss certificate。
6. **Appendix data → Near-126**：先完成 typed catalogue、provenance 和完整性检查，再推进 near-126 三条件、two-extension 与 permanent-cycle 反证。
7. **Conditional geometry**：最后把同一个显式 `MainInput` 接到 permanent-cycle、126 维和全维数的条件结论。

## 阶段验收

每个模块进入下一依赖层前，必须满足：

1. `lake build` 通过，新增源码无项目 `sorry`、`admit` 或自定义 `axiom`；
2. 相关 Blueprint 节点有准确 `\lean`、`\uses` 和状态标记，DAG 无未知依赖、环或无意孤立节点；
3. `leanblueprint pdf`、`leanblueprint web` 和可用的声明检查通过；若仓库没有 `checkdecls` executable，必须在交付记录中明确说明；
4. 外部文献、Lin 输出和附录数据都以带 locator/provenance 的显式输入进入 Lean，不伪装成项目内部定理或全局公理；
5. 生成物只由工具生成，不手工编辑。

## 当前执行前沿

当前优先级是 Background 的剩余 14 个节点与 Stable 的最小接口；随后进入 Classical Adams/ESS，再推进 Synthetic/comparison，最后完成数据、near-126 与条件几何端点。主帖负责更新完成状态、下一步和本表中的快照；本文件只在模块边界、依赖顺序或统计口径变化时更新。

## 架构边界

共享 Core 直接采用锁定 Mathlib 的 `CategoryTheory.SpectralSequence`，只增加实际下游共用的过滤、关联分次、filtered complex、spectral-object adapter 等结构。Classical、Synthetic、Comparison、External 和 Kervaire 保持领域边界；不得用一个项目本地别名替代 Mathlib 谱序列，也不得把外部证据提升为无条件 Lean 公理。
