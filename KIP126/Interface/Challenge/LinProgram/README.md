# LinProgram：计算交付目标

这里陈述固定程序工件在选定模型上的认证与比较目标；证明在同名 [Solution](../../Solution/LinProgram/README.md) 文件中。原始输入、生成数据和局部证书位于独立 [LinProgram](../../../LinProgram/README.md)。

- [BasisTable.lean](BasisTable.lean)：v126.3.cw49 的固定 CSV 单项式线性无关且张成，范围为所有自然数 s,t 且内部次数 t ≤ 261。这是计算交付的辅助认证，不属于 Challenge1 基础选择。
- [SphereBasis.lean](SphereBasis.lean)：经指定 presentation 给出实际球面 E₂ 的坐标和固定 CSV 值相容性。
- [Multiplication.lean](Multiplication.lean)、[Staircase.lean](Staircase.lean)：实际乘法相容及固定快照语义。
- [Square.lean](Square.lean)：经指定 presentation 交付实际 E₂ 中平方的非零性与指定次数的候选穷尽。

这些目标支撑 `Challenge2.ComputationInterface`，即 C(M)。Challenge 定理按约定保留 `sorry`；不能把它们当作 Solution 的证明依赖。
