# Def Solution：基础构造与内部证明

本目录构造 Def 的固定数学实现，并维护通用基础的内部证明。它不依赖 Interface 或 Main 的开发期假设，也不再生产独立 Challenge1 见证。

| 文件 | 职责 |
| --- | --- |
| [Implementation.lean](Implementation.lean) | 固定稳定同伦实现及比较的构造责任 |
| [FoundationConsequences.lean](FoundationConsequences.lean) | 基础输入的内部推论 |
| [Toda.lean](Toda.lean) | Toda 相关内部目标及证明义务 |
| [Synthetic/Localization.lean](Synthetic/Localization.lean) | synthetic localization 的内部目标 |
| [Synthetic/Completion.lean](Synthetic/Completion.lean) | synthetic completion 的内部目标 |

实际球塔的完成和强收敛适用性改由 Interface 的 `Foundation.lean` 证明，交付给 `Challenge2.foundation`。原有构造、坐标及相容性义务仍需完成；`sorry` 与目录名不构成完成证据。
