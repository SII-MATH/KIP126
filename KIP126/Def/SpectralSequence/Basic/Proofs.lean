import KIP126.Def.SpectralSequence.Basic.Predicates

/-!
# Elementary proofs for nested-subobject spectral sequences

The declarations here are source-ported from the proved part of
`KIPBase/SpectralSequence/Basic.lean`; no historical module is imported.
-/

namespace KIP126.Core.SpectralSequence

open CategoryTheory CategoryTheory.Limits

universe u v w

set_option linter.dupNamespace false

variable {C : Type u} [Category.{v} C] [Abelian C]

/-- Bottom-page boundaries lie in the cycles on every page. -/
theorem SSData.B_bot_le_Z (D : SSData C) (r : WithTop ℕ) : D.B ⊥ ≤ D.Z r :=
  le_trans (D.B_mono bot_le) (D.B_le_Z r)

/-- If cycles and boundaries agree, the corresponding quotient page is zero. -/
theorem SSData.page_isZero_of_eq
    (D : SSData C) (r : WithTop ℕ) (h : D.B r = D.Z r) :
    IsZero (D.page r) := by
  unfold SSData.page
  have : IsIso (Subobject.ofLE (D.B r) (D.Z r) (D.B_le_Z r)) := by
    rw [← Subobject.isoOfEq_hom _ _ h]
    infer_instance
  exact isZero_cokernel_of_epi _

/-- If a quotient page is zero, its cycles and boundaries agree. -/
theorem SSData.eq_of_page_isZero
    (D : SSData C) (r : WithTop ℕ) (h : IsZero (D.page r)) :
    D.B r = D.Z r := by
  unfold SSData.page at h
  have hepi : Epi (Subobject.ofLE (D.B r) (D.Z r) (D.B_le_Z r)) := by
    rwa [Preadditive.epi_iff_isZero_cokernel]
  haveI : IsIso (Subobject.ofLE (D.B r) (D.Z r) (D.B_le_Z r)) :=
    isIso_of_mono_of_epi _
  apply le_antisymm (D.B_le_Z r)
  exact Subobject.le_of_comm
    (inv (Subobject.ofLE (D.B r) (D.Z r) (D.B_le_Z r)))
    (by simp [Subobject.ofLE_arrow])

/-- A spectral sequence with zero pages at one grading has zero infinity page there. -/
theorem SpectralSequence.eInfty_isZero_of_page_isZero
    {C : Type*} [Category C] [Abelian C]
    {α : Type*} [AddCommGroup α] [DecidableEq α]
    (E : SpectralSequence C α) (k : α)
    (h : ∀ r : ℤ, E.r₀ ≤ r → IsZero (E.Page r k)) :
    IsZero ((E.ssData k).eInfty) := by
  unfold SSData.eInfty
  apply SSData.page_isZero_of_eq
  set D := E.ssData k
  apply le_antisymm
  · exact D.B_le_Z ⊤
  · have hpage0 : IsZero (D.page (↑(0 : ℕ))) := by
      have hfirst := h E.r₀ (le_refl _)
      simp only [SpectralSequence.Page, SSData.page] at hfirst
      have hrr : (E.r₀ - E.r₀).toNat = 0 := by omega
      rw [hrr] at hfirst
      exact hfirst
    have hBZ : D.B ↑(0 : ℕ) = D.Z ↑(0 : ℕ) :=
      D.eq_of_page_isZero _ hpage0
    calc
      D.Z ⊤ ≤ D.Z ↑(0 : ℕ) := D.Z_anti le_top
      _ = D.B ↑(0 : ℕ) := hBZ.symm
      _ ≤ D.B ⊤ := D.B_mono le_top

/-- Extensionality for bare ambient morphisms. -/
@[ext]
theorem UnderlyingMorphism.ext
    {ι : Type w} [AddCommGroup ι] [DecidableEq ι]
    {D D' : ι → SSData C} {f g : UnderlyingMorphism ι D D'}
    (h : f.φ = g.φ) : f = g := by
  rcases f with ⟨f_φ⟩
  rcases g with ⟨g_φ⟩
  congr!

/-- Extensionality for pre-spectral-sequence morphisms. -/
@[ext]
theorem PreSSMorphism.ext
    {ι : Type w} [AddCommGroup ι] [DecidableEq ι]
    {E E' : PreSS C ι} {f g : PreSSMorphism E E'}
    (h : f.φ = g.φ) : f = g := by
  cases f with | mk f_sd _ => ?_
  cases f_sd with | mk f_u _ _ => ?_
  cases f_u with | mk f_φ => ?_
  cases g with | mk g_sd _ => ?_
  cases g_sd with | mk g_u _ _ => ?_
  cases g_u with | mk g_φ => ?_
  subst h
  rfl

/-- Extensionality for spectral-sequence morphisms. -/
@[ext]
theorem SpectralSequenceMorphism.ext
    {ι : Type w} [AddCommGroup ι] [DecidableEq ι]
    {E E' : SpectralSequence C ι} {f g : SpectralSequenceMorphism E E'}
    (h : f.φ = g.φ) : f = g := by
  rcases f with ⟨f_φ, _, _, _⟩
  rcases g with ⟨g_φ, _, _, _⟩
  congr!

/-! The following reusable lemmas support the page-homology construction. -/

namespace PageHomology

open CategoryTheory.Abelian in
/-- Composing an epimorphism on the left does not change the image subobject. -/
theorem imageSubobject_epi_comp
    {X₁ X₂ X₃ : C} (e : X₁ ⟶ X₂) [Epi e] (f : X₂ ⟶ X₃) :
    imageSubobject (e ≫ f) = imageSubobject f := by
  apply le_antisymm (imageSubobject_comp_le e f)
  have hle := imageSubobject_comp_le e f
  haveI : Epi (Subobject.ofLE _ _ hle) := imageSubobject_comp_le_epi_of_epi e f
  haveI : IsIso (Subobject.ofLE _ _ hle) := isIso_of_mono_of_epi _
  exact Subobject.le_of_comm (inv (Subobject.ofLE _ _ hle))
    (by rw [IsIso.inv_comp_eq]; exact (Subobject.ofLE_arrow hle).symm)

/-- An image contained in a kernel gives a zero composite. -/
theorem comp_eq_zero_of_image_le_kernel
    {X₁ X₂ X₃ : C} (f : X₁ ⟶ X₂) (g : X₂ ⟶ X₃)
    (h : imageSubobject f ≤ kernelSubobject g) : f ≫ g = 0 := by
  rw [← imageSubobject_arrow_comp f, Category.assoc,
    show (imageSubobject f).arrow =
      Subobject.ofLE _ _ h ≫ (kernelSubobject g).arrow
      from (Subobject.ofLE_arrow h).symm,
    Category.assoc, kernelSubobject_arrow_comp, comp_zero, comp_zero]

/-- Factorization identity for the canonical map `Q/P ⟶ R/P`. -/
theorem factor_cokernelMap
    {V : C} (P Q R : Subobject V) (hPQ : P ≤ Q) (hQR : Q ≤ R)
    (hPR : P ≤ R := le_trans hPQ hQR) :
    Subobject.ofLE Q R hQR ≫ cokernel.π (Subobject.ofLE P R hPR) =
      cokernel.π (Subobject.ofLE P Q hPQ) ≫
        Subobject.cokernelMap_ofLE P Q R hPQ hQR hPR := by
  simp [Subobject.cokernelMap_ofLE, cokernel.π_desc]

/-- The canonical map `Q/P ⟶ R/P` is a monomorphism. -/
instance cokernelMap_ofLE_mono
    {V : C} (P Q R : Subobject V) (hPQ : P ≤ Q) (hQR : Q ≤ R)
    (hPR : P ≤ R := le_trans hPQ hQR) :
    Mono (Subobject.cokernelMap_ofLE P Q R hPQ hQR hPR) := by
  open CategoryTheory.Abelian.Pseudoelement in
  refine mono_of_zero_of_map_zero _ fun a ha => ?_
  obtain ⟨q, hq⟩ := pseudo_surjective_of_epi
    (cokernel.π (Subobject.ofLE P Q hPQ)) a
  rw [← hq] at ha ⊢
  have ha' : pseudoApply (cokernel.π (Subobject.ofLE P R hPR))
      (pseudoApply (Subobject.ofLE Q R hQR) q) = 0 := by
    have h1 := (Abelian.Pseudoelement.comp_apply
      (Subobject.ofLE Q R hQR) (cokernel.π (Subobject.ofLE P R hPR)) q).symm
    rw [h1, factor_cokernelMap P Q R hPQ hQR hPR,
      Abelian.Pseudoelement.comp_apply]
    exact ha
  have hexact : (ShortComplex.mk (Subobject.ofLE P R hPR)
      (cokernel.π (Subobject.ofLE P R hPR)) (cokernel.condition _)).Exact :=
    ShortComplex.cokernelSequence_exact (Subobject.ofLE P R hPR)
  obtain ⟨p, hp⟩ := pseudo_exact_of_exact hexact _ ha'
  have hp' : pseudoApply (Subobject.ofLE Q R hQR)
      (pseudoApply (Subobject.ofLE P Q hPQ) p) =
      pseudoApply (Subobject.ofLE Q R hQR) q := by
    rw [← Abelian.Pseudoelement.comp_apply, Subobject.ofLE_comp_ofLE]
    exact hp
  have hinj := pseudo_injective_of_mono (Subobject.ofLE Q R hQR) hp'
  rw [← hinj, ← Abelian.Pseudoelement.comp_apply, cokernel.condition, zero_apply]

end PageHomology

/-- Equal page classes of cycle representatives differ by a boundary in the ambient object. -/
theorem SSData.sub_factors_boundary_of_page_eq (D : SSData C)
    (n : WithTop ℕ) {T : C}
    (u v : T ⟶ Subobject.underlying.obj (D.Z n))
    (h : u ≫ D.pageπ n = v ≫ D.pageπ n) :
    Subobject.Factors (D.B n)
      (u ≫ (D.Z n).arrow - v ≫ (D.Z n).arrow) := by
  let i := Subobject.ofLE (D.B n) (D.Z n) (D.B_le_Z n)
  have hz : (u - v) ≫ cokernel.π i = 0 := by
    change (u - v) ≫ D.pageπ n = 0
    rw [Preadditive.sub_comp, h, sub_self]
  let b := Abelian.monoLift i (u - v) hz
  have hb : b ≫ (D.B n).arrow =
      u ≫ (D.Z n).arrow - v ≫ (D.Z n).arrow := by
    calc
      b ≫ (D.B n).arrow = b ≫ i ≫ (D.Z n).arrow := by
        rw [Subobject.ofLE_arrow]
      _ = (u - v) ≫ (D.Z n).arrow := by
        rw [← Category.assoc, Abelian.monoLift_comp]
      _ = u ≫ (D.Z n).arrow - v ≫ (D.Z n).arrow := by
        rw [Preadditive.sub_comp]
  rw [← hb]
  exact Subobject.factors_comp_arrow b

/-- A nonzero page boundary has a first finite stage at which it enters the boundary tower. -/
theorem SSData.first_boundary_page (D : SSData C) {T : C}
    (v : T ⟶ D.V) (n : ℕ)
    (hn : Subobject.Factors (D.B (↑n)) v)
    (hzero : ¬ Subobject.Factors (D.B (↑(0 : ℕ))) v) :
    ∃ m : ℕ, m < n ∧
      Subobject.Factors (D.B (↑(m + 1))) v ∧
      ¬ Subobject.Factors (D.B (↑m)) v := by
  classical
  let P : ℕ → Prop := fun j => Subobject.Factors (D.B (↑j)) v
  have hex : ∃ j : ℕ, P j := ⟨n, hn⟩
  let p := Nat.find hex
  have hp : P p := Nat.find_spec hex
  have hp0 : 0 < p := by
    by_contra h
    have h0 : p = 0 := by omega
    exact hzero (by simpa only [P, h0] using hp)
  have hple : p ≤ n := Nat.find_min' hex hn
  refine ⟨p - 1, by omega, ?_, ?_⟩
  · simpa only [show p - 1 + 1 = p by omega, P] using hp
  · exact Nat.find_min hex (by omega)

/-- The packaged infinity page vanishes when every finite page at the grading vanishes. -/
theorem EInftyData.eInfty_isZero_of_page_isZero
    {C : Type u} [Category.{v} C] [Abelian C]
    {ι : Type w} [AddCommGroup ι] [DecidableEq ι]
    (eData : EInftyData C ι) (k : ι)
    (h : ∀ r : ℤ, eData.ss.r₀ ≤ r → IsZero (eData.ss.Page r k)) :
    IsZero (eData.EInfty k) :=
  SpectralSequence.eInfty_isZero_of_page_isZero eData.ss k h

end KIP126.Core.SpectralSequence
