# Provenance：来源与 claim 管理

## 1. 原先期望包含什么

provenance 层应成为外部输入的单一索引：文件系统清单负责来源制品和 hash，Lean 层负责稳定 ID、精确 locator、claim 依赖与显式输入类型。它约束信任边界，不制造数学证明。

## 2. 现在包含什么

- [source-inventory.json](source-inventory.json)：来源元数据、目录、可用状态、制品路径与 SHA-256 的文件系统清单。
- [SourceInventory.lean](../KIP126/Def/References/Literature/SourceInventory.lean)：清单的 typed Lean projection。
- [Claims.lean](../KIP126/Def/References/Literature/Claims.lean)：56 个 claim root 及其 classification、owner、Blueprint target、`SourceRef` 和 composite dependencies。
- [Provenance.lean](../KIP126/Def/References/Provenance.lean)：18 个封闭 `SourceId`，以及通用 `Locator`、`ArtifactRef`、`SourceRef`、`ExternalResult`、`ExternalEvidence`。
- [Results.lean](../KIP126/Def/References/Results.lean) 与 [Evidence.lean](../KIP126/Def/References/Evidence.lean)：在保持来源元数据的情况下传递外部结果或证据。
- `scripts/check_source_inventory.py` 与 projection tests：检查路径、文件摘要及 JSON/Lean 投影的一致性。

主论文位于仓库根目录的 `MainPaper/`，其他来源位于本 `Source/` 目录。Lin machine 当前登记了论文、Zenodo metadata 和网页制品，但大型 `proofs.db`/CSV 包仍只通过固定摘要和仓库外缓存参与转换。

## 3. 大概完成度

**陈述状态：基础类型和有限索引已经建立。** source、locator、artifact、result/evidence 与 claim dependency 的含义明确；具体外部数学 proposition 的覆盖和精确 locator 仍不完整。

**实现状态：18 个来源和 56 个 claim 已迁入新路径，并保留完整、无重复和无依赖环检查。** checker 能验证本地文件与登记摘要，但不能证明某篇论文确实蕴含对应 Lean proposition。

这不是 `sorry` 比率问题。provenance 自洽只说明来源记录可审计，不说明外部数学结论已经在 Lean 内证明；路径迁移也不改变信任边界。

完整 JSON/Lean 投影已在本地核验；当前自动化 CI 仅执行不依赖 Lean 的来源检查和既有回归，还没有接入完整投影检查。

## 4. 接下来还需要完成什么

- 建立“每个 Main literature axiom 对应唯一 claim row”的覆盖检查。
- 区分精确原文 locator、二手引用和 metadata-only 状态。
- 检查 claim owner 是否真实存在，其 proposition 是否与登记说明一致。
- 将 Lin 原始包或内容寻址下载记录纳入 artifact inventory。
- 对 `standardFoundation` 与 `standardMilnorCooperations` 保持“历史假设、精确来源未定”的诚实状态。

## 5. 后续应该一步一步如何做

1. 保持稳定 `SourceId` 和 claim ID，不因目录移动重命名逻辑身份。
2. 每次制品变化后运行 source inventory checker 与 Lean projection tests。
3. 扫描 Main axiom，生成 axiom-to-claim 覆盖报告并拒绝无登记项。
4. 对 metadata-only 来源建立明确待办；取得原文后再确认 statement。
5. 将 Interface theorem/Main axiom 的类型对齐与 provenance 覆盖作为两项独立 CI 检查。
