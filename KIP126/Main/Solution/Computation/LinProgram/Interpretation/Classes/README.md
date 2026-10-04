# 计算标签与标准元素的比较

| 文件 | 职责 |
| --- | --- |
| [Data.lean](Data.lean) | `linToSphereE2`、`computedH6`、`computedH6Square`，通过 C(M) 的 presentation 解释 CSV 标签。 |
| [Proofs.lean](Proofs.lean) | `computedH6_mul_self`，计算标签的乘法等式。 |
| [Comparison/Proofs.lean](../../../Comparisons/Classes.lean) | `computedH6Square_eq_standardH6Square`，在同一个内部 E₂ 上识别 CSV 平方与标准 Milnor 平方；以及对应非零存活谓词的等价。 |

标准元素定义在 [Interface 的基础特化](../../../../../../Def/StageInput/StandardSphere/Classes/Data.lean)，不依赖本目录或 CSV 基正确性。比较引理使用固定 Lin presentation、已有的该次数穷尽描述和标准非零性，并不使用最终存活定理。

本目录没有新增公理或 `sorry`。结果仍在阶段输入下成立：基础对象由 Def 固定，foundation 与 presentation 来自同一 `Challenge2`。比较成立不等于最终永久存活证明完成。
