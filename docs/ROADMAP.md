# KIP126 Roadmap

## 架构决定

本项目采用“共享结构内核 + classical/synthetic 领域层 + comparison 层”的架构。

```text
KIP126/
├── Core/
│   └── SpectralSequence/
│       ├── Basic              -- Z/B、page、E∞、微分和 page passage
│       ├── Morphism           -- 同分级与异分级/reindexed morphism
│       ├── FilteredComplex
│       ├── Convergence
│       └── Extension
├── Classical/
│   ├── SpectralSequence/      -- classical Adams 的实例与专用结果
│   ├── Adams/
│   ├── ExtensionSS/
│   ├── FExtension/
│   └── PageExtensions/
├── Synthetic/
│   ├── SpectralSequence/      -- synthetic Adams 的实例与专用结果
│   ├── Adams/
│   ├── ExtensionSS/
│   └── Rigidity/
├── Comparison/
│   └── ClassicalSynthetic/    -- ν、λ、ρ、δ、weight forget/reindex、rigidity
├── External/
│   ├── Results
│   ├── Evidence
│   └── SourceInventory
└── Kervaire/
    ├── Assumptions
    ├── AppendixData
    └── MainTheorem
```

这里的 `Core/SpectralSequence` 只包含与领域无关的谱序列结构。经典 Adams SS、
synthetic Adams SS、`λ`-模结构、Ext、`ν`、rigidity、Kervaire 类和外部计算数据
均留在各自的领域层。这样既让谱序列内核被两侧真实复用，也不牺牲各自的数学语义。

## 不可妥协的验收条件

每一阶段完成前都应维持以下条件：

1. 当前仓库使用 Lean 4.32.2 和 mathlib v4.32.2；
2. 不以候选仓库的 path dependency 作为最终实现；
3. 新迁入的项目源码不引入 `sorry`、`admit` 或项目 `axiom`；
4. 外部数学与计算事实均经由显式、带来源定位的条件输入；
5. 对进入主依赖锥的结论运行 `#print axioms`，不得出现 `sorryAx` 或项目自定义
   公理；
6. 任何“定义相等替代论文同构”的方案都必须经过语义审计。

短期内，旧仓库可作为只读迁移来源；它们的本机相对路径与定位记录在
[INTEGRATION.md](INTEGRATION.md)。

## 阶段 0：建立迁移账本

**目标：** 为每个候选模块建立来源、目标命名空间、依赖、语义状态和验收方式的
迁移清单。

**工作：**

- 锁定候选仓库的具体提交或工作树快照；
- 把 `sorry`、项目 `axiom`、`opaque`、外部根和真正已证声明分开统计；
- 为重复模块指定唯一权威来源；
- 记录从 Lean 4.28/4.29/4.33-rc 到 4.32.2 的 porting 差异。

**完成条件：** 不再以“哪个文件看起来更新”作为迁移依据；每个迁入项都有可追溯
来源和明确的目标层。

## 阶段 1：移植并收紧共同谱序列内核

**主要来源：** `KIP-infra` 与 `KIP-ess`；`SSP-1`、`ESS-conv`、`KIP-base` 用于
差异比对。

**工作：**

- 在当前 toolchain 下移植 `SSData`、page、`E∞`、微分、page passage；
- 移植 `FilteredComplex`、`Convergence`、`Truncation`、`Completion`；
- 把 `KIP-infra` 的 bilateral truncated ESS 作为优先设计，而不是同时保留
  bounded/unbounded 的平行主实现；
- 保留 `ESS-conv` 中确有独立价值的 unbounded/convergence 设计和测试；
- 删除纯 namespace 差异产生的重复实现。

**完成条件：** `Core/SpectralSequence` 在 Lean 4.32.2 下独立构建；仓库内只有一套
规范的 `SpectralSequence`、`FilteredComplex` 与 `Convergence` 定义。

## 阶段 2：补齐跨分级的谱序列态射

**问题：** 现有内核的态射主要面向相同 index type。它不足以直接表达 classical
双分级与 synthetic 三分级之间的 forget/reindex/comparison。

**工作：**

- 设计并实现带 index map 的 reindexed/heterogeneous morphism；
- 使其携带 page、differential degree、`Z/B` 与 convergence 的相容性；
- 为常用的 `(s,t,w) ↦ (s,t)`、`(s,t,w) ↦ (s,t-s,w)` 等重分级建立 API；
- 用小型回归例子验证 page passage、零微分和 convergence 传输。

**完成条件：** comparison 不再依赖两个无关 record 之间手写的逐字段翻译；异分级
comparison 可在共同内核的语言中表达。

## 阶段 3：接入 classical 层

**主要来源：** `KIP-infra/StableHomotopy`、`KIP-fextension`、`126-ZERO-0728`
的 `ClassicalExtensions`。

**工作：**

- 将 classical Adams SS 实现为共同内核的具体实例；
- 接入 Adams 双分级、Ext/`h_j` 接口、classical convergence；
- 迁移 ESS、essentiality、crossing、no-crossing 和 F-extension 的基础结果；
- 审核 `KIP-fextension` 的 `ess₂` 定义：保留可用证明技巧，但不接受未证明的定义性
  塌缩作为论文结论；
- 从 0728 提取已经真正证明的 classical page/filtration 代数。

**完成条件：** classical F-ESS 的核心声明从共同内核派生，并且其语义与论文中的
`E∞`-anchored 表述相符。

## 阶段 4：接入 synthetic 层

**主要来源：** `KIP-ess`、`KIP-infra/Synthetic`。

**工作：**

- 将 synthetic Adams SS 实现为共同内核的三分级实例；
- 迁移 weight-preserving differential、`λ`-module enrichment、synthetic
  convergence、synthetic filtration；
- 建立 synthetic extension SS 的实际构造，使其复用 `Core/SpectralSequence/Extension`
  而非仅以 `sorry` 或公理给出结果；
- 迁移 bigraded sphere、`ν`、rigidity 与 lift 所需的最小接口。

**完成条件：** synthetic SS 与 synthetic ESS 都是可检查的共同内核实例；它们的
领域专用假设仅来自显式外部输入或已证基础设施。

## 阶段 5：建立 classical–synthetic comparison 层

**主要来源：** `KIP-infra/Synthetic/Rigidity`、`Synthetic/Extensions`，以及
0629 的 `SyntheticExtensions` 和 `ExtensionsEnPage`。

**工作：**

- 形式化 `ν`、`λ`、`ρ`、`δ` 及其重分级/forget compatibility；
- 把 rigidity 和 classical differential comparison 表达为阶段 2 的异分级态射结果；
- 从 synthetic extension 得出 classical `(f,E_r)`-extension；
- 迁移 crossing/no-crossing 的比较定理，以及 Generalized Leibniz Rule 与
  Generalized Mahowald Trick 所需的桥梁。

**完成条件：** classical 与 synthetic 的联系不是并列公理，而是具有明确输入、映射和
可审计依赖的 comparison 定理。

## 阶段 6：接入论文端点、外部输入和来源账本

**主要来源：** `126-ZERO-0629` 与 `126-ZERO-0728`。

**工作：**

- 迁移并改进 0629 的 `ExternalResults`、`ExternalInputs`、
  `ComputationProvenance`；
- 为所有引用文献、Lin 程序输出和附录表格建立带 locator 的证据记录；
- 将 0728 的 source inventory 从 `sorry` scaffold 改为可枚举、按 owner declaration
  绑定的真实账本；
- 将 Kervaire 逻辑终局参数化地接到 canonical classical Adams SS；
- 保留“条件结论”的性质：外部数据是显式参数，论文内部推演必须在 Lean 中完成。

**完成条件：** `h₆²` permanent-cycle 定理和维数 126 的 Kervaire 结论均为条件定理；
所有外部根可定位，且没有被伪装成全局公理。

## 阶段 7：收尾审计与去重

**工作：**

- 逐步删除临时 compatibility shim、旧命名空间别名和重复模型；
- 对所有 imported/ported 声明做 source-level `sorry`/`admit`/`axiom` 扫描；
- 对主定理及其依赖锥运行 `#print axioms`；
- 验证每个附录条目均已编码，并连接到 source inventory；
- 在无缓存环境下运行完整 `lake build`。

**最终完成条件：** 满足 [项目边界](../PROJECT_BOUNDARY.md) 所列全部验收条件，而不只是
“构建通过”。

## 近期第一个可执行里程碑

先完成阶段 0 与阶段 1 的最小切片：在 `Core/SpectralSequence` 中移植并编译
`SSData`、`SpectralSequence`、`FilteredComplex`、`Convergence` 和一组最小
page/convergence 回归测试。只有这一切片在 Lean 4.32.2 下稳定后，才开始接入
classical 或 synthetic 的领域对象。
