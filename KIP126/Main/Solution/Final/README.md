# Final：唯一最终命题的证明

[h6_sq_permanent.lean](h6_sq_permanent.lean) 与 [Challenge](../../Challenge/Final/h6_sq_permanent.lean) 使用完全相同的类型：

```lean
NonzeroSurvival sphereAdamsData (2, 128) standardH6Square
```

最终证明体已通过 `permanent_of_propositions` 串接 Proposition 7.8 和 7.9。它们使用 `Main.StageInput.witness` 的同一模型、η、标签以及 A(M)/C(M)；没有另选模型或调用 Challenge 占位来证明结论。

这两条 Proposition 在 [Route/Selected.lean](../Route/Selected.lean) 中仍为 `sorry`，上游阶段交付也尚未完成。因此最终逻辑步骤已接通，完整的标准 h₆² 非零永久存活证明仍未完成。唯一 Final Challenge 按约定保留 `sorry`；所有中间陈述和证明只在 Main/Solution 维护。

需要比较计算标签时可使用 `computedH6Square_eq_standardH6Square` 或 `computedH6Square_nonzeroSurvival_iff_standard`。它们不依赖 Final，也不是另一版最终存活定理。标准 h₆² 的独立定义与最终目标类型保持不变。
