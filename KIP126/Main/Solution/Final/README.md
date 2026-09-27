# Solution / Final

本页记录本组件在目录迁移时的状态。数学范围参见[所属阶段](../../README.md)；本次只迁移，未补证明或修改陈述。

## 1. 原先期望包含什么

完成本组件已有目标的证明，并清楚区分已用假设、辅助定义和仍待验证的结论。子文件的具体职责见下面清单；更大范围的数学目标以所属领域 README 与 [接口审核 #138](https://github.com/SII-MATH/KIP126/issues/138) 为准。

## 2. 现在包含什么

| 文件 | 已有对象或结论（选列） |
| --- | --- |
| [h6_sq_permanent.lean](h6_sq_permanent.lean) | `h6_sq_permanent` |
| [h6_sq_permanent_computational.lean](h6_sq_permanent_computational.lean) | `h6_sq_permanent_computational` |

## 3. 大概完成度

**现有内容：2 个 Lean 文件、约 2 个显式声明，其中 2 条 theorem/lemma。** 本组件 1 个声明正文仍有 `sorry`/`admit`，处于实现中。

导入闭包仍涉及项目假设：`linE2Presentation`, `standardFoundation`, `standardMilnorCooperations`。

导入闭包有 1 个模块含显式占位正文（这是模块文本盘点，不是 Lean 声明级公理审计）。

未冻结的任务总量没有可靠分母，因此不把文件数或 `sorry` 比率写成数学完成百分比。领域入口给出整体进度；本页给出可核查的局部实现状态。

## 4. 接下来还需要完成什么

- [h6_sq_permanent_computational](h6_sq_permanent_computational.lean#L11)：现有 `theorem` 正文中的占位仍待处理；本次原样保留。
- 后续由 Interface 的相应证明解除上述阶段假设；调用这些假设得到的条件推论不能用来证明假设自身。

## 5. 后续应该一步一步如何做

1. 对照上面的声明及其直接 imports，确认本组件的数学条件和消费端，先处理已报告的陈述问题。
2. 需要改公共定义或冻结陈述时交由整合者协调；同步目标、输入接口与对应证明，不单方扩大前提。
3. 按依赖顺序处理已列出的未完成内容；复用已有证明，保持数据、条件和结果职责清楚。
4. 用最小受影响模块检查编译及调用端；涉及阶段接口时核对完整类型，证明完成与编译成功分别判断。
5. 完成一项后更新本页的现有内容和剩余事项；不要把本次目录迁移算作数学成果。
