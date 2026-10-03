# Challenge：最终目标

本目录只保留论文最终目标 T(M) 的唯一陈述，其对应证明位于 [Solution 的最终证明](../Solution/h6_sq_permanent.lean)。Challenge 正文按约定保留 `by sorry`，不表示定理已经证明。

| 文件 | 内容 |
| --- | --- |
| [h6_sq_permanent.lean](h6_sq_permanent.lean) | 主目标 T(M)：`NonzeroSurvival sphereAdamsData (2, 128) standardH6Square`。 |

这对应论文 Theorem 1.4 / 7.1：同一球谱内部 Adams 谱序列中的标准 h₆²
非零存活至 E∞。标准类由 Milnor cocycle `[ξ₁^64 | ξ₁^64]` 定义；
`NonzeroSurvival` 要求共同的 Z∞ 代表及非零 E∞ 像。陈述不使用 C(M) 或
CSV 数据，但固定基础仍由 Challenge1 提供。

文件已直接放在本目录，不再有 Final 子目录；声明命名空间
`KIP126.Challenge.Final.H6SquarePermanent` 保留不变。没有第二个计算版
最终目标，CSV 比较仅是证明中的辅助引理。

所有中间结果，包括计算推论、文献输入提取、选择无关性、微分归约和 Proposition 7.8/7.9，只在 Main/Solution 保留陈述与证明，不建立 Challenge 镜像，也不改为 A(M) 或 C(M) 输入。Def 和 Interface 同样只为完整的 `Nonempty Challenge1`、`Nonempty Challenge2` 保留阶段配对，内部命题只在各自 Solution 维护。

最终 Solution 已串接同一见证上的 Proposition 7.8/7.9；二者的证明仍为 `sorry`，完整数学证明尚未完成。

标准内部元素现已独立于 C(M) 定义；计算层用已证等式识别 CSV 平方与标准平方。所选路线的旧自由谓词接口已重述到实际模型；Proposition 7.8/7.9、上游构造及计算认证仍待证明。参见 [Main 的当前状态](../README.md)。
