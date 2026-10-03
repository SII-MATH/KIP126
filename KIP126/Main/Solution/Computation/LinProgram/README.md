# LinProgram 交付的消费接口

本目录从同一个 `Main.StageInput.witness` 提取计算结论，并证明其在 Main 中的推论。
解码、固定数据和局部证书位于独立的 `KIP126/LinProgram`；模型认证的生产义务位于 Interface。

- [Presentation.lean](Presentation.lean)：共享 presentation 的消费入口。
- [Basis](Basis/README.md)：由交付坐标构造基，不另选数据。
- [Interpretation](Interpretation/README.md)：标签、坐标、lookup 与谱序列推论。
- [Route/Records.lean](Route/Records.lean)：当前路线的交付记录。

唯一阶段假设是 `Main/Axiom/Challenge2.lean` 的 `Nonempty Challenge2`。
这里的消费证明不能用于解除其生产端假设。
