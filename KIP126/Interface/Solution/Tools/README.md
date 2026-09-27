# Solution / Tools：旧声明退休记录

旧三个 Tools 文件已与 Challenge 配对删除，阶段入口不再导出这些错误声明；退休原因与范围见[Challenge 记录](../../Challenge/Tools/README.md)。没有将已有 Solution 的存在当作删除目标的理由，也没有以“把完整 law 作为假设再返回其结论”替代规则证明。

准确待证命题位于[根 Challenge2](../../../Challenge2.lean)：`GeneralizedLeibnizLaw` 与 `GeneralizedMahowaldLaw` 已绑定实际页面、微分、extensions 和 crossing。仍需从同一模型的 ν、δ、ρ、λ 相容图及相应数学结果构造 law 的证明；Mahowald 还需要实际塔 suspension comparison 的构造与规范性。

Stretching 已有[实际严格解纤维与差群](../../../Def/SpectralSequence/FilteredComplex/Solutions/Data.lean)、诱导限制及其平移相容性。projective 测试对象上的页面关系与纤维非空已有双向证明；合成端的 `FiniteSolutions`／`InfiniteSolutions` 已分别与同一实际标签的有限／未截断 page extension 建立等价。[完整实际 target coset](../../../Def/Synthetic/PageExtension/Solutions/Coset/Proofs.lean)已刻画为同一源标签下非空纤维的目标标签集合，单一固定标签纤维仍由实际代表元对组成。根 Challenge2 的 `PageExtensionRestrictionFiltration`、`PageExtensionRestrictionLabels` 给出所需 ρ 比较图，`restrictFiniteSolution` 据此构造限制并推出带这些条件的有限 page extension 限制定理；尚未证明这些兼容见证存在或限制满射。

根 Challenge2 的 `CoherentPageExtensionSolutions` 已用同一 `P`、固定永久标签及所有 `q > lambdaExponent n` 的相邻层实际 ρ 相容条件定义。它没有提供相容解的成员，也没有声称根接口的限制恒等／复合律已经证明。

[余核零判据](../../../Def/SpectralSequence/FilteredComplex/Solutions/Obstruction/Proofs.lean)已精确证明指定早期解的提升条件；它不是论文 first-obstruction tuple 的识别，也不是完整 stretching 证明。余核障碍与论文具体 crossing 元组的识别、上述模型兼容见证、相容解的存在性及其与未截断解／同伦极限的比较仍缺，不能从各有限纤维非空直接推出无穷解。

这些剩余工作不影响已证明的页面、cobar 或条件性 kernel/coset 结果；具体进度见[Interface](../../README.md)与根 Challenge2 清单。
