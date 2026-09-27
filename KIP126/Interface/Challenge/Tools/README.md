# Challenge / Tools：旧声明退休记录

旧 `generalized_leibniz.lean`、`generalized_mahowald.lean` 与 `page_extension_stretch.lean` 已与 Solution 配对删除，并从阶段入口撤下。#133 发现 Leibniz 的次数条件使旧 `Input` 为空；#134 指出 Mahowald 的错误 crossing 分支；旧 stretching 只重述了不相关的 Leibniz 结论。删除依据是陈述错误，历史源码保留在 Git 中。

当前准确接口位于[根 Challenge2](../../../Challenge2.lean)：

- `GeneralizedLeibnizLaw` 使用实际 Adams 微分以及同一 normalized page family 的有限／无穷扩张与 crossing。
- `GeneralizedMahowaldLaw` 使用同一实际 distinguished triangle 的三张映射，并通过[实际塔 suspension comparison](../../../Def/ClassicalAdams/Suspension/Data.lean)及其 raw-cycle 商代表元关系处理连接映射的悬移目标。

这些 law 是待交付命题，不是已证明的规则，也没有断言任意比较家族都满足它们。模型比较前置到位后再建立准确的 Challenge/Solution 配对目标。

Stretching 的实际前置已有进展：[严格代表元解纤维](../../../Def/SpectralSequence/FilteredComplex/Solutions/Data.lean)及其差群由同一个方程映射定义，限制来自实际 filtered chain map；projective 测试对象上的页面微分关系与纤维非空已有双向证明。`NormalizedPageFamily.FiniteSolutions`／`InfiniteSolutions` 使用同一实际 ESS 和固定经典标签，已证明分别等价于有限／未截断 page extension；[完整实际 target coset](../../../Def/Synthetic/PageExtension/Solutions/Coset/Proofs.lean)也恰好由同一源标签下非空纤维的目标标签组成。单个固定标签纤维仍是代表元对的集合，不是所有目标标签的集合。根 Challenge2 的 `PageExtensionRestrictionFiltration`、`PageExtensionRestrictionLabels` 与 `restrictFiniteSolution` 固定实际 ρ 的比较条件及限制，并已推出带这些条件的有限 page extension 限制定理。

根 Challenge2 的 `CoherentPageExtensionSolutions` 已定义：固定同一 `P` 和永久源／目标标签，要求所有 `q > lambdaExponent n` 的实际有限解在相邻层的 ρ 限制下相容；该类型尚未构造成员。

[余核障碍](../../../Def/SpectralSequence/FilteredComplex/Solutions/Obstruction/Proofs.lean)的零判据判断一个指定早期代表元解能否提升。它尚未识别成论文的 first-obstruction tuple，也不证明无 crossing 时满射。上述模型兼容见证、限制满射、相容解的存在性及其与无穷解／同伦极限的比较仍待完成。Blueprint 将已证明的局部节点及已定义的相容解类型标为 `leanok`，完整 stretching 仍为 `notready`。

整体阶段状态见[Interface](../../README.md)。
