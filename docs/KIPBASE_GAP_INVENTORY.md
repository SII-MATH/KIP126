# KIPBase 与 KIP126：复用范围和核对入口

2026-09-29 清理：原文件记录 `110f643` / PR #113 时的迁移缺口，已经过时。
旧模块总数、`axiom` / `sorry` 数量、未完成清单及迁移顺序已移除。
保留此文件路径供现有引用使用；本文不宣称完成了两个库的逐声明差异审计。

## 当前源码能确认的内容

| 部分 | 已确认内容 | 复用时需要核对 |
| --- | --- | --- |
| `KIPBase/SpectralSequence/` | 已有 SSData、谱序列、过滤复形构造、有界及无界扩张谱序列和相应证明；本次源码扫描未发现 `axiom`、`sorry` 或 `admit` 声明／占位 | 具体定理的参数、范围、代表元与收敛含义，以及到 KIP126 类型的适配；无占位不意味着已迁入 KIP126 |
| `KIPBase/StableHomotopy/` | 提供稳定同伦语言及相关推导；`AdamsSS` 等具体输入仍为显式公理 | 区分已证明的通用结论、模型数据及需要交付的具体 Adams 构造 |
| `KIPBase/Synthetic/` | 提供 synthetic 对象、λ 商、比较语言和相关推导；`SynAdamsSS`、ν 等仍有显式公理输入 | 核对同一模型、文献适用条件和比较相容性，不能由 SpectralSequence 子目录的完成度推断这里已经无假设 |
| `KIPBase/multiplicativeSS/` | 提供乘法、Massey、Toda、Moss 等候选复用内容 | 逐项检查当前声明；本次未重新审计全部证明或与 KIP126 的覆盖差异 |
| `KIPBase/Compatibility/FilteredComplex.lean` | 已有过滤、过滤复形、associated graded 及部分操作的对应 | 该桥接不声明两套谱序列全部页与 abutment 已经等价 |

本次仅核对源码，未重新编译，也未执行完整的 Lean 公理依赖审计。

## 固定 M 时的具体入口

通用谱序列理论已有实现。KIP126 的 classical 对象也已有明确构造：
[adamsTowerInternalSpectralSequence](../KIP126/Def/ClassicalAdams/TowerSSData/Sequence/Data.lean)
从给定单位映射及对象的 Adams 塔构造谱序列；
[球谱特化](../KIP126/Def/StageInput/StandardSphere/Sequence/Data.lean)
使用同一个 `standardFoundation`。

完整路线所需的模型数据及相容条件见
[Route.Model](../KIP126/Def/Kervaire/Route/Model/Coherent/Data.lean)。
这些结构的定义、实际见证的构造、表格解释的认证是不同任务；
不能把未完成的模型绑定重新描述成“通用谱序列理论尚未实现”。
计算交付与模型绑定的关系见 [C(M) 交付说明](STAGE0_INTERFACES.md)。

## 继续复用的方式

以当前 Lean 声明为准，按一个具体消费需求核对 KIPBase 定理与 KIP126 类型。
保留适用条件，复用已完成证明，并检查模型、页号、次数与乘法的对应。
KIP126 的内部 SSData/PreSS 模型与 Mathlib 适配层职责以
[PROJECT_BOUNDARY.md](../PROJECT_BOUNDARY.md) 为准；不沿用旧清单中将 Mathlib 谱序列作为唯一内部模型的安排。

组件构建入口见 [KIPBase README](../KIPBase/README.md)。
原始来源与快照检查见 [迁移档案](../migration/kip-base/README.md)，
其中的旧统计不用于判断当前证明完成度。
