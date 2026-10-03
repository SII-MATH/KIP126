# Steenrod / MilnorCobar

本页记录本组件在目录迁移时的状态。数学范围参见[所属阶段](../../README.md)；本次只迁移，未补证明或修改陈述。

## 分层与直接入口

直接导入 `KIP126.Def.Steenrod.MilnorCobar.Proofs`，不再经过只重导出它的
`MilnorCobar.lean`。多项式层 `Polynomial/{Data,Predicates,Proofs}` 保存原始
运算、正规化 cochain 条件及保持性证明；本层的 Data/Predicates/Proofs 将
运算限制到 cochains，定义 cocycle 条件并提供相应定理。

第二层的数据构造使用第一层的保持性证明，相关证明义务仍在 Proofs 模块中；
删除入口不新增假设、不改变具体公式或声明名称。原入口的历史未证数量
不作为当前证明状态，具体状态应核对实际声明及其依赖。

## 1. 原先期望包含什么

共享数学对象、条件和构造所需的性质。子文件的具体职责见下面清单；更大范围的数学目标以所属领域 README 与 [接口审核 #138](https://github.com/SII-MATH/KIP126/issues/138) 为准。

## 2. 现在包含什么

| 文件 | 已有对象或结论（选列） |
| --- | --- |
| [Data.lean](Data.lean) | `differential`, `cup`, `h6Cochain`, `h6SquareCochain` |
| [Predicates.lean](Predicates.lean) | `IsCycle` |
| [Proofs.lean](Proofs.lean) | `cup_add_left`, `cup_add_right`, `cup_smul_left`, `cup_smul_right`, `h6Cochain_isCycle` 等 6 个声明 |

## 3. 大概完成度

**现有内容：3 个 Lean 文件、约 11 个显式声明，其中 6 条 theorem/lemma。** 本组件未扫描到显式占位正文，已有实现仍需结合依赖和语义审核判断是否完成。

未冻结的任务总量没有可靠分母，因此不把文件数或 `sorry` 比率写成数学完成百分比。领域入口给出整体进度；本页给出可核查的局部实现状态。

## 4. 接下来还需要完成什么

- 结合消费端检查现有结果是否足以覆盖领域入口列出的预期；没有占位正文不代表全部所需结果已经写出。

## 5. 后续应该一步一步如何做

1. 对照上面的声明及其直接 imports，确认本组件的数学条件和消费端，先处理已报告的陈述问题。
2. 需要改公共定义或冻结陈述时交由整合者协调；同步目标、输入接口与对应证明，不单方扩大前提。
3. 按依赖顺序处理已列出的未完成内容；复用已有证明，保持数据、条件和结果职责清楚。
4. 用最小受影响模块检查编译及调用端；涉及阶段接口时核对完整类型，证明完成与编译成功分别判断。
5. 完成一项后更新本页的现有内容和剩余事项；不要把本次目录迁移算作数学成果。

相关子组件：[Multiplication](Multiplication/README.md), [Polynomial](Polynomial/README.md), [Reindex](Reindex/README.md)。
