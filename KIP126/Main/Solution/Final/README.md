# Final：唯一最终命题的证明

[h6_sq_permanent.lean](h6_sq_permanent.lean) 与 Challenge 使用完全相同的类型：

```lean
NonzeroSurvival sphereAdamsData (2, 128) standardH6Square
```

证明尚未完成，正文为 `sorry`。原计算版也是 `sorry`，原标准版仅将它改写为标准结论；删除这组重复结构没有丢弃已完成的永久存活证明。

下一步在这个唯一目标下实现论文从 A(M)、C(M) 到 T(M) 的推导。需要计算标签时可使用 `computedH6Square_eq_standardH6Square` 或 `computedH6Square_nonzeroSurvival_iff_standard`；这些比较引理不依赖 Final，也不是另一条最终存活结论。

当前占位的依赖不能当作实际数学证明的输入清单。基础仍来自 Challenge1；后续证明可消费 Challenge2 提供的 C(M) 和明确列出的 A(M)。
