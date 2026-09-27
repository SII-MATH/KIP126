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
有局部证明也不等于完整接口已冻结。尚未冻结或已知错误的项目只保留具体 TODO，
不以任意 `Prop`、`True` 或自由选择的操作补齐字段。本文路径均相对于 `KIP126/`。
共同数学对象仍在 `Def/`；本文件集中项目交付结构与谓词，不复制一般数学定义、
生成数据或证明。每个已入包字段都必须使用同一个 presentation。

## A(M)：使用内部 M 的非程序接口

- `am1` 内部页面、代表元与永久存活 calculus。
  陈述：已有局部精确声明，完整交付类型未冻结、未入包。
  实现：`Def/SpectralSequence/Basic/PageHomology/`、`Def/SpectralSequence/Representatives/`、
  `Def/SpectralSequence/Permanence/` 已有定义与证明。TODO：汇总相邻页同调、共同代表元、cycle/boundary
  传递、d²=0、E∞ 及 `NonzeroSurvival` 的具体必需结论，逐条审计证明依赖。

- `am2` Adams 塔页面、微分与存活语义。
  陈述：已有局部精确声明，完整交付类型未冻结、未入包。
  实现：`Def/ClassicalAdams/TowerSSData/` 与 `SphereVanishing/` 提供内部塔路线；
  `Main/Solution/Computation/Vanishing.lean` 有固定对象的 survival/liftability 归约。
  TODO：统一 Z/B 页面、连接微分、下一页传递与同一代表元的全部提升条件。

- `am3` 内部谱序列映射与 Adams 自然性。
  陈述：完整交付类型未冻结、未入包；既有态射还需按 #132 审核。
  实现：见 `Def/SpectralSequence/Basic/`、`Def/SpectralSequence/BoundedExtension/Morphism/` 和
  `Main/Axiom/Literature/HopfCofiber/`。TODO：在所需各页固定 i、q、tmf 与 cofiber
  映射，并给出微分、复合、代表元及页面传递相容性。

- `am4` 内部乘法、配对、作用与 Leibniz。
  陈述：完整交付类型未冻结、未入包；本文件的 `comparison_mul` 不提供微分 Leibniz。
  实现：`Def/ClassicalAdams/TowerLongLayer/Pairing/` 有局部配对及条件证明；
  `Main/Axiom/LinProgram/Interpretation/Differential/Predicates.lean` 定义尚待满足的
  `SecondDifferentialLeibniz`。TODO：补所需页面乘法、external pairing、module action
  的双线性、结合、单位、自然性及 dᵣ Leibniz，不把条件证明误作条件已成立。

- `am5` 收敛、E∞ 检测和 λⁿ 截断传递。
  陈述：完整交付类型未冻结、未入包。
  实现：`Def/SpectralSequence/Convergence/`、`Def/SpectralSequence/Completion/`、`Def/SpectralSequence/Truncation/`
  已有公共基础。TODO：为同一 sphere、Cν 和内部 synthetic 实例补有限/强收敛、
  检测、完备分离及有限 λ 商之间和向未截断对象的传递。

- `am6` extension SS、page extension 与 crossing calculus。
  陈述：已有局部精确声明，完整交付类型未冻结、未入包。
  实现：`Def/SpectralSequence/BoundedExtension/`、`Def/SpectralSequence/UnboundedExtension/`、
  `Def/SpectralSequence/Crossing/`、`Def/SpectralSequence/Commutativity/` 是现有落点。TODO：逐项绑定内部 M，汇总 E₀/abutment、
  inessentiality、square naturality、exactness、完整 target coset、crossing 与 coherent limit。

- `am7` 内部版 generalized Leibniz、Mahowald 与 page stretch。
  陈述：**待修正，不能把现有类型原样冻结入包**。#133 指出 Leibniz 的 `Input`
  条件不可同时满足，#134 给出 Mahowald 陈述的反例；page stretch 受其上游影响。
  实现：`Interface/Challenge/Tools/` 与 `Interface/Solution/Tools/` 有三对声明，
  Solution 仍为 `sorry`；目前自由 `Operations` 未绑定内部 M，Main 尚未调用它们。
  TODO：按论文 Theorem 6.1、6.12 和 stretching 修正次数、crossing 及真实输入，
  绑定同一 extension/page/crossing 结构，再冻结签名并证明。

- `am8` Moss：Toda/Massey 到内部页面检测。
  陈述：内部 M 交付类型未冻结、未入包。
  实现：`Def/StableHomotopy/Toda/` 只提供底层支撑；
  `Main/Axiom/Literature/Claims.lean` 记录来源。TODO：连接 Toda/Massey 与内部微分、
  检测、不定性及 Moss crossing；near-126 的具体 Toda 推论留给 Main。

- `am9` Adams E₂＝cobar/Ext 及标准 hᵢ。
  陈述：已有局部精确声明，完整交付类型未冻结、未入包。
  实现：`Def/ClassicalAdams/MilnorCooperations/Data.lean`、`Def/ClassicalAdams/SphereClasses/`
  与 `Def/Steenrod/MilnorCobar/` 是现有支撑。TODO：由同一基础证明 E₁ cobar 公式、
  内部 E₂ 的 Ext 识别以及标准 hᵢ、h₆² 的识别；Lin 比较留在 `cm1`。

- `am10` 内部 classical–synthetic catalogue coherence。
  陈述：内部 M 交付类型未冻结、未入包。
  实现：`Def/Comparison/ClassicalSynthetic/` 及 `Def/Synthetic/AdamsSequence/`
  仍使用 Mathlib 谱序列。TODO：改写成内部 classical、synthetic、λ-quotient M 的
  重分次和对象/映射识别，证明页面、微分、乘法、检测及截断相容；不新增 Mathlib 比较义务。

- `am11` synthetic rigidity、E∞ 公式与 λ-Bockstein。
  陈述：内部 M 交付类型未冻结、未入包。
  实现：`Main/Axiom/Literature/Claims.lean` 有 synthetic rigidity、λ-Bockstein
  等来源条目，`Def/Synthetic/` 有旧对象。TODO：在内部 M 上陈述 νX、νX/λⁿ 的 E∞
  公式、rigidity、λ-Bockstein、triangle lift 与 ν-cofiber 结果，并保留来源条件。

- `am12` Adams one-line 与低维永久性输入。
  陈述：现有文献 wrapper 尚非完整的内部 M 交付，未冻结、未入包。
  实现：`Main/Axiom/Literature/Adams/OneLine.lean` 和 `Claims.lean`。
  TODO：把主链消费的 one-line 微分、May 低页存活及 h₄²、h₅² 永久性/检测
  精确重述到固定内部 Adams M，保留文献定位与显式输入。

- `am13` BJM/BX、θ₅ 与总微分输入。
  陈述：现有语义输入不等于完整的内部 M 交付，未冻结、未入包。
  实现：`Main/Axiom/Literature/Kervaire.lean`、`Def/Kervaire/Theta5/`。
  TODO：绑定 θ₅ 的 h₅² 检测、阶二、BJM/BX 判据、quadratic-cell calculus 及
  δ₁(h₆²)=ληθ₅²；Main 的 choice/near-126 推论不提前变为此项输入。

- `am14` tmf 检测与 BR21 微分。
  陈述：内部 M 交付类型未冻结、未入包。
  实现：`Main/Axiom/Literature/Claims.lean` 的 `tmfDetection`、
  `br21TmfDifferential` 是来源条目，不是已构造的内部 theorem。
  TODO：把 Hurewicz 检测、θ₅ 的 tmf 像和 d₃(v₂¹⁶)=β⁵g 连接到同一内部对象与映射。

- `am15` Moss convergence 与 normalized Hopf detection。
  陈述：内部交付尚不完整、未入包；`SphereHopfInput` 是明确的待提供输入。
  实现：`Main/Axiom/Literature/Claims.lean`、`Main/Axiom/Literature/Near126/HopfCofiber/Fixed/Data.lean`。
  TODO：在同一球面 ν 上补 h₂ 的 normalized detection、Moss no-crossing/Toda
  判据及实际 cofiber 的必要比较，保留几何选取与文献证据的关联。

- `am16` Browder 的 Kervaire 判据。
  陈述：已有 provenance wrapper，绑定内部 M 的完整交付未冻结、未入包。
  实现：`Main/Axiom/Literature/Kervaire.lean` 的 `cataloguedBrowderCriterion`
  与 `Claims.lean`。TODO：把 Kervaire invariant one 与内部球谱标准 hⱼ² 的
  非零永久存活精确关联，作为内部目标之后的几何接口，不弱化为任意永久性谓词。

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
