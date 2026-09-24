# 谱序列模块当前状态

本文件只记录继续开发所需的当前结论，不保存讨论过程或已放弃的架构。
实现事实以 `KIP126/` 下的 Lean 源码为准；本文件在实现变化时直接更新，不创建并行版本。

## 已确定的结构

- 内部代表元、循环、边界及 crossing 的叙述以 `SSData`、`PreSS` 和
  `KIP126.Core.SpectralSequence.SpectralSequence` 为基础；Mathlib 的
  `CategoryTheory.SpectralSequence` 是对接外部谱序列 API 的目标，不替代内部
  `Z/B` 叙述。适配代码归入 `KIP126/Mathlib/`；完整的通用页面、微分及态射
  适配尚未建立（见 issue #105）。
  对同一个有界过滤复形，`KIP126/Mathlib/SpectralSequence/FilteredComplex/Adapter/Proofs.lean` 已证明两条
  构造路径的有限页对象和微分相同，并给出关联分次代表元关系与 Mathlib 页
  微分的等价表述；这不是任意 `PreSS` 的通用适配，也尚未覆盖态射。
  因此这条仍是架构目标，不能视为已完成事实。
- KIP126 的具体计算仍从 `FilteredComplex` 的代表元模型出发；`Z_r`、`B_r`、
  `pageObj = Z_r/B_r` 和 `pageDifferential` 不是从任意 Mathlib 谱序列反向恢复的附加数据。
- canonical 页面直接装配成 Mathlib 谱序列，不再经过
  `PageHomologyWitness`、`PageHomologyFactorization` 或另一套 presentation 包装。
  `pageHomologyIso` 的内部证明留在 `Def/FilteredPage/AssemblyProofs.lean`；
  最终 Mathlib 谱序列装配在 `Mathlib/SpectralSequence/FilteredComplex/Assembly/Data.lean`。
- 有限页、`E_∞` 的代数对象以及向 abutment 的收敛比较是三个不同层次，不能混为一体。

## 已完成的有限页主链

当前代码已经实现以下依赖链：

```text
FilteredComplex
  -> cycleSubobject / boundarySubobject
  -> pageObj = Z_r / B_r
  -> pageDifferential
  -> pageComplex（含 d_r² = 0）
  -> 相邻页的 kernel / image 计算
  -> pageHomologyIso : H(E_r) ≅ E_(r+1)
  -> canonicalPageSpectralSequence
  -> PageTrajectory / IsPermanent（元素级逐页存活）
```

关键装配位于：

- `KIP126/Mathlib/SpectralSequence/PageDifferential/`：Mathlib 页微分关系和 crossing 适配；
- `KIP126/Def/SpectralSequence/Permanence/Data.lean`：逐页后继类和永久循环；
- `KIP126/Def/SpectralSequence/FilteredPage/Complex.lean`
- `KIP126/Def/SpectralSequence/FilteredPage/AssemblyProofs.lean`
- `KIP126/Mathlib/SpectralSequence/FilteredComplex/Assembly/Data.lean`
- `KIP126/Mathlib/SpectralSequence/FilteredComplex/Relations/Data.lean`
- `KIP126/Mathlib/SpectralSequence/FilteredComplex/Adapter/Proofs.lean`

因此 canonical 谱序列的页面和微分仍可通过 KIP126 的 `Z_r/B_r` 模型计算，
同时它本身可以使用只依赖 Mathlib `SpectralSequence` 接口的通用结果。

## 尚未完成的工作

按建议的先后顺序：

1. 完成任意有限页的代表元、lift 和 crossing 关系；目前三个关系定理仍是占位证明。
2. 建立 canonical 页面关于 filtered-complex morphism 的函子性，并产生相应的
   Mathlib 谱序列态射。
3. 明确并实现 canonical 页号/双分次与 Adams 常用约定之间的 reindex。
4. 比较两条已有构造路径：直接的 `Z_r/B_r` 页面与 spectral-object 产生的谱序列。
5. 建立有限页稳定、permanent cycle、`pageObj ... ⊤` 与 `E_∞` 的接口。
6. 在上述基础上重做收敛层，使页面比较、稳定性及 abutment coherence 都成为显式数据或定理。
7. 最后补充少量 canonical sequence 的暴露和 `simp` 引理，降低下游使用成本。

架构迁移仍在进行：`Def/SpectralSequence/Permanence/Data.lean` 仍直接使用
Mathlib 谱序列类型；要使内部推理完全回到 `SSData`，需先建立同等强度的
内部逐页/永久性陈述，再将现有 Mathlib 版本改为受检适配。

## 当前明确的证明缺口

谱序列适配层中有三个实际的 `sorry`，均在
`KIP126/Mathlib/SpectralSequence/FilteredComplex/Relations/Proofs.lean`：

- `differentialRelationOfLift`
- `liftOfDifferentialRelation`
- `liftRelOfNotCrossed`

`PageView` 目前只携带页面对象与 canonical 商页的同构，并不要求该同构
与微分相容。因此，上述以任意 `PageView` 为参数的关系定理缺少连接过滤
复形微分与 `P.sequence` 微分的接口；后续必须补充相容字段及 canonical
实例证明，或把这些定理限定到 canonical 页面，不能直接填入证明。

前三项属于有限页代表元关系。原 `strongConvergenceFromComparison` 占位定理
已移除：`PageAbutmentComparisonWitness` 只给逐点、逐页的比较，不能自动推出
后续页面稳定、页面间 coherence 和统一的 `E_∞` 数据。强收敛必须显式提供
`StrongConvergenceWitness`，或在将来先证明满足这些额外条件的构造定理。

原 `differentialRelationCrossedOfTwo` 占位命题不能直接证明：它把同一页上的
`d_r(x)=y₁` 与 `d_r(x)=y₂` 当作两个不同目标，但页上目标由函数性必然相等，
而历史定理比较的是**关联分次代表元**，并且额外假设 `y₁ ≠ y₂`。
目前已分离严格 filtered-lift 形式的 `RepresentativeRelation`；尚不能称其
等价于历史的商集关系。目标差属于页边界、边界首次出现页，以及精确目标
crossing 蕴含普通 crossing 的历史引理已迁入并验证。要恢复完整 crossing
定理，还须证明代表元关系的比较及其与商页微分的兼容。

## 下次继续时

优先在 `SSData` 内部证明有限页代表元关系，再由适配层对接 Mathlib；
当前 `PageView` 仅留作尚未完成的跨构造比较，不作为内部推理前提。
不要重新引入 witness 装配层，
也不要另建一套 `Z_r`、`B_r`、页面或谱序列定义。
