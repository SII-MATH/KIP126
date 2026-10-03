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

[MainPaper](MainPaper/) 和 [Sources](Sources/README.md) 保留原始资料；
`source-inventory.json` 记录制品。Lean catalogue、claim ledger 及通用证据包装
位于 [Def/References](../../../Def/References/README.md)。来源定位本身不证明数学结论，
主论文的内部推导也不能因此升级为外部输入。
