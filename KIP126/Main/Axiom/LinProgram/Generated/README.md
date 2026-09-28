# Generated：机器生成的 Lean 数据

## 1. 原先期望包含什么

本目录保存 Translate 的确定性输出，使 Lean 能读取固定表项。内容应可删除后重建；这里不声明表项的数学可靠性，也不手工维护单条结果。

对应的五个固定输入位于 [`../Raw`](../Raw/README.md)。Raw 通过 Git LFS 保存原字节，Generated 仍保存适合 Lean 消费的普通文本和 manifest。

## 2. 现在包含什么

- [E2.lean](E2.lean)：包含 2,914 个生成元、231,848 条关系和 23,822 个加法 basis 行；有意不导入 CSV 的 `d2` 列。
- [Differentials](Differentials/README.md)：`Shard000`–`Shard085`、`Table.lean` 与 `manifest.json`，编码 10,907 条闭合球面有限页差分。
- 差分 manifest 记录 2,672,275 个源行的互斥分类、数据库与 basis 摘要，以及 86 个 shard 和 `Table.lean` 共 87 个输出文件的 SHA-256。

selected 输出不在本目录；六条 selected theorem 和七项来源元数据位于 [Interpretation/Selected](../Interpretation/Selected/README.md)。

## 3. 大概完成度

**陈述状态：不在本层完成。** Generated 只提供固定记录和 lookup，不证明这些记录在内部谱序列中成立。

**实现状态：当前支持切片已经迁移，并已从 Raw 本地逐字复现。** E₂ 数据字节未变；差分记录未变，只有生成器注释、Lean import 路径和对应 manifest 输出 hash 随布局更新。实际重生成确认 86 个 shard、10,907 条导出记录和全部 87 个文件摘要一致；CI 尚未执行这组 Git LFS 输入检查。

行数、文件大小和 hash 一致都不表示证明进度，不能换算为 `sorry` 百分比。数据迁移不等于验证 Lin program。

## 4. 接下来还需要完成什么

- 为其余程序记录类型建立独立 generated schema，避免混入 `DifferentialRow`。
- 增加可按数据库 ID 恢复完整原始字段的无损索引或中间表示。
- 让自动检查在 checkout Raw 的 Git LFS 对象后阻止手改、陈旧文件和未登记输出。
- 保持生成文件头、manifest schema 和转换器版本同步。

## 5. 后续应该一步一步如何做

1. 修改 translator 前先审核 schema 与语义边界。
2. 从 Raw 输入在临时输出目录生成完整结果并核对计数、分类和摘要。
3. 比较 generated diff，确认只有预期的记录或格式变化。
4. 运行 E₂、bulk 和 selected 的 `--check`。
5. 将生成数据交给 Interpretation；不要在 Generated 中加入证明或 axiom。
