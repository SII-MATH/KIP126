# Solution：论文推导与最终证明

这里保存从基础结构、文献结果 A(M) 和计算结果 C(M) 推导论文结论的声明及证明。只有 `h6_sq_permanent.lean` 与 Main/Challenge 镜像对应；所有中间结果按数学主题维护一份陈述和证明，未完成的证明在这里保留 `sorry`。

| 组件 | 内容与当前状态 |
| --- | --- |
| [StageInput.lean](StageInput.lean) | 从唯一 `Nonempty Challenge2` 假设选择关联见证，并投影同一模型上的 A(M) 与 C(M) |
| [Tools](Tools/README.md) | 本文广义 Leibniz、广义 Mahowald 和有限 stretching 的独立证明任务；命题语言在 Def，不作为 A(M) 输入。 |
| [ChoiceIndependence](ChoiceIndependence/README.md) | 同一模型上的规范化 BX 判据和 C₄/C₅ 选择无关性；实际选择存在性及不定性论证待完成。 |
| [DifferentialReduction](DifferentialReduction/README.md) | Proposition 7.8 和候选微分归约的准确目标；`Conclusion.lean` 已证明给定 7.8/7.9 后的逻辑收尾。 |
| [ExtensionObstruction](ExtensionObstruction/README.md) | 同一模型上的 Proposition 7.9 目标 `EtaChoice → C3 → ¬ C5`，不作为外部输入。 |
| [Computation](Computation/README.md) | 已有输入上的维数、非零、消失和归约推论，以及保留精确前提的待证义务。 |
| [Literature](Literature/) | 文献输入的消费构造、证据提取和条件推论；来源合同位于 Interface/Challenge。 |
| [Route/Predicates.lean](Route/Predicates.lean)／[Selected.lean](Route/Selected.lean) | 保存 Proposition 7.8 的局部单射目标，并将 Cν 与 λ 单步单射特化到同一阶段见证；Proposition 7.8/7.9 的证明仍为 `sorry`。 |
| [h6_sq_permanent.lean](h6_sq_permanent.lean) | 唯一 T(M) 的最终串接已实现，仍依赖 7.8/7.9 及上游证明义务。 |

`KIP126.Solution.Near126.*` 的历史公开名称保留于上述主题中，旧自由谓词中间接口已由实际模型上的命题替代。中间 Challenge 镜像已删除，Solution 的已有证明继续保留；Def 和 Interface 同样只为完整的 `Nonempty Challenge1`、`Nonempty Challenge2` 保留阶段配对，内部命题只在各自 Solution 维护。

所有固定消费入口沿用 `Main.StageInput.witness`。Challenge2 将文献与计算分为两个 structure，共享同一个模型，C(M) 只指计算部分。固定数据证书在独立 LinProgram，模型认证在 Interface；Main 从阶段输入消费结果。目录名 Solution 或编译通过都不表示完整数学证明已经完成。

## 最终命题与证明

[h6_sq_permanent.lean](h6_sq_permanent.lean) 与
[Challenge](../Challenge/h6_sq_permanent.lean) 使用完全相同的类型：

```lean
NonzeroSurvival sphereAdamsData (2, 128) standardH6Square
```

证明体通过 `permanent_of_propositions` 串接 Proposition 7.8 和 7.9，使用
`Main.StageInput.witness` 的同一模型、η、标签以及 A(M)/C(M)，没有借用
Challenge 占位。两条 Proposition 在 [Route/Selected.lean](Route/Selected.lean)
中仍为 `sorry`，上游交付也未全部完成，因此完整的非零永久存活证明仍未完成。

文件已从 Final 子目录上移，声明命名空间
`KIP126.Solution.Final.H6SquarePermanent` 保留不变。需要计算标签比较时可用
`computedH6Square_eq_standardH6Square` 或
`computedH6Square_nonzeroSurvival_iff_standard`；它们不依赖最终证明，也不是
另一版存活定理。标准 h₆² 的独立定义和最终目标类型不变。
