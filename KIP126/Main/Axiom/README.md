# Main 阶段接受的输入

唯一阶段公理是 [Challenge2.lean](Challenge2.lean) 中的
`challenge2 : Nonempty KIP126.Challenge2`。总交付同时固定模型、文献来源、
模型适用性和计算结论；Main 从 [StageInput](../Solution/StageInput.lean)
选择一个关联见证，再提取所有所需字段。

本目录只保留这条阶段假设。A(M) 已作为根 `Challenge2` 的
`LiteratureInterface` 与 C(M) 绑定在同一个见证中；旧的平行文献输入树已删除。
对象构造、表格解释、catalogue、字段提取和
证明都在本目录之外。

- 项目交付规格：[Challenge2](../../Challenge2.lean)。
- 文献来源规格：[Route/Literature](../../Challenge2.lean)。
- 原始论文与来源制品：[MainPaper](../../../MainPaper/) 和 [Source](../../../Source/README.md)。
- 消费构造与中间推论：[Main/Solution](../Solution.lean)，陈述与证明均只在该目录维护；只有最终目标与 Challenge 配对。
- 原始与生成数据：[LinProgram](../../LinProgram/README.md)。
- 通用来源目录与证据类型：[Def/References](../../Def/References/README.md)。

阶段公理仍待 Interface 的同型生产定理解除。目录分离与编译通过均不表示该证明完成。
