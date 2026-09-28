# Solution / LinProgram

本组件证明固定程序输出的解释，并提供所需认证辅助结论。a05 的 CSV 基认证已从 Def／Challenge1 迁入本阶段。

## 1. 原先期望包含什么

完成本组件已有目标的证明，并清楚区分已用假设、辅助定义和仍待验证的结论。子文件的具体职责见下面清单；更大范围的数学目标以所属领域 README 与 [接口审核 #138](https://github.com/SII-MATH/KIP126/issues/138) 为准。

## 2. 现在包含什么

| 文件 | 已有对象或结论（选列） |
| --- | --- |
| [BasisTable.lean](BasisTable.lean) | `basisTable_correct` |
| [SphereBasis.lean](SphereBasis.lean) | 同一 presentation 上的实际 E₂ 坐标及 CSV 值相容性 |
| [SquareDetection.lean](SquareDetection.lean) | `u_cube`, `u_square_ne_zero`, `u_pow_cap`, `evaluate_X`, `evaluate_polynomialOfPowers` 等 11 个声明 |

## 3. 大概完成度

固定基认证仍为 `sorry`；`sphereBasis` 的运输构造已有证明，但依赖该辅助认证。Main 通过 Challenge2 消费实际坐标，不直接导入此证明。

未冻结的任务总量没有可靠分母，因此不把文件数或 `sorry` 比率写成数学完成百分比。领域入口给出整体进度；本页给出可核查的局部实现状态。

## 4. 接下来还需要完成什么

- [basisTable_correct](BasisTable.lean)：仍需证明固定单项式线性无关且生成，范围保持全部非负 s,t 且 t ≤ 261。

## 5. 后续应该一步一步如何做

1. 对照上面的声明及其直接 imports，确认本组件的数学条件和消费端，先处理已报告的陈述问题。
2. 需要改公共定义或冻结陈述时交由整合者协调；同步目标、输入接口与对应证明，不单方扩大前提。
3. 按依赖顺序处理已列出的未完成内容；复用已有证明，保持数据、条件和结果职责清楚。
4. 用最小受影响模块检查编译及调用端；涉及阶段接口时核对完整类型，证明完成与编译成功分别判断。
5. 完成一项后更新本页的现有内容和剩余事项；不要把本次目录迁移算作数学成果。

显式接受认证的通用基构造位于 [Def](../../../Def/AdamsE2/LinBasisTable/Certification/Data.lean)；相关验证：[SquareDetection](SquareDetection/README.md)、[SquareDimension](SquareDimension/README.md)。
