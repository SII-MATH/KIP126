# LinProgram：独立的固定数据管线

这里保存从固定 Lin 程序输出到 Lean 数据、参数化命题及局部证书的工件。它独立于 Interface 的生产证明和 Main 的消费假设；原始 CSV 成功转成 Lean 文件，本身不证明这些数据在实际球谱模型上的数学真实性。

| 位置 | 职责 |
| --- | --- |
| [Raw](Raw/README.md) | 固定 DB/CSV、版本、schema、摘要及来源；大文件使用 Git LFS |
| [Translate](Translate/README.md) | 确定性转换和来源核对脚本 |
| [Generated](Generated/README.md) | 固定 E₂、微分与 staircase 记录，以及覆盖和输出摘要 |
| `Interpretation/` | 条件分支、状态与微分记录的参数化解释，不引入消费端假设 |
| `Route/` | §7 选取记录的原始表示、生成记录与 [来源清单](Route/selected.json) |
| `Certificates/SquareDetection/` | 固定关系检测、解析正确性、227 个归档块及其局部非零性证明 |
| [Certificates/SquareDimension](Certificates/SquareDimension/README.md) | 固定商代数指定次数的维数和候选穷尽证明 |
| [Tactic](Tactic/README.md) | Lin 专用自动化：E₂ 坐标计算及数据块证明的生成、组合 |

使用实际消费接口和显式来源证据的 [Examples](../Main/Examples/LinProgram/README.md) 留在 Main，避免独立数据管线反向依赖 Main 或 Interface。

`Archive` 表示证书针对固定归档数据，仍有生产证明消费者。已有局部证书由 Lean 内核检查；它们只证明所陈述的数据结论，不自动给出数据与实际球谱 E₂ 的比较。

根 [Challenge2](../Challenge2.lean) 的 `ComputationInterface` 统一规定 C(M)。[Interface/Solution/LinProgram](../Interface/Solution/LinProgram/README.md) 使用这些工件证明模型上的基、乘法、平方和 staircase 交付；[Main 的消费适配](../Main/Solution/Computation/LinProgram/README.md) 从 `Main.StageInput` 的同一个阶段见证提供消费接口。`Main/Solution/Computation` 的平方推论通过该交付消费，其依赖链不再导入 Interface/Solution。Main 其他历史消费链的直接导入仍须分别整理。

数据版本更新须同步原始摘要、生成 manifest 和转换核对；局部证书与模型认证分别验收。此次分目录不完成既有 `sorry`，完整 Challenge2 仍待构造。目录路径改变，既有 Lean 命名空间为 API 兼容而保留。
