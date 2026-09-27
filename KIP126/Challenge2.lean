import KIP126.Main.Axiom.LinProgram.Generated.Differentials.Table
import KIP126.Main.Axiom.LinProgram.Interpretation.Sphere
import KIP126.Def.AdamsE2.LinClasses.Data
import KIP126.Def.AdamsE2.LinBasisTable.Data
import KIP126.Def.SpectralSequence.Computation.Predicates

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
  陈述／实现：相邻页同调已有 `Basic/PageHomology/Data.lean` 的 `pageHomologyIso`；
  `Computation/Proofs.lean` 已证明 `IsPageBoundary.isCycle`、
  `HasNonzeroDifferential.source_survives` 和 `target_survives`；
  `Representatives/Proofs.lean` 已有微分与代表元的等价及自然性。
  以上路径均在 `Def/SpectralSequence/` 下；永久存活类型见 `Permanence/Predicates.lean`。
  接入：在本文件逐条公开所需派生交付并复用现有证明；剩余通用性质按具体签名补齐，
  不把已有 calculus 整体视为等待首次设计，也不重新假设可由 Def 推出的结论。

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
  陈述：完整交付类型未冻结、未入包；既有态射还需按 #132 审核。
  实现：见 `Def/SpectralSequence/Basic/`、`Def/SpectralSequence/BoundedExtension/Morphism/` 和
  `Main/Axiom/Literature/HopfCofiber/`。TODO：在所需各页固定 i、q、tmf 与 cofiber
  映射，并给出微分、复合、代表元及页面传递相容性。

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
  陈述：已有局部精确声明，完整交付类型未冻结、未入包。
  实现：`Def/ClassicalAdams/MilnorCooperations/Data.lean`、`Def/ClassicalAdams/SphereClasses/`
  与 `Def/Steenrod/MilnorCobar/` 是现有支撑。TODO：由同一基础证明 E₁ cobar 公式、
  内部 E₂ 的 Ext 识别以及标准 hᵢ、h₆² 的识别；Lin 比较留在 `cm1`。

- `am10` 内部 classical–synthetic catalogue coherence。
  陈述／实现：当前 `Def/Comparison/ClassicalSynthetic/` 与
  `Def/Synthetic/AdamsSequence/` 仍使用 Mathlib 谱序列；历史
  `../KIPBase/Synthetic/Adams.lean` 的 `SynAdamsSS` 已采用内部三分次类型，
  `ExtensionSS.lean` 有具体重分次与 `SyntheticExtensionData`，
  `PageExtension.lean` 有 classical/synthetic 代表元绑定接口。
  接入：以这些具体类型为迁移起点，替换历史 axioms 选定的对象，绑定同一当前
  classical、synthetic、λ-quotient 实例，再补页面、微分、乘法、检测和截断相容。
  不新增内部 M 与 Mathlib 谱序列的比较义务。

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
  May 低页存活、h₄²／h₅² 永久性和检测的其余准确陈述与证据逐条补齐。

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

- `am15` Moss convergence 与 normalized Hopf detection。
  陈述／实现：`Main/Axiom/Literature/Near126/HopfCofiber/Fixed/Data.lean` 的
  `SphereHopfInput` 已将实际球面映射与 h₂ 的 filtration-one 表示条件一起打包，
  表示条件带 `ExternalEvidence`；历史 `../KIPBase/multiplicativeSS/Moss.lean`
  的 `SphereStatement` 已准确表达球面 Moss 判据。
  接入：保留现有 Hopf 选择及证据关联，迁移 am8 的检测/crossing 签名并绑定同一
  球面、ν 与 cofiber；待提供的是实际输入、top-cell 等必要比较和 Moss 证明。

- `am16` Browder 的 Kervaire 判据。
  陈述／实现：`Def/Kervaire/Theta5/Predicates.lean` 的 `BrowderCriterionStatement`
  已精确表达维数与 Kervaire 存在性判据；`Main/Axiom/Literature/Kervaire.lean`
  的 `cataloguedBrowderCriterion` 保留来源与显式 proof 参数。
  接入：公开该条件接口，并将其 `permanent` 参数实例化为同一内部球谱标准 hⱼ²
  的 `NonzeroSurvival`。尚待固定的几何解释与标准类关联是具体绑定义务，
  不妨碍先陈述参数化结果，也不能把任意永久性谓词当作关联已经成立。

## C(M)：Lin 直接输出的确定性解释

- `cm1` 固定 Lin E₂ presentation。
  陈述：下面 `LinE2Presentation` 的三个字段精确保留；**仅该切片入包**，
  #138 所需完整加法基与全部直接乘法输出的交付尚未闭合。
  实现：`Main/Axiom/LinProgram/Generated/E2.lean`、`Def/AdamsE2/LinModel/`
  保留 v126.3.cw49 数据；本包的 existence Solution 尚为 `sorry`。
  TODO：接入 Challenge1 清单 `a05` 的基表正确性（现 `Interface/Solution/LinProgram/BasisTable.lean`
  仍为 `sorry`），审计范围 `t ≤ 261` 和同一 comparison。`computedH6`、
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
  其中 basis 链含 `basisTable_correct` 占位；square detection/dimension 有已有证明。
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

open CategoryTheory
open Classical.Adams LinE2
open Core.SpectralSequence

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
