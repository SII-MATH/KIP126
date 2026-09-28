# LinProgram：计算认证证明

本目录负责固定程序数据的认证，供 C(M) 使用。

- [BasisTable.lean](BasisTable.lean)：认证 v126.3.cw49 在 `t ≤ 261` 的指定加法基；证明仍为 `sorry`，不导入 Challenge2 消费公理或 Challenge 占位。
- [SquareDetection](SquareDetection/README.md)：已有关系检测和归档证书。
- [SquareDimension](SquareDimension/README.md)：已有指定次数的维数与候选计算。

基认证的精确交付字段是 `Challenge2.linBasis : Challenge2.LinBasisInterface`。Main 从同一个 Challenge2 见证取得该性质；固定基和坐标的消费构造已移至 [Main 的解释层](../../../Main/Axiom/LinProgram/Interpretation/Basis/Algebra/README.md)，不再让认证生产者导入自己的消费假设。

校验文件哈希、解析成功、行无重复等检查不能替代线性无关与张成的证明。基认证仍待完成，本次调整只修正阶段归属与依赖。
