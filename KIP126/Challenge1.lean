import KIP126.Def.Kervaire.Route.Model.Coherent.Data
import KIP126.Def.StableHomotopy.Cohomology.Data
import KIP126.Def.ClassicalAdams.MilnorCooperations.Data
import KIP126.Def.ClassicalAdams.MapFiltration.Predicates
import KIP126.Def.Synthetic.Context.Data
import KIP126.Def.Synthetic.Localization.Recovery.Data
import KIP126.Def.Synthetic.QuotientTower.Predicates
import KIP126.Def.Synthetic.Completion.Predicates
import KIP126.Def.ClassicalAdams.Completion.Predicates
import KIP126.Def.ClassicalAdams.TowerHomology.MilnorCoordinates.Data
import KIP126.Def.StableHomotopy.Cohomology.Cooperations.Kunneth.Suspension.Predicates
import KIP126.Def.StableHomotopy.Cohomology.Cooperations.Kunneth.Diagonal.Predicates
import KIP126.Def.StableHomotopy.Cohomology.Cooperations.Kunneth.Unit.Predicates
import KIP126.Def.StableHomotopy.Cohomology.Cooperations.MilnorBasis.Coproduct.Predicates
import KIP126.Def.StableHomotopy.Context.Mapping.Data
import KIP126.Def.StableHomotopy.Context.Proofs
import KIP126.Def.StableHomotopy.Toda.Predicates
import KIP126.Def.HigherAlgebra.Operad.Moduli.Data
import KIP126.Def.HigherAlgebra.Operad.Model.Data
import KIP126.Def.HigherAlgebra.Operad.Topological.Predicates
import KIP126.Def.Topology.WeakContractibility.Predicates
import Mathlib.AlgebraicTopology.ModelCategory.Instances
import Mathlib.AlgebraicTopology.ModelCategory.IsCofibrant
import Mathlib.CategoryTheory.Localization.Predicate
import Mathlib.Algebra.Exact.Basic

/-!
# Challenge 1：Def 向 Interface 交付的共享见证

M 指 `Def/` 定义的数学对象、操作和结构条件；本文件只是阶段交付接口，
既不替代 M，也不声称已列全论文所需的全部基础。

本文件按主题直接列出阶段边界的数据选择与数学条件。Def 需要构造这个
见证；构造尚未完成时，Interface 仅假设同一个类型非空。

稳定范畴、cofiber 和 Milnor cooperation 的通用数学记录仍在 Def。
这里的边界记录通过下方适配定义组装成这些通用记录；它们不引入额外的
数学承诺，也不把已经由基础构造的谱序列或标准类变成新的任意选择。

## 清单口径与交付范围

编号沿用 https://github.com/SII-MATH/KIP126/issues/138 的历史清单；分类以
2026-09-28 修订正文为准，编号不表示各项都必须成为 A₀ 或总包字段。
「已有精确陈述」只表示现有 Lean 类型可供审核，不表示整个规划项已通过数学
验收；陈述状态、实现状态和依赖关系分别记录。总见证 `Challenge1` 已明列 a01 的基础和 tensor 条件、a02 的 cooperation
数据及相容性、a03 的球面 Milnor 坐标与 d₁ 相容性。a05 的固定 CSV 认证
已迁出本包，由 Interface 辅助证明及 Challenge2 的实际 E₂ 坐标交付承担。
`routeInput` 另交付同一 classical/Milnor 基础上的所选 §7 synthetic 模型，
复用 `Route.Model` 的对象和结构相容条件，不加入 A/C 数值结论或论文 Proposition。
a04/a06 的派生义务与 a07/a09/a10/a11 的参数化接口也在本文件可查；整包构造
及其余条目仍未完成，不能把字段存在视作全部 14 项已证明。
未冻结的条目以 TODO 保留，补成正式字段前须审核数学类型、范围和消费端。
不用 `True`、任意 `Prop` 或新的 axiom 代替缺失陈述。

通用构造与已证结果可直接由 Def 提供；清单列出这些派生交付，不把它们重新
变成独立输入。先判断数学角色、消费者和证明责任：A₀ 是后续实际需要且可在
内部 M 外陈述的基础；不出现 M 不足以将固定计算认证归入 A₀。
使用内部页面的通用性质和本文推导也不自动成为 Challenge2 输入；A(M) 只指
其他论文的外部定理。文献项须保留来源、精确 claim locator
和显式证明／外部输入参数，不能借清单整理变成无条件的已证事实。

### a01 — 固定的稳定模 2 基础

- 角色：基础选择与保证；通用范畴定义留在 Def。

- 陈述：`FoundationInput` 列出基础；`TensorInput` 列出对称、closed、
  三角公理、左右 tensor 及 ihom 的选定 CommShift/IsTriangulated、
  幺半加性和 HF₂ unit 悬移条件。
- 实现：整包构造仍为 `sorry`；新增字段没有构造固定基础的见证。
- 依赖：按 PROJECT_BOUNDARY 的已确认方案使用抽象稳定同伦背景；所有
  后续边界公式都使用本包选择的同一 tensor/suspension 数据。
- 待完善：最小 `HasFunctorialCofiber` 只提供两条交换方块，不含恒等／复合律。
  `Context/CofiberCoherence/` 已精确定义这些额外等式并给出条件性后果，
  尚未交付其模型见证；普通范畴所有交换方块的全局相容不能从高阶背景直接略去证明，
  此强充分条件不加入既有 FoundationInput 总包。
- 审核修正：不将旧 `ClosedSymmetricTensorTriangulated` 的“对任意 CommShift
  都精确”条件带入总包；精确性只相对于本包明确选择的悬移比较。
- 定位：`Def/StableHomotopy/Context/Data.lean`；Blueprint `def:stable-context`。

### a02 — H𝔽₂ 乘法、Künneth 与 Milnor 合作运算

- 角色：基础数据及相容性保证。

- 陈述：`CooperationInput` 已入总包：同一个 H 的 ring、Künneth、reduced basis、
  suspension/diagonal/unit/coproduct 相容性及与 `MilnorInput` 的坐标一致性。
- 实现：固定输入的构造待证；不是任意独立选择的第二套页面坐标。
- 派生交付：次数 64 cooperation 的存在唯一性由已有
  `cooperationMilnorPolynomial_h6_existsUnique` 给出；不重复新增数据字段。
- 依赖：a01 的同一 tensor 和 HF₂；现有 UCT 的 #135 问题不因打包而解决。
- 定位：`Def/StableHomotopy/Cohomology/Cooperations/`；
  Blueprint `def:h6-reduced-milnor-basis-input`、`def:h6-milnor-coproduct-input`。

### a03 — Adams 塔及页面以下性质

- 角色：通用塔构造与所选基础上的坐标保证。

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

- 角色：通用代数性质及指定类的内部推论，不是独立外部输入。

- 陈述：`MilnorCobarSquareZero` 明列一般 d²=0；cycle、Leibniz 和指定非边界
  结论使用已有 Def 类型，不额外假设自由性质。
- 实现：`Def/Solution/FoundationConsequences.cobar_square_zero` 从本包的
  实际 first-page complex 及坐标相容性推出 d²=0；这不是独立的 polynomial 证明。
  `differential_cup`、两个 cocycle 和 `h6SquareCochain_not_boundary` 已有证明。
- 依赖：d²=0 当前派生路线使用 a03；内部标准类识别属于 am9。
- 定位：`Def/ClassicalAdams/MilnorCooperations/Proofs.lean`、
  `Def/Steenrod/MilnorCobar/`。

### a05 — 已迁出：固定 Lin 加法基表认证

- 角色：固定计算认证，已撤出 A₀／Challenge1 必交范围；编号仅用于追踪迁移。
- 实现：已删除本包的 `LinBasisInterface`／`linBasis`；固定认证生产义务在
  `Interface/Solution/LinProgram/BasisTable.lean`，证明仍为 `sorry`。
  范围保持所有 s,t : ℕ 且 t ≤ 261，要求 v126.3.cw49 CSV 单项式构成 `Module.Basis`。
- 下游：`Challenge2.SphereBasisInterface` 以同一 presentation 的实际 E₂
  坐标等价及 CSV 值相容条件交付基与穷尽性；Main 从第二道边界消费，
  不再从 Challenge1 取得 CSV 正确性，也没有新增独立 axiom。
- 依赖：纯 Lin 商代数认证；hash、行合法性不能替代线性无关与生成性。
- 定位：`Def/AdamsE2/LinBasisTable/Predicates.lean`；Blueprint `thm:lin-e2-basis-certification`。

### a06 — Ravenel 的 Adams 滤过分解准则

- 角色：有文献来源的通用定理，当前已有内部证明路线。

- 陈述：`AdamsFiltrationDecomposition` 使用实际 Adams 塔，要求正整数 k 个
  同调零因子的复合等于原映射；不加入逆命题。k=0 不误写为空复合。
- 实现：`AdamsFiltrationAtLeast.hasMod2ZeroFactorization` 从实际塔步映射的
  同调零性质证明，`Def/Solution/FoundationConsequences` 绑定当前同一 ring。
- 依赖：a01/a02；此正向结果已有内部证明路线，无需新增文献假设。
- 定位：`Def/ClassicalAdams/MapFiltration/{Data,Predicates,Proofs}.lean`；
  MainPaper 引用 Ravenel Theorem 2.2.14。

### a07 — May 的 smash-boundary 引理

- 角色：外部定理及其在同一基础上的精确适用条件。

- 陈述：根 Challenge2 的 `MaySourceResults` 保存 May TC3 的 pushpull 数据和
  负号；Interface 证明带符号边界及带 exponent-two 前提的无符号投影。
  本文件 `Stable.MaySmashBoundary` 仅保留为历史无符号目标，不直接当作来源定理。
- 实现：固定模型上的来源陈述进入根 Challenge2 的
  `LiteratureInterface.route.may`；计算适配在 Interface。固定模型满足来源条件
  仍是 Challenge2 的生产义务，不另设 Main 文献公理。
- 依赖：同一左右 tensor CommShift/IsTriangulated 结构及其正确的符号相容性。
- 定位：MainPaper `lem:452d218c`；Blueprint `thm:external-may-smash-boundary`。

### a08 — Pstrągowski synthetic 基础

- 角色：synthetic 通用定义与外部基础保证，须分别记录模型绑定。

- 陈述：`SyntheticCategory`、`NuFunctorData` 骨架已有；完整文献输入未冻结。
- 实现：现有 ν record 含 functor、additive、zeroIso、unitIso、suspensionIso，未交付完整
  presentable、lax symmetric monoidal 及 filtered-colimit 保持条件。
- 依赖：固定的 synthetic/classical 对象与 a01 关联；此项不涉及内部谱序列。
- TODO：精确表述这些额外能力及来源；不扩大成 ν 保持所有 cofiber sequence。
- 前置缺口：尚未选定这些文献能力在抽象稳定背景中的准确消费接口。
  普通范畴的 presentability／lax monoidal 语言不能直接冒充原文的高阶相容性；
  需要说明所保留的结构及其足以支持哪些后续命题。
  `Context/Coherence/Predicates.lean` 的 `BiShiftCoherence` 已明确现有
  `biShift_comp/zero` 的结合／单位与 λ-shift 相容等式；在这些明确条件下，
  `Coherence/Proofs.lean` 已证明既有 λ 幂的任意分解，不另选一套幂。
  coherence 的实际见证、shift exactness 及 tensor 相容仍待交付，
  不能仅凭 `biShift_comp/zero/compat` 字段的名称推断。
- 定位：`Def/Synthetic/Context/Data.lean`；Blueprint `thm:external-synthetic-foundation`。

### a09 — S/λ 的 E∞ 结构与 λ 反演

- 角色：外部局部化／商代数结果及项目模型比较。

- 陈述：`Synthetic.LambdaInversionInterface` 已明确实际 λ 可逆对象的满子范畴、
  reflector、包含函子的左伴随、与同一 classical 背景的等价，以及 ν 的自然比较。
  独立 `SymmetricMonoidal` 子组要求同一个 realization 的对称幺半结构。
- 实现：`Def/Synthetic/Localization/` 已从这些显式数据证明单位的唯一分解、
  reflector 反演现有 λ、完全忠实的 spectral Yoneda，以及 λ⁻¹ν≅Id。
  `Def/Solution/Synthetic/Localization.lean` 交付单位泛性质与
  自然恢复同构，使用真实通用证明。局部化及等价的模型见证尚未构造，
  这个参数化组也尚未加入当前 `Nonempty Challenge1` 总见证。
- 范围：遵循 PROJECT_BOUNDARY 的抽象稳定背景，以上记录明确普通范畴层的
  消费数据；不声称构造原文的 ∞ 范畴、smashing localization 或高阶幺半相容性。
  realization 的右伴随是 spectral Yoneda；不把 ν 改写成这个右伴随。
- TODO／前置缺口：a08 背景下 `XModLambda`、`XModLambdaN` 已有定义，但完整
  E∞ algebra 结构、与实际商映射的相容性及唯一性仍需准确的高阶语义前置。
  不能用普通 `CommMon` 替代，也不能从商对象存在推得这部分文献结论。
  前置已补：`Def/HigherAlgebra/` 有真实拓扑 operad、绑定既有 α/λ/ρ/β 的
  富集有限张量、实际 Map(⊗ᵢX,X) 的 End，以及其代数和保单位忘却函子。
  严格 action-space 的路径纤维与弱等价子范畴 nerve 的相对模空间分别定义；
  后者固定实际单位箭头。弱可缩要求非空及包含 π₀ 的全部同伦群平凡。
  本文件 `LambdaQuotientOperadicInput` 固定同一模型、operad、transferred
  algebra model 与实际 λ 商箭头，`uniqueness` 已有具体模空间目标。
  尚未构造这些输入，亦未定义／证明其高阶模型确实表示 synthetic CAlg 的比较。
  普通 Ho 局部化与 transferred model 的字段不能独自给出该比较；本组尚未入总包。
- 定位：`Def/Synthetic/Localization/`；Pst 原文
  `prop:tau_inversion_functor_exists`、
  `prop:tau_inversion_cocontinuous_symmetric_monoidal_left_inverse_to_synthetic_analogue`；Blueprint
  `thm:external-lambda-quotient-ring`、`thm:external-lambda-inversion`。

### a10 — ν 的 cofiber 判据

- 角色：外部 ν 判据；参数化陈述已具备，模型见证与证明另计。

- 陈述：本文件 `Synthetic.NuCofiberCriterion` 已给出完整双向判据，
  `HomologyShortExact` 同时要求单射、中间正合和满射，`NuImageIsCofiber` 固定 νf、νg。
- 实现／依赖：当前 Def 已有 ν、同调与三角；历史 `KIPBase/Synthetic/Nu.lean`
  的 `nu_cofiber_ses` 已搭建正向接口，但其前提缺少两端，未直接沿用。
- 交付：`SyntheticInterface.nu_cofiber` 是实际类型；固定模型上的来源证明由
  `Challenge2.LiteratureInterface.route.synthetic.lifts` 交付。
- TODO：接入选定的 synthetic 背景及其文献证明；此项不是“尚不能陈述”。
- 定位：Blueprint `thm:external-nu-cofiber-criterion`；Claims 的 `nuCofiberCriterion`。

### a11 — BHS synthetic lift 与三角提升

- 角色：外部 BHS 提升结果及项目模型绑定。

- 陈述：本文件 `SyntheticLiftComparison`、`SyntheticTriangleLiftComparison`
  及其 witness records 已明确 λᵏ 因子分解、三角的三条映射及模 λ-torsion 的比较。
- 实现／依赖：`AdamsFiltrationAtLeast` 使用实际 Adams 塔；当前 Def 的 ν、λ、
  `lambdaPow`、双分次悬移足够表达命题，无须先完成 λ 反演或 synthetic 谱序列。
  历史 `KIPBase/Synthetic/Lift.lean` 有 `synthetic_lift` 等接口，但其自由 AF
  数值和未绑定 ν 分量的三角声明不能作为当前精确类型直接迁入。
- 交付：`SyntheticInterface.lift`、`triangle_lift` 使用同一个 H 和 ν；固定模型
  上的两项证明属于 `Challenge2.LiteratureInterface.route.synthetic.lifts`。
- TODO：选择并关联实际 synthetic 模型、补齐文献证明和所需旋转特化；
  不再将缺口描述为缺少 lift/triangle 的陈述语言。
- 定位：Blueprint `thm:external-synthetic-lift`、`thm:external-synthetic-triangle-lift`；
  `Def/References/Literature/Claims.lean` 中 BHS Lemma 9.15 的来源定位。

### a12 — λ-adic 完备性

- 角色：外部完备性结果、通用极限定义及项目模型绑定。

- 陈述：`FiniteQuotientTowerInterface` 明列同一 ν 家族上的有限 coherent tower
  及映射自然性。历史 `LambdaRhoDeltaTriangle`、`FiniteLambdaQuotientTower`
  及其 `Hom` 已审核迁至 `Def/Synthetic/QuotientTower/`。
- 实现：实际 λ 幂自然性、商映射及其三角相容等已证明；新 tower 见证的每个
  对象固定为现有 `XModLambdaN`，ρ 与 λ 箭头还须满足实际商入射的等式。
  tower 类型已经定义，但尚未构造其成员。
- TODO：构造这些相容资料，接入 νX≃limₘ νX/λᵐ 及其与商映射、
  λ–ρ–δ triangles 的相容性；一般代数 completion 不自动给出此实例。
- 陈述前置现已补齐：`SequentialHomotopyLimit` 用实际可数乘积上
  `1-shift` 的 Milnor 三角定义序列同伦极限；`IsENilpotentComplete` 与
  `IsLambdaComplete` 分别使用实际 Adams／λ 残余塔。
  `LambdaAdicCompletenessInterface` 要求同一有限商塔的边界相容与实际商入射
  构成上述同伦极限的投影；其模型见证和性质证明仍未提供。BHS Proposition A.13
  要求 X 的 E-nilpotent 完备性；不能对任意 X 无条件断言 νX 完备。
  λ 幂的任意分解已在显式 `BiShiftCoherence` 下证明，
  `QuotientRestrictions/` 已由同一 cofibMap 构造实际商限制映射及 inclusion、
  boundary 方块。在显式 `FunctorialCofiberCoherence` 下，商映射函子律、
  restriction 恒等／复合／自然性已证明，`QuotientFunctor/` 构造实际商函子和
  restriction 自然变换。该充分条件在实际模型中的见证仍待审核与构造；
  完整三角塔还需 shift exactness、八面体和已选择商图的相容，极限也尚未构造。
- 定位：Blueprint `thm:external-synthetic-lambda-complete`；Claims 中 BHS Proposition A.13。

### a13 — 纯稳定 Toda bracket 规律

- 角色：通用稳定 Toda 定理与内部推论。

- 陈述：`TodaInterface` 明列同一 `Relation` 的可复合条件、存在性、完整
  不定性 coset 的充要条件与带负号的 juggling。
- 实现：`Def/Solution/Toda.lean` 中的基础交付已由真实定理组装；
  历史 `indeterminacy_complete`、`juggling` 的证明经审核迁至
  `Def/StableHomotopy/Toda/{Coset,Juggling}/Proofs.lean`，无历史全局 axiom。
- 依赖：纯稳定同伦结果；连接内部页面检测的 Massey／Moss 桥留在 am8/am15。
- 依赖绑定：`TensorInput.triangulated` 明确要求选定基础的三角公理，
  不能从最小 `StableHomotopyCategory` 的预三角结构静默推出。
- 陈述补齐：`TodaNaturalityInterface` 列出前后复合、两种 absorption、
  带符号的悬移等价和完整 shuffle；`TodaFunctorInterface` 与
  `TodaTensorInterface` 列出 exact functor 及左右 tensor 的包含。
  `Def/Solution/Toda.lean` 已陈述这三个交付，证明暂留 `sorry`。
  第 7 节具体 Toda 积值与不定性消失仍是 Main 推导，不加入 a13。
- 定位：`Def/StableHomotopy/Toda/{Predicates,Proofs}.lean`；Blueprint `thm:toda-product-identities`。

### a14 — 内部目标之后的纯几何外部事实

- 角色：外部几何定理；参数化类型与真实几何解释分别验收。

- 陈述：`GeometryInterface` 明列 j=1,…,5 的存在性与 j≥7 的不存在性，
  几何对象、维数函数和 Kervaire 谓词是同一组显式参数；不使用内部 M。
- 实现：`Challenge2.GeometryLiteratureInterface` 分别锁定低维来源、HHR 与
  Browder 目录项，并绑定同一个显式几何模型；没有构造实际
  framed-manifold 模型或证明这些文献结果。
- 依赖：am16 的内部 Browder 桥现在使用实际标准 hⱼ²；二者推出低维永久性，
  但真实几何解释与所引文献适用于该解释仍须提供相应见证。
- 定位：Blueprint `thm:external-low-kervaire-existence`、`thm:external-hhr-nonexistence`。

## 生产与消费

`Def/Challenge/Challenge1.lean` 和 `Def/Solution/Challenge1.lean` 直接陈述
`Nonempty KIP126.Challenge1`，当前证明体都为 `sorry`；前者是保留的目标，
后者才是待完成的生产证明。`Interface/Axiom/Challenge1.lean` 暂时接受同一
存在性命题，并只 choice 一次。下面的兼容适配只组装记录，不选择新的基础。
-/
namespace KIP126

open StableHomotopy StableHomotopy.Cohomology Classical.Adams

namespace Challenge1

open CategoryTheory MonoidalCategory

/-- 基础对象及其条件。

`stable` 使用 Def 的通用稳定范畴接口：小 Hom、加性、整数平移、幺半结构、
零对象及预三角结构；这些额外条件由同文件 `TensorInput` 明列。
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

/-- 原基础类型名的兼容别名；唯一结构及其字段由当前边界的
`FoundationInput` 定义，不在 Def 中另设项目包装。 -/
abbrev _root_.KIP126.Classical.Adams.StandardAdamsFoundation := FoundationInput

/-- 兼容旧基础名称的恒等适配，不重新包装或选择任何数据。 -/
def FoundationInput.toStandard (F : FoundationInput) : StandardAdamsFoundation := F

/-- 兼容旧调用端的恒等适配；两个名称表示同一个边界结构。 -/
def FoundationInput.ofStandard (F : StandardAdamsFoundation) : FoundationInput := F

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

/-- The generic Milnor record assembled from these exact stage-zero fields. -/
def MilnorInput.toMilnor {F : FoundationInput} (M : MilnorInput F) :
    MilnorCooperations F.hf2 where
  coordinates := M.coordinates
  differential_coordinates := M.differential_coordinates

/-- Shared Section 7 objects on the SAME classical foundation and Milnor
coordinates. Only objects and structural compatibility belong here; literature
results, table certification and paper deductions are delivered separately.
Constructing this package is part of the existing Challenge1 production goal. -/
structure RouteInput (F : FoundationInput) (M : MilnorInput F) where
  Syn : Type 1
  synthetic : KIP126.Synthetic.Context.SyntheticCategory.{1, 0} Syn
  cofiber : @HasFunctorialCofiber Syn synthetic.toStableHomotopyCategory
  model : @KIP126.Kervaire.Route.Model F.Spectrum F.stable F.cofiber
    F.hf2 M.toMilnor Syn synthetic cofiber

attribute [instance] RouteInput.synthetic RouteInput.cofiber

/-- a01/a03：同一基础的 tensor、悬移与三角条件。所有后续 Künneth 和
边界公式使用这里选出的 CommShift，不重新选择 suspension comparison。 -/
class TensorInput (F : FoundationInput) where
  [triangulated : IsTriangulated F.Spectrum]
  [monoidalPreadditive : MonoidalPreadditive F.Spectrum]
  [symmetric : SymmetricCategory F.Spectrum]
  [closed : MonoidalClosed F.Spectrum]
  [leftShift : ∀ X : F.Spectrum, (tensorLeft X).CommShift ℤ]
  [rightShift : ∀ X : F.Spectrum, (tensorRight X).CommShift ℤ]
  [ihomShift : ∀ X : F.Spectrum, (ihom X).CommShift ℤ]
  [leftExact : ∀ X : F.Spectrum, (tensorLeft X).IsTriangulated]
  [rightExact : ∀ X : F.Spectrum, (tensorRight X).IsTriangulated]
  [ihomExact : ∀ X : F.Spectrum, (ihom X).IsTriangulated]
  [unitShift : (mod2UnitNatTrans F.hf2).CommShift ℤ]
  leftShift_eq : ∀ X : F.Spectrum,
    leftShift X = Functor.CommShift.ofIso (BraidedCategory.tensorLeftIsoTensorRight X).symm ℤ
  ihom_unit_shift : ∀ X : F.Spectrum, NatTrans.CommShift (ihom.adjunction X).unit ℤ
  ihom_counit_shift : ∀ X : F.Spectrum, NatTrans.CommShift (ihom.adjunction X).counit ℤ


attribute [reducible] TensorInput.symmetric TensorInput.closed
  TensorInput.leftShift TensorInput.rightShift TensorInput.ihomShift
attribute [instance] TensorInput.triangulated TensorInput.monoidalPreadditive
  TensorInput.symmetric TensorInput.closed
  TensorInput.leftShift TensorInput.rightShift TensorInput.leftExact TensorInput.rightExact
  TensorInput.ihomShift TensorInput.ihomExact TensorInput.unitShift

/-- a02 与 a03 的同一组页面以下输入。最后一条等式把已经公开的页面坐标
锁定为这些 cooperation 数据导出的坐标；没有额外选择第二套基。 -/
structure CooperationInput (F : FoundationInput) [TensorInput F] (M : MilnorInput F) where
  ring : Mod2RingStructure F.hf2
  kunneth : Mod2CooperationKunneth F.hf2 ring
  basis : Mod2ReducedMilnorBasis F.hf2 ring
  suspension : Mod2KunnethSuspensionCompatible F.hf2 ring kunneth
  diagonal : Mod2KunnethDiagonalCompatible F.hf2 ring kunneth
  unit : Mod2KunnethUnitCompatible F.hf2 ring kunneth
  coproduct : Mod2MilnorCoproductCompatible F.hf2 ring kunneth basis
  coordinates_eq : ∀ (s t : ℕ)
      (x : adamsPage F.hf2.unit (SphereSpectrum (C := F.Spectrum)) 1 (by decide) s t),
    M.coordinates s t x = sphereFirstPageMilnorEquiv F.hf2 ring kunneth basis s t x

/-- a04 的一般平方零义务；可从 a03 的实际 first-page complex 与坐标相容性
推出，不作为总包里另一项独立假设。 -/
def MilnorCobarSquareZero : Prop :=
  ∀ (s t : ℕ) (x : Steenrod.Milnor.cochains s t),
    Steenrod.Milnor.differential (s + 1) t
      (Steenrod.Milnor.differential s t x) = 0

/-- a06 的正向分解准则。k 必须为正；任意 filtration-zero 映射不能
被错误地认作恒等映射的空复合。 -/
def AdamsFiltrationDecomposition (F : FoundationInput) : Prop :=
  ∀ {X Y : F.Spectrum} (f : X ⟶ Y) (k : ℕ), 0 < k →
    AdamsFiltrationAtLeast F.hf2 f k → HasMod2ZeroFactorization F.hf2 f k

/-- a14 的纯几何交付。参数明确指定所谈的几何对象与 Kervaire 谓词；
该类型本身不声称已经构造实际 framed-manifold 模型或证明文献结果。 -/
structure GeometryInterface {Manifold : Type} (dimension : Manifold → ℕ)
    (kervaireOne : Manifold → Prop) : Prop where
  low_dimensions : ∀ j : ℕ, 1 ≤ j → j ≤ 5 →
    ∃ M, dimension M = 2 ^ (j + 1) - 2 ∧ kervaireOne M
  high_nonexistence : ∀ j : ℕ, 7 ≤ j →
    ¬ ∃ M, dimension M = 2 ^ (j + 1) - 2 ∧ kervaireOne M

open CategoryTheory.Limits

universe u v

/-- a13 的通用已证切片。juggling 明确保留三角公理及悬移后的负号；
不额外选择 bracket 运算，也不提供具体 Toda 积值或 Moss 比较。 -/
structure TodaInterface (C : Type u) [Category.{v} C] [Preadditive C]
    [HasZeroObject C] [HasShift C ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor C n)] [Pretriangulated C]
    [IsTriangulated C] : Prop where
  composable : ∀ {X Y Z W : C} {x : X⟦(1 : ℤ)⟧ ⟶ W}
    {f : X ⟶ Y} {g : Y ⟶ Z} {h : Z ⟶ W},
    StableHomotopy.Toda.Relation x f g h → f ≫ g = 0 ∧ g ≫ h = 0
  exists_relation : ∀ {X Y Z W : C} (f : X ⟶ Y) (g : Y ⟶ Z) (h : Z ⟶ W),
    f ≫ g = 0 → g ≫ h = 0 → ∃ x : X⟦(1 : ℤ)⟧ ⟶ W,
      StableHomotopy.Toda.Relation x f g h
  coset : ∀ {X Y Z W : C} {x₀ x : X⟦(1 : ℤ)⟧ ⟶ W}
    {f : X ⟶ Y} {g : Y ⟶ Z} {h : Z ⟶ W},
    StableHomotopy.Toda.Relation x₀ f g h →
      (StableHomotopy.Toda.Relation x f g h ↔
        ∃ (y : Y⟦(1 : ℤ)⟧ ⟶ W) (z : X⟦(1 : ℤ)⟧ ⟶ Z),
          x - x₀ = f⟦(1 : ℤ)⟧' ≫ y + z ≫ h)
  juggling : ∀ {X Y Z W V : C} {x : X⟦(1 : ℤ)⟧ ⟶ W}
    {f : X ⟶ Y} {g : Y ⟶ Z} {h : Z ⟶ W} {d : W ⟶ V},
    StableHomotopy.Toda.Relation x f g h → h ≫ d = 0 →
      ∃ y : Y⟦(1 : ℤ)⟧ ⟶ V,
        StableHomotopy.Toda.Relation y g h d ∧ x ≫ d = (-f⟦(1 : ℤ)⟧') ≫ y


/-- a13：自然性、suspension 和完整 shuffle 的陈述组。结论都是同一
cone-based Toda relation 的包含或等价；不假定不定性为零。 -/
structure TodaNaturalityInterface (C : Type u) [Category.{v} C] [Preadditive C]
    [HasZeroObject C] [HasShift C ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor C n)] [Pretriangulated C] : Prop where
  precompose {A X Y Z W : C} {x : X⟦(1 : ℤ)⟧ ⟶ W}
      {f : X ⟶ Y} {g : Y ⟶ Z} {h : Z ⟶ W}
      (hx : StableHomotopy.Toda.Relation x f g h) (a : A ⟶ X) :
      StableHomotopy.Toda.Relation (a⟦(1 : ℤ)⟧' ≫ x) (a ≫ f) g h
  postcompose {X Y Z W V : C} {x : X⟦(1 : ℤ)⟧ ⟶ W}
      {f : X ⟶ Y} {g : Y ⟶ Z} {h : Z ⟶ W}
      (hx : StableHomotopy.Toda.Relation x f g h) (d : W ⟶ V) :
      StableHomotopy.Toda.Relation (x ≫ d) f g (h ≫ d)
  absorb_first {X Y Z W V : C} {x : X⟦(1 : ℤ)⟧ ⟶ V}
      {f : X ⟶ Y} {g : Y ⟶ Z} {h : Z ⟶ W} {d : W ⟶ V}
      (hx : StableHomotopy.Toda.Relation x (f ≫ g) h d) :
      StableHomotopy.Toda.Relation x f (g ≫ h) d
  absorb_last {X Y Z W V : C} {x : X⟦(1 : ℤ)⟧ ⟶ V}
      {f : X ⟶ Y} {g : Y ⟶ Z} {h : Z ⟶ W} {d : W ⟶ V}
      (hx : StableHomotopy.Toda.Relation x f g (h ≫ d)) :
      StableHomotopy.Toda.Relation x f (g ≫ h) d
  shuffle_iff [IsTriangulated C] {X Y Z W V : C}
      (f : X ⟶ Y) (g : Y ⟶ Z) (h : Z ⟶ W) (d : W ⟶ V)
      (hfg : f ≫ g = 0) (hgh : g ≫ h = 0) (hhd : h ≫ d = 0)
      (z : X⟦(1 : ℤ)⟧ ⟶ V) :
      (∃ x : X⟦(1 : ℤ)⟧ ⟶ W, StableHomotopy.Toda.Relation x f g h ∧ x ≫ d = z) ↔
        ∃ y : Y⟦(1 : ℤ)⟧ ⟶ V,
          StableHomotopy.Toda.Relation y g h d ∧ (-f⟦(1 : ℤ)⟧') ≫ y = z
  suspension_iff (n : ℤ) {X Y Z W : C}
      {x : X⟦(1 : ℤ)⟧ ⟶ W} {f : X ⟶ Y} {g : Y ⟶ Z} {h : Z ⟶ W} :
      StableHomotopy.Toda.Relation
        (n.negOnePow • ((shiftFunctorComm C (1 : ℤ) n).inv.app X ≫ x⟦n⟧'))
        (f⟦n⟧') (g⟦n⟧') (h⟦n⟧') ↔ StableHomotopy.Toda.Relation x f g h

universe u' v'

/-- a13：任意指定 exact functor 的 Toda 自然性。其 CommShift 与 exactness
相对同一个 F；没有声称任意函子精确，也不将包含加强为等式。 -/
structure TodaFunctorInterface {C : Type u} [Category.{v} C] [Preadditive C]
    [HasZeroObject C] [HasShift C ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor C n)] [Pretriangulated C]
    {D : Type u'} [Category.{v'} D] [Preadditive D]
    [HasZeroObject D] [HasShift D ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor D n)] [Pretriangulated D]
    (F : C ⥤ D) [F.CommShift ℤ] [F.IsTriangulated] : Prop where
  map
      {X Y Z W : C} {x : X⟦(1 : ℤ)⟧ ⟶ W}
      {f : X ⟶ Y} {g : Y ⟶ Z} {h : Z ⟶ W}
      (hx : StableHomotopy.Toda.Relation x f g h) :
      StableHomotopy.Toda.Relation ((F.commShiftIso (1 : ℤ)).inv.app X ≫ F.map x)
        (F.map f) (F.map g) (F.map h)

/-- a13：左右 tensor 的 Toda 乘积包含，使用实际 tensor 的悬移比较。
三相邻复合的 shuffle 已在 TodaNaturalityInterface 独立列出。 -/
structure TodaTensorInterface (C : Type u) [Category.{v} C] [Preadditive C]
    [HasZeroObject C] [HasShift C ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor C n)] [Pretriangulated C] [MonoidalCategory C] : Prop where
  tensor_right (V : C) [(tensorRight V).CommShift ℤ]
      [(tensorRight V).IsTriangulated]
      {X Y Z W : C} {x : X⟦(1 : ℤ)⟧ ⟶ W}
      {f : X ⟶ Y} {g : Y ⟶ Z} {h : Z ⟶ W}
      (hx : StableHomotopy.Toda.Relation x f g h) :
      StableHomotopy.Toda.Relation (((tensorRight V).commShiftIso (1 : ℤ)).inv.app X ≫ (x ▷ V))
        (f ▷ V) (g ▷ V) (h ▷ V)
  tensor_left (V : C) [(tensorLeft V).CommShift ℤ]
      [(tensorLeft V).IsTriangulated]
      {X Y Z W : C} {x : X⟦(1 : ℤ)⟧ ⟶ W}
      {f : X ⟶ Y} {g : Y ⟶ Z} {h : Z ⟶ W}
      (hx : StableHomotopy.Toda.Relation x f g h) :
      StableHomotopy.Toda.Relation (((tensorLeft V).commShiftIso (1 : ℤ)).inv.app X ≫ (V ◁ x))
        (V ◁ f) (V ◁ g) (V ◁ h)

end Challenge1

/-- 第一阶段边界的唯一见证类型。Milnor 条件依赖本见证选定的基础。 -/
structure Challenge1 where
  foundationInput : Challenge1.FoundationInput
  milnorInput : Challenge1.MilnorInput foundationInput
  tensorInput : Challenge1.TensorInput foundationInput
  cooperationInput : @Challenge1.CooperationInput foundationInput tensorInput milnorInput
  routeInput : Challenge1.RouteInput foundationInput milnorInput

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

/-- 已有基础与 Milnor 见证连同 tensor、cooperation 逐字段组装成边界包。 -/
def ofFoundationMilnor (F : StandardAdamsFoundation)
    (M : @MilnorCooperations F.Spectrum F.stable F.cofiber F.hf2)
    (T : TensorInput (FoundationInput.ofStandard F))
    (A : @CooperationInput (FoundationInput.ofStandard F) T
      { coordinates := M.coordinates, differential_coordinates := M.differential_coordinates })
    (R : RouteInput (FoundationInput.ofStandard F)
      { coordinates := M.coordinates, differential_coordinates := M.differential_coordinates }) :
    KIP126.Challenge1 where
  foundationInput := FoundationInput.ofStandard F
  milnorInput :=
    { coordinates := M.coordinates
      differential_coordinates := M.differential_coordinates }
  tensorInput := T
  cooperationInput := A
  routeInput := R

end Challenge1

namespace Stable

open CategoryTheory MonoidalCategory
open KIP126.StableHomotopy

universe u v

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [∀ W : C, (tensorLeft W).CommShift ℤ]
  [∀ W : C, (tensorRight W).CommShift ℤ]
  [∀ W : C, (tensorLeft W).IsTriangulated]
  [∀ W : C, (tensorRight W).IsTriangulated]

/-- Historical unsigned smash-boundary target on actual triangles.
May's TC3 source relation carries a minus sign; the route now uses the signed
`MaySourceResults` in root Challenge2. This legacy predicate is not accepted
as the source theorem, and sign removal requires an additional hypothesis. -/
def MaySmashBoundary : Prop :=
  ∀ (T U : HoCofiberSequence (C := C)) (n : ℤ)
    (a : HomotopyGroup n (T.X ⊗ U.Z))
    (b : HomotopyGroup n (T.Y ⊗ U.Y)),
    inducedMap (T.f ▷ U.Z) n a = inducedMap (T.Y ◁ U.g) n b →
    ∃ c : HomotopyGroup n (T.Z ⊗ U.X),
      inducedMap (T.g ▷ U.Y) n b = inducedMap (T.Z ◁ U.f) n c ∧
      connectingHomomorphism (U.map (tensorLeft T.X)) n a =
        connectingHomomorphism (T.map (tensorRight U.X)) n c

end Stable

namespace Synthetic

open CategoryTheory CategoryTheory.Pretriangulated MonoidalCategory
open Context

universe u v u' v'

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type u'} [SyntheticCategory.{u', v'} Syn]

/-- a09 的点集模型绑定：固定实际一阶 λ 商和同一个商映射。
此类型只记录箭头的实现；L 的局部化性质、derived tensor 及代数模型比较
仍是独立义务，不能由这一交换方块推出。项目组合集中于本文件。 -/
structure LambdaQuotientRealization {M : Type u} [Category.{v} M] [MonoidalCategory M]
    [HasFunctorialCofiber (C := Syn)] (L : M ⥤ Syn) where
  object : M
  unit : 𝟙_ M ⟶ object
  unitIso : L.obj (𝟙_ M) ≅ (S_0_0 : Syn)
  quotientIso : L.obj object ≅ XModLambdaN (S_0_0 : Syn) 1
  unit_binding : L.map unit ≫ quotientIso.hom =
    unitIso.hom ≫ XModLambdaN.incl (S_0_0 : Syn) 1

/-- a09 的相关点集输入：所有张量、operad、代数模型与商单位都来自同一组数据。
普通 Ho 局部化只固定底层同伦范畴；仍须接入该模型与 synthetic CAlg 的高阶
比较，不能把此记录的定义或字段当成该比较的证明。单位 cofibrant 显式列出，
避免把任意严格 Under(unit) 都直接当成正确的派生单位箭头模型。 -/
structure LambdaQuotientOperadicInput {M : Type (u + 1)} [Category.{u + 1} M]
    [MonoidalCategory M] [SymmetricCategory M]
    [EnrichedOrdinaryCategory TopCat.{u + 1} M]
    [HomotopicalAlgebra.ModelCategory M] [HasFunctorialCofiber (C := Syn)]
    (L : M ⥤ Syn) where
  localization : L.IsLocalization (HomotopicalAlgebra.weakEquivalences M)
  unit_cofibrant : HomotopicalAlgebra.IsCofibrant (𝟙_ M)
  tensor : HigherAlgebra.EnrichedTensor.Presentation M
  tensor_laws : HigherAlgebra.EnrichedTensor.SymmetricTensorLaws tensor
  operad : HigherAlgebra.Operad.TopologicalOperad.{u + 1}
  eInfinity : operad.IsEInfinity
  reduced : operad.IsReduced
  nullary : operad.Op HigherAlgebra.EnrichedTensor.empty
  algebraModel : HigherAlgebra.Operad.TransferredModelStructure
    tensor tensor_laws.toTensorLaws operad
  quotient : LambdaQuotientRealization L

/-- a09 的具体模空间候选：以同一模型的实际弱等价取 nerve，实现后沿保单位
忘却函子取路径纤维；基点是所选商箭头，且它由 `unit_binding` 固定到原来的
一阶 λ 商映射。不是自由指定的空间，也不是严格 action 集合的 Subsingleton。 -/
noncomputable def LambdaQuotientOperadicInput.moduli
    {M : Type (u + 1)} [Category.{u + 1} M] [MonoidalCategory M] [SymmetricCategory M]
    [EnrichedOrdinaryCategory TopCat.{u + 1} M]
    [HomotopicalAlgebra.ModelCategory M] [HasFunctorialCofiber (C := Syn)]
    {L : M ⥤ Syn} (I : LambdaQuotientOperadicInput L) : TopCat.{u + 1} :=
  HigherAlgebra.Operad.EnrichedAlgebra.unitModuli I.tensor I.tensor_laws.toTensorLaws
    I.operad I.nullary (HomotopicalAlgebra.weakEquivalences M) I.quotient.unit

/-- a09 的模型内唯一性目标，含非空性。来源目标为 Pstrągowski
`cor:ctau_is_an_algebra`；把本文献结果传到这里仍需上述高阶模型比较。
仅定义准确目标，不为任意上述输入无条件断言它成立。 -/
def LambdaQuotientOperadicInput.uniqueness
    {M : Type (u + 1)} [Category.{u + 1} M] [MonoidalCategory M] [SymmetricCategory M]
    [EnrichedOrdinaryCategory TopCat.{u + 1} M]
    [HomotopicalAlgebra.ModelCategory M] [HasFunctorialCofiber (C := Syn)]
    {L : M ⥤ Syn} (I : LambdaQuotientOperadicInput L) : Prop :=
  KIP126.Topology.WeaklyContractibleSpace I.moduli

/-! ## a09：同一 λ 与 ν 上的反演接口

以下字段只交付指定抽象背景中的范畴数据，不为任意 synthetic 背景构造它们。
局部对象由既有 `lam.app` 为同构定义；满子范畴及其包含函子不是新的选择。
来源：Pstrągowski 的 `prop:tau_inversion_functor_exists`、
`thm:tau_invertible_synthetic_spectra_are_just_spectra`，以及
`prop:spectral_yoneda_embedding_the_tau_inversion_of_the_synthetic_analogue`。
-/

/-- a09 的 λ 反演交付：所有字段绑定同一 reflector、实际局部对象及 ν。
单位与其唯一分解性质从此伴随导出，不再作为独立假设。 -/
structure LambdaInversionInterface (N : NuFunctorData C Syn) where
  reflector : Syn ⥤ LambdaInvertibleObjects Syn
  adjunction : reflector ⊣ lambdaInclusion Syn
  equivalence : LambdaInvertibleObjects Syn ≌ C
  nuLocalization : N.functor ⋙ reflector ≅ equivalence.inverse

/-- 将已展示的反射数据组装成通用记录，不作额外选择。 -/
def LambdaInversionInterface.localization {N : NuFunctorData C Syn}
    (I : LambdaInversionInterface N) : LambdaLocalization Syn where
  reflector := I.reflector
  adjunction := I.adjunction

/-- 将同一局部化、等价和 ν 比较组装成恢复数据。 -/
def LambdaInversionInterface.recovery {N : NuFunctorData C Syn}
    (I : LambdaInversionInterface N) : LambdaRecovery N where
  localization := I.localization
  equivalence := I.equivalence
  nuLocalization := I.nuLocalization

/-- a09 的独立对称幺半条件，直接约束实际 realization。
来源：Pstrągowski
`prop:tau_inversion_cocontinuous_symmetric_monoidal_left_inverse_to_synthetic_analogue`。
局部单位不必是 ambient unit，因此不要求包含函子为 strong monoidal。 -/
structure LambdaInversionInterface.SymmetricMonoidal {N : NuFunctorData C Syn}
    (I : LambdaInversionInterface N) [SymmetricCategory C] [SymmetricCategory Syn] where
  realization : (I.reflector ⋙ I.equivalence.functor).Braided

/-- 此适配保留子组中指定的同一个 realization 幺半结构。 -/
def LambdaInversionInterface.symmetricMonoidal {N : NuFunctorData C Syn}
    (I : LambdaInversionInterface N) [SymmetricCategory C] [SymmetricCategory Syn]
    (M : I.SymmetricMonoidal) : I.recovery.SymmetricMonoidal where
  realization := M.realization

/-! ## a10/a11：已可精确陈述的 synthetic 文献接口

以下类型使用当前 Def 的对象，既不 import KIPBase，也不依赖 synthetic
谱序列的迁移。参数 H 与 N 必须来自同一选定背景；本文件不为任意抽象 N
无条件断言文献结论。固定模型上的实际证明由
`Challenge2.LiteratureInterface.route.synthetic.lifts` 接收。

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

/-- a12 的有限塔前置交付，所有对象都是同一 νX 的既有 λ 幂商，
所有映射分量都是同一 cofiber construction 给出的实际商映射。
此组既不提供 homotopy limit，也不无条件断言 λ-adic 完备性。 -/
structure FiniteQuotientTowerInterface [HasFunctorialCofiber (C := Syn)]
    (N : NuFunctorData C Syn) where
  tower : ∀ X : C, FiniteLambdaQuotientTower (N.functor.obj X)
  naturality : ∀ {X Y : C} (f : X ⟶ Y),
    FiniteLambdaQuotientTower.Hom (tower X) (tower Y) (N.functor.map f)

/-- a12：BHS Proposition A.13 (`lemm:easy-e-compton`) 的完备性交付。
选定的同一 λ–ρ–δ 塔既满足映射自然性，也满足实际 cofiber boundary 方块。
`completion` 的各投影固定为商映射，Milnor 三角保留 derived-limit 信息；
没有把同伦极限改成 Ho 范畴的普通极限，也不对任意 X 无条件断言完备。
这里只陈述所需交付，所有模型构造及性质证明均是待完成义务。 -/
structure LambdaAdicCompletenessInterface [HasFunctorialCofiber (C := Syn)]
    [CategoryTheory.Limits.HasProductsOfShape ℕ C]
    [CategoryTheory.Limits.HasProductsOfShape ℕ Syn]
    (H : Mod2EilenbergMacLane (C := C)) (N : NuFunctorData C Syn)
    extends FiniteQuotientTowerInterface N where
  residual_compatible : ∀ X : C, (tower X).ResidualCompatible
  complete_iff : ∀ X : C,
    Classical.Adams.IsENilpotentComplete H.unit X ↔ IsLambdaComplete (N.functor.obj X)
  completion : ∀ X : C,
    Classical.Adams.IsENilpotentComplete H.unit X → LambdaAdicCompletion (tower X)

end Synthetic

end KIP126
