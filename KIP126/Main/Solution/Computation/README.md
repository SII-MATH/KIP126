# Solution / Computation

本页记录本组件在目录迁移时的状态。数学范围参见[所属阶段](../../README.md)；本次只迁移，未补证明或修改陈述。

## 1. 原先期望包含什么

完成本组件已有目标的证明，并清楚区分已用假设、辅助定义和仍待验证的结论。子文件的具体职责见下面清单；更大范围的数学目标以所属领域 README 与 [接口审核 #138](https://github.com/SII-MATH/KIP126/issues/138) 为准。

## 2. 现在包含什么

| 文件 | 已有对象或结论（选列） |
| --- | --- |
| [Comparisons/Classes.lean](Comparisons/Classes.lean) | 取出 C(M) 的标准平方识别，并改写非零存活命题（2 条） |
| [Tower/Survival.lean](Tower/Survival.lean) | 将非零存活转成任意有限塔层的提升条件（2 条） |
| [Differential/Second.lean](Differential/Second.lean) | 实际塔中的 d₂ 表达式、消失判据和条件提升（4 条） |
| [Dimension.lean](Dimension.lean) | `sphereAdamsData_square_eq_zero_or`, `sphereAdamsData_eq_computedH6Square_of_ne_zero` |
| [Nonvanishing.lean](Nonvanishing.lean) | `computedH6Square_ne_zero_of_check`, `computedH6Square_ne_zero` |
| [Reduction.lean](Reduction.lean) | `computedH6Square_nonzeroSurvival_iff` |
| [Vanishing.lean](Vanishing.lean) | `sphereAdamsData_h6_incoming_source_subsingleton`, `sphereAdamsData_h6_incoming_d_eq_zero`, `sphereAdamsData_h6_nonzeroSurvival_iff` |

## 3. 大概完成度

上述 8 条比较、存活和微分定理已按数学职责迁出 `LinProgram/Interpretation`，声明及证明保持不变；配对的 Challenge 声明保留 `sorry`。

[代表元比较](LinProgram/Interpretation/Tower/Proofs.lean)的 3 条定理暂留原位置。其数学比较、计算识别及消费职责尚待拆分；本次没有调整其认证依赖。

导入闭包仍涉及项目假设：`linE2Presentation`, `standardFoundation`。

未冻结的任务总量没有可靠分母，因此不把文件数或 `sorry` 比率写成数学完成百分比。领域入口给出整体进度；本页给出可核查的局部实现状态。

## 4. 接下来还需要完成什么

- 结合消费端检查现有结果是否足以覆盖领域入口列出的预期；没有占位正文不代表全部所需结果已经写出。
- 后续由 Interface 的相应证明解除上述阶段假设；调用这些假设得到的条件推论不能用来证明假设自身。

## 5. 后续应该一步一步如何做

1. 对照上面的声明及其直接 imports，确认本组件的数学条件和消费端，先处理已报告的陈述问题。
2. 需要改公共定义或冻结陈述时交由整合者协调；同步目标、输入接口与对应证明，不单方扩大前提。
3. 按依赖顺序处理已列出的未完成内容；复用已有证明，保持数据、条件和结果职责清楚。
4. 用最小受影响模块检查编译及调用端；涉及阶段接口时核对完整类型，证明完成与编译成功分别判断。
5. 完成一项后更新本页的现有内容和剩余事项；不要把本次目录迁移算作数学成果。
