# Challenge / Tools：旧声明退休记录

旧 `generalized_leibniz.lean`、`generalized_mahowald.lean` 与 `page_extension_stretch.lean` 已与 Solution 配对删除，并从阶段入口撤下。#133 发现 Leibniz 的次数条件使旧 `Input` 为空；#134 指出 Mahowald 的错误 crossing 分支；旧 stretching 只重述了不相关的 Leibniz 结论。删除依据是陈述错误，历史源码保留在 Git 中。

当前准确接口位于[根 Challenge2](../../../Challenge2.lean)：

- `GeneralizedLeibnizLaw` 使用实际 Adams 微分以及同一 normalized page family 的有限／无穷扩张与 crossing。
- `GeneralizedMahowaldLaw` 使用同一实际 distinguished triangle 的三张映射，并通过[实际塔 suspension comparison](../../../Def/ClassicalAdams/Suspension/Data.lean)及其 raw-cycle 商代表元关系处理连接映射的悬移目标。
- `FinitePageExtensionNonliftableCrossing` 明列同一模型中较短 essential extension、源的后页不存活条件，以及较大的普通 Adams 边界排除；`FinitePageExtensionStretchingLaw` 固定有限页 relation 的充分条件版本。它要求原源／靶已具后页 cycle 类型，并排除 `b ≥ 0` 的全部候选，比论文印出的 `b > 0` 条件更强；结论只给出后页 extension 存在。

这些 law 是待交付命题，不是已证明的规则，也没有断言任意比较家族都满足它们。模型比较前置到位后再建立准确的 Challenge/Solution 配对目标。

Stretching 的实际前置已有进展：[严格代表元解纤维](../../../Def/SpectralSequence/FilteredComplex/Solutions/Data.lean)及其差群由同一个方程映射定义，限制来自实际 filtered chain map；projective 测试对象上的页面微分关系与纤维非空已有双向证明。`NormalizedPageFamily.FiniteSolutions`／`InfiniteSolutions` 使用同一实际 ESS 和固定经典标签，已证明分别等价于有限／未截断 page extension；[完整实际 target coset](../../../Def/Synthetic/PageExtension/Solutions/Coset/Proofs.lean)也恰好由同一源标签下非空纤维的目标标签组成。单个固定标签纤维仍是代表元对的集合，不是所有目标标签的集合。根 Challenge2 的 `PageExtensionRestrictionFiltration`、`PageExtensionRestrictionLabels` 与 `restrictFiniteSolution` 固定实际 ρ 的比较条件及限制，并已推出带这些条件的有限 page extension 限制定理。

[仿射限制判据](../../../Def/SpectralSequence/FilteredComplex/Solutions/AffineRestriction/Proofs.lean)已证明：给定一个实际后期解，严格解纤维限制满射当且仅当真实差群映射满射；而全部指定解的余核障碍为零当且仅当严格限制满射，后一等价不要求后期纤维非空。这样明确了关系存在以后还需补的齐次提升条件。

根 Challenge2 的 `CoherentPageExtensionSolutions` 固定同一 `P` 和永久源／目标标签，要求所有 `q > lambdaExponent n` 的实际有限解在相邻层的 ρ 限制下相容。[配对的 coherent 接口](../CoherentPageExtension.lean)现在要求一个指定首层解和实际相邻限制全部满射；对应 Solution 已构造保持该首层解的相容塔。所选模型上的满射条件及未截断恢复仍待证明。

同一接口还将上述仿射判据绑定实际 `restrictPermanentFiniteSolution`：给定后期解，满射性等价于同一 filtered ρ 链映射诱导的差群映射满射。因而“每个有限纤维非空 + 每个相邻真实差群映射满射”也可构造保持指定首层解的相容塔；这里的差群满射仍是需要单独验证的条件。

[有限纤维的相容选择](../FiniteCoherentPageExtension.lean)已给出另一条已证明路线：同一 `P,I,J` 下，每层实际严格解纤维若有限且非空，就存在某个相容塔；不要求限制满射，也不保证保留任意指定首层解。这里的“有限”是代表元对集合的基数有限，不能由有限 λ 指数或 bounded filtration 直接替代。

[余核障碍](../../../Def/SpectralSequence/FilteredComplex/Solutions/Obstruction/Proofs.lean)的零判据判断一个指定早期代表元解能否提升。论文 Proposition `prop:dec738d3` 与 Corollary `cor:dfc6043e` 讨论页面关系及其存在性，没有证明每个指定严格解都可提升。因此 Blueprint 已撤下“余核非零必产生论文 crossing 元组／无元组则严格限制满射”的加强；满射必须另行证明。有限 stretching law 的模型证明、实际比较见证、以及相容解与未截断解／同伦极限的比较仍待完成。Blueprint 将已证明的局部节点及已定义的接口标为 `leanok`，完整 stretching 仍为 `notready`。

整体阶段状态见[Interface](../../README.md)。

有限性路线现在已证明到条件性的相容塔：严格解由其实际源代表元唯一确定，所以只需源同伦群有限；实际 λ–ρ–δ 三角又将 first-quotient 群的有限性传到任意正有限商。[根 Challenge2](../../../Challenge2.lean) 的 `FirstQuotientHomotopyComparison` 已准确要求移位后实际首商的同伦群与经典 E₂ 的同构。供给这个见证、经典 E₂ 对角线上各群有限、同一 `P,I,J` 和各实际纤维非空后，`FiniteCoherentPageExtension` 的对应 Solution 已证明存在某个相容塔。实际模型上的比较见证及 finite-type 到 E₂ 有限的绑定仍缺；不能由 bounded convergence 推出这些条件，也未恢复未截断解。

论文假设 connective、2-completed、finite type；未截断或 2-adic 同伦群未必有限。历史 `KIPBase/StableHomotopy/Adams.lean` 的 `finiteSpectrum_homology_finiteDim` 依赖把有限集合基数上界相加的 `mod2Homology_cofiber_bound` 公理；该界一般错误，不能迁移为当前证明。本轮有限商证明使用实际 Hom 正合性及有限 kernel/image，不使用该历史公理。
