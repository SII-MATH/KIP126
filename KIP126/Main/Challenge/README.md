# Challenge：最终目标

本目录只保留论文最终目标 T(M) 的唯一陈述，其对应证明位于 [Solution/Final](../Solution/Final/README.md)。Challenge 正文按约定保留 `by sorry`，不表示定理已经证明。

| 文件 | 内容 |
| --- | --- |
| [Final/h6_sq_permanent.lean](Final/h6_sq_permanent.lean) | 主目标 T(M)：`NonzeroSurvival sphereAdamsData (2, 128) standardH6Square`。 |

原 `Near126` 中的五个中间命题文件已与已有 Solution 合并，按主题归入 [选择无关性](../Solution/ChoiceIndependence/README.md)、[微分归约](../Solution/DifferentialReduction/README.md)、[扩张矛盾](../Solution/ExtensionObstruction/README.md)。它们属于论文推导，不再保留 Challenge 镜像，也没有改为 A(M) 或 C(M) 输入。

标准内部元素现已独立于 C(M) 定义；计算层用已证等式识别 CSV 平方与标准平方。旧中间接口的语义修正及永久存活证明仍待完成。参见 [Main 的当前状态](../README.md)。
