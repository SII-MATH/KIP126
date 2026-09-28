# Solution

本页记录本阶段的证明状态。数学范围参见[所属阶段](../README.md)；旧 Tools 的错误声明已同步退休，不能再按“只差证明”列为当前目标。

## 1. 原先期望包含什么

完成本组件已有目标的证明，并清楚区分已用假设、辅助定义和仍待验证的结论。子文件的具体职责见下面清单；更大范围的数学目标以所属领域 README 与 [接口审核 #138](https://github.com/SII-MATH/KIP126/issues/138) 为准。

## 2. 现在包含什么

| 文件 | 已有对象或结论（选列） |
| --- | --- |
| [Challenge2.lean](Challenge2.lean) | 构造 `Nonempty KIP126.Challenge2` 的证明轨，当前仍为 `sorry` |
| [LinProgram/SquareDetection.lean](LinProgram/SquareDetection.lean) | `u_cube`, `u_square_ne_zero`, `u_pow_cap`, `evaluate_X`, `evaluate_polynomialOfPowers` 等 11 个声明 |
| [LinProgram/SquareDetection/Archive/Batch0.lean](LinProgram/SquareDetection/Archive/Batch0.lean) | `archivedChunk0`, `archivedChunk1`, `archivedChunk2`, `archivedChunk3`, `archivedChunk4` 等 33 个声明 |
| [LinProgram/SquareDetection/Archive/Batch1.lean](LinProgram/SquareDetection/Archive/Batch1.lean) | `archivedChunk32`, `archivedChunk33`, `archivedChunk34`, `archivedChunk35`, `archivedChunk36` 等 33 个声明 |
| [LinProgram/SquareDetection/Archive/Batch2.lean](LinProgram/SquareDetection/Archive/Batch2.lean) | `archivedChunk64`, `archivedChunk65`, `archivedChunk66`, `archivedChunk67`, `archivedChunk68` 等 33 个声明 |
| [LinProgram/SquareDetection/Archive/Batch3.lean](LinProgram/SquareDetection/Archive/Batch3.lean) | `archivedChunk96`, `archivedChunk97`, `archivedChunk98`, `archivedChunk99`, `archivedChunk100` 等 33 个声明 |
| [LinProgram/SquareDetection/Archive/Batch4.lean](LinProgram/SquareDetection/Archive/Batch4.lean) | `archivedChunk128`, `archivedChunk129`, `archivedChunk130`, `archivedChunk131`, `archivedChunk132` 等 33 个声明 |
| [LinProgram/SquareDetection/Archive/Batch5.lean](LinProgram/SquareDetection/Archive/Batch5.lean) | `archivedChunk160`, `archivedChunk161`, `archivedChunk162`, `archivedChunk163`, `archivedChunk164` 等 33 个声明 |
| [LinProgram/SquareDetection/Archive/Batch6.lean](LinProgram/SquareDetection/Archive/Batch6.lean) | `archivedChunk192`, `archivedChunk193`, `archivedChunk194`, `archivedChunk195`, `archivedChunk196` 等 33 个声明 |
| [LinProgram/SquareDetection/Archive/Batch7.lean](LinProgram/SquareDetection/Archive/Batch7.lean) | `archivedChunk224`, `archivedChunk225`, `archivedChunk226`, `archivedChunks_batch7` |
| [LinProgram/SquareDetection/Archive/Proofs.lean](LinProgram/SquareDetection/Archive/Proofs.lean) | `archivedChunks_check`, `allRelationsCheck_eq_true`, `dataH6Sq_ne_zero` |
| [LinProgram/SquareDetection/Certificate.lean](LinProgram/SquareDetection/Certificate.lean) | `toNat?_eq_chars`, `monomialOrder_eq_chars`, `relationCheck_eq_chars`, `chunkCheck_eq_chars`, `charsChunkCheck_append` 等 13 个声明 |
| [LinProgram/SquareDetection/Parsing.lean](LinProgram/SquareDetection/Parsing.lean) | `splitOnAux_singleton`, `splitOn_singleton_eq_list`, `splitOn_comma`, `splitOn_semicolon`, `splitOn_newline` |
| [LinProgram/SquareDimension/Generators/Proofs.lean](LinProgram/SquareDimension/Generators/Proofs.lean) | `generatorDegree_eq_row`, `generatorDegree_low_filtration` |
| [LinProgram/SquareDimension/Proofs.lean](LinProgram/SquareDimension/Proofs.lean) | `squareDegree_support`, `monomialDegree_square_unique`, `homogeneousPart_square_eq_span`, `E2At_square_eq_zero_or` |
| [LinProgram/BasisTable.lean](LinProgram/BasisTable.lean) | 独立生产固定 CSV 基认证，供 `Challenge2.linBasis` 交付；仍为 `sorry` |

## 3. 大概完成度

现有 Lin 与已证明的派生接口继续保留；Challenge 2 的完整构造与 `basisTable_correct` 仍待完成。旧三个 Tools 文件因陈述错误而删除，没有将“输入整个 law 后应用它”计作规则证明。三个工具命题已移至 Main/Solution/Tools，不属于本阶段的前人 A(M) 输入。固定基及坐标消费构造已移至 Main/Axiom/LinProgram/Interpretation/Basis/Algebra。

未冻结的任务总量没有可靠分母，因此不把文件数或 `sorry` 比率写成数学完成百分比。领域入口给出整体进度；本页给出可核查的局部实现状态。

## 4. 接下来还需要完成什么

- 计算验证若消费 Main 的论文工具，须使用独立完成的规则证明并核对依赖无环。
- [basisTable_correct](LinProgram/BasisTable.lean#L11)：现有 `theorem` 正文中的占位仍待处理；本次原样保留。

## 5. 后续应该一步一步如何做

1. 对照上面的声明及其直接 imports，确认本组件的数学条件和消费端，先处理已报告的陈述问题。
2. 需要改公共定义或冻结陈述时交由整合者协调；同步目标、输入接口与对应证明，不单方扩大前提。
3. 按依赖顺序处理已列出的未完成内容；复用已有证明，保持数据、条件和结果职责清楚。
4. 用最小受影响模块检查编译及调用端；涉及阶段接口时核对完整类型，证明完成与编译成功分别判断。
5. 完成一项后更新本页的现有内容和剩余事项；不要把本次目录迁移算作数学成果。

相关子组件：[LinProgram](LinProgram/README.md), [Tools](Tools/README.md)。
