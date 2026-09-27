import KIP126.Main.Axiom.LinProgram.Generated.Differentials.Table
import KIP126.Main.Axiom.LinProgram.Interpretation.Sphere
import KIP126.Def.AdamsE2.LinClasses.Data
import KIP126.Def.AdamsE2.LinBasisTable.Data
import KIP126.Def.SpectralSequence.Computation.Predicates
import KIP126.Def.Comparison.ClassicalSynthetic.Data
import KIP126.Def.ClassicalAdams.SphereClasses.Hi.Internal.Data
import KIP126.Def.ClassicalAdams.MilnorCohomology.Comparison.CycleMap.Data
import KIP126.Def.ClassicalAdams.MilnorCohomology.Multiplication.Data
import KIP126.Interface.Axiom.StandardMilnor
import KIP126.Def.Kervaire.Theta5.Predicates

/-!
# Challenge 2：Interface → Main 的接口定义与完整待交付清单

范围依据：[接口审核 #138](https://github.com/SII-MATH/KIP126/issues/138)，
2026-09-27 的 `am1`–`am16`、`cm1`–`cm6`。下面按该编号列出全部预期交付；
当前 Lean 总包只实现 `cm1` 的有界 presentation 与 `cm2` 的表真实性陈述。
清单中的“未入包”不是额外假设，也不表示相应领域完全没有已有证明。

阅读规则：**陈述状态**与**实现状态**分开记录。已有精确 Lean 类型可以尚未证明；
有局部证明也不等于完整接口已冻结。已有对象足以表达的命题应直接写成准确接口，
不以缺少现成 theorem 为由推迟陈述，也不以任意 `Prop`、`True` 或自由选择的操作
补齐字段。本文路径均相对于 `KIP126/`；`../KIPBase/` 指历史实现，其具体接口
可作为迁移依据，但不能直接导入其中的全局 axioms 作为当前阶段的证明。
共同数学对象仍在 `Def/`；本文件集中项目交付结构与谓词，不复制一般数学定义、
生成数据或证明。每个已入包字段都必须使用同一个 presentation。

## A(M)：使用内部 M 的非程序接口

- `am1` 内部页面、代表元与永久存活 calculus。
  陈述：本文件 `PageCalculus`、`RepresentativeCalculus` 明列相邻页同调、d²=0、
  E₂ 共同代表元、boundary⇒cycle 及非零微分两端存活条件。
  实现：`Interface/Solution/InternalPages.lean` 复用 Def 的实际定理完成上述
  派生交付；不用总包新增一份可独立选择的页面或证明假设。
  待补：其余 E∞ 代表与 NonzeroSurvival 的完整交付逐条接入，不能把这一组
  有限页定理误报为全部永久存活 calculus 已完成。

- `am2` Adams 塔页面、微分与存活语义。
  陈述／实现：`Def/ClassicalAdams/TowerSSData/` 下已有页面同构
  `Page/Data.lean` 的 `adamsTowerSSDataPageIso`、微分比较
  `Differential/Proofs.lean` 的 `adamsTowerInternalD_comparison`、下一页关系
  `PagePassage/Proofs.lean` 的 `adamsTowerSSData_next_relation`，以及
  `Permanence/Proofs.lean` 的 `adamsTower_nonzeroSurvival_iff` 和
  `adamsTower_nonzeroSurvival_iff_compatible`。这些定理已经使用同一实际塔。
  接入：将这些完整签名列为派生交付；固定球面特化见
  `Main/Solution/Computation/Vanishing.lean`，无需另选一套页面或存活代表元。

- `am3` 内部谱序列映射与 Adams 自然性。
  陈述：`MorphismCalculus` 明列由同一环境映射诱导的页面／E∞ 恒等、复合、
  微分相容、共同代表元与微分等式的传递。
  实现：#132 的任意页面映射漏洞已修复，`Interface/Solution/InternalNaturality`
  从 canonical quotient map 的真实定理组装；普通映射不因此保持非零。
  待补：固定 i、q、tmf 与 cofiber 的实际态射、Adams 自然性和各项具体绑定。

- `am4` 内部乘法、配对、作用与 Leibniz。
  陈述：同一 presentation 上的 `LinE2Presentation.SecondDifferentialLeibniz`
  已有精确类型，见 `Main/Axiom/LinProgram/Interpretation/Differential/Predicates.lean`；
  本文件的 `comparison_mul` 不提供这个额外条件。
  实现：`Def/ClassicalAdams/TowerLongLayer/Pairing/Leibniz/` 已定义
  `RelativeBoundaryFormula` 并证明 `relativeBoundary_iff_leibniz`；
  `Pairing/Internal/Leibniz/Proofs.lean` 的 `internalD_of_relativeBoundary`
  已把该条件连接到实际内部微分。
  接入：先将这些依赖同一配对／presentation 的准确条件公开，调整定义归属以避免
  Challenge2 自引用；证明所需相容条件，并逐项补各页乘法、作用、结合、单位与自然性。

- `am5` 收敛、E∞ 检测和 λⁿ 截断传递。
  陈述／实现：`Def/SpectralSequence/Convergence/` 已提供 `Convergence`、`Detects`、
  `ConvergenceMorphism` 的精确内部接口及检测性质；`Completion/`、`Truncation/`
  （同在 `Def/SpectralSequence/` 下）已有完备化与截断基础。
  接入：用这些现有类型表述固定 sphere、Cν 和内部 synthetic 对象所需的实例，
  保持滤过及 E∞ 比较相关；待完成的是实际收敛、完备分离和 λ 商传递的见证与证明。

- `am6` extension SS、page extension 与 crossing calculus。
  陈述／实现：`Def/SpectralSequence/BoundedExtension/SpectralSequence/` 已有
  E₀ 同构与 `d0_eq_inducedAssocGradedMap`；内部 crossing 与 square compatibility
  已在 `Def/SpectralSequence/{Crossing,Commutativity}/` 中定义并有局部证明。
  历史接口：`../KIPBase/Synthetic/PageExtension.lean` 已定义
  `FinitePageExtension`、`InfinitePageExtension`、完整 target coset 与 crossing，
  并证明 `essential_iff_zero_not_mem_classicalTargetCoset`；`SolutionTower.lean`
  （同一历史目录）已有 `ESSSolutionWitness` 和 `FiniteESSSolutionSystem.CoherentTower`。
  接入：迁移这些具体接口并绑定当前内部对象、λ 商及同一收敛见证；核查其前提，
  补实际实例与 coherent limit 的存在性，不能把已定义的塔误作塔已有成员。

- `am7` 内部版 generalized Leibniz、Mahowald 与 page stretch。
  陈述：**待修正，不能把现有类型原样冻结入包**。#133 指出 Leibniz 的 `Input`
  条件不可同时满足，#134 给出 Mahowald 陈述的反例；page stretch 受其上游影响。
  实现：`Interface/Challenge/Tools/` 与 `Interface/Solution/Tools/` 有三对声明，
  Solution 仍为 `sorry`；目前自由 `Operations` 未绑定内部 M，Main 尚未调用它们。
  TODO：按论文 Theorem 6.1、6.12 和 stretching 修正次数、crossing 及真实输入，
  绑定同一 extension/page/crossing 结构，再冻结签名并证明。

- `am8` Moss：Toda/Massey 到内部页面检测。
  陈述：`../KIPBase/multiplicativeSS/Moss.lean` 已有 `MappingAdamsTower`、
  `Moss.Statement` 和 `Moss.SphereStatement`，精确联系历史内部页面的 Massey、
  永久性、检测与 Toda；这是待证命题，不是 Moss 的证明。
  实现：同一历史目录的 `AdamsMasseyProduct.lean`、`AdamsDetection.lean`、
  `MossCrossing.lean` 已分别定义 `Relation`、`DetectsAbutment`、`ForProducts`；
  当前 Toda 关系在 `Def/StableHomotopy/Toda/`，来源在 `Main/Axiom/Literature/Claims.lean`。
  接入：以当前实际 Adams 对象及收敛数据替换历史全局选择，迁移这组签名并验证
  Moss crossing 方向、次数与文献条件；near-126 的具体推论仍留给 Main。

- `am9` Adams E₂＝cobar/Ext 及标准 hᵢ。
  陈述／实现：`MilnorCohomology` 已定义真正的 F₂ ker(d)/im(d)，包括 s=0
  的零入射边界、代表元零与相等的充要条件及 h₆² 的非零证明。
  本文件 `standardHi`、`standardHiSquare` 由同一 Milnor cocycle 和实际塔商
  构造完整内部标准族，不是任意命名元素；i=6 与原指定类相容。
  `CobarE2Comparison` 要求比较逐一保留实际 cocycle 的内部类。
  `CobarCupCalculus` 明列实际下降 cup 的代表元公式与标准平方等式；
  cup 的双线性构造和这两条公式已由 Leibniz 与商的泛性质证明。
  实际 E₂ 比较及规范 cocycle 公式已证明，包含 s=0；派生交付位于
  `Interface/Solution/Cobar.lean`。待补的是与内部页面乘法的相容性及 Steenrod Ext 识别。
  一般 cobar d²=0 当前使用 a03 的坐标相容性派生，Lin 比较留在 cm1。
  前置缺口仅针对 Ext 端：尚未固定 graded Steenrod comodule 范畴、平凡对象、
  内部次数平移及导出 Ext 模型；也可明确选择 cobar 为计算模型并补比较定理。
  当前已有的 cobar 同调及内部 E₂ 足够先准确陈述二者比较，不能把两件事混为一谈。

- `am10` 内部 classical–synthetic catalogue coherence。
  陈述／实现：`Def/Synthetic/AdamsSequence` 与 `Def/Comparison/ClassicalSynthetic`
  已改为内部 M。`SyntheticAdamsFamily` 的 νX、λⁿ 商和商投影是同一家族在实际
  对象／映射上的取值；ν 的 unitIso 给出相同家族中的球面同构。
  本文件 `NuComparison` 将 comparison 的 classical 端锁定为实际 Adams 塔。
  有限页与 E∞ 比较图都由同一循环／边界环境映射诱导。
  待补：构造该 family 及比较、λ 的重分次识别、乘法、检测和截断相容。
  尚无这些见证的存在性证明；不新增内部 M 与 Mathlib 谱序列比较义务。

- `am11` synthetic rigidity、E∞ 公式与 λ-Bockstein。
  陈述：`../KIPBase/Synthetic/Rigidity.lean` 已有若干内部 E∞／消失候选陈述，
  `ExtensionSS.lean` 有 `LambdaBocksteinData`，不是只有来源条目。
  限制：历史 `lambda_bockstein_start_page` 仅断言 r₀=2，不是 Bockstein comparison；
  旧 rigidity 的 weight 范围须按当前 λ 降 weight 约定及论文核对，不能直接冻结。
  接入：保留 `Main/Axiom/Literature/Claims.lean` 的文献依据，将经校正的 rigidity、
  νX／νX/λⁿ 的 E∞ 公式及真正的 Bockstein comparison 绑定当前内部 M；
  a10/a11 的 ν-cofiber／triangle lift 参数化输入在此补其内部页面版本及证明。

- `am12` Adams one-line 与低维永久性输入。
  陈述／实现：`Def/ClassicalAdams/H4D2/` 与
  `Main/Axiom/Literature/Adams/OneLine.lean` 已有 h₄ d₂ 的准确 tracer 声明、
  `cataloguedAdamsOneLine` 及其消费定理，但当前页面类型仍走旧接口。
  接入：以内部 `HasDifferential` 和同一 presentation 下的 h₄、h₀h₃² 重述该切片，
  保留文献定位与显式证明输入；这是页面绑定工作，无需等待整个 one-line 家族。
  本文件 `LowDimensionalSquarePermanence` 精确使用内部 h₄²／h₅²；
  `Interface/Solution/LowDimensionalPermanence` 已从显式 a14 与 Browder 输入推出它。
  May 低页存活、one-line 全族及实际同伦检测仍待接入。

- `am13` BJM/BX、θ₅ 与总微分输入。
  陈述／实现：`Def/Kervaire/Theta5/` 已有 `Theta5ChoiceContext`、
  `Theta5OrderData`、`BJM_BXCriterion`、`SourceTotalDifferentialIdentity` 的
  精确参数化类型及 choice transport 证明；`Main/Axiom/Literature/Kervaire.lean`
  已有对应 provenance wrappers。
  接入：保留这些已有类型，将 context 的检测、存活、有限商零关系和 δ₁ 运算
  绑定实际内部对象，补 quadratic-cell calculus；不能把自由语义参数视为绑定已完成，
  也不把 Main 的 choice/near-126 推论提前变为输入。

- `am14` tmf 检测与 BR21 微分。
  陈述：内部 M 交付类型未冻结、未入包。
  实现：`Main/Axiom/Literature/Claims.lean` 的 `tmfDetection`、
  `br21TmfDifferential` 是来源条目，不是已构造的内部 theorem。
  TODO：把 Hurewicz 检测、θ₅ 的 tmf 像和 d₃(v₂¹⁶)=β⁵g 连接到同一内部对象与映射。
  前置缺口：当前通用 Adams 构造可作用于给定谱，但本项尚未指定 tmf 对象、
  球面到 tmf 的实际映射及 v₂、β、g 的同一页面定义。只添加同名元素不能固定含义。

- `am15` Moss convergence 与 normalized Hopf detection。
  陈述／实现：`Main/Axiom/Literature/Near126/HopfCofiber/Fixed/Data.lean` 的
  `SphereHopfInput` 已将实际球面映射与 h₂ 的 filtration-one 表示条件一起打包，
  表示条件带 `ExternalEvidence`；历史 `../KIPBase/multiplicativeSS/Moss.lean`
  的 `SphereStatement` 已准确表达球面 Moss 判据。
  接入：保留现有 Hopf 选择及证据关联，迁移 am8 的检测/crossing 签名并绑定同一
  球面、ν 与 cofiber；待提供的是实际输入、top-cell 等必要比较和 Moss 证明。

- `am16` Browder 的 Kervaire 判据。
  陈述：本文件 `BrowderInterface` 将几何存在性对应到同一内部球谱标准 hⱼ²
  的 `NonzeroSurvival`，不再将永久性端留作任意谓词。
  实现：`Main/Axiom/Literature/InternalGeometry` 保留来源锁定和显式证明输入。
  几何对象及 Kervaire 谓词仍为参数；固定其真实解释并提供适用的文献见证待完成。

## C(M)：Lin 直接输出的确定性解释

- `cm1` 固定 Lin E₂ presentation。
  陈述：下面 `LinE2Presentation` 的三个字段精确保留；**仅该切片入包**，
  #138 所需完整加法基与全部直接乘法输出的交付尚未闭合。
  实现：`Main/Axiom/LinProgram/Generated/E2.lean`、`Def/AdamsE2/LinModel/`
  保留 v126.3.cw49 数据；本包的 existence Solution 尚为 `sorry`。
  a05 基表认证已进入 Challenge1，消费者从同一见证投影；生产证明在
  `Def/Solution/LinProgram/BasisTable.lean` 仍为 `sorry`。范围为 `t ≤ 261`，必须使用同一 comparison。`computedH6`、
  `computedH6Square` 在 `Main/Axiom/LinProgram/Interpretation/Classes/Data.lean`
  由比较机械定义，不新增任意同名元素。

- `cm2` 闭合球面有限页微分表。
  陈述：`HasCoordinates`、`DifferentialStatement` 与 `sphereTable_sound` 已精确入包；
  覆盖固定 `proofs.db` 的 10,907 条 `depth=0, name=S0` 闭合等式，不附加非零或存活。
  实现：`Main/Axiom/LinProgram/Generated/Differentials/` 与 `Main/Axiom/LinProgram/Translate/` 已接通
  记录到陈述；Interface 的数学真实性证明仍为 `sorry`。TODO：复演或验证全部已解释行，
  保持源、靶及微分始终使用同一 presentation。

- `cm3` 条件、分支与反证记录。
  陈述：确定性内部 M 解释尚未冻结、未入包。
  实现：`Main/Axiom/LinProgram/Raw/`、`Main/Axiom/LinProgram/Translate/` 保留/分类原记录，
  尚未接通数学解释。TODO：保留 `depth>0` 条件树、析取、disproof 与依赖逻辑，
  不将有条件记录展开为无条件微分。
  前置缺口是 raw schema 到逻辑命题的确定性解释及其依赖语义；
  内部微分关系已定义，不能把“解释器未写”记为“谱序列对象不存在”。

- `cm4` Cν、tmf、λ 商及 map/extension 输出。
  陈述：确定性内部 M 解释尚未冻结、未入包。
  实现：`Main/Axiom/Literature/Near126/HopfCofiber/` 是手写消费需求，
  不能算作 Lin 输出。TODO：扩展 `Main/Axiom/LinProgram/Translate/`，将每条直接输出
  连接到同一固定谱与映射，包括 D8、Cν 短入射排除的确切记录。

- `cm5` 程序 sentinel 与状态结论。
  陈述：确定性内部 M 解释尚未冻结、未入包。
  实现：`Main/Axiom/LinProgram/Raw/`、`Main/Axiom/LinProgram/Translate/` 是原始 schema/记录落点。
  TODO：分别解释明确编码的 nonzero、survival、permanent、hit/no-hit、
  incoming/outgoing；普通微分等式、未找到记录和空记录均不自动产生这些结论。

- `cm6` 带范围的消失、维数与候选穷尽。
  陈述：程序直接输出的完整解释未冻结、未入包。
  实现：`Interface/Solution/LinProgram/SquareDimension/`、`Interface/Solution/LinProgram/SquareDetection/`
  已有局部实质证明，但它们是数据模型上的派生结果，不因此成为新程序输入；
  `Main/Axiom/Literature/Near126/Sphere/Data.lean` 的事实包也是消费需求。
  TODO：解释原始程序给出的全线性组合、谱、页、次数、搜索上界与穷尽性；
  有限窗口不外推到全局，缺失记录不解释为零。

## 已知依赖债务与检查口径

- 共享类型目前隐式绑定 `Interface/Axiom/Challenge1.lean` 选出的同一见证：
  `Interpretation/Sphere → Literature/FixedSSData → Interface/Axiom/StandardFoundation`。
  因而 import 本文件仍会引入 Challenge1 开发 axiom。未来显式参数化必须连同 sphere、
  presentation、微分谓词一起设计；本次不把固定见证命题加强为任意 `c1` 上的命题。
- Main 仍有五条直接 import Interface/Solution 的边：
  `Main/Solution/Computation/{Dimension,Nonvanishing}.lean`、
  `Main/Axiom/LinProgram/E2.lean`、`Main/Axiom/LinProgram/Interpretation/Basis/{Data,Proofs}.lean`。
  其中 basis 链消费同一 Challenge1 的认证投影，生产证明在 Def/Solution 仍为 `sorry`；
  square detection/dimension 有已有证明。
  需要分别安排 `a05` 上游基础和第二道边界交付，不能因当前两条总包字段就声称完全隔离。
- 文献仍由 `Main/Axiom/Literature/` 的 `ExternalResult`、`ExternalEvidence` 及
  catalogued wrappers 显式携带；清单不是把它们变成无条件字段的授权。
- Blueprint 依据：`h6_statement.tex` 的 `thm:lin-e2-basis-certification`、
  `def:lin-e2-coordinates` 为 `notready`，`thm:lin-square-certified` 有 `leanok`；
  `comparison_and_rules.tex` 的 generalized Leibniz/Mahowald 节点为 `notready`。
  精确陈述、证明状态与 #133/#134 的语义缺口必须分别检查，不从目录名或编译成功推断完成。
- 两端继续直接陈述同一个 `Nonempty Challenge2`。生产证明位于
  `Interface/Solution/Challenge2.lean`；消费 axiom 和唯一 `Classical.choice` 位于
  `Main/Axiom/Challenge2.lean`。本文件只定义交付类型和谓词，不填生产证明。
-/

namespace KIP126.Classical.Adams

/-- Range-limited presentation of the fixed internal sphere E₂. Integer-linear
equivalences preserve the existing additive groups; the source F₂ structure
can be transported without changing them. No higher differential is supplied.
The separate `LinBasisTable` certification, not this structure, asserts that
the imported monomials form a Lean `Module.Basis`. -/
structure LinE2Presentation where
  comparison : ∀ s t : ℕ, t ≤ 261 →
    KIP126.LinE2.E2At s t ≃ₗ[ℤ] sphereAdamsData.Page 2 ((s : ℤ), (t : ℤ))
  product : ∀ s t s' t' : ℕ,
    sphereAdamsData.Page 2 ((s : ℤ), (t : ℤ)) →ₗ[ℤ]
    sphereAdamsData.Page 2 ((s' : ℤ), (t' : ℤ)) →ₗ[ℤ]
      sphereAdamsData.Page 2 (((s + s' : ℕ) : ℤ), ((t + t' : ℕ) : ℤ))
  comparison_mul : ∀ (s t s' t' : ℕ) (h : t + t' ≤ 261)
    (x : KIP126.LinE2.E2At s t) (y : KIP126.LinE2.E2At s' t')
    (z : KIP126.LinE2.E2At (s + s') (t + t')),
    x.val * y.val = z.val →
      comparison (s + s') (t + t') h z =
        product s t s' t' (comparison s t (by omega) x)
          (comparison s' t' (by omega) y)

end KIP126.Classical.Adams

namespace KIP126

namespace Challenge2

open CategoryTheory CategoryTheory.MonoidalCategory
open Classical.Adams LinE2
open Core.SpectralSequence

universe u v w

/-- am1：一般内部页面 calculus 的派生交付。页面与微分均来自同一个 E；
同调同构来自 nested Z/B 模型，不另选一套谱序列。 -/
structure PageCalculus {C : Type u} [Category.{v} C] [Abelian C]
    {ι : Type w} [AddCommGroup ι] [DecidableEq ι]
    (E : Core.SpectralSequence C ι) : Prop where
  homology : ∀ (r : ℤ) (k : ι), E.r₀ ≤ r →
    Nonempty (E.Page (r + 1) k ≅ (E.pageShortComplex r (k - E.diffDeg r)).homology)
  square_zero : ∀ (r : ℤ) (k : ι), E.d r k ≫ E.d r (k + E.diffDeg r) = 0

/-- am1：模页面的代表元、边界及非零微分条件。普通微分等式不能提供
非零存活；后两个字段明确保留 `HasNonzeroDifferential` 的非零前提。 -/
structure RepresentativeCalculus {R : Type u} [Ring R]
    (E : Core.SpectralSequence (ModuleCat.{v} R) (ℤ × ℤ)) : Prop where
  page_two : ∀ p (a b : E.Page 2 p), RepresentsOnPage E 2 p a b → a = b
  boundary_cycle : ∀ r p (a : E.Page r (p + E.diffDeg r)),
    IsPageBoundary E r p a → IsPageCycle E r (p + E.diffDeg r) a
  differential_source : ∀ r p q (x : E.Page 2 p) (y : E.Page 2 q),
    HasNonzeroDifferential E r p q x y → SurvivesTo E r p x
  differential_target : ∀ r p q (x : E.Page 2 p) (y : E.Page 2 q),
    HasNonzeroDifferential E r p q x y → SurvivesTo E r q y

/-- am3：同一内部谱序列态射的派生自然性。所有页面映射由 f 的环境映射
诱导；不另选页面映射，也不把微分等式加强为非零结论。 -/
structure MorphismCalculus {R : Type u} [Ring R]
    (E E' : Core.SpectralSequence (ModuleCat.{v} R) (ℤ × ℤ))
    (f : SpectralSequenceMorphism E E') : Prop where
  differential_comm : ∀ (r : ℤ) (p : ℤ × ℤ),
    f.pageMap r p ≫ E'.d r p =
      E.d r p ≫ f.pageMap r (p + E.diffDeg r) ≫
        eqToHom (by rw [f.diffDeg_eq])
  page_identity : ∀ (r : ℤ) (p : ℤ × ℤ),
    (𝟙 E : E ⟶ E).pageMap r p = 𝟙 _
  page_composition : ∀ (E'' : Core.SpectralSequence (ModuleCat.{v} R) (ℤ × ℤ))
    (g : SpectralSequenceMorphism E' E'') (r : ℤ) (p : ℤ × ℤ),
    (CategoryStruct.comp (X := E) (Y := E') (Z := E'') f g).pageMap r p = f.pageMap r p ≫ g.pageMap r p
  infinity_identity : ∀ (p : ℤ × ℤ), (𝟙 E : E ⟶ E).eInftyMap p = 𝟙 _
  infinity_composition : ∀ (E'' : Core.SpectralSequence (ModuleCat.{v} R) (ℤ × ℤ))
    (g : SpectralSequenceMorphism E' E'') (p : ℤ × ℤ),
    (CategoryStruct.comp (X := E) (Y := E') (Z := E'') f g).eInftyMap p = f.eInftyMap p ≫ g.eInftyMap p
  representatives : ∀ (r : ℤ) (p : ℤ × ℤ) (x : E.Page 2 p) (y : E.Page r p),
    RepresentsOnPage E r p x y →
      RepresentsOnPage E' r p (f.pageMap 2 p x) (f.pageMap r p y)
  differential : ∀ (r : ℤ) (p q : ℤ × ℤ) (x : E.Page 2 p) (y : E.Page 2 q),
    HasDifferential E r p q x y →
      HasDifferential E' r p q (f.pageMap 2 p x) (f.pageMap 2 q y)

/-- am10 的对象绑定：classic 页面是实际 unit 塔的内部构造，synthetic
页面是同一 family 在 νX 的取值。该类型不声称比较已经构造或为同构。 -/
abbrev NuComparison {C : Type u} [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    {Syn : Type w} [Synthetic.Context.SyntheticCategory.{w, v} Syn]
    {H : C} (unit : 𝟙_ C ⟶ H) (N : Synthetic.Context.NuFunctorData C Syn)
    (F : Synthetic.SpectralSequence.SyntheticAdamsFamily Syn) (X : C) :=
  Comparison.ClassicalSynthetic.ReindexedSpectralSequenceMap
    (adamsTowerInternalSpectralSequence unit X) (F.nu N X)

/-- am9 的规范 E₂ 比较义务：每个 cocycle 都必须映到同一 Adams 塔中的
实际类。这个公式排除只给出任意线性等价的接口；不声称已定义导出 Ext。 -/
def CobarE2Comparison {C : Type u} [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    (H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C))
    (M : MilnorCooperations H) : Prop :=
  ∀ s t : ℕ, ∃ e : MilnorCohomology.Cohomology H M s t ≃ₗ[ℤ]
      (adamsTowerInternalSpectralSequence H.unit StableHomotopy.SphereSpectrum).Page 2
        ((s : ℤ), (t : ℤ)),
    ∀ (x : Steenrod.Milnor.cochains s t) (hx : Steenrod.Milnor.differential s t x = 0),
      e (MilnorCohomology.ofCocycle H M x hx) =
        MilnorCohomology.internalClassOfCocycle H M x hx

/-- am9 的 cobar 乘法切片；使用从 cochain concatenation 真正下降的 cup，
不另选乘法。与内部 Adams 高页配对的相容性是另一个义务。 -/
structure CobarCupCalculus {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    (H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C))
    (M : MilnorCooperations H) : Prop where
  representatives : ∀ {s t s' t' : ℕ} (x : Steenrod.Milnor.cochains s t)
    (y : Steenrod.Milnor.cochains s' t')
    (hx : Steenrod.Milnor.IsCycle x) (hy : Steenrod.Milnor.IsCycle y),
    MilnorCohomology.cup H M (MilnorCohomology.ofCocycle H M x hx)
      (MilnorCohomology.ofCocycle H M y hy) =
        MilnorCohomology.ofCocycle H M (Steenrod.Milnor.cup x y)
          (Steenrod.Milnor.cup_isCycle x y hx hy)
  standard_squares : ∀ i : ℕ, MilnorCohomology.hiSquare H M i =
    MilnorCohomology.cohomologyReindex H M rfl (Steenrod.Milnor.hiSquare_internalDegree i)
      (MilnorCohomology.cup H M (MilnorCohomology.hi H M i) (MilnorCohomology.hi H M i))

/-- am9：由同一固定塔及 Milnor cocycle 构造的标准族；没有新的类选择。 -/
noncomputable def standardHi (i : ℕ) :
    sphereAdamsData.Page 2 (1, ((2 ^ i : ℕ) : ℤ)) :=
  Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations i

/-- 标准平方是同一 Milnor cocycle 的 concatenation square 的内部 E₂ 类。
与固定 Lin 计算类的识别仍是另一个比较义务。 -/
noncomputable def standardHiSquare (i : ℕ) :
    sphereAdamsData.Page 2 (2, ((2 ^ (i + 1) : ℕ) : ℤ)) :=
  Sphere.Internal.hiSquare standardFoundation.hf2 standardMilnorCooperations i

/-- am12 的低维永久性切片，使用实际标准类和非零永久存活。
不把结论降为自由 permanence 谓词或零类的循环性。 -/
def LowDimensionalSquarePermanence : Prop :=
  NonzeroSurvival sphereAdamsData (2, 32) (standardHiSquare 4) ∧
    NonzeroSurvival sphereAdamsData (2, 64) (standardHiSquare 5)

/-- am16：Browder 的准确内部页面端。几何解释仍由显式参数指定并需要
相应文献证明，永久性端则固定为本项目同一内部球谱上的标准 hⱼ²。 -/
def BrowderInterface {Manifold : Type} (dimension : Manifold → ℕ)
    (kervaireOne : Manifold → Prop) : Prop :=
  Kervaire.BrowderCriterionStatement dimension kervaireOne
    (fun j => NonzeroSurvival sphereAdamsData
      (2, ((2 ^ (j + 1) : ℕ) : ℤ)) (standardHiSquare j))

/-- Literal CSV coordinates, independent of any choice of comparison map. -/
def HasCoordinates {s t : Nat} (x : E2At s t) (indices : List Nat) : Prop :=
  ∃ rows : List BasisRow,
    rows.map BasisRow.index = indices ∧
    (∀ row ∈ rows, row ∈ basisRows ∧ row.s = s ∧ row.t = t) ∧
    x.val = (rows.map basisValue).sum

/-- Mathematical meaning of one exported differential row for one fixed Lin
presentation.  The same `presentation` is used for both source and target. -/
def DifferentialStatement (presentation : Classical.Adams.LinE2Presentation)
    (row : Computation.LinProofs.DifferentialRow) : Prop :=
  ∃ (hx : row.t ≤ 261) (hy : row.t + row.r - 1 ≤ 261),
    ∃ (x : E2At row.s row.t) (y : E2At (row.s + row.r) (row.t + row.r - 1)),
      HasCoordinates x row.x ∧ HasCoordinates y row.dx ∧
      ∃ (h : ((row.s : ℤ), (row.t : ℤ)) + Classical.Adams.sphereAdamsData.diffDeg row.r =
          (((row.s + row.r : Nat) : ℤ), ((row.t + row.r - 1 : Nat) : ℤ)))
        (xr : Classical.Adams.sphereAdamsData.Page row.r ((row.s : ℤ), (row.t : ℤ)))
        (yr : Classical.Adams.sphereAdamsData.Page row.r
          (((row.s + row.r : Nat) : ℤ), ((row.t + row.r - 1 : Nat) : ℤ))),
        RepresentsOnPage Classical.Adams.sphereAdamsData row.r _
          (presentation.comparison row.s row.t hx x) xr ∧
        RepresentsOnPage Classical.Adams.sphereAdamsData row.r _
          (presentation.comparison (row.s + row.r) (row.t + row.r - 1) hy y) yr ∧
        (Classical.Adams.sphereAdamsData.d row.r _ ≫
          eqToHom (congrArg (Classical.Adams.sphereAdamsData.Page row.r) h)) xr = yr

end Challenge2

/-- The interpreted outputs required by Main.  The table soundness field is
about the exact presentation stored in the same witness. -/
structure Challenge2 where
  presentation : Classical.Adams.LinE2Presentation
  sphereTable_sound : ∀ (shard offset : Nat)
    (row : Computation.LinProofs.DifferentialRow),
    Computation.LinProofs.RawData.lookup shard offset = some row →
      Challenge2.DifferentialStatement presentation row

end KIP126
