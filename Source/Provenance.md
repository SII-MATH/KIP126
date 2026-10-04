# 来源与制品管理

[docs/external-inputs.json](../docs/external-inputs.json) 是唯一机器清单：来源身份、locator、获取状态、制品摘要、Lean 声明与 Blueprint 标签以及路线审计项都在这里维护。原 source-inventory 和 route-sources 两份 JSON 已合并；没有 Lean 来源投影或 claim registry。

Lean 数学字段直接接收命题或认证数据。文献、计算、模型比较和内部推导保留各自角色；引用 metadata 不再通过 `ExternalResult`、`ExternalEvidence` 或 `SourceId` 进入接口。

主论文在 [MainPaper](../MainPaper/)，外部文献制品在本目录；各作品的 `source-status.json` 保存原始获取记录。固定 Lin 数据仍由 `KIP126/LinProgram/Raw/` 保存。Git LFS pointer 不能冒充输入实体。

`python3 scripts/check_source_inventory.py` 检查来源、路径、状态和摘要；`python3 scripts/check_external_inputs.py` 检查声明、角色和定位关系。检查通过不证明原文蕴含 Lean 命题，也不意味着计算已认证。

基础适用性保留在 `Challenge2.foundation`；文献和计算分别进入 `literature` 与 `computation`；模型绑定和内部应用使用独立字段。来源到所选模型的识别责任不能被省略。

当前文献覆盖、部分原文/locator 核验仍有待核验项。C₂/Cη 是 Interface 计算认证可能使用的内部证明依赖，不是 Challenge2 必须交付的字段；计算结论的认证责任仍须完成。详细范围见 [接口说明](../docs/STAGE0_INTERFACES.md)。维护时保留已有来源 ID；新增原文更新 manifest 及获取记录，数学陈述核验与文件摘要检查分别完成。
