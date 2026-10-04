# 谱序列：当前结构与证明核对入口

> 归档于 2026-10-04：本文件保留整理时的方案与状态，不再作为当前规范或进度入口。当前职责见 [AGENTS.md](../../AGENTS.md)、[项目边界](../../PROJECT_BOUNDARY.md) 和 [接口说明](../STAGE0_INTERFACES.md)。

本页维护继续开发所需的结构和具体未完成事项。声明、类型和证明依赖以
Lean 源码为准；逐声明状态由 Blueprint 维护，项目验收以
[PROJECT_BOUNDARY.md](../../PROJECT_BOUNDARY.md) 为准。

## 构造与依赖

| 部分 | 当前源码入口 | 责任 |
| --- | --- | --- |
| 内部页面与态射 | [Basic/Data.lean](../../KIP126/Def/SpectralSequence/Basic/Data.lean) | `SSData`、`PreSS`、`SpectralSequence`、循环/边界商页和微分 |
| 范畴与相邻页 | [Basic/Category/](../../KIP126/Def/SpectralSequence/Basic/Category/)、[Basic/PageHomology/](../../KIP126/Def/SpectralSequence/Basic/PageHomology/) | 内部态射范畴及页面同调语言 |
| 过滤复形 | [FilteredComplex/](../../KIP126/Def/SpectralSequence/FilteredComplex/)、[FilteredDifferential/](../../KIP126/Def/SpectralSequence/FilteredDifferential/) | 从过滤、循环及边界构造内部谱序列 |
| 收敛与完备化 | [Convergence/](../../KIP126/Def/SpectralSequence/Convergence/)、[Completion/](../../KIP126/Def/SpectralSequence/Completion/) | 实际滤过、关联分次、收敛和完备化的条件与比较 |
| ESS 与代表关系 | [BoundedExtension/](../../KIP126/Def/SpectralSequence/BoundedExtension/)、[UnboundedExtension/](../../KIP126/Def/SpectralSequence/UnboundedExtension/)、[Crossing/](../../KIP126/Def/SpectralSequence/Crossing/) | 扩张谱序列、代表元与 crossing 语言 |
| Adams 塔 | [TowerSSData/Sequence/Data.lean](../../KIP126/Def/ClassicalAdams/TowerSSData/Sequence/Data.lean) | 从指定单位和同一对象的实际塔构造内部谱序列 |
| 固定球谱与类 | [StandardSphere/](../../KIP126/Def/StageInput/StandardSphere/) | 同一 Def 实现上的 `sphereAdamsData`、`standardH6Square` |
| Mathlib 适配 | [Mathlib/SpectralSequence/](../../KIP126/Mathlib/SpectralSequence/) | 对既有内部构造作局部比较；最终目标使用内部谱序列 |

`PreSSMorphism.comm_d` 和 `SpectralSequenceMorphism.comm_d` 现在引用
由底层映射及循环/边界保持性诱导的 `pageMapAt`，不再量化任意页映射。
旧 issue #132 描述的退化字段已被替换；不能继续把旧字段当成当前缺口。

标准 `h₆²` 的双次数是 `(s,t)=(2,128)`，其定义来自指定 Milnor cocycle，
不使用固定 CSV。最终命题的 `NonzeroSurvival` 在内部 `SSData` 上要求
同一个无限循环代表元及其非零 E∞ 像；见
[Permanence/Predicates.lean](../../KIP126/Def/SpectralSequence/Permanence/Predicates.lean)。

## 当前明确的证明责任

- [PageComparison/Raw/Proofs.lean](../../KIP126/Def/SpectralSequence/PageComparison/Raw/Proofs.lean)
  的 `left_middle_comm` 和 `middle_right_comm` 仍为 `sorry`。
- [Def/Solution/Implementation.lean](../../KIP126/Def/Solution/Implementation.lean)
  的固定实现存在性证明仍为 `sorry`。
- [Interface/Solution/Foundation.lean](../../KIP126/Interface/Solution/Foundation.lean)
  的 `standardSphereApplicability` 仍须证明同一固定球塔的 BHS 适用性。
- [当前接口规范](../STAGE0_INTERFACES.md)规定同一模型上的收敛、分离性、消失线、
  文献适用性、计算认证及本文推导责任。内部构造存在不交付这些具体实例的证明。

[Mathlib 代表关系比较](../../KIP126/Mathlib/SpectralSequence/FilteredComplex/Relations/Proofs.lean)
中的三条 lift/relation 引理显式要求 canonical `PageView`。
商页微分目标的唯一性不能替代关联分次代表元级的 no-crossing 结论。
逐点页面同构也不能单独推出强收敛、页面稳定和实际 abutment 比较。

继续开发时按实际消费者选择一条声明，核对其完整类型、来源适用条件与依赖，
再补对应证明。通用数学归 Def，模型上的交付证明归 Interface，论文推导归 Main。
这些核对入口不构成全库证明完成报告。
