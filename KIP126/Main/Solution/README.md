# Solution

本页记录本组件在目录迁移时的状态。数学范围参见[所属阶段](../README.md)；本次只迁移，未补证明或修改陈述。

## 1. 原先期望包含什么

完成本组件已有目标的证明，并清楚区分已用假设、辅助定义和仍待验证的结论。子文件的具体职责见下面清单；更大范围的数学目标以所属领域 README 与 [接口审核 #138](https://github.com/SII-MATH/KIP126/issues/138) 为准。

## 2. 现在包含什么

| 文件 | 已有对象或结论（选列） |
| --- | --- |
| [Computation/Dimension.lean](Computation/Dimension.lean) | `sphereAdamsData_square_eq_zero_or`, `sphereAdamsData_eq_computedH6Square_of_ne_zero` |
| [Computation/Nonvanishing.lean](Computation/Nonvanishing.lean) | `computedH6Square_ne_zero_of_check`, `computedH6Square_ne_zero` |
| [Computation/Reduction.lean](Computation/Reduction.lean) | `computedH6Square_nonzeroSurvival_iff` |
| [Computation/Vanishing.lean](Computation/Vanishing.lean) | `sphereAdamsData_h6_incoming_source_subsingleton`, `sphereAdamsData_h6_incoming_d_eq_zero`, `sphereAdamsData_h6_nonzeroSurvival_iff` |
| [Final/h6_sq_permanent.lean](Final/h6_sq_permanent.lean) | `h6_sq_permanent` |
| [Final/h6_sq_permanent_computational.lean](Final/h6_sq_permanent_computational.lean) | `h6_sq_permanent_computational` |
| [Near126/any_choice_criterion.lean](Near126/any_choice_criterion.lean) | `any_choice_criterion` |
| [Near126/c3_excludes_c5.lean](Near126/c3_excludes_c5.lean) | `c3_excludes_c5`, `c3_excludes_c5` |
| [Near126/c4_c5_choice_equivalence.lean](Near126/c4_c5_choice_equivalence.lean) | `c4_c5_choice_equivalence` |
| [Near126/d12_dichotomy_and_condition_equivalence.lean](Near126/d12_dichotomy_and_condition_equivalence.lean) | `d12_dichotomy_and_condition_equivalence` |
| [Near126/only_d12_differential_reduction.lean](Near126/only_d12_differential_reduction.lean) | `only_d12_differential_reduction` |

## 3. 大概完成度

**现有内容：11 个 Lean 文件、约 16 个显式声明，其中 16 条 theorem/lemma。** 本组件 6 个声明正文仍有 `sorry`/`admit`，处于实现中。

导入闭包仍涉及项目假设：`linE2Presentation`, `standardFoundation`, `standardMilnorCooperations`。

导入闭包有 5 个模块含显式占位正文（这是模块文本盘点，不是 Lean 声明级公理审计）。

未冻结的任务总量没有可靠分母，因此不把文件数或 `sorry` 比率写成数学完成百分比。领域入口给出整体进度；本页给出可核查的局部实现状态。

## 4. 接下来还需要完成什么

- [h6_sq_permanent_computational](Final/h6_sq_permanent_computational.lean#L11)：现有 `theorem` 正文中的占位仍待处理；本次原样保留。
- [c3_excludes_c5](Near126/c3_excludes_c5.lean#L9)：现有 `theorem` 正文中的占位仍待处理；本次原样保留。
- [c3_excludes_c5](Near126/c3_excludes_c5.lean#L21)：现有 `theorem` 正文中的占位仍待处理；本次原样保留。
- [d12_dichotomy_and_condition_equivalence](Near126/d12_dichotomy_and_condition_equivalence.lean#L10)：现有 `theorem` 正文中的占位仍待处理；本次原样保留。
- [c4_c5_choice_equivalence](Near126/c4_c5_choice_equivalence.lean#L10)：现有 `theorem` 正文中的占位仍待处理；本次原样保留。
- [only_d12_differential_reduction](Near126/only_d12_differential_reduction.lean#L10)：现有 `theorem` 正文中的占位仍待处理；本次原样保留。
- 后续由 Interface 的相应证明解除上述阶段假设；调用这些假设得到的条件推论不能用来证明假设自身。

## 5. 后续应该一步一步如何做

1. 对照上面的声明及其直接 imports，确认本组件的数学条件和消费端，先处理已报告的陈述问题。
2. 需要改公共定义或冻结陈述时交由整合者协调；同步目标、输入接口与对应证明，不单方扩大前提。
3. 按依赖顺序处理已列出的未完成内容；复用已有证明，保持数据、条件和结果职责清楚。
4. 用最小受影响模块检查编译及调用端；涉及阶段接口时核对完整类型，证明完成与编译成功分别判断。
5. 完成一项后更新本页的现有内容和剩余事项；不要把本次目录迁移算作数学成果。

相关子组件：[Computation](Computation/README.md), [Final](Final/README.md), [Near126](Near126/README.md)。
