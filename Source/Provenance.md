# Provenance：来源与 claim 管理

文件系统清单负责来源制品和 SHA-256，Lean 层负责稳定 ID、locator、claim 依赖与显式输入类型。这些记录约束信任边界，不制造数学证明。

- [source-inventory.json](source-inventory.json)：来源状态、制品路径与摘要。
- [SourceInventory.lean](../KIP126/Def/References/Literature/SourceInventory.lean)：18 个来源的 Lean 投影。
- [Claims.lean](../KIP126/Def/References/Literature/Claims.lean)：56 个 claim root、分类、定位及依赖。
- [Provenance.lean](../KIP126/Def/References/Provenance.lean)、[Results.lean](../KIP126/Def/References/Results.lean) 与 [Evidence.lean](../KIP126/Def/References/Evidence.lean)：通用来源语言及保持来源的传递。
- [逐字段来源台账](../docs/challenge2-route-sources.json)：当前路线的来源、模型比较、生产义务和内部适配；不能把整个应用后的 Inputs 当作纯 A(M)。

主论文位于 [MainPaper](../MainPaper/)，外部文献保存在本目录。固定 Lin 数据由 `KIP126/LinProgram/Raw/` 登记；Git LFS pointer 本身不是计算输入。

`python3 scripts/check_source_inventory.py` 检查文件摘要及 JSON/Lean 投影，`python3 scripts/check_route_literature.py` 检查当前来源合同的字段覆盖、角色和定位。检查通过不证明原文蕴含对应 Lean 命题，也不意味着计算已认证。

文献结果集中在同一 Challenge2 见证中，不恢复旧的 Main 文献公理树。Def 中的固定实现、来源识别和比较仍有构造证明义务；不能用名称或来源元数据替代数学识别。

当前 C₂/Cη 源对象、映射、模作用及记录解释尚未接入，完整第0步尚未完成。详细范围见 [接口说明](../docs/STAGE0_INTERFACES.md)和[主定理计算依赖对照](../docs/audits/main-paper-computation-inventory-20261003.md)。
