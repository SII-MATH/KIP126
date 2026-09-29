# Main 输入边界整理

`Main/Axiom/` 只保留阶段输入、同一见证的投影、显式输入类型和来源信息。
目录及其聚合入口不再导入 Main 推导、Interface 生产证明或 Checks，也不再设置
`Proofs.lean`。来源元数据校验和已有证据的透明提取不构成数学输入的生产证明。

## 归位结果

| 原内容 | 当前归属 |
| --- | --- |
| 计算输入的基、坐标、微分、长层及 Tower 推论 | `Main/Solution/Computation/LinProgram/` |
| 文献输入的次数推论、near-126 推导和路线适配推论 | `Main/Solution/Literature/` |
| 消费接口示例 | `Main/Examples/LinProgram/` |
| 附录来源表的元数据验证 | `Checks/SourceMetadata/AppendixTable/` |
| 固定 CSV 的 near-126 名称、次数证书与类表达式 | `LinProgram/Interpretation/Near126/` |
| 路线输入使用的类型语言 `DependencyTypes` | `Main/Axiom/Literature/Route/DependencyTypes.lean` |

保留原有公开声明名称。105 条迁入 Main 证明轨道的定理补齐同路径 Challenge 声明；
Challenge 名称在原命名空间内增加 `Challenge` 分组，证明均为 `sorry`。
这些声明导入其 Solution 以共用原有数据定义和记号，但 Solution 不导入 Challenge。
其中 104 条 Solution 证明正文不变；平方标签比较改为统一交付字段的投影。

## 平方标签的生产与消费

`Challenge2.SphereSquareInterface.standard_class` 陈述同一 presentation 下
`dataH6Sq` 的像等于独立定义的 `standardH6Square`。

`Interface/Solution/LinProgram/Square.lean` 使用显式传入的 presentation、固定数据的
两元素穷尽性证书和标准 cobar 类的独立非零性，生产该字段。此证明不使用 Main 的
Challenge2 消费公理。Main 的 `computedH6Square_eq_standardH6Square` 只投影该字段，
并继续提供非零存活谓词的改写接口。

这条特定元素等式不替代一般的 cobar cup／表格乘法／实际 Adams 乘法比较。
完整乘法相容性的生产责任仍在 Interface，通用工具在 Def；已有
`Interface/Solution/LinProgram/Multiplication.lean` 和完整 Challenge2 构造中的
`sorry` 保持原状态。没有新增独立公理或 Solution 占位证明。

## 验证

- `python -m unittest scripts.test_stage_boundary_layout`：8 项通过，涵盖导入无缺失／无环、
  独立数据管线、输入不依赖证明端、Main 消费不导入 Interface 实现及配对文件存在性。
- `python scripts/test-import-lin-selected.py`：6 项通过。转换器输出已改到 Main/Solution，
  配套 `records.json` 随消费证明迁移，避免再次生成 Main/Axiom 下的证明文件。
- 通过仓库共享缓存包装器编译全部 24 个迁移后的 Main Challenge 模块及其 Solution、
  Main 输入／证明入口、受影响示例和附录验证。
- `Checks.MainAxiomBoundary` 由 Lean 比较全部 105 对声明的完整类型和宇宙参数，
  并确认 Challenge 仍是开放声明；检查通过。
- Interface 的平方 Challenge/Solution、`Checks.ClassicalAdams.StandardFinalBoundary`
  和 `Checks.ClassicalAdams.FixedFinal` 编译通过。
- 最终 Challenge/Solution 的 `h6_sq_permanent.lean` 两个文件正文保持不变。

上述检查针对依赖重排与接口正确连接，不代表原有数学证明债务已消除；未运行全仓库构建。
