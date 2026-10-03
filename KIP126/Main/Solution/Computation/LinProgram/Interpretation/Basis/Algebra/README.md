# Algebra：指定加法基的兼容入口

[Data.lean](Data.lean) 和 [Proofs.lean](Proofs.lean) 重新导出 `Main/Solution/Computation/LinProgram/Basis`。
该组件从同一个 Challenge2 见证的实际 E₂ 坐标与 CSV 值相容性构造 `dataBasis`、`dataCoordinates` 和 `basisByCSV?`，并恢复基值、非零、坐标重构与维数 API。

`basisTable_correct` 是这些交付的推论；独立固定 CSV 认证仍由 Interface/Solution/LinProgram/BasisTable 负责，证明未完成。Main 没有导入该生产占位作为证明，也没有另选一份基。
