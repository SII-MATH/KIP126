import KIP126.Def.ClassicalAdams.StandardFoundation.Data
import KIP126.Def.ClassicalAdams.MilnorCooperations.Data
import KIP126.Def.ClassicalAdams.MapFiltration.Predicates
import KIP126.Def.Synthetic.Context.Data
import Mathlib.Algebra.Exact.Basic

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
验收；陈述状态、实现状态和依赖关系分别记录。总见证 `Challenge1` 的字段覆盖
a01 的部分基础，以及 a02/a03 的球面 Milnor 坐标与 d₁ 相容性；a10/a11 的
参数化接口另在本文件中定义，固定模型与证明待接入，不能代表全部 14 项已交付。
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

- 陈述：乘法、Künneth、reduced Milnor basis 及主要相容条件已有精确类型；
  固定见证尚未接入当前包，不是缺少表述这些条件的语言。
- 实现：`Mod2RingStructure`、`Mod2CooperationKunneth`、`Mod2ReducedMilnorBasis`
  及若干条件性相容结果已有；本包没有选择这些固定实例。
- 依赖：全部必须绑定 a01 的同一个 H𝔽₂。下方 `MilnorInput` 仅给坐标及 d₁
  公式，不能视为本项完整交付，也没有额外承诺坐标保乘法。
- TODO：接入现成的 `Mod2KunnethSuspensionCompatible`、`Mod2KunnethDiagonalCompatible`、
  `Mod2KunnethUnitCompatible`、`Mod2MilnorCoproductCompatible`，以及次数 64
  cooperation，保持同一 H𝔽₂/R/K/basis 的依赖。现有 UCT 的 #135 问题另行处理。
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

- 陈述：cycle、Leibniz、指定非边界结论已有；一般 d²=0 也已可精确表述为
  `∀ s t (x : cochains s t), differential (s + 1) t (differential s t x) = 0`。
- 实现：`differential_cup`、`h6Cochain_isCycle`、`h6SquareCochain_isCycle`、
  `h6SquareCochain_not_boundary` 已有证明正文；后者排除所有
  `b : cochains 1 128` 满足 `differential 1 128 b = h6SquareCochain`。
- 依赖：纯代数派生结果直接复用 Def，不重新假设为自由性质。
- TODO：接入并证明一般 cobar d²=0 的交付，不需等待新对象才能写陈述；
  内部 Adams 页面上的标准类识别归 am9。
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

- 陈述：现有塔、同调和 Blueprint 已足够表述正向分解准则；当前尚未接入。
- 实现／依赖：`AdamsFiltrationAtLeast` 已绑定实际目标塔；历史
  `KIPBase/StableHomotopy/Adams.lean` 有 `IsZeroOnMod2Homology` 接口。
- TODO：补有限映射链及其复合（含 k=0 的约定），接入 filtration ≥ k 到
  k 个同调零映射复合的正向蕴含、范围和来源；
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

- 陈述：本文件 `Synthetic.NuCofiberCriterion` 已给出完整双向判据，
  `HomologyShortExact` 同时要求单射、中间正合和满射，`NuImageIsCofiber` 固定 νf、νg。
- 实现／依赖：当前 Def 已有 ν、同调与三角；历史 `KIPBase/Synthetic/Nu.lean`
  的 `nu_cofiber_ses` 已搭建正向接口，但其前提缺少两端，未直接沿用。
- 交付：`SyntheticInterface.nu_cofiber` 是实际类型；
  `Main/Axiom/Literature/Synthetic.lean` 的来源输入保留显式证明参数。
- TODO：接入选定的 synthetic 背景及其文献证明；此项不是“尚不能陈述”。
- 定位：Blueprint `thm:external-nu-cofiber-criterion`；Claims 的 `nuCofiberCriterion`。

### a11 — BHS synthetic lift 与三角提升

- 陈述：本文件 `SyntheticLiftComparison`、`SyntheticTriangleLiftComparison`
  及其 witness records 已明确 λᵏ 因子分解、三角的三条映射及模 λ-torsion 的比较。
- 实现／依赖：`AdamsFiltrationAtLeast` 使用实际 Adams 塔；当前 Def 的 ν、λ、
  `lambdaPow`、双分次悬移足够表达命题，无须先完成 λ 反演或 synthetic 谱序列。
  历史 `KIPBase/Synthetic/Lift.lean` 有 `synthetic_lift` 等接口，但其自由 AF
  数值和未绑定 ν 分量的三角声明不能作为当前精确类型直接迁入。
- 交付：`SyntheticInterface.lift`、`triangle_lift` 使用同一个 H 和 ν；
  `Main/Axiom/Literature/Synthetic.lean` 将证明参数绑定 BHS 的确切来源条目。
- TODO：选择并关联实际 synthetic 模型、补齐文献证明和所需旋转特化；
  不再将缺口描述为缺少 lift/triangle 的陈述语言。
- 定位：Blueprint `thm:external-synthetic-lift`、`thm:external-synthetic-triangle-lift`；
  `Main/Axiom/Literature/Claims.lean` 中 BHS Lemma 9.15 的来源定位。

### a12 — λ-adic 完备性

- 陈述：历史 `KIPBase/Synthetic/QuotientTower.lean` 已有 `LambdaRhoDeltaTriangle`、
  `FiniteLambdaQuotientTower` 及其 `Hom`；固定模型的极限比较尚未接入。
- 实现／依赖：当前有限 λ 商对象已定义；历史 coherent tower 可作为迁移依据，
  一般代数 completion API 不提供固定 synthetic 实例的完备性。
- TODO：将现成 tower 数据绑定当前 λ 商，接入 νX≃limₘ νX/λᵐ 及其与商映射、
  λ–ρ–δ triangles 的相容性，不从头另设计一个无关联的 inverse system。
- 定位：Blueprint `thm:external-synthetic-lambda-complete`；Claims 中 BHS Proposition A.13。

### a13 — 纯稳定 Toda bracket 规律

- 陈述：`Relation` 及基本存在性／不定性陈述已有；完整交付未冻结。
- 实现：`composable`、`exists_relation`、左右 indeterminacy 保持性已有证明；
  历史 `KIPBase/multiplicativeSS/TriangulatedTodaBracket.lean` 还已有
  `indeterminacy_complete`、`juggling` 的陈述和证明，尚未迁入当前组件。
- 依赖：纯稳定同伦结果；连接内部页面检测的 Massey／Moss 桥留在 am8/am15。
- TODO：将历史 coset／juggling 结果迁到同一 `Relation`，保留后者要求的
  `IsTriangulated`；其余自然性、悬移等逐条审核，不把历史已有部分记为从未实现。
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

namespace Synthetic

open CategoryTheory CategoryTheory.Pretriangulated
open Context

universe u v u' v'

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type u'} [SyntheticCategory.{u', v'} Syn]

/-! ## a10/a11：已可精确陈述的 synthetic 文献接口

以下类型使用当前 Def 的对象，既不 import KIPBase，也不依赖 synthetic
谱序列的迁移。参数 H 与 N 必须来自同一选定背景；本文件不为任意抽象 N
无条件断言文献结论。`Main/Axiom/Literature/Synthetic.lean` 将实际证明与
Pstrągowski/BHS 的目录项关联，消费者显式接收这些输入。

历史 `KIPBase/Synthetic/Nu.lean`、`Lift.lean` 已搭建对应接口形状，但前者的
短正合前提仅写了中间正合，后者部分三角未绑定 ν 的实际映射；下面按主论文
及 Blueprint 补足这些条件。类型可表达与固定模型／证明已交付是独立检查项。
-/

/-- 每个整数次数上的完整短正合条件；仅有中间 `Exact` 不够。 -/
def HomologyShortExact (H : Mod2EilenbergMacLane (C := C)) (T : Triangle C) : Prop :=
  ∀ n : ℤ,
    Function.Injective (Mod2Homology.pushforward H T.mor₁ n) ∧
    Function.Exact (Mod2Homology.pushforward H T.mor₁ n)
      (Mod2Homology.pushforward H T.mor₂ n) ∧
    Function.Surjective (Mod2Homology.pushforward H T.mor₂ n)

/-- 同一个 classical 三角的 ν 前两条箭头能否组成 synthetic distinguished triangle。
第三箭头落在 ΣνX；它与 ν(ΣX) 的关系由 a11 单独控制。 -/
def NuImageIsCofiber (N : NuFunctorData C Syn) (T : Triangle C) : Prop :=
  ∃ δ : N.functor.obj T.obj₃ ⟶ (N.functor.obj T.obj₁)⟦(1 : ℤ)⟧,
    Triangle.mk (N.functor.map T.mor₁) (N.functor.map T.mor₂) δ ∈ distTriang Syn

/-- a10：Pstrągowski Lemma 4.23 的完整双向判据。
来源：MainPaper `prop:1f7950df`；Pst 原文
`lemma:fibre_sequences_that_are_short_exaft_sequences_on_homology_preserved_by_synthetic_analogue_construction`。
不额外限制有限谱、连通性或完备性。 -/
def NuCofiberCriterion (H : Mod2EilenbergMacLane (C := C))
    (N : NuFunctorData C Syn) : Prop :=
  ∀ T : Triangle C, T ∈ distTriang C →
    (NuImageIsCofiber N T ↔ HomologyShortExact H T)

/-- a11 的 full lift：使用 BHS 图中的负移靶写法 νX → Σ^(0,-k)νY。
所选映射与 νf 的 λᵏ 分解等式是同一个见证的两个字段。 -/
structure SyntheticFullLift (N : NuFunctorData C Syn) {X Y : C}
    (f : X ⟶ Y) (k : ℕ) where
  map : N.functor.obj X ⟶
    (SyntheticCategory.biShift (0, -(k : ℤ))).obj (N.functor.obj Y)
  factorization : map ≫ lambdaPow k (N.functor.obj Y) = N.functor.map f

/-- a11：BHS Lemma 9.15；filtration 下界由实际 Adams 塔因子分解定义。
来源：BHS `SynRevBigraded.tex`, `lemm:adams-fil1`；MainPaper `prop:ef21f9bc`。
该类型不假设任意 full lift 都是提升三角的分量。 -/
def SyntheticLiftComparison (H : Mod2EilenbergMacLane (C := C))
    (N : NuFunctorData C Syn) : Prop :=
  ∀ {X Y : C} (f : X ⟶ Y) (k : ℕ),
    AdamsFiltrationAtLeast H f k → Nonempty (SyntheticFullLift N f k)

/-- a11 的三角提升：前两条箭头固定为 νf、νg，第三箭头同时满足
λ 下的分解等式和 distinguished 条件，不能用无关三角填入。 -/
structure SyntheticTriangleLift (N : NuFunctorData C Syn) (T : Triangle C) where
  connecting : N.functor.obj T.obj₃ ⟶
    (SyntheticCategory.biShift (0, -1)).obj (N.functor.obj (T.obj₁⟦(1 : ℤ)⟧))
  factorization :
    connecting ≫ SyntheticCategory.lam.app (N.functor.obj (T.obj₁⟦(1 : ℤ)⟧)) =
      N.functor.map T.mor₃
  distinguished :
    Triangle.mk (N.functor.map T.mor₁) (N.functor.map T.mor₂)
      (connecting ≫ (N.boundaryLandingIso T.obj₁).hom) ∈ distTriang Syn

/-- 实际 Hom 群中的 λ-torsion：某个源上的 λ 幂消去该映射。 -/
def LambdaTorsion {A B : Syn} (f : A ⟶ B) : Prop :=
  ∃ n : ℕ, lambdaPow n A ≫ f = 0

/-- 将 full lift 的靶乘 λ^(k-1)，仅形成一次 λ 除法的候选映射。
此构造本身不声称它就是某个 distinguished triangle 的 connecting map。 -/
noncomputable def SyntheticFullLift.normalizedMap (N : NuFunctorData C Syn)
    {X Y : C} {f : X ⟶ Y} {k : ℕ} (L : SyntheticFullLift N f k) (hk : 1 ≤ k) :
    N.functor.obj X ⟶ (SyntheticCategory.biShift (0, -1)).obj (N.functor.obj Y) :=
  L.map ≫ lowerFullLiftTarget (N.functor.obj Y) k hk

/-- MainPaper `prop:41561db2` 后的 remark：任意 full lift 与选定三角分量
仅模 λ-torsion 比较，不能将这项要求加强为两个映射严格相等。 -/
def SyntheticTriangleLift.FullLiftComparison (N : NuFunctorData C Syn)
    {T : Triangle C} (D : SyntheticTriangleLift N T) : Prop :=
  ∀ (k : ℕ) (hk : 1 ≤ k) (L : SyntheticFullLift N T.mor₃ k),
    LambdaTorsion (D.connecting - SyntheticFullLift.normalizedMap N L hk)

/-- a11：BHS Lemma 9.15 的证明及 MainPaper `prop:41561db2` 给出的三角接口。
将正 filtration、完整短正合、三条映射及 λ-torsion 比较同时列出；正 filtration
蕴含同调短正合的派生证明独立处理，不从最小抽象背景中擅自省去条件。 -/
def SyntheticTriangleLiftComparison (H : Mod2EilenbergMacLane (C := C))
    (N : NuFunctorData C Syn) : Prop :=
  ∀ T : Triangle C, T ∈ distTriang C →
    AdamsFiltrationAtLeast H T.mor₃ 1 → HomologyShortExact H T →
      ∃ D : SyntheticTriangleLift N T, D.FullLiftComparison N

/-- a10/a11 的可检查交付组。三个字段都使用同一个 H 与 ν。
固定 synthetic 背景的选择仍需接入；文献证明通过显式输入提供，不将此组
安装成当前 `Nonempty Challenge1` 的无条件附加事实。 -/
structure SyntheticInterface (H : Mod2EilenbergMacLane (C := C))
    (N : NuFunctorData C Syn) : Prop where
  nu_cofiber : NuCofiberCriterion H N
  lift : SyntheticLiftComparison H N
  triangle_lift : SyntheticTriangleLiftComparison H N

end Synthetic

end KIP126
