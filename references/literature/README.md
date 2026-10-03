# 文献原始资料与来源记录

本目录保存主论文、前人文献、固定数据及其来源记录，不拥有 Lean 数学定义或阶段传递。

- [MainPaper](MainPaper/)：主论文的本地标签规范化副本及 PDF。
- [Sources](Sources/README.md)：外部文献原文与获取状态。
- [source-inventory.json](source-inventory.json)：制品及 SHA256。
- [Provenance](Provenance.md)：一般来源索引和当前路线的逐字段台账。

实际交付合同位于 [Interface/Challenge](../../KIP126/Interface/Challenge/Challenge2.lean)，
数学语言位于 [Def/References](../../KIP126/Def/References/README.md) 及相关 Def 模块。
对象比较与来源定理分开；Main 组装的消费 Inputs 还包含本文内部推论，不能整体视作 A(M)。
新取得原文后，应核实其命题、条件、坐标与适用对象，再更新来源记录；文件存在不等于认证完成。

`MainPaper/main.tex` 仅规范化下表中的标签和引用，保留原标签作为同位置的
兼容别名；数学正文和行号保持不变。`source-inventory.json` 的 SHA-256
对应规范化后的本地文件。规范化前文件的 SHA-256 为
`1125462bcae4a4ec56e3bfcaad15df4febf98757dfb83462b155af162c99c9e0`；
`migration/kip-base/original/` 中的历史来源快照保持原样。

| 原始标签 | 可读标签 |
| --- | --- |
| `thm:h62` | `thm:h_6_sq` |
| `prop:possibleh62` | `prop:possible_h_6_sq` |
| `fact:x1239` | `fact:x_123_9` |
| `lem:x1239` | `lem:x_123_9` |
| `fact:h02x1259` | `fact:h_0_sq_mul_x_125_9_2` |
| `rem:h02x1259` | `rem:h_0_sq_mul_x_125_9_2` |
| `fact:h1x1217` | `fact:h_1_mul_x_121_7` |
