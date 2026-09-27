import KIP126.Def.ClassicalAdams.StandardFoundation.Data
import KIP126.Def.ClassicalAdams.MilnorCooperations.Data

/-!
# Challenge 1：Def 向 Interface 交付的共享见证

本文件按主题直接列出阶段边界的数据选择与数学条件。Def 需要构造这个
见证；构造尚未完成时，Interface 仅假设同一个类型非空。

稳定范畴、cofiber 和 Milnor cooperation 的通用数学记录仍在 Def。
这里的边界记录通过下方适配定义组装成这些通用记录；它们不引入额外的
数学承诺，也不把已经由基础构造的谱序列或标准类变成新的任意选择。

## 清单口径与交付范围

编号沿用 https://github.com/SII-MATH/KIP126/issues/138 的 A₀ 清单。
「已有精确陈述」只表示现有 Lean 类型可供审核，不表示整个规划项已通过数学
验收；陈述状态、实现状态和依赖关系分别记录。下方实际字段目前覆盖 a01 的
部分基础，以及 a02/a03 的球面 Milnor 坐标与 d₁ 相容性，不能代表全部 14 项。
未冻结的条目以 TODO 保留，补成正式字段前须审核数学类型、范围和消费端。
不用 `True`、任意 `Prop` 或新的 axiom 代替缺失陈述。

通用构造与已证结果可直接由 Def 提供；清单列出这些派生交付，不把它们重新
变成独立输入。A₀ 的完整声明不使用内部 SSData／SpectralSequence；涉及内部
页面、检测或存活的结果归 Challenge 2。文献项须保留来源、精确 claim locator
和显式证明／外部输入参数，不能借清单整理变成无条件的已证事实。

### a01 — 固定的稳定模 2 基础

- 陈述：`FoundationInput` 明列当前基础；#138 的完整基础范围尚未冻结。
- 实现：`Def/Solution/Challenge1.lean` 的整包构造仍为 `sorry`。
- 依赖：选择一次范畴、cofiber、HF₂，后续所有数据使用同一选择。
- TODO：审核与实际稳定同伦模型的联系及所需的对称幺半等条件。当前
  `StableHomotopyCategory` 不含对称、closed 或 tensor exactness；独立的
  `ClosedSymmetricTensorTriangulated` 未入包。`HasFunctorialCofiber` 当前提供
  交换方块的兼容提升，未显式要求提升保持恒等和复合，不从名称推断更强性质。
- 定位：`Def/StableHomotopy/Context/Data.lean`、
  `Def/StableHomotopy/Cohomology/Data.lean`；Blueprint `def:stable-context`、
  `def:hf2-homology`。

### a02 — H𝔽₂ 乘法、Künneth 与 Milnor 合作运算

- 陈述：乘法、Künneth、reduced Milnor basis 等通用结构已有；固定交付未冻结。
- 实现：`Mod2RingStructure`、`Mod2CooperationKunneth`、`Mod2ReducedMilnorBasis`
  及若干条件性相容结果已有；本包没有选择这些固定实例。
- 依赖：全部必须绑定 a01 的同一个 H𝔽₂。下方 `MilnorInput` 仅给坐标及 d₁
  公式，不能视为本项完整交付，也没有额外承诺坐标保乘法。
- TODO：逐项明确 suspension、diagonal、unit、coproduct 相容性与次数 64
  cooperation 的类型和来源。现有 UCT 的 #135 次数问题另行修复，不能隐含带入。
- 定位：`Def/StableHomotopy/Cohomology/Multiplication/Data.lean`、
  `Def/StableHomotopy/Cohomology/Cooperations/{Kunneth,MilnorBasis}/Data.lean`。

### a03 — Adams 塔及页面以下性质

- 陈述：塔及大量参数化性质已有；本包精确列出球面 E₁ 坐标和第一微分相容性。
- 实现：`adamsTower` 由 unit 反复取 fiber 构造；第一页面同调及 word 坐标等
  已有参数化实现。与显式 Milnor polynomial differential 的完整比较仍需
  coproduct compatibility，固定输入的构造仍待完成。
- 依赖：塔是前项数据的派生构造，不能独立选择另一个塔或页面。
- TODO：审核层识别、连接映射、resolution differential、自然性、smash pairing
  的完整交付及额外条件；本项停在 `TowerSSData` 之前，内部页面性质归 am2/am9。
- 定位：`Def/ClassicalAdams/Tower/Data.lean`、
  `Def/ClassicalAdams/TowerHomology/MilnorCoordinates/Proofs.lean`；
  Blueprint `def:hf2-adams-tower`、`def:h6-milnor-cooperations`。

### a04 — 纯 Milnor cobar 与 h₆² 非边界

- 陈述：cycle、Leibniz、指定非边界结论已有；一般 d²=0 的对外接口仍待补。
- 实现：`differential_cup`、`h6Cochain_isCycle`、`h6SquareCochain_isCycle`、
  `h6SquareCochain_not_boundary` 已有证明正文；后者排除所有
  `b : cochains 1 128` 满足 `differential 1 128 b = h6SquareCochain`。
- 依赖：纯代数派生结果直接复用 Def，不重新假设为自由性质。
- TODO：完成并审核一般 cobar d²=0 接口；内部 Adams 页面上的标准类识别归 am9。
- 定位：`Def/Steenrod/MilnorCobar/Proofs.lean`、`Multiplication/Proofs.lean`、
  `Polynomial/Detection/Boundary/Proofs.lean`（后两路径相对 MilnorCobar）。

### a05 — Lin 加法基表的完整正确性

- 陈述：`basisTable_correct (s t : ℕ) (ht : t ≤ 261) : BasisTableCorrect s t`
  已有精确类型，要求固定 v126.3.cw49 CSV 单项式构成 `Module.Basis`。
- 实现：证明仍为 `sorry`；当前位于 Interface/Solution，尚未接入本边界。
- 依赖：这是纯 Lin 商代数的认证，独立于球面页面 comparison；行合法性或
  hash 核验不能代替线性无关与生成性。
- TODO：按 A₀ 归属接入生产／消费路线；保留固定数据版本和 t ≤ 261 的范围。
- 定位：`Def/AdamsE2/LinBasisTable/Predicates.lean`、
  `Interface/Solution/LinProgram/BasisTable.lean`；Blueprint `thm:lin-e2-basis-certification`。

### a06 — Ravenel 的 Adams 滤过分解准则

- 陈述：尚无完整可交付 Lean 陈述，未冻结；Blueprint 与文献 claim ledger 已定位。
- 实现／依赖：待在 a01/a03 的固定映射、塔及 H𝔽₂ 同调上精确表述文献输入。
- TODO：定义 filtration ≥ k 到 k 个同调零映射复合的正向蕴含、范围和来源；
  不额外加入未使用的逆命题。
- 定位：Blueprint `thm:external-map-filtration-factorization`；
  `Main/Axiom/Literature/Claims.lean` 的 `mapFiltrationFactorization` 是来源目录项。

### a07 — May 的 smash-boundary 引理

- 陈述：完整 3×3 smash 命题未冻结；普通 cofiber lifting 定理不能替代本项。
- 实现／依赖：已有 `Def/StableHomotopy/Context/CofiberFactorization/Lifting/Proofs.lean`
  的低层工具；所需文献命题及固定 smash 相容结构尚待交付。
- TODO：明确两个三角、共同像、输出类及两个像／边界等式、符号和文献依据。
- 定位：Blueprint `thm:external-may-smash-boundary`；Claims 的 `maySmashBoundary`。

### a08 — Pstrągowski synthetic 基础

- 陈述：`SyntheticCategory`、`NuFunctorData` 骨架已有；完整文献输入未冻结。
- 实现：现有 ν record 含 functor、additive、zeroIso、suspensionIso，未交付完整
  presentable、lax symmetric monoidal 及 filtered-colimit 保持条件。
- 依赖：固定的 synthetic/classical 对象与 a01 关联；此项不涉及内部谱序列。
- TODO：精确表述这些额外能力及来源；不扩大成 ν 保持所有 cofiber sequence。
- 定位：`Def/Synthetic/Context/Data.lean`；Blueprint `thm:external-synthetic-foundation`。

### a09 — S/λ 的 E∞ 结构与 λ 反演

- 陈述：两条目标结果尚未形成完整 Lean 陈述，未冻结。
- 实现／依赖：a08 背景下 `XModLambda`、`XModLambdaN` 等商对象已有定义。
- TODO：陈述与商映射相容的 S/λ 唯一 commutative／E∞ algebra 结构，以及
  λ-invertible synthetic spectra 到 classical spectra 的对称幺半等价、λ⁻¹νX≃X。
- 定位：`Def/Synthetic/Context/Data.lean`；Blueprint
  `thm:external-lambda-quotient-ring`、`thm:external-lambda-inversion`。

### a10 — ν 的 cofiber 判据

- 陈述：尚无完整可交付 Lean 陈述，未冻结。
- 实现／依赖：现有 λ 商 distinguished triangle 结果不是本项；需要 a08 的 ν
  与 a01 的同调接口。
- TODO：对指定 classical cofiber sequence 陈述 ν 像仍为 cofiber sequence
  当且仅当 H𝔽₂ 同调短正合，并保留文献依据。
- 定位：Blueprint `thm:external-nu-cofiber-criterion`；Claims 的 `nuCofiberCriterion`。

### a11 — BHS synthetic lift 与三角提升

- 陈述：Blueprint／来源定位已有；完整 lift 和 triangle-lift Lean 陈述未冻结。
- 实现／依赖：需要 a03 的有限 Adams filtration、a08 的 ν、a09 的 λ 结构。
- TODO：陈述 λᵏ 分解 lift 及与三角相容的 lift，明确旋转兼容及选择；不同
  full lifts 只要求相差 λ-torsion map，不能加强为严格相等。
- 定位：Blueprint `thm:external-synthetic-lift`、`thm:external-synthetic-triangle-lift`；
  `Main/Axiom/Literature/Claims.lean` 中 BHS Lemma 9.15 的来源定位。

### a12 — λ-adic 完备性

- 陈述：固定 synthetic 对象的完备性及 coherent tower 结果未冻结。
- 实现／依赖：有限 λ 商对象已有；一般代数 completion API 不提供此固定实例。
- TODO：定义实际 inverse system，并陈述 νX≃limₘ νX/λᵐ 及其与商映射、有限
  λ–ρ–δ triangles 的相容性。
- 定位：Blueprint `thm:external-synthetic-lambda-complete`；Claims 中 BHS Proposition A.13。

### a13 — 纯稳定 Toda bracket 规律

- 陈述：`Relation` 及基本存在性／不定性陈述已有；完整交付未冻结。
- 实现：`composable`、`exists_relation`、左右 indeterminacy 保持性已有证明；
  完整 coset 等式、自然性、悬移、乘积和 shuffle 仍需补充。
- 依赖：纯稳定同伦结果；连接内部页面检测的 Massey／Moss 桥留在 am8/am15。
- TODO：逐条审核缺失规律的前提与符号，复用现有证明。
- 定位：`Def/StableHomotopy/Toda/{Predicates,Proofs}.lean`；Blueprint `thm:toda-product-identities`。

### a14 — 内部目标之后的纯几何外部事实

- 陈述：`HHRNonexistenceStatement` 的参数化类型已有；真实几何模型、低维存在
  及整组交付未冻结。Browder 与内部存活的桥归 am16。
- 实现：`cataloguedHHRNonexistence` 需要调用者传入 proof，不提供 HHR 的证明；
  低维存在目前有 Blueprint／来源定位。
- 依赖：最终显式几何文献输入；自由的 `Manifold`／predicate 参数不等于已选定模型。
- TODO：明确几何对象、维数范围、来源和证明参数，保持最终结论的条件性。
- 定位：`Def/Kervaire/Theta5/Predicates.lean`、`Main/Axiom/Literature/Kervaire.lean`；
  Blueprint `thm:external-low-kervaire-existence`、`thm:external-hhr-nonexistence`。

## 生产与消费

`Def/Challenge/Challenge1.lean` 和 `Def/Solution/Challenge1.lean` 直接陈述
`Nonempty KIP126.Challenge1`，当前证明体都为 `sorry`；前者是保留的目标，
后者才是待完成的生产证明。`Interface/Axiom/Challenge1.lean` 暂时接受同一
存在性命题，并只 choice 一次。下面的兼容适配只组装记录，不选择新的基础。
-/
namespace KIP126

open StableHomotopy StableHomotopy.Cohomology Classical.Adams

namespace Challenge1

/-- 基础对象及其条件。

`stable` 使用 Def 的通用稳定范畴接口：小 Hom、加性、整数平移、幺半结构、
零对象及预三角结构；本字段不额外要求对称性、闭性或 tensor exactness。
`cofiber` 使用 Def 的通用 cofiber 接口，包括选定三角及交换方块的兼容提升。
HF₂ 的对象、零次同伦群与非零次数消失条件在此逐项列出。 -/
structure FoundationInput where
  Spectrum : Type 1
  stable : StableHomotopyCategory.{1, 0} Spectrum
  cofiber : @HasFunctorialCofiber Spectrum stable
  HF2 : Spectrum
  pi0Equiv : @HomotopyGroup Spectrum stable 0 HF2 ≃+ ZMod 2
  homotopy_vanishes : ∀ n : ℤ, n ≠ 0 →
    Subsingleton (@HomotopyGroup Spectrum stable n HF2)

attribute [instance] FoundationInput.stable FoundationInput.cofiber

/-- 将同一组已列出的 HF₂ 条件交给 Def 的通用构造使用。 -/
def FoundationInput.hf2 (F : FoundationInput) :
    @Mod2EilenbergMacLane F.Spectrum F.stable where
  HF2 := F.HF2
  pi0Equiv := F.pi0Equiv
  homotopy_vanishes := F.homotopy_vanishes

/-- 兼容现有基础记录；没有重新选择任何数据。 -/
def FoundationInput.toStandard (F : FoundationInput) : StandardAdamsFoundation where
  Spectrum := F.Spectrum
  stable := F.stable
  cofiber := F.cofiber
  hf2 := F.hf2

/-- 将已有的通用基础记录逐字段放入边界记录。 -/
def FoundationInput.ofStandard (F : StandardAdamsFoundation) : FoundationInput where
  Spectrum := F.Spectrum
  stable := F.stable
  cofiber := F.cofiber
  HF2 := F.hf2.HF2
  pi0Equiv := F.hf2.pi0Equiv
  homotopy_vanishes := F.hf2.homotopy_vanishes

/-- 同一基础上的 Milnor 坐标与第一微分相容性。

坐标覆盖所有非负双次数，等价的标量环是 ℤ；第一页面及其微分来自
`F.hf2.unit` 的实际 Adams 塔构造。这里不另行假设乘法相容或永久存活。 -/
structure MilnorInput (F : FoundationInput) where
  coordinates : ∀ s t : ℕ,
    adamsPage F.hf2.unit (SphereSpectrum (C := F.Spectrum)) 1 (by decide) s t ≃ₗ[ℤ]
      Steenrod.Milnor.cochains s t
  differential_coordinates : ∀ (s t : ℕ)
      (x : adamsPage F.hf2.unit (SphereSpectrum (C := F.Spectrum)) 1 (by decide) s t),
    coordinates (s + 1) t (sphereFirstDifferential F.hf2 s t x) =
      Steenrod.Milnor.differential s t (coordinates s t x)

end Challenge1

/-- 第一阶段边界的唯一见证类型。Milnor 条件依赖本见证选定的基础。 -/
structure Challenge1 where
  foundationInput : Challenge1.FoundationInput
  milnorInput : Challenge1.MilnorInput foundationInput

namespace Challenge1

/-- 保留消费端使用的基础名称及类型，所有数据来自同一个边界见证。 -/
def foundation (c : KIP126.Challenge1) : StandardAdamsFoundation :=
  c.foundationInput.toStandard

/-- 保留消费端使用的 Milnor 名称及类型，适配到同一基础上的通用记录。 -/
def milnor (c : KIP126.Challenge1) :
    @MilnorCooperations c.foundation.Spectrum c.foundation.stable
      c.foundation.cofiber c.foundation.hf2 where
  coordinates := c.milnorInput.coordinates
  differential_coordinates := c.milnorInput.differential_coordinates

/-- 已有基础与 Milnor 见证可逐字段组装成边界包；不增加待证明条件。 -/
def ofFoundationMilnor (F : StandardAdamsFoundation)
    (M : @MilnorCooperations F.Spectrum F.stable F.cofiber F.hf2) :
    KIP126.Challenge1 where
  foundationInput := FoundationInput.ofStandard F
  milnorInput :=
    { coordinates := M.coordinates
      differential_coordinates := M.differential_coordinates }

end Challenge1

end KIP126
