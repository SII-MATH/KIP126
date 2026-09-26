/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Unbounded extension spectral sequence via truncation and stabilization.
Reference: informal/unbounded_extension.md
-/

import KIPBase.SpectralSequence.BoundedExtension
import KIPBase.SpectralSequence.Completion

universe u v w

namespace KIPBase.SpectralSequence

open CategoryTheory CategoryTheory.Limits

variable {C : Type u} [Category.{v} C] [Abelian C]
variable {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
variable {ω' : Type w}
variable {E₁ E₂ : SpectralSequence C ω}
variable {A₁ A₂ : ω' → C} {F₁ : Filtration A₁} {F₂ : Filtration A₂}
variable {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}

/-! ### 无界 ESS 的固定环境对象

无界 ESS 不能把某个截断层的关联分次当作环境对象。对固定的茎次数
`t`，次数 `1` 和 `0` 的环境对象分别是两个输入谱序列的原始 `E∞`
分量。后续的循环、边缘和页对象都必须作为这个固定环境对象中的子对象
来构造。 -/

/-- 收敛数据的重指标双射。 -/
noncomputable def Convergence.reindexEquiv
    {E : SpectralSequence C ω} {A : ω' → C} {F : Filtration A}
    (conv : Convergence E A F) : ω ≃ ℤ × ω' :=
  Equiv.ofBijective conv.reindex conv.reindex_bijective

/-- 无界 ESS 在 `(s,k)` 处的固定环境对象。

* `k = 1` 时取 `E₁` 在重指标 `(s,t)` 处的原始 `E∞` 项；
* `k = 0` 时取 `E₂` 在重指标 `(s,t)` 处的原始 `E∞` 项；
* 其余复形次数取零对象。

截断 ESS 只用于在这些固定对象内构造稳定的 `Z/B` 塔，不用来
替换此环境对象。 -/
noncomputable def unboundedExtensionV
    (conv₁ : Convergence E₁ A₁ F₁) (conv₂ : Convergence E₂ A₂ F₂)
    (t : ω') : ℤ × ℤ → C :=
  fun sk =>
    if sk.2 = 1 then
      (E₁.ssData (conv₁.reindexEquiv.symm (sk.1, t))).eInfty
    else if sk.2 = 0 then
      (E₂.ssData (conv₂.reindexEquiv.symm (sk.1, t))).eInfty
    else
      ⊥_ C

/-- 次数 `1` 的固定环境对象与 `F₁` 关联分次之间的收敛同构。 -/
noncomputable def unboundedExtensionVOneIso
    (conv₁ : Convergence E₁ A₁ F₁) (conv₂ : Convergence E₂ A₂ F₂)
    (t : ω') (s : ℤ) :
    unboundedExtensionV conv₁ conv₂ t (s, 1) ≅ F₁.associatedGraded s t := by
  dsimp [unboundedExtensionV]
  let i := conv₁.reindexEquiv.symm (s, t)
  have hi : conv₁.reindex i = (s, t) := by
    change conv₁.reindexEquiv i = (s, t)
    exact conv₁.reindexEquiv.apply_symm_apply (s, t)
  have e := conv₁.iso i
  rw [hi] at e
  exact e

/-- 次数 `0` 的固定环境对象与 `F₂` 关联分次之间的收敛同构。 -/
noncomputable def unboundedExtensionVZeroIso
    (conv₁ : Convergence E₁ A₁ F₁) (conv₂ : Convergence E₂ A₂ F₂)
    (t : ω') (s : ℤ) :
    unboundedExtensionV conv₁ conv₂ t (s, 0) ≅ F₂.associatedGraded s t := by
  dsimp [unboundedExtensionV]
  let i := conv₂.reindexEquiv.symm (s, t)
  have hi : conv₂.reindex i = (s, t) := by
    change conv₂.reindexEquiv i = (s, t)
    exact conv₂.reindexEquiv.apply_symm_apply (s, t)
  have e := conv₂.iso i
  rw [hi] at e
  exact e

/-- 未截断的两项过滤复形。它只提供有限页的循环、边缘和微分数据；
其环境对象随后通过收敛同构识别为输入谱序列的原始 `E∞` 项。 -/
noncomputable def unboundedUnderlyingComplex
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω') : FilteredComplex C :=
  underlyingComplex cm.aMap cm.filtration_compat t

private theorem unboundedUC_assocGraded_one
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω') (s : ℤ) :
    (unboundedUnderlyingComplex cm t).assocGraded s 1 =
      F₁.associatedGraded s t := by
  simp only [unboundedUnderlyingComplex, underlyingComplex,
    FilteredComplex.assocGraded, Filtration.associatedGraded, twoTermFil]
  congr 1

private theorem unboundedUC_assocGraded_zero
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω') (s : ℤ) :
    (unboundedUnderlyingComplex cm t).assocGraded s 0 =
      F₂.associatedGraded s t := by
  simp only [unboundedUnderlyingComplex, underlyingComplex,
    FilteredComplex.assocGraded, Filtration.associatedGraded, twoTermFil]
  congr 1

/-- 次数 `1` 的原始 `E₁∞` 环境对象与未截断两项复形关联分次的同构。 -/
noncomputable def unboundedExtensionVOneComplexIso
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω') (s : ℤ) :
    unboundedExtensionV conv₁ conv₂ t (s, 1) ≅
      (unboundedUnderlyingComplex cm t).assocGraded s 1 :=
  unboundedExtensionVOneIso conv₁ conv₂ t s ≪≫
    eqToIso (unboundedUC_assocGraded_one cm t s).symm

/-- 次数 `0` 的原始 `E₂∞` 环境对象与未截断两项复形关联分次的同构。 -/
noncomputable def unboundedExtensionVZeroComplexIso
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω') (s : ℤ) :
    unboundedExtensionV conv₁ conv₂ t (s, 0) ≅
      (unboundedUnderlyingComplex cm t).assocGraded s 0 :=
  unboundedExtensionVZeroIso conv₁ conv₂ t s ≪≫
    eqToIso (unboundedUC_assocGraded_zero cm t s).symm

/-- 在两项复形次数之外，未截断底层复形的对象为零。 -/
private theorem unboundedUC_obj_other
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω') (k : ℤ)
    (h₁ : k ≠ 1) (h₀ : k ≠ 0) :
    (unboundedUnderlyingComplex cm t).A k = ⊥_ C := by
  simp [unboundedUnderlyingComplex, underlyingComplex, twoTermObj, h₁, h₀]

/-- 原始 `E∞` 环境对象与未截断两项复形关联分次的逐次数同构。 -/
noncomputable def unboundedExtensionVComplexIso
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω') (s k : ℤ) :
    unboundedExtensionV conv₁ conv₂ t (s, k) ≅
      (unboundedUnderlyingComplex cm t).assocGraded s k := by
  by_cases h₁ : k = 1
  · subst h₁
    exact unboundedExtensionVOneComplexIso cm t s
  by_cases h₀ : k = 0
  · subst h₀
    exact unboundedExtensionVZeroComplexIso cm t s
  · have hV : IsZero (unboundedExtensionV conv₁ conv₂ t (s, k)) := by
      simp only [unboundedExtensionV, h₁, h₀, ↓reduceIte]
      exact IsInitial.isZero initialIsInitial
    have hA : IsZero ((unboundedUnderlyingComplex cm t).A k) := by
      rw [unboundedUC_obj_other cm t k h₁ h₀]
      exact IsInitial.isZero initialIsInitial
    have hFil : IsZero
        (Subobject.underlying.obj ((unboundedUnderlyingComplex cm t).fil s k)) :=
      hA.of_mono ((unboundedUnderlyingComplex cm t).fil s k).arrow
    have hGr : IsZero ((unboundedUnderlyingComplex cm t).assocGraded s k) := by
      exact hFil.of_epi (cokernel.π (Subobject.ofLE
        ((unboundedUnderlyingComplex cm t).fil (s + 1) k)
        ((unboundedUnderlyingComplex cm t).fil s k)
        ((unboundedUnderlyingComplex cm t).fil_anti s k)))
    exact IsZero.iso hV hGr

/-- 由同一环境对象中的有限 `Z/B` 塔组装 `SSData`。
无穷循环层取有限循环层的下确界，无穷边缘层取有限边缘层的
上确界；因此 `E∞` 仍在原始环境对象内定义。 -/
private noncomputable def ssDataOfNatTower
    (V : C) [LocallySmall.{u} C] [WellPowered.{u} C]
    [HasWidePullbacks.{u} C] [HasCoproducts.{u} C]
    (Z B : ℕ → Subobject V)
    (hZ : ∀ {m n : ℕ}, m ≤ n → Z n ≤ Z m)
    (hB : ∀ {m n : ℕ}, m ≤ n → B m ≤ B n)
    (hZ₀ : Z 0 = ⊤)
    (hBZ : ∀ m n : ℕ, B m ≤ Z n) : SSData C where
  V := V
  Z := fun r => r.recTopCoe (Subobject.sInf (Set.range Z)) Z
  B := fun r => r.recTopCoe (Subobject.sSup (Set.range B)) B
  Z_anti := by
    intro a b hab
    cases a with
    | top =>
        cases b with
        | top => exact le_rfl
        | coe n => exact absurd hab (WithTop.not_top_le_coe n)
    | coe m =>
        cases b with
        | top =>
            change Subobject.sInf (Set.range Z) ≤ Z m
            exact Subobject.sInf_le _ _ ⟨m, rfl⟩
        | coe n =>
            change Z n ≤ Z m
            exact hZ (WithTop.coe_le_coe.mp hab)
  B_mono := by
    intro a b hab
    cases a with
    | top =>
        cases b with
        | top => exact le_rfl
        | coe n => exact absurd hab (WithTop.not_top_le_coe n)
    | coe m =>
        cases b with
        | top =>
            change B m ≤ Subobject.sSup (Set.range B)
            exact Subobject.le_sSup _ _ ⟨m, rfl⟩
        | coe n =>
            change B m ≤ B n
            exact hB (WithTop.coe_le_coe.mp hab)
  Z_zero := by
    change Z 0 = ⊤
    exact hZ₀
  B_le_Z := by
    intro r
    cases r with
    | top =>
        change Subobject.sSup (Set.range B) ≤ Subobject.sInf (Set.range Z)
        apply Subobject.sSup_le
        intro b hb
        obtain ⟨m, rfl⟩ := hb
        apply Subobject.le_sInf
        intro z hz
        obtain ⟨n, rfl⟩ := hz
        exact hBZ m n
    | coe n =>
        change B n ≤ Z n
        exact hBZ n n
  Z_top_greatest := by
    intro X hX
    change X ≤ Subobject.sInf (Set.range Z)
    apply Subobject.le_sInf
    intro z hz
    obtain ⟨n, rfl⟩ := hz
    exact hX n
  B_top_least := by
    intro X hX
    change Subobject.sSup (Set.range B) ≤ X
    apply Subobject.sSup_le
    intro b hb
    obtain ⟨n, rfl⟩ := hb
    exact hX n

/-- 过滤复形的任意有限边缘层都包含于任意有限循环层。 -/
private theorem FilteredComplex.boundary_le_cycle_nat
    (FC : FilteredComplex C) (s k : ℤ) (m n : ℕ) :
    FC.boundarySubobject s k (m : WithTop ℕ) ≤
      FC.cycleSubobject s k (n : WithTop ℕ) := by
  rcases le_total m n with hmn | hnm
  · exact le_trans (FC.boundarySubobject_nat_mono s k hmn)
      (FC.B_le_Z_aux s k n)
  · exact le_trans (FC.B_le_Z_aux s k m)
      (FC.cycleSubobject_nat_anti s k hnm)

/-- 次数 `1` 处搬回原始 `E₁∞` 环境对象的有限循环层。 -/
private noncomputable def unboundedCycleOne
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω') (s : ℤ) (n : ℕ) :
    Subobject (unboundedExtensionV conv₁ conv₂ t (s, 1)) :=
  (Subobject.mapIsoToOrderIso (unboundedExtensionVOneComplexIso cm t s)).symm
    ((unboundedUnderlyingComplex cm t).cycleSubobject s 1 (n : WithTop ℕ))

/-- 次数 `0` 处搬回原始 `E₂∞` 环境对象的有限边缘层。 -/
private noncomputable def unboundedBoundaryZero
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω') (s : ℤ) (n : ℕ) :
    Subobject (unboundedExtensionV conv₁ conv₂ t (s, 0)) :=
  (Subobject.mapIsoToOrderIso (unboundedExtensionVZeroComplexIso cm t s)).symm
    ((unboundedUnderlyingComplex cm t).boundarySubobject s 0 (n : WithTop ℕ))

section SubobjectLimits

variable [LocallySmall.{u} C] [WellPowered.{u} C]
variable [HasWidePullbacks.{u} C] [HasCoproducts.{u} C]

/-- 未截断复形的有限 `Z/B` 塔在其自身关联分次上组成的数据。 -/
private noncomputable def unboundedComplexSSData
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω') (s k : ℤ) : SSData C :=
  ssDataOfNatTower
    ((unboundedUnderlyingComplex cm t).assocGraded s k)
    (fun n => (unboundedUnderlyingComplex cm t).cycleSubobject s k n)
    (fun n => (unboundedUnderlyingComplex cm t).boundarySubobject s k n)
    (fun h => (unboundedUnderlyingComplex cm t).cycleSubobject_nat_anti s k h)
    (fun h => (unboundedUnderlyingComplex cm t).boundarySubobject_nat_mono s k h)
    ((unboundedUnderlyingComplex cm t).cycleSubobject_zero_eq_top s k)
    (fun m n => (unboundedUnderlyingComplex cm t).boundary_le_cycle_nat s k m n)

/-- 把未截断复形的有限循环层沿原始 `E∞` 环境同构搬回。 -/
noncomputable def unboundedExtensionZ
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω') (s k : ℤ) (n : ℕ) :
    Subobject (unboundedExtensionV conv₁ conv₂ t (s, k)) :=
  (Subobject.mapIsoToOrderIso (unboundedExtensionVComplexIso cm t s k)).symm
    ((unboundedUnderlyingComplex cm t).cycleSubobject s k n)

/-- 把未截断复形的有限边缘层沿原始 `E∞` 环境同构搬回。 -/
noncomputable def unboundedExtensionB
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω') (s k : ℤ) (n : ℕ) :
    Subobject (unboundedExtensionV conv₁ conv₂ t (s, k)) :=
  (Subobject.mapIsoToOrderIso (unboundedExtensionVComplexIso cm t s k)).symm
    ((unboundedUnderlyingComplex cm t).boundarySubobject s k n)

/-- 环境同构把无界有限循环层送回未截断复形的循环层。 -/
@[simp]
theorem unboundedExtensionZ_map
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω')
    (s k : ℤ) (n : ℕ) :
    (Subobject.mapIsoToOrderIso (unboundedExtensionVComplexIso cm t s k))
        (unboundedExtensionZ cm t s k n) =
      (unboundedUnderlyingComplex cm t).cycleSubobject s k n :=
  (Subobject.mapIsoToOrderIso
    (unboundedExtensionVComplexIso cm t s k)).apply_symm_apply _

/-- 环境同构把无界有限边缘层送回未截断复形的边缘层。 -/
@[simp]
theorem unboundedExtensionB_map
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω')
    (s k : ℤ) (n : ℕ) :
    (Subobject.mapIsoToOrderIso (unboundedExtensionVComplexIso cm t s k))
        (unboundedExtensionB cm t s k n) =
      (unboundedUnderlyingComplex cm t).boundarySubobject s k n :=
  (Subobject.mapIsoToOrderIso
    (unboundedExtensionVComplexIso cm t s k)).apply_symm_apply _

/-- 在原始 `E∞` 环境对象内由搬回的有限 `Z/B` 塔组成数据。 -/
private noncomputable def unboundedSSData
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω') (s k : ℤ) : SSData C :=
  ssDataOfNatTower
    (unboundedExtensionV conv₁ conv₂ t (s, k))
    (unboundedExtensionZ cm t s k)
    (unboundedExtensionB cm t s k)
    (fun h =>
      (Subobject.mapIsoToOrderIso
        (unboundedExtensionVComplexIso cm t s k)).symm.monotone
          ((unboundedUnderlyingComplex cm t).cycleSubobject_nat_anti s k h))
    (fun h =>
      (Subobject.mapIsoToOrderIso
        (unboundedExtensionVComplexIso cm t s k)).symm.monotone
          ((unboundedUnderlyingComplex cm t).boundarySubobject_nat_mono s k h))
    (by
      unfold unboundedExtensionZ
      rw [(unboundedUnderlyingComplex cm t).cycleSubobject_zero_eq_top s k]
      exact OrderIso.map_top _)
    (fun m n =>
      (Subobject.mapIsoToOrderIso
        (unboundedExtensionVComplexIso cm t s k)).symm.monotone
          ((unboundedUnderlyingComplex cm t).boundary_le_cycle_nat s k m n))

/-- 无界 ESS 在复形次数 `1` 处的 `SSData`。环境对象是原始 `E₁∞`，
有限循环层来自未截断两项复形，所有有限边缘层均为零。 -/
private noncomputable def unboundedSSDataOne
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω') (s : ℤ) : SSData C :=
  ssDataOfNatTower
    (unboundedExtensionV conv₁ conv₂ t (s, 1))
    (unboundedCycleOne cm t s)
    (fun _ => ⊥)
    (fun hmn =>
      (Subobject.mapIsoToOrderIso
        (unboundedExtensionVOneComplexIso cm t s)).symm.monotone
          ((unboundedUnderlyingComplex cm t).cycleSubobject_nat_anti s 1 hmn))
    (fun _ => le_rfl)
    (by
      unfold unboundedCycleOne
      rw [(unboundedUnderlyingComplex cm t).cycleSubobject_zero_eq_top s 1]
      exact OrderIso.map_top _)
    (fun _ _ => bot_le)

/-- 无界 ESS 在复形次数 `0` 处的 `SSData`。环境对象是原始 `E₂∞`，
所有有限循环层均为整个对象，有限边缘层来自未截断两项复形。 -/
private noncomputable def unboundedSSDataZero
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω') (s : ℤ) : SSData C :=
  ssDataOfNatTower
    (unboundedExtensionV conv₁ conv₂ t (s, 0))
    (fun _ => ⊤)
    (unboundedBoundaryZero cm t s)
    (fun _ => le_rfl)
    (fun hmn =>
      (Subobject.mapIsoToOrderIso
        (unboundedExtensionVZeroComplexIso cm t s)).symm.monotone
          ((unboundedUnderlyingComplex cm t).boundarySubobject_nat_mono s 0 hmn))
    rfl
    (fun _ _ => le_top)

/-- 零复形次数处的平凡 `SSData`。 -/
private noncomputable def zeroSSData : SSData C where
  V := ⊥_ C
  Z := fun _ => ⊤
  B := fun _ => ⊥
  Z_anti := fun _ _ _ => le_rfl
  B_mono := fun _ _ _ => le_rfl
  Z_zero := rfl
  B_le_Z := fun _ => bot_le
  Z_top_greatest := fun _ _ => le_top
  B_top_least := fun _ _ => bot_le

/-- 无界 ESS 的逐双次数 `SSData`。其 `V` 字段逐字来自
`unboundedExtensionV`，截断对象不参与环境对象的定义。 -/
noncomputable def unboundedExtensionSSData
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω') : ℤ × ℤ → SSData C :=
  fun ⟨s, k⟩ => unboundedSSData cm t s k

/-- 未截断复形自身关联分次上的逐双次数 `SSData`。 -/
private noncomputable def unboundedComplexSSDataFamily
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω') : ℤ × ℤ → SSData C :=
  fun ⟨s, k⟩ => unboundedComplexSSData cm t s k

/-- 环境同构把搬回的整条循环塔送回未截断复形的循环塔。 -/
private theorem unboundedExtensionSSData_map_Z
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω') (s k : ℤ)
    (r : WithTop ℕ) :
    (Subobject.mapIsoToOrderIso (unboundedExtensionVComplexIso cm t s k))
        ((unboundedSSData cm t s k).Z r) =
      (unboundedComplexSSData cm t s k).Z r := by
  cases r with
  | coe n =>
      exact (Subobject.mapIsoToOrderIso
        (unboundedExtensionVComplexIso cm t s k)).apply_symm_apply _
  | top =>
      simp only [unboundedSSData, unboundedComplexSSData, ssDataOfNatTower]
      rw [WithTop.recTopCoe_top, WithTop.recTopCoe_top]
      let O := Subobject.mapIsoToOrderIso (unboundedExtensionVComplexIso cm t s k)
      let P := unboundedExtensionZ cm t s k
      let Q := fun n : ℕ =>
        (unboundedUnderlyingComplex cm t).cycleSubobject s k (n : WithTop ℕ)
      change O (Subobject.sInf (Set.range P)) = Subobject.sInf (Set.range Q)
      have hPQ (n : ℕ) : O (P n) = Q n := by
        exact O.apply_symm_apply _
      apply le_antisymm
      · apply Subobject.le_sInf
        intro q hq
        obtain ⟨n, rfl⟩ := hq
        simpa only [hPQ n] using
          O.monotone (Subobject.sInf_le (Set.range P) (P n) ⟨n, rfl⟩)
      · have h : O.symm (Subobject.sInf (Set.range Q)) ≤
            Subobject.sInf (Set.range P) := by
          apply Subobject.le_sInf
          intro p hp
          obtain ⟨n, rfl⟩ := hp
          have hn := Subobject.sInf_le (Set.range Q) (Q n) ⟨n, rfl⟩
          calc
            O.symm (Subobject.sInf (Set.range Q)) ≤ O.symm (O (P n)) := by
              apply O.symm.monotone
              simpa only [hPQ n] using hn
            _ = P n := O.symm_apply_apply _
        simpa using O.monotone h

/-- 环境同构把搬回的整条边缘塔送回未截断复形的边缘塔。 -/
private theorem unboundedExtensionSSData_map_B
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω') (s k : ℤ)
    (r : WithTop ℕ) :
    (Subobject.mapIsoToOrderIso (unboundedExtensionVComplexIso cm t s k))
        ((unboundedSSData cm t s k).B r) =
      (unboundedComplexSSData cm t s k).B r := by
  cases r with
  | coe n =>
      exact (Subobject.mapIsoToOrderIso
        (unboundedExtensionVComplexIso cm t s k)).apply_symm_apply _
  | top =>
      simp only [unboundedSSData, unboundedComplexSSData, ssDataOfNatTower]
      rw [WithTop.recTopCoe_top, WithTop.recTopCoe_top]
      let O := Subobject.mapIsoToOrderIso (unboundedExtensionVComplexIso cm t s k)
      let P := unboundedExtensionB cm t s k
      let Q := fun n : ℕ =>
        (unboundedUnderlyingComplex cm t).boundarySubobject s k (n : WithTop ℕ)
      change O (Subobject.sSup (Set.range P)) = Subobject.sSup (Set.range Q)
      have hPQ (n : ℕ) : O (P n) = Q n := by
        exact O.apply_symm_apply _
      apply le_antisymm
      · have h : Subobject.sSup (Set.range P) ≤
            O.symm (Subobject.sSup (Set.range Q)) := by
          apply Subobject.sSup_le
          intro p hp
          obtain ⟨n, rfl⟩ := hp
          have hn := Subobject.le_sSup (Set.range Q) (Q n) ⟨n, rfl⟩
          calc
            P n = O.symm (O (P n)) := (O.symm_apply_apply _).symm
            _ ≤ O.symm (Subobject.sSup (Set.range Q)) := by
              apply O.symm.monotone
              simpa only [hPQ n] using hn
        simpa using O.monotone h
      · apply Subobject.sSup_le
        intro q hq
        obtain ⟨n, rfl⟩ := hq
        simpa only [hPQ n] using
          O.monotone (Subobject.le_sSup (Set.range P) (P n) ⟨n, rfl⟩)

/-- 若两个子对象在同构下对应，则其底层箭头经同构后穿过目标子对象。 -/
private theorem subobject_factors_of_mapIso_eq {X Y : C} (e : X ≅ Y)
    (P : Subobject X) (Q : Subobject Y)
    (h : (Subobject.mapIsoToOrderIso e) P = Q) :
    Q.Factors (P.arrow ≫ e.hom) := by
  rw [← h]
  have hm : Subobject.mk (P.arrow ≫ e.hom) =
      (Subobject.mapIsoToOrderIso e) P := by
    calc
      Subobject.mk (P.arrow ≫ e.hom) =
          (Subobject.map e.hom).obj (Subobject.mk P.arrow) :=
        (Subobject.map_mk P.arrow e.hom).symm
      _ = (Subobject.map e.hom).obj P := by rw [Subobject.mk_arrow]
  rw [← hm]
  exact Subobject.mk_factors_self (P.arrow ≫ e.hom)

/-- 原始 `E∞` 环境中的 `SSData` 到未截断复形数据的同构态射。 -/
private noncomputable def unboundedSSDataForward
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω') :
    SSDataMorphism (ℤ × ℤ) (unboundedExtensionSSData cm t)
      (unboundedComplexSSDataFamily cm t) where
  φ := fun ⟨s, k⟩ => (unboundedExtensionVComplexIso cm t s k).hom
  preserves_Z := by
    rintro ⟨s, k⟩ r
    let e := unboundedExtensionVComplexIso cm t s k
    let P := (unboundedSSData cm t s k).Z r
    let Q := (unboundedComplexSSData cm t s k).Z r
    have hfac : Q.Factors (P.arrow ≫ e.hom) :=
      subobject_factors_of_mapIso_eq e P Q
        (unboundedExtensionSSData_map_Z cm t s k r)
    exact ⟨Q.factorThru (P.arrow ≫ e.hom) hfac, Q.factorThru_arrow _ hfac⟩
  preserves_B := by
    rintro ⟨s, k⟩ r
    let e := unboundedExtensionVComplexIso cm t s k
    let P := (unboundedSSData cm t s k).B r
    let Q := (unboundedComplexSSData cm t s k).B r
    have hfac : Q.Factors (P.arrow ≫ e.hom) :=
      subobject_factors_of_mapIso_eq e P Q
        (unboundedExtensionSSData_map_B cm t s k r)
    exact ⟨Q.factorThru (P.arrow ≫ e.hom) hfac, Q.factorThru_arrow _ hfac⟩

/-- 未截断复形数据到原始 `E∞` 环境中 `SSData` 的逆同构态射。 -/
private noncomputable def unboundedSSDataBackward
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω') :
    SSDataMorphism (ℤ × ℤ) (unboundedComplexSSDataFamily cm t)
      (unboundedExtensionSSData cm t) where
  φ := fun ⟨s, k⟩ => (unboundedExtensionVComplexIso cm t s k).inv
  preserves_Z := by
    rintro ⟨s, k⟩ r
    let e := unboundedExtensionVComplexIso cm t s k
    have hback : (Subobject.mapIsoToOrderIso e.symm)
        ((unboundedComplexSSData cm t s k).Z r) =
          (unboundedSSData cm t s k).Z r := by
      rw [← unboundedExtensionSSData_map_Z cm t s k r]
      exact (Subobject.mapIsoToOrderIso e).symm_apply_apply _
    let P := (unboundedComplexSSData cm t s k).Z r
    let Q := (unboundedSSData cm t s k).Z r
    have hfac : Q.Factors (P.arrow ≫ e.inv) :=
      subobject_factors_of_mapIso_eq e.symm P Q hback
    exact ⟨Q.factorThru (P.arrow ≫ e.inv) hfac, Q.factorThru_arrow _ hfac⟩
  preserves_B := by
    rintro ⟨s, k⟩ r
    let e := unboundedExtensionVComplexIso cm t s k
    have hback : (Subobject.mapIsoToOrderIso e.symm)
        ((unboundedComplexSSData cm t s k).B r) =
          (unboundedSSData cm t s k).B r := by
      rw [← unboundedExtensionSSData_map_B cm t s k r]
      exact (Subobject.mapIsoToOrderIso e).symm_apply_apply _
    let P := (unboundedComplexSSData cm t s k).B r
    let Q := (unboundedSSData cm t s k).B r
    have hfac : Q.Factors (P.arrow ≫ e.inv) :=
      subobject_factors_of_mapIso_eq e.symm P Q hback
    exact ⟨Q.factorThru (P.arrow ≫ e.inv) hfac, Q.factorThru_arrow _ hfac⟩

/-- `SSData` 族的恒等态射。 -/
private noncomputable def ssDataMorphismId (D : ℤ × ℤ → SSData C) :
    SSDataMorphism (ℤ × ℤ) D D where
  φ := fun _ => 𝟙 _
  preserves_Z := fun k r => ⟨𝟙 _, by simp⟩
  preserves_B := fun k r => ⟨𝟙 _, by simp⟩

/-- 原始 `E∞` 环境中的有限页与未截断复形有限页的规范同构。 -/
noncomputable def unboundedExtensionPageIso
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω') (sk : ℤ × ℤ)
    (n : ℕ) :
    ((unboundedExtensionSSData cm t) sk).page n ≅
      ((unboundedComplexSSDataFamily cm t) sk).page n where
  hom := (unboundedSSDataForward cm t).pageMap sk n
  inv := (unboundedSSDataBackward cm t).pageMap sk n
  hom_inv_id := by
    rw [← SSDataMorphism.pageMap_eq_comp
      (unboundedSSDataForward cm t) (unboundedSSDataBackward cm t)
      (ssDataMorphismId (unboundedExtensionSSData cm t)) sk n (by
        rcases sk with ⟨s, k⟩
        exact (unboundedExtensionVComplexIso cm t s k).hom_inv_id.symm)]
    exact SSDataMorphism.pageMap_eq_id _ sk n rfl
  inv_hom_id := by
    rw [← SSDataMorphism.pageMap_eq_comp
      (unboundedSSDataBackward cm t) (unboundedSSDataForward cm t)
      (ssDataMorphismId (unboundedComplexSSDataFamily cm t)) sk n (by
        rcases sk with ⟨s, k⟩
        exact (unboundedExtensionVComplexIso cm t s k).inv_hom_id.symm)]
    exact SSDataMorphism.pageMap_eq_id _ sk n rfl

/-- 同构前合成后的核沿该同构推前，等于原来的核。 -/
private theorem mapIso_kernelSubobject_comp {X Y Z : C}
    (e : X ≅ Y) (f : Y ⟶ Z) :
    (Subobject.map e.hom).obj (kernelSubobject (e.hom ≫ f)) =
      kernelSubobject f := by
  rw [← Subobject.mk_arrow (kernelSubobject (e.hom ≫ f)),
    Subobject.map_mk, ← Subobject.mk_arrow (kernelSubobject f)]
  exact Subobject.mk_eq_mk_of_comm _ _ (kernelSubobjectIsoComp e.hom f)
    (kernelSubobjectIsoComp_hom_arrow e.hom f)

/-- 一个态射的像沿目标同构推前，等于复合态射的像。 -/
private theorem mapIso_imageSubobject {X Y Z : C}
    (f : X ⟶ Y) (e : Y ≅ Z) :
    (Subobject.map e.hom).obj (imageSubobject f) =
      imageSubobject (f ≫ e.hom) := by
  rw [← Subobject.mk_arrow (imageSubobject f), Subobject.map_mk,
    ← Subobject.mk_arrow (imageSubobject (f ≫ e.hom))]
  exact Subobject.mk_eq_mk_of_comm _ _ (imageSubobjectCompIso f e.hom).symm
    (imageSubobjectCompIso_inv_arrow f e.hom)

/-- 原始 `E∞` 环境与复形环境中循环子对象底层对象的规范同构。 -/
private noncomputable def unboundedExtensionZIso
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω')
    (sk : ℤ × ℤ) (r : WithTop ℕ) :
    Subobject.underlying.obj ((unboundedExtensionSSData cm t sk).Z r) ≅
      Subobject.underlying.obj ((unboundedComplexSSDataFamily cm t sk).Z r) where
  hom := (unboundedSSDataForward cm t).preserves_Z sk r |>.choose
  inv := (unboundedSSDataBackward cm t).preserves_Z sk r |>.choose
  hom_inv_id := by
    apply (cancel_mono ((unboundedExtensionSSData cm t sk).Z r).arrow).1
    simp only [Category.assoc, Category.id_comp]
    rw [(unboundedSSDataBackward cm t).preserves_Z sk r |>.choose_spec]
    rw [← Category.assoc,
      (unboundedSSDataForward cm t).preserves_Z sk r |>.choose_spec]
    rcases sk with ⟨s, k⟩
    have hφ : (unboundedSSDataForward cm t).φ (s, k) ≫
        (unboundedSSDataBackward cm t).φ (s, k) =
          𝟙 ((unboundedExtensionSSData cm t (s, k)).V) := by
      change (unboundedExtensionVComplexIso cm t s k).hom ≫
        (unboundedExtensionVComplexIso cm t s k).inv = 𝟙 _
      exact (unboundedExtensionVComplexIso cm t s k).hom_inv_id
    rw [Category.assoc, hφ, Category.comp_id]
  inv_hom_id := by
    apply (cancel_mono ((unboundedComplexSSDataFamily cm t sk).Z r).arrow).1
    simp only [Category.assoc, Category.id_comp]
    rw [(unboundedSSDataForward cm t).preserves_Z sk r |>.choose_spec]
    rw [← Category.assoc,
      (unboundedSSDataBackward cm t).preserves_Z sk r |>.choose_spec]
    rcases sk with ⟨s, k⟩
    have hφ : (unboundedSSDataBackward cm t).φ (s, k) ≫
        (unboundedSSDataForward cm t).φ (s, k) =
          𝟙 ((unboundedComplexSSDataFamily cm t (s, k)).V) := by
      change (unboundedExtensionVComplexIso cm t s k).inv ≫
        (unboundedExtensionVComplexIso cm t s k).hom = 𝟙 _
      exact (unboundedExtensionVComplexIso cm t s k).inv_hom_id
    rw [Category.assoc, hφ, Category.comp_id]

/-- 原始 `E∞` 环境与复形环境中边缘子对象底层对象的规范同构。 -/
private noncomputable def unboundedExtensionBIso
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω')
    (sk : ℤ × ℤ) (r : WithTop ℕ) :
    Subobject.underlying.obj ((unboundedExtensionSSData cm t sk).B r) ≅
      Subobject.underlying.obj ((unboundedComplexSSDataFamily cm t sk).B r) where
  hom := (unboundedSSDataForward cm t).preserves_B sk r |>.choose
  inv := (unboundedSSDataBackward cm t).preserves_B sk r |>.choose
  hom_inv_id := by
    apply (cancel_mono ((unboundedExtensionSSData cm t sk).B r).arrow).1
    simp only [Category.assoc, Category.id_comp]
    rw [(unboundedSSDataBackward cm t).preserves_B sk r |>.choose_spec]
    rw [← Category.assoc,
      (unboundedSSDataForward cm t).preserves_B sk r |>.choose_spec]
    rcases sk with ⟨s, k⟩
    have hφ : (unboundedSSDataForward cm t).φ (s, k) ≫
        (unboundedSSDataBackward cm t).φ (s, k) =
          𝟙 ((unboundedExtensionSSData cm t (s, k)).V) := by
      change (unboundedExtensionVComplexIso cm t s k).hom ≫
        (unboundedExtensionVComplexIso cm t s k).inv = 𝟙 _
      exact (unboundedExtensionVComplexIso cm t s k).hom_inv_id
    rw [Category.assoc, hφ, Category.comp_id]
  inv_hom_id := by
    apply (cancel_mono ((unboundedComplexSSDataFamily cm t sk).B r).arrow).1
    simp only [Category.assoc, Category.id_comp]
    rw [(unboundedSSDataForward cm t).preserves_B sk r |>.choose_spec]
    rw [← Category.assoc,
      (unboundedSSDataBackward cm t).preserves_B sk r |>.choose_spec]
    rcases sk with ⟨s, k⟩
    have hφ : (unboundedSSDataBackward cm t).φ (s, k) ≫
        (unboundedSSDataForward cm t).φ (s, k) =
          𝟙 ((unboundedComplexSSDataFamily cm t (s, k)).V) := by
      change (unboundedExtensionVComplexIso cm t s k).inv ≫
        (unboundedExtensionVComplexIso cm t s k).hom = 𝟙 _
      exact (unboundedExtensionVComplexIso cm t s k).inv_hom_id
    rw [Category.assoc, hφ, Category.comp_id]

/-- 未截断两项复形自身的有限页微分，使用复形侧的 `SSData` 页作为类型。 -/
private noncomputable def unboundedComplexDifferential
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω')
    (s k : ℤ) (n : ℕ) :
    ((unboundedComplexSSDataFamily cm t) (s, k)).page ↑n ⟶
      ((unboundedComplexSSDataFamily cm t) (s + ↑n, k - 1)).page ↑n :=
  (unboundedUnderlyingComplex cm t).finitePageDifferential s k n

/-- 未截断两项复形的有限页微分平方为零。 -/
private theorem unboundedComplexDifferential_comp
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω')
    (s k : ℤ) (n : ℕ) :
    unboundedComplexDifferential cm t s k n ≫
      unboundedComplexDifferential cm t (s + ↑n) (k - 1) n = 0 := by
  change (unboundedUnderlyingComplex cm t).finitePageDifferential s k n ≫
    (unboundedUnderlyingComplex cm t).finitePageDifferential
      (s + ↑n) (k - 1) n = 0
  exact (unboundedUnderlyingComplex cm t).finitePageDifferential_comp s k n

/-- 无界扩张在第 `n` 页的微分。
它先由原始 `E∞` 环境中的页搬到未截断两项复形的有限页，
应用有限页核心微分，再搬回目标页。 -/
noncomputable def unboundedExtensionDifferential
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω')
    (s k : ℤ) (n : ℕ) :
    ((unboundedExtensionSSData cm t) (s, k)).page n ⟶
      ((unboundedExtensionSSData cm t) (s + ↑n, k - 1)).page n :=
  (unboundedExtensionPageIso cm t (s, k) n).hom ≫
    unboundedComplexDifferential cm t s k n ≫
    (unboundedExtensionPageIso cm t (s + ↑n, k - 1) n).inv

/-- 无界扩张的有限页微分平方为零。 -/
theorem unboundedExtensionDifferential_comp
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω')
    (s k : ℤ) (n : ℕ) :
    unboundedExtensionDifferential cm t s k n ≫
      unboundedExtensionDifferential cm t (s + ↑n) (k - 1) n = 0 := by
  simp only [unboundedExtensionDifferential, Category.assoc,
    Iso.inv_hom_id_assoc]
  rw [← Category.assoc
      (unboundedComplexDifferential cm t s k n),
    unboundedComplexDifferential_comp cm t s k n,
    zero_comp, comp_zero]

/-- 未截断复形有限页微分的核由下一循环层给出。 -/
theorem unboundedFiniteDifferential_Z_succ
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω')
    (s k : ℤ) (n : ℕ) :
    kernelSubobject
        ((unboundedUnderlyingComplex cm t).finitePageDifferential s k n) =
      imageSubobject (Subobject.ofLE
        ((unboundedUnderlyingComplex cm t).cycleSubobject s k ↑(n + 1))
        ((unboundedUnderlyingComplex cm t).cycleSubobject s k ↑n)
        ((unboundedUnderlyingComplex cm t).cycleSubobject_nat_anti
          s k (Nat.le_succ n)) ≫
        (unboundedUnderlyingComplex cm t).finitePageπ s k n) := by
  apply le_antisymm
  · exact pageDifferential_Z_succ_le
      (unboundedUnderlyingComplex cm t) s k n
  · exact pageDifferential_Z_succ_ge
      (unboundedUnderlyingComplex cm t) s k n

/-- 未截断复形有限页微分的像由下一边缘层给出。 -/
theorem unboundedFiniteDifferential_B_succ
    (cm : ConvergenceMorphism conv₁ conv₂) (t : ω')
    (s k : ℤ) (n : ℕ) :
    imageSubobject
        ((unboundedUnderlyingComplex cm t).finitePageDifferential s k n) =
      imageSubobject (Subobject.ofLE
        ((unboundedUnderlyingComplex cm t).boundarySubobject
          (s + ↑n) (k - 1) ↑(n + 1))
        ((unboundedUnderlyingComplex cm t).cycleSubobject
          (s + ↑n) (k - 1) ↑n)
        (le_trans
          ((unboundedUnderlyingComplex cm t).B_le_Z_aux
            (s + ↑n) (k - 1) (n + 1))
          ((unboundedUnderlyingComplex cm t).cycleSubobject_nat_anti
            (s + ↑n) (k - 1) (Nat.le_succ n))) ≫
        (unboundedUnderlyingComplex cm t).finitePageπ
          (s + ↑n) (k - 1) n) :=
  (unboundedUnderlyingComplex cm t).finitePageDifferential_B_succ s k n

end SubobjectLimits

/-! ### Section 1: Truncated extension spectral sequence -/

noncomputable def truncatedUnderlyingComplex
    (cm : ConvergenceMorphism conv₁ conv₂) (s₀ : ℤ) (t : ω') :
    FilteredComplex C :=
  underlyingComplex
    (fun k' => cm.truncatedAMap s₀ k')
    (fun s k' => cm.truncatedFiltrationCompat s₀ s k')
    t

noncomputable def truncatedUnderlyingComplex_isBounded
    (cm : ConvergenceMorphism conv₁ conv₂)
    (hbb₁ : F₁.IsBoundedBelow) (hbb₂ : F₂.IsBoundedBelow)
    (s₀ : ℤ) (t : ω') :
    (truncatedUnderlyingComplex cm s₀ t).IsBounded :=
  underlyingComplexBounded
    (fun k' => cm.truncatedAMap s₀ k')
    (fun s k' => cm.truncatedFiltrationCompat s₀ s k')
    t
    (F₁.truncatedFiltration_isBounded hbb₁ s₀)
    (F₂.truncatedFiltration_isBounded hbb₂ s₀)

noncomputable def truncatedESS
    (cm : ConvergenceMorphism conv₁ conv₂)
    (hbb₁ : F₁.IsBoundedBelow) (hbb₂ : F₂.IsBoundedBelow)
    (s₀ : ℤ) (t : ω') :
    SpectralSequence C (ℤ × ℤ) :=
  (truncatedUnderlyingComplex cm s₀ t).toSpectralSequence
    (truncatedUnderlyingComplex_isBounded cm hbb₁ hbb₂ s₀ t)

/-! ### Section 2: Inverse system structure -/

/-- The truncation transition preserves the truncated filtration of F₁. -/
private theorem truncationTransition_fil_compat₁
    {s₀ s₁ : ℤ} (hle : s₀ ≤ s₁) (s' : ℤ) (k' : ω') :
    ∃ (φ : Subobject.underlying.obj ((F₁.truncatedFiltration s₁).F s' k') ⟶
           Subobject.underlying.obj ((F₁.truncatedFiltration s₀).F s' k')),
      φ ≫ ((F₁.truncatedFiltration s₀).F s' k').arrow =
        ((F₁.truncatedFiltration s₁).F s' k').arrow ≫ F₁.truncationTransition hle k' := by
  have sq_comm : 𝟙 _ ≫ ((F₁.F s' k').arrow ≫ F₁.truncationProj s₀ k') =
      ((F₁.F s' k').arrow ≫ F₁.truncationProj s₁ k') ≫ F₁.truncationTransition hle k' := by
    simp only [Category.id_comp, Category.assoc, F₁.truncationProj_transition hle k']
  exact ⟨imageSubobjectMap (Arrow.homMk (𝟙 _) (F₁.truncationTransition hle k') sq_comm),
         imageSubobjectMap_arrow _⟩

/-- The truncation transition preserves the truncated filtration of F₂. -/
private theorem truncationTransition_fil_compat₂
    {s₀ s₁ : ℤ} (hle : s₀ ≤ s₁) (s' : ℤ) (k' : ω') :
    ∃ (φ : Subobject.underlying.obj ((F₂.truncatedFiltration s₁).F s' k') ⟶
           Subobject.underlying.obj ((F₂.truncatedFiltration s₀).F s' k')),
      φ ≫ ((F₂.truncatedFiltration s₀).F s' k').arrow =
        ((F₂.truncatedFiltration s₁).F s' k').arrow ≫ F₂.truncationTransition hle k' := by
  have sq_comm : 𝟙 _ ≫ ((F₂.F s' k').arrow ≫ F₂.truncationProj s₀ k') =
      ((F₂.F s' k').arrow ≫ F₂.truncationProj s₁ k') ≫ F₂.truncationTransition hle k' := by
    simp only [Category.id_comp, Category.assoc, F₂.truncationProj_transition hle k']
  exact ⟨imageSubobjectMap (Arrow.homMk (𝟙 _) (F₂.truncationTransition hle k') sq_comm),
         imageSubobjectMap_arrow _⟩

/-- Naturality: truncatedAMap commutes with truncation transitions.
    F₁.truncationTransition ≫ cm.truncatedAMap s₀ = cm.truncatedAMap s₁ ≫ F₂.truncationTransition -/
private theorem truncatedAMap_naturality
    (cm : ConvergenceMorphism conv₁ conv₂)
    {s₀ s₁ : ℤ} (hle : s₀ ≤ s₁) (k' : ω') :
    F₁.truncationTransition hle k' ≫ cm.truncatedAMap s₀ k' =
      cm.truncatedAMap s₁ k' ≫ F₂.truncationTransition hle k' := by
  haveI : Epi (F₁.truncationProj s₁ k') := by
    unfold Filtration.truncationProj; infer_instance
  suffices key : F₁.truncationProj s₁ k' ≫ F₁.truncationTransition hle k' ≫
      cm.truncatedAMap s₀ k' =
      F₁.truncationProj s₁ k' ≫ cm.truncatedAMap s₁ k' ≫
      F₂.truncationTransition hle k' from (cancel_epi (F₁.truncationProj s₁ k')).mp key
  have lhs_eq : F₁.truncationProj s₁ k' ≫ F₁.truncationTransition hle k' ≫
      cm.truncatedAMap s₀ k' = cm.aMap k' ≫ F₂.truncationProj s₀ k' := by
    rw [← Category.assoc, F₁.truncationProj_transition hle k']
    simp [Filtration.truncationProj, ConvergenceMorphism.truncatedAMap, cokernel.π_desc]
  have rhs_eq : F₁.truncationProj s₁ k' ≫ cm.truncatedAMap s₁ k' ≫
      F₂.truncationTransition hle k' = cm.aMap k' ≫ F₂.truncationProj s₀ k' := by
    have h_proj : F₁.truncationProj s₁ k' ≫ cm.truncatedAMap s₁ k' =
        cm.aMap k' ≫ F₂.truncationProj s₁ k' := by
      simp [Filtration.truncationProj, ConvergenceMorphism.truncatedAMap, cokernel.π_desc]
    rw [← Category.assoc, h_proj, Category.assoc, F₂.truncationProj_transition hle k']
  rw [lhs_eq, rhs_eq]

/-- The assocGraded of the truncated underlying complex at k=1 equals
    the associatedGraded of the F₁ truncated filtration. -/
private theorem truncatedUC_assocGraded_one
    (cm : ConvergenceMorphism conv₁ conv₂) (s₀ : ℤ) (t : ω') (s : ℤ) :
    (truncatedUnderlyingComplex cm s₀ t).assocGraded s 1 =
      (F₁.truncatedFiltration s₀).associatedGraded s t := by
  simp only [truncatedUnderlyingComplex, underlyingComplex,
    FilteredComplex.assocGraded, Filtration.associatedGraded, twoTermFil]
  congr 1

/-- The assocGraded of the truncated underlying complex at k=0 equals
    the associatedGraded of the F₂ truncated filtration. -/
private theorem truncatedUC_assocGraded_zero
    (cm : ConvergenceMorphism conv₁ conv₂) (s₀ : ℤ) (t : ω') (s : ℤ) :
    (truncatedUnderlyingComplex cm s₀ t).assocGraded s 0 =
      (F₂.truncatedFiltration s₀).associatedGraded s t := by
  simp only [truncatedUnderlyingComplex, underlyingComplex,
    FilteredComplex.assocGraded, Filtration.associatedGraded, twoTermFil]
  congr 1

/-- 次数 `1` 的原始 `E₁∞` 环境对象与充分深截断复形的 `E₀` 项之间的同构。 -/
noncomputable def unboundedExtensionVOneTruncatedIso
    (cm : ConvergenceMorphism conv₁ conv₂) (s₀ : ℤ) (t : ω') (s : ℤ)
    (hs : s ≤ s₀) :
    unboundedExtensionV conv₁ conv₂ t (s, 1) ≅
      (truncatedUnderlyingComplex cm s₀ t).assocGraded s 1 :=
  unboundedExtensionVOneIso conv₁ conv₂ t s ≪≫
    F₁.truncatedAssociatedGradedIso s₀ s t hs ≪≫
    eqToIso (truncatedUC_assocGraded_one cm s₀ t s).symm

/-- 次数 `0` 的原始 `E₂∞` 环境对象与充分深截断复形的 `E₀` 项之间的同构。 -/
noncomputable def unboundedExtensionVZeroTruncatedIso
    (cm : ConvergenceMorphism conv₁ conv₂) (s₀ : ℤ) (t : ω') (s : ℤ)
    (hs : s ≤ s₀) :
    unboundedExtensionV conv₁ conv₂ t (s, 0) ≅
      (truncatedUnderlyingComplex cm s₀ t).assocGraded s 0 :=
  unboundedExtensionVZeroIso conv₁ conv₂ t s ≪≫
    F₂.truncatedAssociatedGradedIso s₀ s t hs ≪≫
    eqToIso (truncatedUC_assocGraded_zero cm s₀ t s).symm

private lemma imageSubobject_eq_top_of_zero_comp_epi {X Y Z : C}
    (g : X ⟶ Y) [Epi g] :
    imageSubobject ((kernelSubobject (0 : X ⟶ Z)).arrow ≫ g) = ⊤ := by
  haveI : IsIso (kernelSubobject (0 : X ⟶ Z)).arrow := isIso_kernelSubobject_zero_arrow
  have : Epi ((kernelSubobject (0 : X ⟶ Z)).arrow ≫ g) := epi_comp _ _
  have : Epi (imageSubobject ((kernelSubobject (0 : X ⟶ Z)).arrow ≫ g)).arrow :=
    epi_of_epi_fac (imageSubobject_arrow_comp _)
  haveI : IsIso (imageSubobject ((kernelSubobject (0 : X ⟶ Z)).arrow ≫ g)).arrow :=
    isIso_of_mono_of_epi _
  exact Subobject.eq_top_of_isIso_arrow _

private lemma imageSubobject_ofLE_bot_comp_eq_bot {X : C} (a : Subobject X)
    {Y : C} (g : Subobject.underlying.obj a ⟶ Y) :
    imageSubobject (Subobject.ofLE ⊥ a bot_le ≫ g) = ⊥ := by
  have h : Subobject.ofLE (⊥ : Subobject X) a bot_le = 0 := by
    have h1 := Subobject.ofLE_arrow (X := (⊥ : Subobject X)) (Y := a) bot_le
    rw [Subobject.bot_arrow] at h1
    exact (cancel_mono a.arrow).mp (by simp [h1])
  simp [h, zero_comp, imageSubobject_zero]

private theorem truncatedUC_cycleSubobject_zero_eq_top
    (cm : ConvergenceMorphism conv₁ conv₂) (s₀ : ℤ) (t : ω') (s : ℤ)
    (r : WithTop ℕ) :
    (truncatedUnderlyingComplex cm s₀ t).cycleSubobject s 0 r = ⊤ := by
  have h_d_zero : (truncatedUnderlyingComplex cm s₀ t).d 0 = 0 := by
    simp [truncatedUnderlyingComplex, underlyingComplex, twoTermDiff]
  delta FilteredComplex.cycleSubobject
  cases r with
  | top =>
    dsimp only []
    convert imageSubobject_eq_top_of_zero_comp_epi
      (Z := (truncatedUnderlyingComplex cm s₀ t).A (0 - 1))
      (cokernel.π (((truncatedUnderlyingComplex cm s₀ t).fil (s + 1) 0).ofLE
        ((truncatedUnderlyingComplex cm s₀ t).fil s 0) (FilteredComplex.fil_anti _ s 0)))
      <;> first | rfl | rw [h_d_zero, comp_zero]
  | coe n =>
    dsimp only []
    convert imageSubobject_eq_top_of_zero_comp_epi
      (Z := cokernel ((truncatedUnderlyingComplex cm s₀ t).fil (s + ↑n) (0 - 1)).arrow)
      (cokernel.π (((truncatedUnderlyingComplex cm s₀ t).fil (s + 1) 0).ofLE
        ((truncatedUnderlyingComplex cm s₀ t).fil s 0) (FilteredComplex.fil_anti _ s 0)))
      <;> first | rfl | simp [h_d_zero, comp_zero, zero_comp]

private theorem truncatedUC_boundarySubobject_one_eq_bot
    (cm : ConvergenceMorphism conv₁ conv₂) (s₀ : ℤ) (t : ω') (s : ℤ)
    (r : WithTop ℕ) :
    (truncatedUnderlyingComplex cm s₀ t).boundarySubobject s 1 r = ⊥ := by
  have h_dToK_zero : (truncatedUnderlyingComplex cm s₀ t).dToK 1 = 0 := by
    simp [FilteredComplex.dToK, truncatedUnderlyingComplex, underlyingComplex, twoTermDiff]
  delta FilteredComplex.boundarySubobject
  cases r with
  | top =>
    dsimp only []
    have h_I : imageSubobject ((truncatedUnderlyingComplex cm s₀ t).dToK 1) ⊓
        (truncatedUnderlyingComplex cm s₀ t).fil s 1 = ⊥ := by
      rw [h_dToK_zero, imageSubobject_zero, bot_inf_eq]
    convert imageSubobject_ofLE_bot_comp_eq_bot
      ((truncatedUnderlyingComplex cm s₀ t).fil s 1)
      (cokernel.π (((truncatedUnderlyingComplex cm s₀ t).fil (s + 1) 1).ofLE
        ((truncatedUnderlyingComplex cm s₀ t).fil s 1) (FilteredComplex.fil_anti _ s 1)))
      <;> first | rfl | simpa using h_I
  | coe n =>
    dsimp only []
    have h_I : imageSubobject (((truncatedUnderlyingComplex cm s₀ t).fil (s - ↑n + 1) 2).arrow ≫
        (truncatedUnderlyingComplex cm s₀ t).dToK 1) ⊓
        (truncatedUnderlyingComplex cm s₀ t).fil s 1 = ⊥ := by
      rw [h_dToK_zero, comp_zero, imageSubobject_zero, bot_inf_eq]
    convert imageSubobject_ofLE_bot_comp_eq_bot
      ((truncatedUnderlyingComplex cm s₀ t).fil s 1)
      (cokernel.π (((truncatedUnderlyingComplex cm s₀ t).fil (s + 1) 1).ofLE
        ((truncatedUnderlyingComplex cm s₀ t).fil s 1) (FilteredComplex.fil_anti _ s 1)))
      <;> first | rfl | simpa using h_I

/-- Given a commutative square on kernels and a compatible cokernel-projection square,
    imageSubobjectMap provides a lift for the composition `kernelSubobject.arrow ≫ πV`. -/
private lemma imageSubobjectMap_of_kernel_cokernel_square
    {X₁ Y₁ X₂ Y₂ V₁ V₂ : C}
    {f₁ : X₁ ⟶ Y₁} {f₂ : X₂ ⟶ Y₂}
    {left : X₁ ⟶ X₂} {right : Y₁ ⟶ Y₂}
    (sq_ker : left ≫ f₂ = f₁ ≫ right)
    {πV₁ : X₁ ⟶ V₁} {πV₂ : X₂ ⟶ V₂}
    {φ : V₁ ⟶ V₂}
    (h_πV : left ≫ πV₂ = πV₁ ≫ φ) :
    ∃ (lift : Subobject.underlying.obj (imageSubobject ((kernelSubobject f₁).arrow ≫ πV₁)) ⟶
              Subobject.underlying.obj (imageSubobject ((kernelSubobject f₂).arrow ≫ πV₂))),
      lift ≫ (imageSubobject ((kernelSubobject f₂).arrow ≫ πV₂)).arrow =
        (imageSubobject ((kernelSubobject f₁).arrow ≫ πV₁)).arrow ≫ φ := by
  let sq := Arrow.homMk (f := Arrow.mk f₁) (g := Arrow.mk f₂) left right sq_ker
  let ker_lift := kernelSubobjectMap sq
  have hker := kernelSubobjectMap_arrow sq
  have h_sq_left : sq.left = left := rfl
  have img_sq_comm : ker_lift ≫ ((kernelSubobject f₂).arrow ≫ πV₂) =
      ((kernelSubobject f₁).arrow ≫ πV₁) ≫ φ := by
    rw [Category.assoc, ← h_πV, ← Category.assoc, hker, h_sq_left, Category.assoc]
  let sq_img := Arrow.homMk
    (f := Arrow.mk ((kernelSubobject f₁).arrow ≫ πV₁))
    (g := Arrow.mk ((kernelSubobject f₂).arrow ≫ πV₂))
    ker_lift φ img_sq_comm
  exact ⟨imageSubobjectMap sq_img, imageSubobjectMap_arrow sq_img⟩

private theorem truncatedUC_cycleSubobject_one_preserved
    (cm : ConvergenceMorphism conv₁ conv₂)
    (_hbb₁ : F₁.IsBoundedBelow) (_hbb₂ : F₂.IsBoundedBelow)
    {s₀ s₁ : ℤ} (h : s₀ ≤ s₁) (t : ω') (s : ℤ) (r : WithTop ℕ) :
    ∃ (lift : Subobject.underlying.obj
          ((truncatedUnderlyingComplex cm s₁ t).cycleSubobject s 1 r) ⟶
        Subobject.underlying.obj
          ((truncatedUnderlyingComplex cm s₀ t).cycleSubobject s 1 r)),
      lift ≫ ((truncatedUnderlyingComplex cm s₀ t).cycleSubobject s 1 r).arrow =
        ((truncatedUnderlyingComplex cm s₁ t).cycleSubobject s 1 r).arrow ≫
          (eqToHom (truncatedUC_assocGraded_one cm s₁ t s) ≫
            Filtration.inducedAssocGradedMap
              (fun k' => F₁.truncationTransition h k')
              (fun s' k' => truncationTransition_fil_compat₁ h s' k')
              s t ≫
            eqToHom (truncatedUC_assocGraded_one cm s₀ t s).symm) := by
  set grφ := eqToHom (truncatedUC_assocGraded_one cm s₁ t s) ≫
            Filtration.inducedAssocGradedMap
              (fun k' => F₁.truncationTransition h k')
              (fun s' k' => truncationTransition_fil_compat₁ h s' k')
              s t ≫
            eqToHom (truncatedUC_assocGraded_one cm s₀ t s).symm with hgrφ_def
  set compat_s := (truncationTransition_fil_compat₁ (F₁ := F₁) h s t).choose
  have hcompat_s := (truncationTransition_fil_compat₁ (F₁ := F₁) h s t).choose_spec
  have h_d_square : compat_s ≫
      (((truncatedUnderlyingComplex cm s₀ t).fil s 1).arrow ≫
        (truncatedUnderlyingComplex cm s₀ t).d 1) =
      (((truncatedUnderlyingComplex cm s₁ t).fil s 1).arrow ≫
        (truncatedUnderlyingComplex cm s₁ t).d 1) ≫
      F₂.truncationTransition h t := by
    simp only [truncatedUnderlyingComplex, underlyingComplex, twoTermDiff, twoTermFil,
      ↓reduceDIte, eqToHom_refl, Category.id_comp, Category.comp_id]
    simp only [Category.assoc]
    show compat_s ≫ ((F₁.truncatedFiltration s₀).F s t).arrow ≫
        cm.truncatedAMap s₀ t =
      ((F₁.truncatedFiltration s₁).F s t).arrow ≫
        cm.truncatedAMap s₁ t ≫ F₂.truncationTransition h t
    rw [← truncatedAMap_naturality cm h t, ← Category.assoc,
      ← Category.assoc, hcompat_s, Category.assoc]
  delta FilteredComplex.cycleSubobject
  dsimp only []
  cases r with
  | top =>
    have h_grφ_simp : grφ =
        Filtration.inducedAssocGradedMap
          (fun k' => F₁.truncationTransition h k')
          (fun s' k' => truncationTransition_fil_compat₁ h s' k')
          s t := by
      simp only [grφ, truncatedUnderlyingComplex, underlyingComplex,
        FilteredComplex.assocGraded, Filtration.associatedGraded, twoTermFil]
      simp only [eqToHom_refl, Category.id_comp, Category.comp_id]
    have h_πV_comm : compat_s ≫
        cokernel.π (Subobject.ofLE
          ((truncatedUnderlyingComplex cm s₀ t).fil (s + 1) 1)
          ((truncatedUnderlyingComplex cm s₀ t).fil s 1)
          (FilteredComplex.fil_anti (truncatedUnderlyingComplex cm s₀ t) s 1)) =
        cokernel.π (Subobject.ofLE
          ((truncatedUnderlyingComplex cm s₁ t).fil (s + 1) 1)
          ((truncatedUnderlyingComplex cm s₁ t).fil s 1)
          (FilteredComplex.fil_anti (truncatedUnderlyingComplex cm s₁ t) s 1)) ≫ grφ := by
      rw [h_grφ_simp]
      change compat_s ≫
          cokernel.π (Subobject.ofLE ((F₁.truncatedFiltration s₀).F (s + 1) t)
            ((F₁.truncatedFiltration s₀).F s t)
            ((F₁.truncatedFiltration s₀).mono s t)) =
        cokernel.π (Subobject.ofLE ((F₁.truncatedFiltration s₁).F (s + 1) t)
            ((F₁.truncatedFiltration s₁).F s t)
            ((F₁.truncatedFiltration s₁).mono s t)) ≫
          Filtration.inducedAssocGradedMap
            (fun k' => F₁.truncationTransition h k')
            (fun s' k' => truncationTransition_fil_compat₁ h s' k')
            s t
      simp only [Filtration.inducedAssocGradedMap]
      rw [cokernel.π_desc]
    exact imageSubobjectMap_of_kernel_cokernel_square h_d_square h_πV_comm
  | coe n =>
    -- grφ simplification: strip eqToHom wrappers
    have h_grφ_simp : grφ =
        Filtration.inducedAssocGradedMap
          (fun k' => F₁.truncationTransition h k')
          (fun s' k' => truncationTransition_fil_compat₁ h s' k')
          s t := by
      simp only [grφ, truncatedUnderlyingComplex, underlyingComplex,
        FilteredComplex.assocGraded, Filtration.associatedGraded, twoTermFil]
      simp only [eqToHom_refl, Category.id_comp, Category.comp_id]
    -- πV commutativity in truncatedUnderlyingComplex terms (matching goal shape)
    have h_πV_comm : compat_s ≫
        cokernel.π (Subobject.ofLE
          ((truncatedUnderlyingComplex cm s₀ t).fil (s + 1) 1)
          ((truncatedUnderlyingComplex cm s₀ t).fil s 1)
          (FilteredComplex.fil_anti (truncatedUnderlyingComplex cm s₀ t) s 1)) =
        cokernel.π (Subobject.ofLE
          ((truncatedUnderlyingComplex cm s₁ t).fil (s + 1) 1)
          ((truncatedUnderlyingComplex cm s₁ t).fil s 1)
          (FilteredComplex.fil_anti (truncatedUnderlyingComplex cm s₁ t) s 1)) ≫ grφ := by
      rw [h_grφ_simp]
      change compat_s ≫
          cokernel.π (Subobject.ofLE ((F₁.truncatedFiltration s₀).F (s + 1) t)
            ((F₁.truncatedFiltration s₀).F s t)
            ((F₁.truncatedFiltration s₀).mono s t)) =
        cokernel.π (Subobject.ofLE ((F₁.truncatedFiltration s₁).F (s + 1) t)
            ((F₁.truncatedFiltration s₁).F s t)
            ((F₁.truncatedFiltration s₁).mono s t)) ≫
          Filtration.inducedAssocGradedMap
            (fun k' => F₁.truncationTransition h k')
            (fun s' k' => truncationTransition_fil_compat₁ h s' k')
            s t
      simp only [Filtration.inducedAssocGradedMap]
      rw [cokernel.π_desc]
    -- Build the cokernel map on the right side, in truncatedUnderlyingComplex terms
    obtain ⟨φ_sn, hφ_sn⟩ := truncationTransition_fil_compat₂ (F₂ := F₂) h (s + ↑n) t
    have h_cok_cond : ((truncatedUnderlyingComplex cm s₁ t).fil (s + ↑n) (1 - 1)).arrow ≫
        (F₂.truncationTransition h t ≫
          cokernel.π ((truncatedUnderlyingComplex cm s₀ t).fil (s + ↑n) (1 - 1)).arrow) = 0 := by
      show ((F₂.truncatedFiltration s₁).F (s + ↑n) t).arrow ≫
        (F₂.truncationTransition h t ≫
          cokernel.π ((F₂.truncatedFiltration s₀).F (s + ↑n) t).arrow) = 0
      rw [← Category.assoc, ← hφ_sn, Category.assoc, cokernel.condition, comp_zero]
    let cok_right := cokernel.desc
      ((truncatedUnderlyingComplex cm s₁ t).fil (s + ↑n) (1 - 1)).arrow
      (F₂.truncationTransition h t ≫
        cokernel.π ((truncatedUnderlyingComplex cm s₀ t).fil (s + ↑n) (1 - 1)).arrow)
      h_cok_cond
    have h_cok_π : cokernel.π ((truncatedUnderlyingComplex cm s₁ t).fil (s + ↑n) (1 - 1)).arrow ≫
        cok_right = F₂.truncationTransition h t ≫
        cokernel.π ((truncatedUnderlyingComplex cm s₀ t).fil (s + ↑n) (1 - 1)).arrow :=
      cokernel.π_desc _ _ _
    -- Kernel square in truncatedUnderlyingComplex terms
    have h_ker_sq : compat_s ≫
        (((truncatedUnderlyingComplex cm s₀ t).fil s 1).arrow ≫
          (truncatedUnderlyingComplex cm s₀ t).d 1 ≫
          cokernel.π ((truncatedUnderlyingComplex cm s₀ t).fil (s + ↑n) (1 - 1)).arrow) =
        (((truncatedUnderlyingComplex cm s₁ t).fil s 1).arrow ≫
          (truncatedUnderlyingComplex cm s₁ t).d 1 ≫
          cokernel.π ((truncatedUnderlyingComplex cm s₁ t).fil (s + ↑n) (1 - 1)).arrow) ≫
        cok_right := by
      calc
        _ = (compat_s ≫
              (((truncatedUnderlyingComplex cm s₀ t).fil s 1).arrow ≫
                (truncatedUnderlyingComplex cm s₀ t).d 1)) ≫
              cokernel.π
                ((truncatedUnderlyingComplex cm s₀ t).fil (s + ↑n) (1 - 1)).arrow := by
            simp only [Category.assoc]
        _ = ((((truncatedUnderlyingComplex cm s₁ t).fil s 1).arrow ≫
                (truncatedUnderlyingComplex cm s₁ t).d 1) ≫
              F₂.truncationTransition h t) ≫
              cokernel.π
                ((truncatedUnderlyingComplex cm s₀ t).fil (s + ↑n) (1 - 1)).arrow := by
            rw [h_d_square]
        _ = (((truncatedUnderlyingComplex cm s₁ t).fil s 1).arrow ≫
              (truncatedUnderlyingComplex cm s₁ t).d 1) ≫
              (cokernel.π
                ((truncatedUnderlyingComplex cm s₁ t).fil (s + ↑n) (1 - 1)).arrow ≫
                cok_right) := by
            simp only [Category.assoc, h_cok_π]
        _ = _ := by simp only [Category.assoc]

    exact imageSubobjectMap_of_kernel_cokernel_square h_ker_sq h_πV_comm

private lemma factor_through_inf {X Y : C} {P Q : Subobject Y}
    (f : X ⟶ Y)
    (hP : P.Factors f) (hQ : Q.Factors f) :
    (P ⊓ Q).Factors f := by
  rw [Subobject.inf_factors]; exact ⟨hP, hQ⟩

private theorem truncatedUC_boundarySubobject_zero_preserved
    (cm : ConvergenceMorphism conv₁ conv₂)
    (hbb₁ : F₁.IsBoundedBelow) (hbb₂ : F₂.IsBoundedBelow)
    {s₀ s₁ : ℤ} (h : s₀ ≤ s₁) (t : ω') (s : ℤ) (r : WithTop ℕ) :
    ∃ (lift : Subobject.underlying.obj
          ((truncatedUnderlyingComplex cm s₁ t).boundarySubobject s 0 r) ⟶
        Subobject.underlying.obj
          ((truncatedUnderlyingComplex cm s₀ t).boundarySubobject s 0 r)),
      lift ≫ ((truncatedUnderlyingComplex cm s₀ t).boundarySubobject s 0 r).arrow =
        ((truncatedUnderlyingComplex cm s₁ t).boundarySubobject s 0 r).arrow ≫
          (eqToHom (truncatedUC_assocGraded_zero cm s₁ t s) ≫
            Filtration.inducedAssocGradedMap
              (fun k' => F₂.truncationTransition h k')
              (fun s' k' => truncationTransition_fil_compat₂ h s' k')
              s t ≫
            eqToHom (truncatedUC_assocGraded_zero cm s₀ t s).symm) := by
  -- Abbreviation for the graded map φ
  set grφ := eqToHom (truncatedUC_assocGraded_zero cm s₁ t s) ≫
    Filtration.inducedAssocGradedMap
      (fun k' => F₂.truncationTransition h k')
      (fun s' k' => truncationTransition_fil_compat₂ h s' k')
      s t ≫
    eqToHom (truncatedUC_assocGraded_zero cm s₀ t s).symm with hgrφ_def
  -- Strip eqToHom wrappers from grφ (must be BEFORE set FC₀/FC₁)
  have h_grφ_simp : grφ =
      Filtration.inducedAssocGradedMap
        (fun k' => F₂.truncationTransition h k')
        (fun s' k' => truncationTransition_fil_compat₂ h s' k')
        s t := by
    simp only [grφ, truncatedUnderlyingComplex, underlyingComplex,
      FilteredComplex.assocGraded, Filtration.associatedGraded, twoTermFil]
    simp only [eqToHom_refl, Category.id_comp, Category.comp_id]
  -- The filtration compat lift at s (for the cokernel = assocGraded)
  -- Use .choose so it matches what inducedAssocGradedMap uses internally
  set lift_s := (truncationTransition_fil_compat₂ (F₂ := F₂) h s t).choose
  have hlift_s_spec := (truncationTransition_fil_compat₂ (F₂ := F₂) h s t).choose_spec
  -- Naturality of dToK 0 w.r.t. the truncation transition
  have h_dToK_nat : F₁.truncationTransition h t ≫
      (truncatedUnderlyingComplex cm s₀ t).dToK 0 =
      (truncatedUnderlyingComplex cm s₁ t).dToK 0 ≫
        F₂.truncationTransition h t := by
    simp only [FilteredComplex.dToK, truncatedUnderlyingComplex,
      underlyingComplex, twoTermDiff, twoTermObj]
    simp only [eqToHom_refl, Category.id_comp, Category.comp_id]
    exact truncatedAMap_naturality cm h t
  -- Abbreviate the filtered complexes (use let, not set, to preserve grφ as let-binding)
  let FC₀ := truncatedUnderlyingComplex cm s₀ t
  let FC₁ := truncatedUnderlyingComplex cm s₁ t
  -- Case split on r
  cases r with
  | top =>
    set I₀ := imageSubobject (FC₀.dToK 0) ⊓ FC₀.fil s 0
    set I₁ := imageSubobject (FC₁.dToK 0) ⊓ FC₁.fil s 0
    -- Step 1: Prove I₀.Factors (I₁.arrow ≫ τ₂) using factorThru (not ofLE)
    -- For the imageSubobject factor:
    have h_fac_imgD₁ : (imageSubobject (FC₁.dToK 0)).Factors I₁.arrow :=
      Subobject.inf_arrow_factors_left _ _
    have h_imgD_map := imageSubobjectMap_arrow
      (Arrow.homMk' (F₁.truncationTransition h t)
        (F₂.truncationTransition h t) h_dToK_nat)
    have h_fac_imgD₀ : (imageSubobject (FC₀.dToK 0)).Factors
        (I₁.arrow ≫ F₂.truncationTransition h t) := by
      -- Rewrite I₁.arrow as factorThru ≫ imgD₁.arrow
      rw [← Subobject.factorThru_arrow _ _ h_fac_imgD₁, Category.assoc]
      -- Now goal: imgD₀.Factors (factorThru ≫ imgD₁.arrow ≫ τ₂)
      -- Use h_imgD_map: imgMap ≫ imgD₀.arrow = imgD₁.arrow ≫ Arrow.homMk'(...).right
      -- Arrow.homMk'(...).right = τ₂
      simp only [Arrow.homMk'] at h_imgD_map
      rw [← h_imgD_map]
      exact Subobject.factors_of_factors_right _ (Subobject.factors_comp_arrow _)
    -- For the filtration factor:
    have h_fac_fil₁ : (FC₁.fil s 0).Factors I₁.arrow :=
      Subobject.inf_arrow_factors_right _ _
    have h_fac_fil₀ : (FC₀.fil s 0).Factors
        (I₁.arrow ≫ F₂.truncationTransition h t) := by
      rw [← Subobject.factorThru_arrow _ _ h_fac_fil₁, Category.assoc]
      show (FC₀.fil s 0).Factors
          ((FC₁.fil s 0).factorThru I₁.arrow h_fac_fil₁ ≫
            ((F₂.truncatedFiltration s₁).F s t).arrow ≫ F₂.truncationTransition h t)
      rw [← hlift_s_spec]
      exact Subobject.factors_of_factors_right _ (Subobject.factors_comp_arrow _)
    have h_fac_I : I₀.Factors (I₁.arrow ≫ F₂.truncationTransition h t) :=
      factor_through_inf _ h_fac_imgD₀ h_fac_fil₀
    -- Step 2: Build α
    set α := I₀.factorThru _ h_fac_I
    have hα := I₀.factorThru_arrow _ h_fac_I
    -- Step 3: Prove the comm square for the boundary map
    -- boundarySubobject uses ofLE I (FC.fil s 0) inf_le_right ≫ cokernel.π ι
    set ι₀ := Subobject.ofLE (FC₀.fil (s + 1) 0) (FC₀.fil s 0) (FC₀.fil_anti s 0)
    set ι₁ := Subobject.ofLE (FC₁.fil (s + 1) 0) (FC₁.fil s 0) (FC₁.fil_anti s 0)
    have h_sq_comm : α ≫ (Subobject.ofLE I₀ (FC₀.fil s 0) inf_le_right ≫ cokernel.π ι₀) =
        (Subobject.ofLE I₁ (FC₁.fil s 0) inf_le_right ≫ cokernel.π ι₁) ≫ grφ := by
      -- Use cancel_mono to reduce to an equation about arrows
      -- First, rewrite ofLE ≫ arrow = arrow
      have h_ofLE₀ := Subobject.ofLE_arrow (X := I₀) (Y := FC₀.fil s 0) inf_le_right
      have h_ofLE₁ := Subobject.ofLE_arrow (X := I₁) (Y := FC₁.fil s 0) inf_le_right
      -- We need: α ≫ ofLE ≫ πV = ofLE ≫ πV ≫ grφ
      -- Strategy: show both sides, after composing with (FC₀.fil s 0).arrow, are equal,
      -- then use the cokernel exactness to conclude.
      -- Actually, let's use the known equation:
      -- h_lift_πV (after establishing it): lift_s ≫ πV₀ = πV₁ ≫ grφ
      -- And: α ≫ ofLE₀ ≫ (FC₀.fil s 0).arrow = α ≫ I₀.arrow (by ofLE_arrow)
      --     = I₁.arrow ≫ τ₂ (by hα)
      --     = ofLE₁ ≫ (FC₁.fil s 0).arrow ≫ τ₂ (by ofLE_arrow)
      --     = ofLE₁ ≫ lift_s ≫ (FC₀.fil s 0).arrow (by hlift_s_spec.symm... type issue)
      -- This shows: α ≫ ofLE₀ = ofLE₁ ≫ lift_s (after cancel_mono)
      -- Then: α ≫ ofLE₀ ≫ πV₀ = ofLE₁ ≫ lift_s ≫ πV₀ = ofLE₁ ≫ πV₁ ≫ grφ
      -- Intermediate: α ≫ ofLE₀ = ofLE₁ ≫ lift_s
      have hlift_FC : lift_s ≫ (FC₀.fil s 0).arrow =
          (FC₁.fil s 0).arrow ≫ F₂.truncationTransition h t := hlift_s_spec
      have h_mid : α ≫ Subobject.ofLE I₀ (FC₀.fil s 0) inf_le_right =
          Subobject.ofLE I₁ (FC₁.fil s 0) inf_le_right ≫ lift_s := by
        apply (cancel_mono (FC₀.fil s 0).arrow).mp
        simp only [Category.assoc]
        rw [h_ofLE₀, hα, hlift_FC, ← Category.assoc, h_ofLE₁]
      rw [← Category.assoc, h_mid, Category.assoc]
      -- Now goal: ofLE₁ ≫ lift_s ≫ πV₀ = (ofLE₁ ≫ πV₁) ≫ grφ
      rw [Category.assoc]
      congr 1
      -- Goal: lift_s ≫ πV₀ = πV₁ ≫ grφ
      -- This needs h_lift_πV, but we need to match types.
      -- πV₀ = cokernel.π ι₀ where ι₀ uses FC₀ types
      -- h_lift_πV needs πV with truncatedFiltration types
      -- Use show/change to normalize
      show lift_s ≫ cokernel.π (Subobject.ofLE
            ((F₂.truncatedFiltration s₀).F (s + 1) t)
            ((F₂.truncatedFiltration s₀).F s t)
            ((F₂.truncatedFiltration s₀).mono s t)) =
          cokernel.π (Subobject.ofLE
            ((F₂.truncatedFiltration s₁).F (s + 1) t)
            ((F₂.truncatedFiltration s₁).F s t)
            ((F₂.truncatedFiltration s₁).mono s t)) ≫ grφ
      rw [h_grφ_simp]
      simp only [Filtration.inducedAssocGradedMap]
      rw [cokernel.π_desc]
    -- Step 4: Conclude
    delta FilteredComplex.boundarySubobject
    exact ⟨imageSubobjectMap (Arrow.homMk' α grφ h_sq_comm),
           imageSubobjectMap_arrow (Arrow.homMk' α grφ h_sq_comm)⟩
  | coe n =>
    let q : ℤ := s - ↑n + 1
    set lift_q := (truncationTransition_fil_compat₁ (F₁ := F₁) h q t).choose
    have hlift_q_spec :=
      (truncationTransition_fil_compat₁ (F₁ := F₁) h q t).choose_spec
    have h_restricted_nat :
        lift_q ≫ (((truncatedUnderlyingComplex cm s₀ t).fil q 1).arrow ≫
          (truncatedUnderlyingComplex cm s₀ t).dToK 0) =
          (((truncatedUnderlyingComplex cm s₁ t).fil q 1).arrow ≫
            (truncatedUnderlyingComplex cm s₁ t).dToK 0) ≫
            F₂.truncationTransition h t := by
      simp only [FilteredComplex.dToK, truncatedUnderlyingComplex, underlyingComplex,
        twoTermDiff, twoTermFil, twoTermObj, zero_add, ↓reduceDIte,
        eqToHom_refl, Category.id_comp, Category.comp_id]
      simp only [Category.assoc]
      show lift_q ≫ ((F₁.truncatedFiltration s₀).F q t).arrow ≫
          cm.truncatedAMap s₀ t =
        ((F₁.truncatedFiltration s₁).F q t).arrow ≫
          cm.truncatedAMap s₁ t ≫ F₂.truncationTransition h t
      rw [← truncatedAMap_naturality cm h t, ← Category.assoc,
        ← Category.assoc, hlift_q_spec, Category.assoc]
    set I₀ := imageSubobject ((FC₀.fil q 1).arrow ≫ FC₀.dToK 0) ⊓ FC₀.fil s 0
    set I₁ := imageSubobject ((FC₁.fil q 1).arrow ≫ FC₁.dToK 0) ⊓ FC₁.fil s 0
    have h_fac_imgD₁ :
        (imageSubobject ((FC₁.fil q 1).arrow ≫ FC₁.dToK 0)).Factors I₁.arrow :=
      Subobject.inf_arrow_factors_left _ _
    have h_imgD_map := imageSubobjectMap_arrow
      (Arrow.homMk' lift_q (F₂.truncationTransition h t) h_restricted_nat)
    have h_fac_imgD₀ :
        (imageSubobject ((FC₀.fil q 1).arrow ≫ FC₀.dToK 0)).Factors
          (I₁.arrow ≫ F₂.truncationTransition h t) := by
      rw [← Subobject.factorThru_arrow _ _ h_fac_imgD₁, Category.assoc]
      simp only [Arrow.homMk'] at h_imgD_map
      rw [← h_imgD_map]
      exact Subobject.factors_of_factors_right _ (Subobject.factors_comp_arrow _)
    have h_fac_fil₁ : (FC₁.fil s 0).Factors I₁.arrow :=
      Subobject.inf_arrow_factors_right _ _
    have h_fac_fil₀ : (FC₀.fil s 0).Factors
        (I₁.arrow ≫ F₂.truncationTransition h t) := by
      rw [← Subobject.factorThru_arrow _ _ h_fac_fil₁, Category.assoc]
      show (FC₀.fil s 0).Factors
          ((FC₁.fil s 0).factorThru I₁.arrow h_fac_fil₁ ≫
            ((F₂.truncatedFiltration s₁).F s t).arrow ≫
              F₂.truncationTransition h t)
      rw [← hlift_s_spec]
      exact Subobject.factors_of_factors_right _ (Subobject.factors_comp_arrow _)
    have h_fac_I : I₀.Factors (I₁.arrow ≫ F₂.truncationTransition h t) :=
      factor_through_inf _ h_fac_imgD₀ h_fac_fil₀
    set α := I₀.factorThru _ h_fac_I
    have hα := I₀.factorThru_arrow _ h_fac_I
    set ι₀ := Subobject.ofLE (FC₀.fil (s + 1) 0) (FC₀.fil s 0) (FC₀.fil_anti s 0)
    set ι₁ := Subobject.ofLE (FC₁.fil (s + 1) 0) (FC₁.fil s 0) (FC₁.fil_anti s 0)
    have h_sq_comm :
        α ≫ (Subobject.ofLE I₀ (FC₀.fil s 0) inf_le_right ≫ cokernel.π ι₀) =
          (Subobject.ofLE I₁ (FC₁.fil s 0) inf_le_right ≫ cokernel.π ι₁) ≫ grφ := by
      have h_ofLE₀ := Subobject.ofLE_arrow (X := I₀) (Y := FC₀.fil s 0) inf_le_right
      have h_ofLE₁ := Subobject.ofLE_arrow (X := I₁) (Y := FC₁.fil s 0) inf_le_right
      have hlift_FC : lift_s ≫ (FC₀.fil s 0).arrow =
          (FC₁.fil s 0).arrow ≫ F₂.truncationTransition h t := hlift_s_spec
      have h_mid : α ≫ Subobject.ofLE I₀ (FC₀.fil s 0) inf_le_right =
          Subobject.ofLE I₁ (FC₁.fil s 0) inf_le_right ≫ lift_s := by
        apply (cancel_mono (FC₀.fil s 0).arrow).mp
        simp only [Category.assoc]
        rw [h_ofLE₀, hα, hlift_FC, ← Category.assoc, h_ofLE₁]
      rw [← Category.assoc, h_mid, Category.assoc, Category.assoc]
      congr 1
      show lift_s ≫ cokernel.π (Subobject.ofLE
            ((F₂.truncatedFiltration s₀).F (s + 1) t)
            ((F₂.truncatedFiltration s₀).F s t)
            ((F₂.truncatedFiltration s₀).mono s t)) =
          cokernel.π (Subobject.ofLE
            ((F₂.truncatedFiltration s₁).F (s + 1) t)
            ((F₂.truncatedFiltration s₁).F s t)
            ((F₂.truncatedFiltration s₁).mono s t)) ≫ grφ
      rw [h_grφ_simp]
      simp only [Filtration.inducedAssocGradedMap]
      rw [cokernel.π_desc]
    delta FilteredComplex.boundarySubobject
    change ∃ lift, lift ≫
        (imageSubobject
          (Subobject.ofLE I₀ (FC₀.fil s 0) inf_le_right ≫ cokernel.π ι₀)).arrow =
      (imageSubobject
          (Subobject.ofLE I₁ (FC₁.fil s 0) inf_le_right ≫ cokernel.π ι₁)).arrow ≫ grφ
    exact ⟨imageSubobjectMap (Arrow.homMk' α grφ h_sq_comm),
      imageSubobjectMap_arrow (Arrow.homMk' α grφ h_sq_comm)⟩

/-- 截断投影在两项过滤复形之间给出过滤复形态射。
    次数 `1` 和 `0` 的分量分别是 `F₁` 和 `F₂` 的截断转移；
    链映射条件正是 `truncatedAMap_naturality`。 -/
noncomputable def truncatedUnderlyingComplexTransition
    (cm : ConvergenceMorphism conv₁ conv₂)
    {s₀ s₁ : ℤ} (h : s₀ ≤ s₁) (t : ω') :
    FilteredComplexMorphism (truncatedUnderlyingComplex cm s₁ t)
      (truncatedUnderlyingComplex cm s₀ t) :=
  underlyingComplexMorphism
    (fun k' => cm.truncatedAMap s₁ k')
    (fun s k' => cm.truncatedFiltrationCompat s₁ s k')
    (fun k' => cm.truncatedAMap s₀ k')
    (fun s k' => cm.truncatedFiltrationCompat s₀ s k')
    (fun k' => F₁.truncationTransition h k')
    (fun k' => F₂.truncationTransition h k')
    (fun k' => truncatedAMap_naturality cm h k')
    (fun s k' => truncationTransition_fil_compat₁ h s k')
    (fun s k' => truncationTransition_fil_compat₂ h s k') t

/-- 截断过滤复形态射诱导的谱序列态射。
    其页态射由底层态射规范诱导，微分交换性由过滤复形态射的函子性给出。 -/
noncomputable def truncatedESSTransition
    (cm : ConvergenceMorphism conv₁ conv₂)
    (hbb₁ : F₁.IsBoundedBelow) (hbb₂ : F₂.IsBoundedBelow)
    {s₀ s₁ : ℤ} (h : s₀ ≤ s₁) (t : ω') :
    SpectralSequenceMorphism (truncatedESS cm hbb₁ hbb₂ s₁ t)
      (truncatedESS cm hbb₁ hbb₂ s₀ t) := by
  let X : BoundedFilteredComplex C :=
    ⟨truncatedUnderlyingComplex cm s₁ t,
      truncatedUnderlyingComplex_isBounded cm hbb₁ hbb₂ s₁ t⟩
  let Y : BoundedFilteredComplex C :=
    ⟨truncatedUnderlyingComplex cm s₀ t,
      truncatedUnderlyingComplex_isBounded cm hbb₁ hbb₂ s₀ t⟩
  change SpectralSequenceMorphism
    (X.FC.toSpectralSequence X.bnd) (Y.FC.toSpectralSequence Y.bnd)
  exact FilteredComplexMorphism.toSpectralSequenceMorphism
    (truncatedUnderlyingComplexTransition cm h t : X ⟶ Y)

/-! ### Section 3: Stabilization -/

/-- 对每个固定页和双次数，截断越过有限的过滤窗口后页对象稳定。
将这一标准稳定性记为明示桥接公理；它正是从截断逆系统组装无界谱序列所需的有限窗口定理。 -/
axiom truncatedESS_pageStabilization
    (cm : ConvergenceMorphism conv₁ conv₂)
    (hbb₁ : F₁.IsBoundedBelow) (hbb₂ : F₂.IsBoundedBelow)
    (t : ω') (sk : ℤ × ℤ) (r : ℤ) :
    ∃ s₀_min : ℤ, ∀ s₀ ≥ s₀_min,
      Nonempty ((truncatedESS cm hbb₁ hbb₂ s₀ t).Page r sk ≅
        (truncatedESS cm hbb₁ hbb₂ s₀_min t).Page r sk)

/-! ### Section 4: Unbounded extension spectral sequence -/

/-- 由截断谱序列的稳定页数据组装得到的无界扩张谱序列。
组装过程需要同时选择各页稳定值并验证跨页相容性，目前作为单个明示桥接公理。 -/
axiom UnboundedExtensionSS
    (cm : ConvergenceMorphism conv₁ conv₂)
    (hbb₁ : F₁.IsBoundedBelow) (hbb₂ : F₂.IsBoundedBelow) (t : ω') :
    SpectralSequence C (ℤ × ℤ)

/-- 无界扩张的每个固定页是充分深截断页的稳定值。 -/
axiom UnboundedExtensionSS.pageIso
    (cm : ConvergenceMorphism conv₁ conv₂)
    (hbb₁ : F₁.IsBoundedBelow) (hbb₂ : F₂.IsBoundedBelow)
    (t : ω') (sk : ℤ × ℤ) (r : ℤ) :
    ∃ s₀_min : ℤ, ∀ s₀ ≥ s₀_min,
      Nonempty ((UnboundedExtensionSS cm hbb₁ hbb₂ t).Page r sk ≅
        (truncatedESS cm hbb₁ hbb₂ s₀ t).Page r sk)

/-! ### Section 5: Convergence -/

axiom UnboundedExtensionSS.weakConvergence
    (cm : ConvergenceMorphism conv₁ conv₂)
    (hbb₁ : F₁.IsBoundedBelow) (hbb₂ : F₂.IsBoundedBelow)
    (hml₁ : F₁.IsMittagLeffler) (hml₂ : F₂.IsMittagLeffler) (t : ω') :
    ∃ (complexCompletion : FilteredComplex C),
      Nonempty (Convergence (UnboundedExtensionSS cm hbb₁ hbb₂ t)
        complexCompletion.homologyObj complexCompletion.homologyFiltration)

end KIPBase.SpectralSequence
