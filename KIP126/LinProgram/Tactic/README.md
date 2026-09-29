# LinProgram / Tactic：固定计算的证明工具

这里集中 Lin 程序数据的自动化工具，与 [Certificates](../Certificates/SquareDetection/README.md) 中的具体证明证书分开。

| 模块 | 命令与用途 | 当前消费者与证明状态 |
| --- | --- | --- |
| [LinE2.lean](LinE2.lean) | `e2_mul`：比较具体 E₂ 表达式的 CSV 基坐标 | [LinTactic](../../Checks/AdamsE2/LinTactic.lean) 中的回归测试；仍依赖未完成的 `coordinateCheck_sound` 和原生求值公理 |
| [LinSquareCertificate.lean](LinSquareCertificate.lean) | `lin_square_chunks`、`lin_square_compose`：生成并组合数据块证明 | [Archive](../Certificates/SquareDetection/Archive/README.md) 的八批证书；证明项由 Lean 内核检查 |

按需导入 `KIP126.LinProgram.Tactic.LinE2` 或
`KIP126.LinProgram.Tactic.LinSquareCertificate`。目录迁移保留原命令和声明命名空间，
不改变输入数据、数学结论或已有证明债务。
