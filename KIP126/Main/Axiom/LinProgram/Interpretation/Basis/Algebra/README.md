# Algebra：计算见证提供的指定加法基

[Data.lean](Data.lean) 从同一个 Challenge2 见证的 CSV 基认证构造 `dataBasis`、`dataCoordinates` 和 `basisByCSV?`；[Proofs.lean](Proofs.lean) 给出基值、非零、坐标重构与维数的条件性结论。

认证投影位于 [BasisTable.lean](../../BasisTable.lean)，实际认证生产任务位于 [Interface/Solution/LinProgram/BasisTable.lean](../../../../../../Interface/Solution/LinProgram/BasisTable.lean)。消费者依赖 Main 的 Challenge2 开发期假设；这不是对认证任务的证明。

这些声明由原 Interface/Solution/LinProgram/Basis 移入，保留 `KIP126.LinE2` 下的公开名称和数学内容。固定实际 Adams 页基继续由上层 [Basis](../README.md) 使用同一 presentation 构造。
