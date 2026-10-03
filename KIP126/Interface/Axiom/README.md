# Challenge1 的交付边界

本目录唯一 Lean 声明是 [Challenge1.lean](Challenge1.lean) 中的 `challenge1 : Nonempty KIP126.Challenge1`，与 Def 的 Challenge/Solution 使用完全相同的类型。

该交付还提供标准球实际 Adams 塔的完成与强收敛条件，Interface/Solution 显式运输并消费这些证据。

数学背景和固定对象由 [Def](../../Def/README.md) 定义。Challenge1 见证必须等于 Def 中固定的实现，不能选择另一套球谱、Milnor 坐标或 synthetic 模型。此处的开发期交付假设不得进入最终目标类型的定义依赖。

固定 Lin 基和程序输出认证属于 Challenge2。实际模型构造和比较仍由 Def 证明；阶段假设最终应由相应生产证明解除。
