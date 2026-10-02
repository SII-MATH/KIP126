# M 的固定内部球谱与标准元素

这里从同一个 `Challenge1` 见证特化已有通用构造，不引入新的公理，也不导入 C(M)。目录位于 Interface/Axiom，是因为固定基础的存在性仍是第 0 阶段的开发输入；并非这些定义各自是公理。

| 文件 | 职责 |
| --- | --- |
| [Sequence/Data.lean](Sequence/Data.lean) | `sphereAdamsModel`、`sphereAdamsData`：同一球谱 Adams 塔生成的内部谱序列。 |
| [Classes/Data.lean](Classes/Data.lean) | `standardH6`、`standardH6Square`：指定 Milnor cocycle 在同一内部 E₂ 上的像。 |
| [Classes/Proofs.lean](Classes/Proofs.lean) | `standardH6Square_ne_zero`：复用独立于 CSV 的 cobar 非零性。 |

通用、带显式基础和坐标参数的定义在 [Def 中的内部标准类](../../../Def/ClassicalAdams/SphereClasses/Hi/Internal/Data.lean)。`standardH6Square` 是 `[ξ₁^64 | ξ₁^64]` 的类，双次数为 `(s,t)=(2,128)`。这里的命名不额外假设所提供的页乘法与 cobar 乘法相容。

[标准 Final](../../../Main/Challenge/Final/h6_sq_permanent.lean) 使用这个内部元素和 `NonzeroSurvival`。计算编码的识别在 [Lin 比较层](../../../Main/Solution/Computation/Comparisons/Classes.lean)，不参与标准元素的定义。

旧 `Main/Axiom/Literature/FixedSSData` 与 `Main/Axiom/LinProgram/Interpretation/Sphere` 保留为兼容导入，公开序列名称不变。
