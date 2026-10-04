# Challenge2 的交付边界

本目录唯一 Lean 声明是 [Challenge2.lean](Challenge2.lean) 中的 `challenge2 : KIP126.Challenge2`。它传递 [Interface 的合同](../../Interface/Challenge/Challenge2.lean)，不另造文献或计算假设。

[Main/Solution/StageInput.lean](../Solution/StageInput.lean) 从同一见证提取对象绑定、A(M) 和 C(M)。最终目标的类型只依赖 Def，不导入本目录。

原始文献在仓库的 `Source/`，固定数据在 [LinProgram](../../LinProgram/README.md)。Interface 的实际生产证明最终负责解除此开发期阶段假设。
