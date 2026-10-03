# 文献输入陈述与来源资料

当前路线的外部结果规格是根接口中的
[Statements](../../../Challenge2.lean)，直接导入
`KIP126.Challenge2`。模型比较及内部应用另有明确交付义务；
Main 使用的 `Inputs` 是这些材料组成的消费接口，不能整体当成外部文献定理。

本目录保留以下显式输入陈述，并不额外假设它们存在：

- [Synthetic](Synthetic.lean)：同一个 H𝔽₂ 与 ν 上的 cofiber 判据、full lift、三角提升。
- [InternalGeometry](InternalGeometry.lean)：低维存在性、HHR 非存在性及 Browder 判据。
- [May](May.lean)：带明确来源及相容条件的输入陈述。
- [Near126/HopfCofiber](Near126/HopfCofiber/Data.lean)：带来源与范围的历史条件输入。

相应证据包装与提取在 `Main/Solution/Literature`，固定 Hopf cofiber 的对象、
塔及 E₂ 映射也在该消费目录。Mathlib 球谱适配位于
[Mathlib/ClassicalAdams/StandardSphere](../../../Mathlib/ClassicalAdams/StandardSphere/README.md)。

[MainPaper](MainPaper/) 是主论文的本地标签规范化副本，
[Sources](Sources/README.md) 保留外部文献原始资料；
`source-inventory.json` 记录制品。Lean catalogue、claim ledger 及通用证据包装
位于 [Def/References](../../../Def/References/README.md)。来源定位本身不证明数学结论，
主论文的内部推导也不能因此升级为外部输入。

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
