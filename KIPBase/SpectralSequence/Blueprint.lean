/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/

import KIPBase.SpectralSequence.Exactness

/-!
# 谱序列 Blueprint 接口

本文件把 `SpectralSequence` 目录中已经证明的底层构造封装成 Blueprint
使用的接口。这里不改变 `SSData`、`PreSS` 或过滤复形的基础定义；所有
元素式条件仍然通过 `SSData` 的嵌套子对象 `Z`、`B` 表述。
-/

namespace KIPBase.SpectralSequence

open CategoryTheory CategoryTheory.Limits

universe u v w

set_option linter.dupNamespace false

variable {C : Type u} [Category.{v} C] [Abelian C]

/-! ## 完备、穷尽与 Hausdorff 过滤 -/

/-- Blueprint 中“完备且分离的穷尽过滤”的统一接口。

三个条件保持彼此独立：`exhaustive` 和 `hausdorff` 分别表达过滤层的并为
顶、交为底；`complete` 表达到截断逆极限的典范映射满足泛性质。特别地，
本结构不把 Hausdorff 条件误写成最终为零。 -/
structure Filtration.CompleteSeparated
    {ω : Type w} {A : ω → C} (F : Filtration A) : Prop where
  exhaustive : F.IsExhaustive
  hausdorff : F.IsHausdorff
  complete : F.IsComplete

/-! ## 页编号约定 -/

/-- 一个显示页编号约定。`page` 给出实际整数页，`cycleLevel` 与
`quotientExponent` 分别给出元素式 `Z/B` 层和外部商对象所用的自然数。
后两个数值相等是显式定律，而不是定义性等式。 -/
structure PageLevelConvention where
  firstPage : ℤ
  page : ℕ → ℤ
  cycleLevel : ℕ → ℕ
  quotientExponent : ℕ → ℕ
  page_zero : page 0 = firstPage
  page_succ : ∀ n, page (n + 1) = page n + 1
  cycleLevel_succ : ∀ n, cycleLevel (n + 1) = cycleLevel n + 1
  quotientExponent_succ : ∀ n,
    quotientExponent (n + 1) = quotientExponent n + 1
  levels_agree : cycleLevel = quotientExponent

/-- AIM 的 Adams 显示约定：自然数 `n` 表示显示页 `E_{n+2}`，而该页
由 `Z_{n+1}/B_{n+1}` 给出；合成商指数同样是 `n+1`。 -/
def adamsPageLevelConvention : PageLevelConvention where
  firstPage := 2
  page n := n + 2
  cycleLevel n := n + 1
  quotientExponent n := n + 1
  page_zero := by norm_num
  page_succ := by intro n; omega
  cycleLevel_succ := by intro n; omega
  quotientExponent_succ := by intro n; omega
  levels_agree := rfl

/-! ## 元素式循环、边缘与永久类 -/

/-- 环境对象中的广义元素在第 `r` 层是循环。 -/
def SSData.IsCycleAt (D : SSData C) (r : WithTop ℕ) {T : C}
    (x : T ⟶ D.V) : Prop :=
  (D.Z r).Factors x

/-- 环境对象中的广义元素在第 `r` 层是边缘。 -/
def SSData.IsBoundaryAt (D : SSData C) (r : WithTop ℕ) {T : C}
    (x : T ⟶ D.V) : Prop :=
  (D.B r).Factors x

/-- 一个初始环境对象代表元生存到有限层 `r`，即它属于 `Z_r`。 -/
abbrev SSData.SurvivesThrough (D : SSData C) (r : ℕ) {T : C}
    (x : T ⟶ D.V) : Prop :=
  D.IsCycleAt (r : WithTop ℕ) x

/-- 永久代表元是属于 `Z_∞` 的环境对象广义元素。 -/
abbrev SSData.IsPermanentRepresentative (D : SSData C) {T : C}
    (x : T ⟶ D.V) : Prop :=
  D.IsCycleAt ⊤ x

/-- `x` 在第 `r` 页代表非零类：选择它到 `Z_r` 的提升后，其商投影非零。 -/
def SSData.RepresentsNonzeroAt (D : SSData C) (r : WithTop ℕ) {T : C}
    (x : T ⟶ D.V) : Prop :=
  ∃ xZ : T ⟶ Subobject.underlying.obj (D.Z r),
    xZ ≫ (D.Z r).arrow = x ∧ xZ ≫ D.pageπ r ≠ 0

/-- 对一个已经是 `r`-循环的代表元，它给出非零 `E_r` 类，当且仅当它
不是 `r`-边缘。这个结论也适用于 `r = ∞`。 -/
theorem SSData.representsNonzeroAt_iff
    (D : SSData C) (r : WithTop ℕ) {T : C}
    (x : T ⟶ D.V) (hx : D.IsCycleAt r x) :
    D.RepresentsNonzeroAt r x ↔ ¬ D.IsBoundaryAt r x := by
  constructor
  · rintro ⟨xZ, hxZ, hnonzero⟩ hboundary
    rcases (Subobject.factors_iff _ _).1 hboundary with ⟨xB, hxB⟩
    let i := Subobject.ofLE (D.B r) (D.Z r) (D.B_le_Z r)
    have hXBZ : xB ≫ i = xZ := by
      apply (cancel_mono (D.Z r).arrow).mp
      rw [Category.assoc, Subobject.ofLE_arrow, hxB, hxZ]
    apply hnonzero
    rw [← hXBZ, Category.assoc]
    simp only [SSData.pageπ, cokernel.condition, comp_zero]
  · intro hboundary
    rcases (Subobject.factors_iff _ _).1 hx with ⟨xZ, hxZ⟩
    refine ⟨xZ, hxZ, ?_⟩
    intro hzero
    let i := Subobject.ofLE (D.B r) (D.Z r) (D.B_le_Z r)
    let xB := Abelian.monoLift i xZ hzero
    apply hboundary
    apply (Subobject.factors_iff _ _).2
    refine ⟨xB, ?_⟩
    calc
      xB ≫ (D.B r).arrow = xB ≫ i ≫ (D.Z r).arrow := by
        rw [Subobject.ofLE_arrow]
      _ = xZ ≫ (D.Z r).arrow := by
        rw [← Category.assoc, Abelian.monoLift_comp]
      _ = x := hxZ

/-- 永久代表元给出非零 `E_∞` 类，当且仅当它不属于 `B_∞`。 -/
theorem SSData.permanent_nonzero_iff
    (D : SSData C) {T : C} (x : T ⟶ D.V)
    (hx : D.IsPermanentRepresentative x) :
    D.RepresentsNonzeroAt ⊤ x ↔ ¬ D.IsBoundaryAt ⊤ x :=
  D.representsNonzeroAt_iff ⊤ x hx

/-! ## 收敛与检测的统一见证 -/

/-- Blueprint 使用的收敛和检测数据。`convergence` 给出
`E∞ ≅ gr A`，而 `Detects convergence` 给出元素级检测关系；其余三个字段
明确记录过滤的穷尽、Hausdorff 与完备条件。 -/
structure ConvergenceDetectionWitness
    {ι : Type w} [AddCommGroup ι] [DecidableEq ι]
    {ω : Type w} (E : SpectralSequence C ι) (A : ω → C)
    (F : Filtration A) : Type max u v w where
  convergence : Convergence E A F
  exhaustive : F.IsExhaustive
  hausdorff : F.IsHausdorff
  complete : F.IsComplete

/-! ## 交换方块诱导的 ESS 自然性 -/

variable [LocallySmall.{u} C] [WellPowered.{u} C]
variable [HasWidePullbacks.{u} C] [HasCoproducts.{u} C]

/-- 收敛谱序列交换方块在每个 abutment 次数上给出两个两项过滤复形之间
的态射：次数 `1` 取左边 `p`，次数 `0` 取右边 `q`。链映射条件正是
`q f = g p`，过滤相容性分别来自 `p` 与 `q`。 -/
noncomputable def HomotopyCommSquare.essFilteredComplexMorphism
    {ι : Type w} [AddCommGroup ι] [DecidableEq ι] {ω : Type w}
    {E₁ E₂ E₃ E₄ : SpectralSequence C ι}
    {A₁ A₂ A₃ A₄ : ω → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (sq : HomotopyCommSquare conv₁ conv₂ conv₃ conv₄) (t : ω) :
    FilteredComplexMorphism (sq.extf.complex t) (sq.extg.complex t) :=
  underlyingComplexMorphism
    sq.cmf.aMap sq.cmf.filtration_compat
    sq.cmg.aMap sq.cmg.filtration_compat
    sq.cmp.aMap sq.cmq.aMap (fun t => (sq.abutment_comm t).symm)
    sq.cmp.filtration_compat sq.cmq.filtration_compat t

/-- 上一态射的有界过滤复形版本。 -/
noncomputable def HomotopyCommSquare.essBoundedMorphism
    {ι : Type w} [AddCommGroup ι] [DecidableEq ι] {ω : Type w}
    {E₁ E₂ E₃ E₄ : SpectralSequence C ι}
    {A₁ A₂ A₃ A₄ : ω → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (sq : HomotopyCommSquare conv₁ conv₂ conv₃ conv₄) (t : ω) :
    (⟨sq.extf.complex t, sq.extf.bounded t⟩ : BoundedFilteredComplex C) ⟶
      (⟨sq.extg.complex t, sq.extg.bounded t⟩ : BoundedFilteredComplex C) :=
  sq.essFilteredComplexMorphism t

/-- 交换方块无条件诱导从 `f`-ESS 到 `g`-ESS 的谱序列态射。该态射在
每一页都与微分交换；它是稳定页推论所需的未移位自然性基础。 -/
private noncomputable def HomotopyCommSquare.essSpectralSequenceMorphismRaw
    {ι : Type w} [AddCommGroup ι] [DecidableEq ι] {ω : Type w}
    {E₁ E₂ E₃ E₄ : SpectralSequence C ι}
    {A₁ A₂ A₃ A₄ : ω → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (sq : HomotopyCommSquare conv₁ conv₂ conv₃ conv₄) (t : ω) :
    (⟨sq.extf.complex t, sq.extf.bounded t⟩ : BoundedFilteredComplex C).FC.toSpectralSequence
        (⟨sq.extf.complex t, sq.extf.bounded t⟩ : BoundedFilteredComplex C).bnd ⟶
      (⟨sq.extg.complex t, sq.extg.bounded t⟩ : BoundedFilteredComplex C).FC.toSpectralSequence
        (⟨sq.extg.complex t, sq.extg.bounded t⟩ : BoundedFilteredComplex C).bnd :=
  FilteredComplexMorphism.toSpectralSequenceMorphism
    (sq.essBoundedMorphism t)

/-- `essSpectralSequenceMorphismRaw` 按 `BoundedExtensionSS.ess` 的名称重写
后的公开版本。 -/
noncomputable def HomotopyCommSquare.essSpectralSequenceMorphism
    {ι : Type w} [AddCommGroup ι] [DecidableEq ι] {ω : Type w}
    {E₁ E₂ E₃ E₄ : SpectralSequence C ι}
    {A₁ A₂ A₃ A₄ : ω → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (sq : HomotopyCommSquare conv₁ conv₂ conv₃ conv₄) (t : ω) :
    sq.extf.ess t ⟶ sq.extg.ess t := by
  change
    (sq.extf.complex t).toSpectralSequence (sq.extf.bounded t) ⟶
      (sq.extg.complex t).toSpectralSequence (sq.extg.bounded t)
  exact sq.essSpectralSequenceMorphismRaw t

/-- 交换方块诱导的 ESS 页映射与每一页微分交换。 -/
theorem HomotopyCommSquare.essPageMap_comm
    {ι : Type w} [AddCommGroup ι] [DecidableEq ι] {ω : Type w}
    {E₁ E₂ E₃ E₄ : SpectralSequence C ι}
    {A₁ A₂ A₃ A₄ : ω → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (sq : HomotopyCommSquare conv₁ conv₂ conv₃ conv₄)
    (t : ω) (r : ℤ) (k : ℤ × ℤ) :
    (sq.essSpectralSequenceMorphism t).comm_d r k := by
  exact (sq.essSpectralSequenceMorphism t).comm_d r k

end KIPBase.SpectralSequence
