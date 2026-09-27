# Def / AdamsE2

## 1. 预期

保存 Adams E₂ 与 Lin 商代数的共享数学对象和确定性计算工具：presentation、生成元/关系、分次分量、表达式、乘法、basis schema、解析与 certificate checker。程序的固定原始数据和具体输出属于 Main 的 LinProgram 管线；“这些数据正确给出 basis/维数/非零性”的证明属于 Interface。

## 2. 现有

Def 中已有抽象 `Presentation`、`PageAlgebra`、表模型、Lin 多项式商、classes、表达式和值、纯 Lean 计算器、basis row schema、relation checker 和 certificate 数据。basis 正确性 statement、依赖它的实际 `Module.Basis` 构造、square detection 归档证明和 dimension 证明已经迁到 `Interface/Solution/LinProgram`；其中 `basisTable_correct` 仍有一个公开 `sorry`，后两类已有实质 kernel-checked 证明。固定 `LinE2Presentation` 及其依赖已迁到 `Main/Axiom/LinProgram`。

边界仍不纯：`LinModel/Data`、`LinCompute/Data` 直接 import Main 的 generated E₂，`Classes/Data` import Main 的 evidence-bearing interpretation。当前这些路径不递归引入项目 axiom，但确实把固定生成数据的模块所有权反向带进 Def。`coordinateCheck_sound` 还有 `sorry`，且 issue #138 已决定它不是当前冻结 A₀，只是工具内部正确性债务。

## 3. 粗略完成度

> 本节比例只是根据当前路线图、已有构造和已知数学缺口给出的主观规划估算，不是由文件数、声明数或 `sorry` 数计算出的可验证统计。

- **共享模型与确定性工具：约 55%–70%。** 核心表示、解析、归约和检测框架存在，足以支撑第一批 Interface proof slice。
- **从原始 Lin 输出到完整 C(M) 的数学验证：约 20%–35%。** 目前主要覆盖 E₂ basis/square 相关片段，尚未覆盖条件记录、其他谱、extension、sentinel 和全范围候选穷尽。

## 4. 待做

- 把固定 CSV 内容与版本/hash 从 Def 类型中抽离；Def 保留参数化 schema、解释函数和 checker。
- 明确 `LinCompute` 的终止、范围和错误语义，并决定是否证明 `coordinateCheck_sound`；不能把它伪装成已冻结接口。
- 让 Interface 的 basis/detection/dimension 结果形成可消费的 A₀/C(M) theorem，并与 Main axiom 类型一致。
- 建立 Lin E₂ comparison 到同一个内部 `sphereAdamsData.Page 2` 的严格边界，避免把固定实例重新塞回 Def。

## 5. 建议步骤

1. 先切断 `Def/AdamsE2 → Main/Axiom` 三条反向 import，以参数传递固定 raw/generated 数据。
2. 编译并审计已迁 Interface 的 basis、detection、dimension 纵切面。
3. 为每个 checker 写“语法结果意味着什么数学命题”的小 theorem，再组合成冻结接口。
4. 最后扩展 record schema；每次扩展同时加入翻译覆盖统计和语义回归。
