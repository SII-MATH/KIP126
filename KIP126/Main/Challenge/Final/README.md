# Final：唯一最终目标 T(M)

本目录只保留 [h6_sq_permanent.lean](h6_sq_permanent.lean)：

```lean
NonzeroSurvival sphereAdamsData (2, 128) standardH6Square
```

这对应论文 Theorem 1.4 / 7.1：同一球谱内部 Adams 谱序列中的标准 h₆² 存活至 E∞。标准类来自 Milnor cocycle `[ξ₁^64 | ξ₁^64]`；存活要求共同的 Z∞ 代表及非零 E∞ 像。陈述不依赖 C(M) 或 CSV 数据，固定基础仍由 Challenge1 提供。

Challenge 按约定保留 `sorry`；同路径 Solution 承担这同一个命题的证明。原计算版 Challenge/Solution 已删除，不保留第二个 Final 版本。CSV 与标准元素的等式和存活等价仅作为计算比较层的辅助引理，供最终证明使用。
