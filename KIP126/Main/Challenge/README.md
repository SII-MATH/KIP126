# Challenge：最终目标

本目录只保留论文最终目标 T(M) 的唯一陈述，其对应证明位于 [Solution/Final](../Solution/Final/README.md)。Challenge 正文按约定保留 `by sorry`，不表示定理已经证明。

| 文件 | 内容 |
| --- | --- |
| [Final/h6_sq_permanent.lean](Final/h6_sq_permanent.lean) | 主目标 T(M)：`NonzeroSurvival sphereAdamsData (2, 128) standardH6Square`。 |

所有中间结果，包括计算推论、文献输入提取、选择无关性、微分归约和 Proposition 7.8/7.9，只在 Main/Solution 保留陈述与证明，不建立 Challenge 镜像，也不改为 A(M) 或 C(M) 输入。Def 和 Interface 同样只为完整的 `Nonempty Challenge1`、`Nonempty Challenge2` 保留阶段配对，内部命题只在各自 Solution 维护。

最终 Solution 已串接同一见证上的 Proposition 7.8/7.9；二者的证明仍为 `sorry`，完整数学证明尚未完成。

标准内部元素现已独立于 C(M) 定义；计算层用已证等式识别 CSV 平方与标准平方。所选路线的旧自由谓词接口已重述到实际模型；Proposition 7.8/7.9、上游构造及计算认证仍待证明。参见 [Main 的当前状态](../README.md)。
