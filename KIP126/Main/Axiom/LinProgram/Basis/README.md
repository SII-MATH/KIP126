# Lin 数据基的兼容接口

[Data.lean](../../../Solution/Computation/LinProgram/Basis/Data.lean) 将同一 Challenge2 见证交付的实际 E₂ 坐标沿 `linE2Presentation` 拉回，得到 `dataCoordinates`，再用 `Module.Basis.ofRepr` 定义 `dataBasis`。这些构造不另选基，也不改变 CSV 版本与 t ≤ 261 的范围。

[Proofs.lean](../../../Solution/Computation/LinProgram/Basis/Proofs.lean) 保留 CSV 值、非零性、坐标重构和维数公式；兼容的 `KIP126.LinE2.basisTable_correct` 由交付的实际坐标推出。Interface 自身使用的同名辅助认证定理位于其独立 Solution 命名空间，Main 不导入它。
