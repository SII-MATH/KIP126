# Axiom

本页记录本组件在目录迁移时的状态。数学范围参见[所属阶段](../README.md)；本次只迁移，未补证明或修改陈述。

## 1. 原先期望包含什么

保存输入及其解释、来源和依赖；给出供 Main 使用的条件，不把引用或生成数据计作独立证明。子文件的具体职责见下面清单；更大范围的数学目标以所属领域 README 与 [接口审核 #138](https://github.com/SII-MATH/KIP126/issues/138) 为准。

## 2. 现在包含什么

| 文件 | 已有对象或结论（选列） |
| --- | --- |
| [Challenge2.lean](Challenge2.lean) | 唯一阶段输入 `challenge2 : Nonempty KIP126.Challenge2` 及选定见证 |
| [Evidence.lean](Evidence.lean) | `sourceId`, `withArtifact`, `map_ref`, `map_sourceId`, `withArtifact_evidence` 等 12 个声明 |
| [Provenance.lean](Provenance.lean) | `SourceId`, `code`, `ofCode`, `all`, `all_nodup` 等 78 个声明 |
| [Results.lean](Results.lean) | `sourceId`, `sourceId_mk`, `map_ref`, `map_sourceId` |

## 3. 大概完成度

**阶段边界已收束为一条 Challenge 2 存在性 axiom。** Literature、LinProgram 的来源和数据声明继续按子目录管理；文件数不作为数学完成度。Interface 的同型 Solution theorem 仍未证明。

未冻结的任务总量没有可靠分母，因此不把文件数或 `sorry` 比率写成数学完成百分比。领域入口给出整体进度；本页给出可核查的局部实现状态。

## 4. 接下来还需要完成什么

- 审核 Challenge 2 是否覆盖 Main 的最小实际输入，并完成 Interface 的同型 theorem。

## 5. 后续应该一步一步如何做

1. 对照上面的声明及其直接 imports，确认本组件的数学条件和消费端，先处理已报告的陈述问题。
2. 需要改公共定义或冻结陈述时交由整合者协调；同步目标、输入接口与对应证明，不单方扩大前提。
3. 按依赖顺序处理已列出的未完成内容；复用已有证明，保持数据、条件和结果职责清楚。
4. 用最小受影响模块检查编译及调用端；涉及阶段接口时核对完整类型，证明完成与编译成功分别判断。
5. 完成一项后更新本页的现有内容和剩余事项；不要把本次目录迁移算作数学成果。

相关子组件：[LinProgram](LinProgram/README.md), [Literature](Literature/README.md)。
