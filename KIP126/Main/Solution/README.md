# Solution：论文推导与最终证明

这里保存从基础结构、文献结果 A(M) 和计算结果 C(M) 推导论文结论的声明及证明。只有 Final 与 Main/Challenge 镜像对应；所有中间结果按数学主题维护一份陈述和证明，未完成的证明在这里保留 `sorry`。

| 组件 | 内容与当前状态 |
| --- | --- |
| [Tools](Tools/README.md) | 本文广义 Leibniz、广义 Mahowald 和有限 stretching 的待证命题定义；不作为 A(M) 输入。 |
| [ChoiceIndependence](ChoiceIndependence/README.md) | 同一模型上的规范化 BX 判据和 C₄/C₅ 选择无关性；实际选择存在性及不定性论证待完成。 |
| [DifferentialReduction](DifferentialReduction/README.md) | Proposition 7.8 和候选微分归约的准确目标；`Conclusion.lean` 已证明给定 7.8/7.9 后的逻辑收尾。 |
| [ExtensionObstruction](ExtensionObstruction/README.md) | 同一模型上的 Proposition 7.9 目标 `EtaChoice → C3 → ¬ C5`，不作为外部输入。 |
| [Computation](Computation/README.md) | 已有输入上的维数、非零、消失和归约推论，以及保留精确前提的待证义务。 |
| [Literature](Literature/) | 文献输入的消费构造、证据提取和条件推论；来源输入 statement 保留在 Axiom。 |
| [Route/Selected.lean](Route/Selected.lean) | 将 Cν 与 λ 单步单射特化到同一阶段见证；Proposition 7.8/7.9 的证明仍为 `sorry`。 |
| [Final](Final/README.md) | 唯一 T(M) 的最终串接已实现，仍依赖 7.8/7.9 及上游证明义务。 |

`KIP126.Solution.Near126.*` 的历史公开名称保留于上述主题中，旧自由谓词中间接口已由实际模型上的命题替代。中间 Challenge 镜像已删除，Solution 的已有证明继续保留；Def 和 Interface 同样只为完整的 `Nonempty Challenge1`、`Nonempty Challenge2` 保留阶段配对，内部命题只在各自 Solution 维护。

所有固定消费入口沿用 `Main.StageInput.witness`。Challenge2 将文献与计算分为两个 structure，共享同一个模型，C(M) 只指计算部分。固定数据证书在独立 LinProgram，模型认证在 Interface；Main 从阶段输入消费结果。目录名 Solution 或编译通过都不表示完整数学证明已经完成。
