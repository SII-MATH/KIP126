# Comparison / ClassicalSynthetic

[Data.lean](Data.lean) 将 `ReindexedSpectralSequenceMap` 直接陈述为内部 classical sequence 到内部 synthetic sequence 固定 weight 切片的比较。两端都使用 `SSData`；cycle/boundary-preserving ambient map 决定有限页与 E∞ 映射，`comm_d` 约束这些确定的页面映射。不存在自由选择另一套 page-passage 同构的字段，也没有 Mathlib 谱序列比较义务。

[Proofs.lean](Proofs.lean) 保留次数计算和已给比较的微分交换性质。尚需将比较实例绑定实际 classical Adams tower 与同一个 `SyntheticAdamsFamily` 的 ν/λ 商对象，并证明自然性、乘法、检测、收敛及截断兼容；当前没有构造这样的实例。
