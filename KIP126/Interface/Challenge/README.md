# Interface Challenge：唯一阶段交付目标

本目录只保留 [Challenge2.lean](Challenge2.lean) 中的
`theorem challenge2 : Nonempty KIP126.Challenge2`。它准确陈述 Interface 向
Main 交付的完整关联见证；根 [Challenge2](../../Challenge2.lean) 定义该类型。

Challenge 正文按约定保留 `by sorry`。对应证明在
[Solution/Challenge2.lean](../Solution/Challenge2.lean)，完整类型必须一致。
总包尚未构造，不能把占位声明或编译成功计作数学完成。

所有内部认证、模型比较、文献适配和页面工具的陈述与证明只在
[Interface/Solution](../Solution/README.md) 保存，不另建 Challenge 镜像。
`literatureInterface` 与 `computationInterface` 也只作为 Solution 中的总包
投影保留，不是另外两条阶段目标或独立公理。

固定基、乘法、平方与 staircase 的范围及状态见
[LinProgram 证明](../Solution/LinProgram/README.md)；旧错误工具的退休说明见
[Solution/Tools](../Solution/Tools/README.md)。这些内部义务仍须完成，且不能
使用 Main 的 Challenge2 消费假设反向证明。任何 Solution 都不能使用
Challenge 的占位证明。
