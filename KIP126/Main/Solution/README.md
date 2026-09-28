# Solution：论文推导与最终证明

这里保存从基础结构、文献结果 A(M) 和计算结果 C(M) 推导论文结论的声明及证明。只有 Final 与 Main/Challenge 镜像对应；中间推导按数学主题维护一份声明和证明。

| 组件 | 内容与当前状态 |
| --- | --- |
| [Tools](Tools/README.md) | 本文广义 Leibniz、广义 Mahowald 和有限 stretching 的待证命题定义；不作为 A(M) 输入，尚无规则证明。 |
| [ChoiceIndependence](ChoiceIndependence/README.md) | BJM/BX 判据的选择传输，以及 C₄、C₅ 的选择无关性。前者已有条件证明；后者的陈述须修正，证明仍待完成。 |
| [DifferentialReduction](DifferentialReduction/README.md) | d₁₂ 候选归约、永久存活／非零 d₁₂ 二择一和条件等价；旧接口须绑定实际数学条件，正文仍为 `sorry`。 |
| [ExtensionObstruction](ExtensionObstruction/README.md) | C₃ 排除 C₅ 的扩张论证；旧自由谓词不足以支持结论，须重述后证明。 |
| [Computation](Computation/README.md) | 已有输入上的维数、非零、消失和归约推论。 |
| [Final](Final/README.md) | 唯一 T(M) 的证明轨，正文仍为 `sorry`；计算标签仅通过比较引理辅助证明。 |

原 `Solution/Near126` 的五个 Lean 文件已移入前三个主题，六条公开声明的类型与证明正文保留，包括两条历史 `c3_excludes_c5` 名称。`KIP126.Solution.Near126.*` 命名空间仅为 API 兼容而保留。原 `Challenge/Near126` 镜像已删除。

此处五个中间声明正文仍含 `sorry`，且其中部分 statement 有已知语义缺口；目录名 Solution 不代表证明完成。下一步先修正实际微分、检测与选择条件的绑定，显式列出来源经过核对的输入，再实现论文推导。不能把这些待证结论追加为 A(M)/C(M) 的假设。

当前阶段输入仍来自 Challenge1/Challenge2 的开发期存在性公理，相关上游证明债务没有因本次归位而消除。
