# Challenge

本页记录本组件在目录迁移时的状态。数学范围参见[所属阶段](../README.md)；本次只迁移，未补证明或修改陈述。

## 1. 原先期望包含什么

准确保留本阶段的目标陈述；证明正文固定为 `by sorry`，证明工作由同路径的 Solution 承担。子文件的具体职责见下面清单；更大范围的数学目标以所属领域 README 与 [接口审核 #138](https://github.com/SII-MATH/KIP126/issues/138) 为准。

## 2. 现在包含什么

| 文件 | 已有对象或结论（选列） |
| --- | --- |
| [Final/h6_sq_permanent.lean](Final/h6_sq_permanent.lean) | `h6_sq_permanent` |
| [Final/h6_sq_permanent_computational.lean](Final/h6_sq_permanent_computational.lean) | `h6_sq_permanent_computational` |
| [Near126/any_choice_criterion.lean](Near126/any_choice_criterion.lean) | `any_choice_criterion` |
| [Near126/c3_excludes_c5.lean](Near126/c3_excludes_c5.lean) | `c3_excludes_c5`, `c3_excludes_c5` |
| [Near126/c4_c5_choice_equivalence.lean](Near126/c4_c5_choice_equivalence.lean) | `c4_c5_choice_equivalence` |
| [Near126/d12_dichotomy_and_condition_equivalence.lean](Near126/d12_dichotomy_and_condition_equivalence.lean) | `d12_dichotomy_and_condition_equivalence` |
| [Near126/only_d12_differential_reduction.lean](Near126/only_d12_differential_reduction.lean) | `only_d12_differential_reduction` |

## 3. 大概完成度

**陈述轨已有 8 条 theorem/lemma 声明；配对迁移已完成。** 这里的 `sorry` 是陈述轨约定，不是这个目录要消除的证明义务。陈述是否准确、是否绑定正确对象须按领域审核；不能由占位正文推断数学进度。

## 4. 接下来还需要完成什么

- 核对现有目标的条件、次数及共享对象，并保持与 Solution 的完整类型一致。
- 证明推进和未完成义务记录在同阶段 Solution；本目录继续保留陈述。

## 5. 后续应该一步一步如何做

1. 对照上面的声明及其直接 imports，确认本组件的数学条件和消费端，先处理已报告的陈述问题。
2. 需要改公共定义或冻结陈述时交由整合者协调；同步目标、输入接口与对应证明，不单方扩大前提。
3. 在对应 Solution 文件实现证明；本目录只同步目标陈述。
4. 用最小受影响模块检查编译及调用端；涉及阶段接口时核对完整类型，证明完成与编译成功分别判断。
5. 完成一项后更新本页的现有内容和剩余事项；不要把本次目录迁移算作数学成果。

相关子组件：[Final](Final/README.md), [Near126](Near126/README.md)。
