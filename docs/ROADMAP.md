# KIP126 Roadmap

本 Roadmap 回答 KIP126 如何从既有形式化成果出发，形成可持续推进的代码基线，
完成论文形式化，并通过最终审计。数学声明、`\label`、`\lean`、`\uses` 与节点状态以
[`../blueprint/src/content.tex`](../blueprint/src/content.tex) 及其章节为准；已实现接口和
import graph 以 `KIP126/**/*.lean` 为准；项目范围、信任边界与最终验收边界以
[`../PROJECT_BOUNDARY.md`](../PROJECT_BOUNDARY.md) 为准。实时进度镜像维护在 Multica
的 AIM-179 主 Wiki，本文件维护长期稳定的阶段、依赖顺序和验收口径。

## 三阶段总览

| 阶段 | 目标 | 主要产物 | 阶段出口 |
| --- | --- | --- | --- |
| 一、建立包络面 | 审计所有旧仓库，逐章识别可借鉴的最高完成度 | 可追溯的章级迁移账本，以及自足、可编译的 KIP126 基线 | 每章都有权威来源或“无可复用实现”的明确结论；迁入内容通过语义与信任审计 |
| 二、继续形式化 | 在包络面基线上按数学依赖补完 Blueprint 与 Lean | 17 个章级模块及其 Lean 入口、外部输入接口和内部证明 | 所有应由项目实现的节点均完成；只允许保留经 `PROJECT_BOUNDARY.md` 明确分类的外部、开放或政策边界节点 |
| 三、最终审计 | 对全仓库而非单个模块做完整性、信任、来源和可复现性审计 | 最终审计记录、干净构建结果和主定理依赖锥报告 | 满足 `PROJECT_BOUNDARY.md` 的全部最终验收条件，而不只是“构建通过” |

三个阶段按产物依赖排列。第二阶段只能消费第一阶段已经审计并迁入 KIP126 的内容；
旧仓库中未经审计的代码始终只是迁移线索。第二阶段中的模块级检查是持续门槛，不能
代替第三阶段结束时面向整个仓库的完整审计。

## 第一阶段：从旧仓库建立包络面

KIP126 不是从零开始的单线实现，而是此前多轮谱序列、extension spectral
sequence、stable homotopy、synthetic spectra、classical Adams、论文端点和来源
审计探索的**最优进度包络面**。第一阶段的产物不是一份调研报告，而是将各仓库中
真正成熟、语义忠实且可维护的部分迁入同一规范接口之后形成的可编译代码仓库。

“包络面”不表示机械合并所有文件，也不以代码行数或 `sorry` 数量最少作为选择标准。
同一概念只保留一个权威实现；无法证明语义等价、依赖不透明或把数学内容藏入公理/
typeclass 字段的实现，只能作为证明模式或迁移线索。

### 候选来源的维护边界

第一阶段仍按当前 17 个 Blueprint chapter 调研旧仓库，但具体候选仓库、章级映射和
可借鉴数学内容不在本文件维护。调研期间的候选清单集中保留在 Multica 的 AIM-179
主 Wiki；核验后的结论按章更新到 AIM-179 的各章级子 Wiki。本 Roadmap 只维护阶段
目标、迁入准则、迁移账本字段和验收条件。

所有旧仓库只作为只读迁移来源。最终 KIP126 不得通过 path dependency 依赖它们，
也不继承它们锁定的旧版 Lean/Mathlib 或未经审计的信任边界。

### 迁移账本的最小字段

每个候选声明或模块至少记录：

1. 来源仓库、锁定 commit、源文件和声明名；
2. 对应 Blueprint chapter/node 与目标 Lean namespace；
3. 当前是已证声明、`sorry`、项目 `axiom`、`opaque`、typeclass 假设还是外部输入；
4. 与 aimpaper 语义、分次、page convention 和定理强度的差异；
5. Lean/Mathlib porting 成本、依赖闭包和可复现构建结果；
6. 迁入、重写、仅借鉴 proof pattern 或明确弃用的决定及理由。

### 第一阶段完成条件

1. 17 章均有完整迁移账本；没有可复用实现的章节也有明确结论；
2. 每个重复概念选定唯一权威实现，不以平行 alias 掩盖接口分叉；
3. 选中的成果已经迁入 KIP126 并在 Lean 4.32.2 / Mathlib v4.32.2 下构建，不依赖
   旧仓库本机路径；
4. 迁入源码不新增 `sorry`、`admit` 或项目自定义 `axiom`；外部事实改写为带
   provenance 的显式条件输入；
5. 任何定义相等、索引换算、adapter 或语义弱化均有单独审计和回归测试；
6. 形成可供第二阶段继续实现的、自足且可审计的 KIP126 包络面基线。

## 第二阶段：在包络面上继续形式化

第二阶段以第一阶段形成的 KIP126 为唯一代码基线。旧仓库仍可用于查找证明思路，
但任何新增复用都必须先补入迁移账本并通过第一阶段的迁入门槛。

### 模块划分与进度口径

Blueprint 使用平铺 chapter：`content.tex` 中没有 `\part` 或嵌套目录，只用注释标出
“数学定义 → 外部输入 → 内部证明”三层。Lean 文件列出各章当前最接近的公共入口；
同一现有入口暂时承载两个新章时，后续实现任务再按 chapter 边界拆 facade。
`Blueprint 节点`按正式 theorem-like environment 计数，状态依次为
`leanok / mathlibok / notready`。

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

- 336 是 DAG 的正式节点总数；其中 117 个节点已有完成标记（77 个项目声明为
  `leanok`、40 个 Mathlib 根为 `mathlibok`），219 个节点仍为 `notready`。
- `leanok` 与 `mathlibok` 不等价于“整章完成”：Spectral-sequence machinery 仍有
  14 个 `notready`，而外部结果、内部比较和 near-126 主体仍基本未实现。
- `content.tex` 只保留按依赖顺序的平铺 `\input` 清单与三层注释；没有 LaTeX
  `\part`。`blueprint/print` 和 `blueprint/web` 是生成物，不手工编辑；
  `blueprint/lean_decls` 由工具生成并纳入版本控制，以支持干净检出后的声明检查。
- 章节不按代码行数均分，而按数学定义、外部黑盒和内部消费者的边界拆分。同一现有
  Lean facade 暂时覆盖两个 chapter 不表示两章已经合并；实现层仍需最终形成一章一入口。

### 依赖顺序

1. **数学定义层**：Algebraic foundations → spectral-sequence machinery → stable
   objects → classical Adams → extension SS → synthetic objects → synthetic ESS →
   page extensions → computation schemas → Kervaire setup。
2. **外部输入层**：在所有 statement 所需对象已经定义后，再陈述逐条 external
   literature result；具体 Lin 输出与附录表依赖 computation schema。
3. **内部证明层**：comparison/generalized rules 消费外部定理与计算输入，随后完成
   near-126 reduction，最后推出 geometric conclusions。
4. **技术审计层**：provenance 与 coverage 章节保持平铺，但不作为所有数学章节的
   父节点；`ExternalResult` 等 Lean 技术类型按需 import，不改变数学 DAG 的方向。

### 模块增量验收

每个模块进入下一依赖层前，必须满足：

1. `lake build` 通过，新增源码无项目 `sorry`、`admit` 或自定义 `axiom`；
2. 相关 Blueprint 节点有准确 `\lean`、`\uses` 和状态标记，DAG 无未知依赖、环或
   无意孤立节点；
3. `leanblueprint pdf`、`leanblueprint web` 和 `leanblueprint checkdecls` 通过；
4. 外部文献、Lin 输出和附录数据都以带 locator/provenance 的显式输入进入 Lean，
   不伪装成项目内部定理或全局公理；
5. 生成物只由工具生成，不手工编辑。

### 当前执行前沿

当前优先级是 Spectral-sequence machinery 的剩余 14 个节点与 Stable-homotopy
objects 的最小接口；随后完成 Classical Adams/ESS 和 Synthetic 定义，使
external-results statements 获得真实类型，再推进 comparison、数据、near-126 与
几何端点。主 Wiki 负责更新章级完成状态和下一步；本文件只在阶段、模块边界、依赖
顺序或统计口径变化时更新。

## 第三阶段：最终完整审计

第三阶段在第二阶段的正式节点全部完成后执行。此前每个模块已经通过增量检查，但
最终审计必须从干净检出出发，对完整依赖锥和全部外部输入重新取证，不能简单汇总
历史 CI 结果。

### 审计范围

1. **源码与信任边界**：扫描全部项目源码中的 `sorry`、`admit`、项目自定义
   `axiom`、可疑 `opaque` 和通过 typeclass/structure 字段隐藏的数学假设；对最终
   主定理及关键中间结论运行 `#print axioms`。
2. **Blueprint 完整性**：验证全部正式节点的 `\lean`、`\uses`、状态和声明映射；
   DAG 不得有未知依赖、环、重复 label 或无意孤立节点。
3. **外部输入与 provenance**：逐条核对文献、locator、Lin 程序输出、附录数据、
   source inventory、claim/evidence ledger 和 computation catalogue；外部事实不得
   被提升为无条件内部定理。
4. **架构与去重**：删除临时 compatibility shim、过渡 alias、重复模型和未使用
   import；确认 Mathlib `CategoryTheory.SpectralSequence` 仍是唯一通用谱序列内核，
   Classical、Synthetic、Comparison、External 与 Kervaire 边界清晰。
5. **可复现构建**：在无缓存、干净检出的 Lean 4.32.2 / Mathlib v4.32.2 环境中运行
   完整 `lake build`、回归测试、Blueprint PDF/web 和声明检查；生成物必须可由工具
   重建。
6. **迁移闭环**：逐项回看第一阶段迁移账本，确认所有迁入项可追溯，所有未迁入项有
   明确弃用理由，最终仓库不依赖旧仓库本机路径或未锁定外部状态。

### 最终完成条件

只有同时满足以下条件，KIP126 才可视为完成：

1. 所有应由项目内部实现的 Blueprint 节点均具有真实、可解析的 `leanok` 或锁定的
   `mathlibok`；保留的 `notready` 只能是经 `PROJECT_BOUNDARY.md` 明确分类并有完整
   来源/边界记录的外部、开放或政策节点；
2. 主定理及其完整依赖锥不含 `sorryAx` 或项目自定义公理；
3. 所有外部文献和计算输入均有可定位、可枚举、边界明确的 provenance；
4. 干净环境中的完整构建、回归、Blueprint 和声明检查全部通过；
5. `PROJECT_BOUNDARY.md` 所列范围、信任与验收条件全部满足。

## 跨阶段架构原则

1. **一个概念，一个权威实现。** 不保留多套平行定义或只为兼容旧仓库而存在的
   永久别名。
2. **先语义，后完成度数字。** 无 `sorry` 的定义性退化不能替代论文要求有内容的
   同构、构造或比较定理。
3. **适配优于伪统一。** 不同分次和领域对象通过有证明义务的 adapter/reindex 接入，
   不在没有等价证明时粗暴替换。
4. **外部根显式化。** 文献定理、程序输出和附录表格作为带 provenance 的条件输入，
   不转化为项目全局公理。
5. **最终包自足。** 旧仓库仅是只读迁移来源；KIP126 不以它们作为运行时或构建依赖。
6. **共享 Core 保持最小。** 直接采用锁定 Mathlib 的
   `CategoryTheory.SpectralSequence`，只增加实际下游共用的过滤、关联分次、filtered
   complex、spectral-object adapter 等结构；领域数学留在对应模块。
