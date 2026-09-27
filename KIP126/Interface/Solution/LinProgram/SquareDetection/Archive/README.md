# Solution / LinProgram / SquareDetection / Archive

本页记录本组件在目录迁移时的状态。数学范围参见[所属阶段](../../../../README.md)；本次只迁移，未补证明或修改陈述。

## 1. 原先期望包含什么

完成本组件已有目标的证明，并清楚区分已用假设、辅助定义和仍待验证的结论。子文件的具体职责见下面清单；更大范围的数学目标以所属领域 README 与 [接口审核 #138](https://github.com/SII-MATH/KIP126/issues/138) 为准。

## 2. 现在包含什么

| 文件 | 已有对象或结论（选列） |
| --- | --- |
| [Batch0.lean](Batch0.lean) | `archivedChunk0`, `archivedChunk1`, `archivedChunk2`, `archivedChunk3`, `archivedChunk4` 等 33 个声明 |
| [Batch1.lean](Batch1.lean) | `archivedChunk32`, `archivedChunk33`, `archivedChunk34`, `archivedChunk35`, `archivedChunk36` 等 33 个声明 |
| [Batch2.lean](Batch2.lean) | `archivedChunk64`, `archivedChunk65`, `archivedChunk66`, `archivedChunk67`, `archivedChunk68` 等 33 个声明 |
| [Batch3.lean](Batch3.lean) | `archivedChunk96`, `archivedChunk97`, `archivedChunk98`, `archivedChunk99`, `archivedChunk100` 等 33 个声明 |
| [Batch4.lean](Batch4.lean) | `archivedChunk128`, `archivedChunk129`, `archivedChunk130`, `archivedChunk131`, `archivedChunk132` 等 33 个声明 |
| [Batch5.lean](Batch5.lean) | `archivedChunk160`, `archivedChunk161`, `archivedChunk162`, `archivedChunk163`, `archivedChunk164` 等 33 个声明 |
| [Batch6.lean](Batch6.lean) | `archivedChunk192`, `archivedChunk193`, `archivedChunk194`, `archivedChunk195`, `archivedChunk196` 等 33 个声明 |
| [Batch7.lean](Batch7.lean) | `archivedChunk224`, `archivedChunk225`, `archivedChunk226`, `archivedChunks_batch7` |
| [Proofs.lean](Proofs.lean) | `archivedChunks_check`, `allRelationsCheck_eq_true`, `dataH6Sq_ne_zero` |

## 3. 大概完成度

**现有内容：9 个 Lean 文件、约 238 个显式声明，其中 238 条 theorem/lemma。** 本组件未扫描到显式占位正文，已有实现仍需结合依赖和语义审核判断是否完成。

未冻结的任务总量没有可靠分母，因此不把文件数或 `sorry` 比率写成数学完成百分比。领域入口给出整体进度；本页给出可核查的局部实现状态。

## 4. 接下来还需要完成什么

- 结合消费端检查现有结果是否足以覆盖领域入口列出的预期；没有占位正文不代表全部所需结果已经写出。

## 5. 后续应该一步一步如何做

1. 对照上面的声明及其直接 imports，确认本组件的数学条件和消费端，先处理已报告的陈述问题。
2. 需要改公共定义或冻结陈述时交由整合者协调；同步目标、输入接口与对应证明，不单方扩大前提。
3. 按依赖顺序处理已列出的未完成内容；复用已有证明，保持数据、条件和结果职责清楚。
4. 用最小受影响模块检查编译及调用端；涉及阶段接口时核对完整类型，证明完成与编译成功分别判断。
5. 完成一项后更新本页的现有内容和剩余事项；不要把本次目录迁移算作数学成果。
