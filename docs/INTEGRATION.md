# KIP126：整合型形式化的建立初衷

## 目标

`KIP126` 用于形式化 Lin、Wang、Xu 的 *On the Last Kervaire Invariant
Problem*，并不是从零开始的一次单线开发。此前已经围绕这一目标开展过多轮
并行和串行探索；它们分别在谱序列、extension spectral sequence、stable
homotopy、synthetic spectra、经典 Adams 端点、外部输入边界和来源审计上积累了
有价值的成果。

本仓库的目标是成为这些探索的**最优进度包络面**：

1. 吸收每个仓库中真正成熟、语义忠实且可维护的实现；
2. 选择唯一的规范接口，避免并存多套互不相容的谱序列或 Adams SS 定义；
3. 把外部论文与计算事实显式建模为带出处的条件输入，而不是项目 `axiom`；
4. 最终满足本仓库的 [项目边界](../PROJECT_BOUNDARY.md)：Lean 4.32.2 / mathlib
   v4.32.2、无 `sorry`/`admit`/项目自定义 `axiom`，并通过最终声明的
   `#print axioms` 审计。

“包络面”不表示机械地合并全部文件。它表示对每一项成果选择一个权威实现，保留
必要的兼容层，并把尚未完成、语义过弱或依赖不透明的实现明确标记为迁移线索而非
既有定理。

## 候选仓库及其本机位置

以下链接以本文件所在的 `docs/` 为起点；这些相对位置在当前工作区中是本项目的
本地参考来源，而不是最终包的运行时依赖。

| 仓库 | 本机相对目录 |
| --- | --- |
| `SSP-1` | [../../LeanProjects/SSP-1/](../../LeanProjects/SSP-1/) |
| `ESS-conv` | [../../LeanProjects/ESS-conv/](../../LeanProjects/ESS-conv/) |
| `KIP` | [../../LeanProjects/KIP/](../../LeanProjects/KIP/) |
| `KIP-base` | [../../LeanProjects/KIP-base/](../../LeanProjects/KIP-base/) |
| `KIP-ess` | [../../LeanProjects/KIP-ess/](../../LeanProjects/KIP-ess/) |
| `KIP-fextension` | [../../LeanProjects/KIP-fextension/](../../LeanProjects/KIP-fextension/) |
| `KIP-infra` | [../../LeanProjects/KIP-infra/](../../LeanProjects/KIP-infra/) |
| `leanworkspace` | [../../LeanProjects/leanworkspace/](../../LeanProjects/leanworkspace/) |
| `126-ZERO` | [../../LeanProjects/126-ZERO/](../../LeanProjects/126-ZERO/) |
| `126-ZERO-0629` | [../../LeanProjects/126-ZERO-0629/](../../LeanProjects/126-ZERO-0629/) |
| `126-ZERO-0728` | [../../LeanProjects/126-ZERO-0728/](../../LeanProjects/126-ZERO-0728/) |

## 各仓库的实际定位

| 仓库 | 最成熟的部分 | 主要问题 | 建议角色 |
| --- | --- | --- | --- |
| `SSP-1` | 最小、相对干净的谱序列核心 | 功能太少 | 早期 SS API 参考，不作为最终基线 |
| `ESS-conv` | 收敛、completion、unbounded extension、测试文件 | 与后续 KIP 分支存在接口分叉，仍有若干 `sorry` | 提取 unbounded/convergence 设计 |
| `KIP-base` | stable homotopy、synthetic、ESS 的较宽基础层 | 自定义公理面较大 | 作为历史基线和 API 对照 |
| `KIP-ess` | 与 `KIP-infra` 同源的较完整核心；项目状态报告称 substantive `sorry = 0` | 仍有约 38 个项目 `axiom`，不符合当前边界 | 核心 API 和 proof pattern 的重要来源 |
| `KIP-fextension` | F-extension、commutativity、ESS decomposition 的集中实现，源码层面几乎无 `sorry` | `ess₂` 被定义成原 ESS，恒等同构只是定义相等；这可能违反论文语义 | 取证明技巧，不直接接受其语义退化 |
| `KIP-infra` | 最宽的综合架构：bilateral truncated ESS、filtered-complex morphism、F-extension、synthetic extensions、stable homotopy | 仍有约 41 个 live `sorry` 和约 74 个 `axiom`/`opaque` 边界；状态文件明确列出多个基础阻塞 | 最适合作为最终架构候选 |
| `KIP` | 在 Abelian category 上的 `SSData`、page/`E∞`，以及 `FilteredComplex → SpectralSequence`、weak convergence 和 detection 的实际构造/证明；`Basic`、`Convergence`、`FilteredComplex` 自身不声明项目公理 | 固定 Lean/mathlib 4.28.0；17 个 Lean 文件、7,698 行，无 `sorry`/`admit`，但有 131 个项目 `axiom`：ESS 36 个、commutativity 21 个、stable homotopy 42 个、synthetic 32 个；`weakConvergence` 仍留有与当前实现不一致的 TODO 叙述，须另做语义审计 | 只提取 `Basic`、`Convergence`、`FilteredComplex` 的定义、局部证明和 porting pattern；不得迁入任何项目公理，也不得把 ESS、commutativity、stable homotopy 或 synthetic 层当作已证基线 |
| `leanworkspace` | 基于 `Submodule` 的谱序列/分级谱序列内核；较大规模的 classical F-extension、crossing、page-shift 与主证明逻辑骨架 | 内核限于域上线性代数；约 10 个 theorem-level `sorry`，Massey product 有 10 个真实全局 `axiom`；大量深层事实藏在未具体实例化的 `Has*` 字段中；顶层入口还引用缺失模块，且固定 Lean 4.28 | 提取具体线性代数 SS/F-extension 引理、证明模式和迁移经验；不作为规范共同内核 |
| `126-ZERO` | 直接面向论文主定理的逻辑骨架 | `MainTheorem` 中大量全局 `axiom`，不满足信任边界 | 只保留定理依赖图和旧的命名 |
| `126-ZERO-0629` | 最好的信任边界设计、`ExternalResults`/`ExternalInputs`、参数化的 Kervaire 主定理、Milnor cobar 进展 | 自定义 `AdamsSS` 与 `KIP-infra` 的通用 SS 类型不兼容；主定理仍含 `sorryAx` | 作为最终端点和外部输入模型的主要来源 |
| `126-ZERO-0728` | 最好的 source inventory 方案，以及较大规模的 classical F-ESS 代数 | 状态明确标为 HARD FAIL；source inventory 有 32 个 `sorry`，旧 `ClassicalExtensions` 还有 4 个缺口 | 作为审计/来源账本和 classical F-ESS 的后续来源 |

## `leanworkspace` 的补充判断

`leanworkspace` 是一条与 `KIP-infra` 谱系不同、但颇有价值的实现路线。它的
`FormalMathProject/Common/SpectralSequence.lean` 用 `Submodule`、商空间和线性映射
直接构造 `Z_r/B_r`、page differential、下一页 cycle/boundary 商及其相关引理；
`GradedSpectralSequence.lean` 还明确处理了双分级和三分级的微分位移。对本项目而言，
这是一组可迁移的、较具体且可测试的线性代数证明资产。

其 `Common/ExtensionSpectralSequence.lean` 还积累了约两千行围绕 detection、
essentiality、crossing、composition、page shift 和 f-extension 的接口与推导。这些
内容尤其适合与 `KIP-fextension`、`126-ZERO-0728` 的 classical F-ESS 结果逐条比对，
从中选择可保留的局部引理和 proof pattern。

但它不应取代最终的共同谱序列内核，原因有四点：

1. 其基础内核以 `Field K`、`Module K V` 和 `Submodule K V` 为中心，不能直接覆盖
   本项目需要的任意 Abelian category 版本；
2. 它把很多深层数学放进 `Has*` typeclass 或数据结构字段。其
   [`MIGRATION_GUIDE.md`](../../LeanProjects/leanworkspace/MIGRATION_GUIDE.md)
   明确记载有 15 个从未具体实例化的 `Has*` 类；这会使“源码没有 `sorry`”看起来比
   实际信任边界更强；
3. `DGAMasseyProduct.lean` 仍含 10 个项目级全局 `axiom`，同时 Kervaire 领域层仍有
   约 10 个 theorem-level `sorry`；
4. 它固定 Lean 4.28.0，且当前顶层 `FormalMathProject.lean` 仍 import 不存在的
   `FormalMathProject.Problems.Stage1/2/3`。本次无缓存构建也因 mathlib checkout
   失败而无法重新确认，因此不能把历史状态文件中的“全绿”直接视为当前可复现事实。

因此，对 `leanworkspace` 的正确吸收方式是：迁出经语义审计的局部线性代数证明，
将隐含的 `Has*` 假设改写为本项目的显式领域数据或带 provenance 的外部输入；不要
迁入其 typeclass-as-axiom 架构，也不要将它的 `Submodule` 内核作为唯一规范接口。

## 当前的共同谱序列内核

`KIP-infra` 已经包含一个重要的共同起点：

```lean
SpectralSequence C ι
```

它以 Abelian category `C` 和加法分级 `ι` 参数化。现有 classical Adams SS 使用
双分级 `ℤ × ℤ`，synthetic Adams SS 使用三分级 `ℤ × ℤ × ℤ`，并且都以该类型为
目标。因此，结构性的谱序列机制——`Z/B` 数据、page、`E∞`、微分、page passage、
filtered complex、convergence、extension construction——应当成为共同内核。

不过，这还不是完整的跨 classical/synthetic 复用：两端目前多由公理提供，synthetic
extension SS 的实际构造尚未完成，且不同分级之间的 reindexing/heterogeneous
morphism 仍是缺口。相应地，本项目追求的是“共享结构内核、保留领域语义分层”，而
不是把 classical 与 synthetic 强行压进同一个领域对象。

## 迁移原则

1. **一个概念，一个权威实现。** 同一基础概念不保留多套平行定义。
2. **先语义，后 `sorry` 数量。** 无 `sorry` 的定义性退化不能取代论文要求有内容的
   同构或构造。
3. **适配优于伪统一。** 0629 的论文端 `AdamsSS` 应先通过明确 adapter 接入共同
   内核，而不是在没有等价证明时粗暴替换。
4. **外部根显式化。** 文献定理、程序输出和附录表格必须作为含 provenance 的条件
   输入；不得转化为项目全局公理。
5. **最终包自足。** 上述本机仓库只作为迁移来源；完成后的 `KIP126` 不应依赖它们的
   path dependency 或它们所固定的旧版 mathlib。

详细的实施阶段与验收门槛见 [ROADMAP.md](ROADMAP.md)。
