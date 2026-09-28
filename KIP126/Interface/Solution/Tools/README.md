# Solution / Tools：旧声明退休记录

旧三个 Tools 文件已与 Challenge 配对删除，阶段入口不再导出这些错误声明；退休原因与范围见[Challenge 记录](../../Challenge/Tools/README.md)。没有将已有 Solution 的存在当作删除目标的理由，也没有以“把完整 law 作为假设再返回其结论”替代规则证明。

准确待证命题位于[根 Challenge2](../../../Challenge2.lean)：`GeneralizedLeibnizLaw` 与 `GeneralizedMahowaldLaw` 已绑定实际页面、微分、extensions 和 crossing。`FinitePageExtensionNonliftableCrossing` 与 `FinitePageExtensionStretchingLaw` 进一步固定有限 stretching 的实际候选及充分条件：原标签具有后页 cycle 类型，较短 essential extension 的靶须排除较大的普通 Adams 边界，候选包含 `b = 0`。仍需从同一模型的 ν、δ、ρ、λ 相容图及相应数学结果构造这些 law 的证明；Mahowald 还需要实际塔 suspension comparison 的构造与规范性。

Stretching 已有[实际严格解纤维与差群](../../../Def/SpectralSequence/FilteredComplex/Solutions/Data.lean)、诱导限制及其平移相容性。projective 测试对象上的页面关系与纤维非空已有双向证明；合成端的 `FiniteSolutions`／`InfiniteSolutions` 已分别与同一实际标签的有限／未截断 page extension 建立等价。[完整实际 target coset](../../../Def/Synthetic/PageExtension/Solutions/Coset/Proofs.lean)已刻画为同一源标签下非空纤维的目标标签集合，单一固定标签纤维仍由实际代表元对组成。根 Challenge2 的 `PageExtensionRestrictionFiltration`、`PageExtensionRestrictionLabels` 给出所需 ρ 比较图，`restrictFiniteSolution` 据此构造限制并推出带这些条件的有限 page extension 限制定理；尚未证明这些兼容见证存在或限制满射。

[仿射限制判据](../../../Def/SpectralSequence/FilteredComplex/Solutions/AffineRestriction/Proofs.lean)已证明：给定一个实际后期解，严格解纤维限制满射当且仅当真实差群映射满射；而全部指定解的余核障碍为零当且仅当严格限制满射，后一等价不要求后期纤维非空。这样明确了关系存在以后还需补的齐次提升条件。

根 Challenge2 的 `CoherentPageExtensionSolutions` 已用同一 `P`、固定永久标签及所有 `q > lambdaExponent n` 的相邻层实际 ρ 相容条件定义。[CoherentPageExtension](../CoherentPageExtension.lean)已证明：给定指定首层解，并显式假设每个实际相邻限制满射，可构造保持该首层解的相容塔。这没有证明所选模型的满射条件，也没有恢复未截断 ESS 解。

同一接口还将上述仿射判据绑定实际 `restrictPermanentFiniteSolution`：给定后期解，满射性等价于同一 filtered ρ 链映射诱导的差群映射满射。因而“每个有限纤维非空 + 每个相邻真实差群映射满射”也可构造保持指定首层解的相容塔；这里的差群满射仍是需要单独验证的条件。

[余核零判据](../../../Def/SpectralSequence/FilteredComplex/Solutions/Obstruction/Proofs.lean)已精确证明指定早期解的提升条件。论文的有限 stretching 只断言后页关系存在，不固定该关系的严格代表元；将它加强为每个指定早期解可提升没有来源依据。Blueprint 已删除该加强及 Hopf 例子中依赖它的满射结论。后续必须分别证明有限 law、模型比较条件和所需的相容性，再处理与未截断解／同伦极限的比较；各有限纤维非空不能直接推出无穷解。

这些剩余工作不影响已证明的页面、cobar 或条件性 kernel/coset 结果；具体进度见[Interface](../../README.md)与根 Challenge2 清单。
