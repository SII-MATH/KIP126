# LinProgram：计算交付证明

本目录把固定程序工件及局部证书与选定模型相联系，生产 `Challenge2.ComputationInterface` 的 C(M) 结论。本目录同时保存内部认证目标的准确陈述和证明，不再建立 Challenge 镜像；唯一阶段目标是 直接 `Challenge2` 构造。原始数据、转换程序、生成记录、参数化解释及纯数据证书位于独立 [LinProgram](../../../LinProgram/README.md)。

| 文件 | 职责与状态 |
| --- | --- |
| [BasisTable.lean](BasisTable.lean) | 认证 v126.3.cw49、所有自然数 s,t 且 t ≤ 261 的固定 CSV 单项式线性无关且张成；仍为 `sorry`，不属于基础模型选择 |
| [SphereBasis.lean](SphereBasis.lean) | 经同一个 presentation 将基认证运输为实际 E₂ 坐标；已实现运输，依赖待证基认证 |
| [Multiplication.lean](Multiplication.lean) | Lin 表示中的乘法、单位与实际球谱 E₂ 相容；仍为 `sorry` |
| [Staircase.lean](Staircase.lean) | 固定 staircase 快照的数学语义；仍为 `sorry` |
| [Square.lean](Square.lean) | 使用外部 `Certificates/SquareDetection` 和 `Certificates/SquareDimension` 的局部证明，构造 `SphereSquareInterface` |

`SphereSquareInterface` 交付实际 E₂ 上的平方非零性、该次数每个元素为零或该平方，
以及 `standard_class`：该计算类等于独立定义的标准 cobar 类。
识别证明使用同一显式 presentation 下的固定数据穷尽证书和独立标准非零性；
Main 从同一个 Challenge2 见证消费，不重新进行认证或导入这里的生产证明。

标准 cobar cup、CSV 乘法和实际 Adams 层乘法的完整相容性仍是 Interface 的
证明责任。通用比较工具放在 Def，固定模型上的生产使用同一基础、坐标和配对。
`standard_class` 只识别此特定元素，不声称一般乘法比较已经完成；
`Multiplication.lean` 的已有 `sorry` 保留其真实状态。

这里的生产 theorem 不得使用 Main 的 Challenge2 消费公理。固定证书已有证明不等于整个数据解释均已认证；基、乘法、staircase 和完整 Challenge2 构造的证明债务仍保留。通用的显式认证基构造继续位于 [Def](../../../Def/AdamsE2/LinBasisTable/Certification/Data.lean)。
