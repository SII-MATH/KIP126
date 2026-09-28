# Literature：外部论文与历史输入

本目录管理 Main 阶段使用的文献来源、主论文材料、claim ledger 和已有外部输入。来源文件被集中归档并不表示相应数学结论已经证明或已精确定位。

**当前冻结路线入口：[Route](Route/README.md)。** 该目录提供统一的
`KIP126.Literature.Route.Inputs D η L`，完整覆盖所选 §7 路线的外部输入陈述。
逐项内容与适用条件见 [A(M) 说明](../../../../docs/A_INPUT_FREEZE.md)。
以下 56 行旧 ledger/其他目标的状态仍保留，不能当作当前路线 A(M) 的清单。

## 1. 原先期望包含什么

- 每个文献 axiom 都能定位到某篇文献的具体 theorem、命题、公式或表项。
- 主论文只规定项目路线和目标，不自动充当其他结果的证明。
- 文献原文、source inventory、claim row 与 Lean proposition 可相互追踪。
- 外部结论以显式输入进入 Main，不通过无来源的全局实例静默注入。

## 2. 现在包含什么

- `MainPaper/`：主论文 TeX、bibliography、PDF 与文本。
- `Sources/`：16 类外部文献及 LWX machine 参考材料。
- `source-inventory.json` 与 `SourceInventory.lean`：18 个来源的文件系统清单和 typed projection。
- `Claims.lean`：56 个 primitive、composite 或 evidence claim，记录 owner、Blueprint target、locator 与依赖。
- `Adams/`、`Kervaire.lean`、`AppendixTable/`、`EtaRows/`、`HopfCofiber/`、`Near126/`：迁入的现有文献或表格输入及其消费接口。
- `StandardSphere/` 与 `FixedSSData.lean`：在基础输入上固定的谱序列及其解释；基础输入本身已迁至 [Interface/Axiom](../../../Interface/Axiom/README.md)。

通用 `Provenance.lean`、`Evidence.lean`、`Results.lean` 位于上一层 `Main/Axiom/`，由 Literature 与 LinProgram 共用。详细关系见 [Provenance.md](Provenance.md)。

`standardFoundation` 和 `standardMilnorCooperations` 从 Interface 选定的同一个 Challenge 1 见证投影。Challenge 1 仍缺完整内部构造和精确来源定位；共享包不为其补 proof，也不把它们当成已证明的文献结论。文献原文和来源清单仍集中在本目录，无须复制到各消费端。

## 3. 大概完成度

**陈述状态：来源框架已建立，逐条数学陈述仍是部分完成。** 已有稳定 source/claim ID 和若干精确 proposition wrapper；部分 claim owner 指向未来声明，部分 locator 仍是摘要说明，七个来源只有 metadata，不能据此确认原文结论的完整强度。

**实现状态：文件与 provenance 基础已迁入新布局。** inventory 有 18 个来源，claim ledger 有 56 项，并已有完整性、唯一性和依赖无环结构。这个数字不是 56 条已经形式化并证明的外部 theorem。Standard foundation/Milnor 由 Challenge 1 的单一存在性输入提供，Def 的构造 theorem 仍未完成。

这里没有可靠分母可报告百分比，也不按 `sorry` 比率判断。没有 `sorry` 的外部 wrapper 仍可能只携带调用者提供的 proof；文件迁移不增加数学证明进度。

## 4. 接下来还需要完成什么

- 为 Main 实际使用的每个 literature axiom补齐精确 theorem/section/equation/page locator。
- 获取或明确标记 metadata-only 来源，避免把二手转述当作已核对原文。
- 审核 synthetic、Moss、BJM/BX、tmf、Browder 等输入的 proposition 强度。
- 与 Challenge 1 的字段核对所需文献来源；上游构造工作见 Interface/Axiom 的说明。
- #134 的 Mahowald 反例问题解决前，不把相关 statement 标记为冻结可靠。

## 5. 后续应该一步一步如何做

1. 从 Main 当前 imports 反向列出实际消费的每个外部 proposition。
2. 对每项打开原文，核对条件、范围、结论和稳定 locator。
3. 更新 source inventory 与 claim ledger，保持 primitive/composite 区别。
4. 为无来源 axiom建立显式审计项；不要在本目录直接补成看似有来源的 theorem。
5. 来源和 statement 审核完成后，把相应证明接入共享 Challenge 包的生产 theorem。
