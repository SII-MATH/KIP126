import KIPBase.Synthetic.Adams

/-!+# Propagation of synthetic Adams vanishing

The support of the second page bounds which differentials can be nonzero.
The argument uses only the nested cycles and boundaries of the existing
spectral sequence, and imposes no boundedness condition on the filtration.
-/

namespace KIPBase.Synthetic

open CategoryTheory CategoryTheory.Limits KIPBase.SpectralSequence

universe u v

/-- Once a page at an index is zero, every later subquotient there is zero,
including the limiting subquotient. -/
theorem page_isZero_of_le {C : Type*} [Category C] [Abelian C]
    (D : SSData C) {i j : WithTop ℕ} (hij : i ≤ j)
    (hi : IsZero (D.page i)) : IsZero (D.page j) := by
  apply D.page_isZero_of_eq
  apply le_antisymm (D.B_le_Z j)
  calc
    D.Z j ≤ D.Z i := D.Z_anti hij
    _ = D.B i := (D.eq_of_page_isZero i hi).symm
    _ ≤ D.B j := D.B_mono hij

/-- Surjectivity after quotienting by a subgroup already contained in the
source implies surjectivity of the original inclusion. -/
private theorem subobject_eq_of_quotient_epi
    {C : Type*} [Category C] [Abelian C] {V : C}
    (B P Q : Subobject V) (hBP : B ≤ P) (hPQ : P ≤ Q)
    [Epi (Subobject.ofLE P Q hPQ ≫
      cokernel.π (Subobject.ofLE B Q (hBP.trans hPQ)))] : P = Q := by
  let i := Subobject.ofLE P Q hPQ
  let b := Subobject.ofLE B Q (hBP.trans hPQ)
  have hi : Epi i := by
    apply (Preadditive.epi_iff_cancel_zero i).mpr
    intro R g hg
    have hbg : b ≫ g = 0 := by
      change Subobject.ofLE B Q _ ≫ g = 0
      rw [← Subobject.ofLE_comp_ofLE B P Q hBP hPQ, Category.assoc]
      change Subobject.ofLE B P hBP ≫ (i ≫ g) = 0
      rw [hg, comp_zero]
    let q := cokernel.desc b g hbg
    have hq : q = 0 := by
      apply zero_of_epi_comp (i ≫ cokernel.π b)
      rw [Category.assoc, cokernel.π_desc]
      exact hg
    calc
      g = cokernel.π b ≫ q := (cokernel.π_desc b g hbg).symm
      _ = 0 := by rw [hq, comp_zero]
  haveI : Epi (Subobject.ofLE P Q hPQ) := hi
  haveI : IsIso (Subobject.ofLE P Q hPQ) := isIso_of_mono_of_epi _
  exact le_antisymm hPQ
    (Subobject.le_of_comm (inv (Subobject.ofLE P Q hPQ))
      (by simp [Subobject.ofLE_arrow]))

private theorem subquotient_eq_of_eq
    {C : Type*} [Category C] [Abelian C] {V : C}
    {B Z B' Z' : Subobject V} (h : B ≤ Z) (h' : B' ≤ Z')
    (hB : B = B') (hZ : Z = Z') :
    cokernel (Subobject.ofLE B Z h) =
      cokernel (Subobject.ofLE B' Z' h') := by
  subst B'
  subst Z'
  rfl

variable {Syn : Type u} [Category.{v} Syn] [Preadditive Syn]
    [HasZeroObject Syn] [HasShift Syn ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
    [MonoidalCategory Syn]
    [Pretriangulated Syn] [SyntheticCategory Syn]

/-- Vanishing on the second synthetic Adams page persists on every later
page. The proof does not assume degeneration. -/
theorem synAdams_page_isZero_of_e2 (X : Syn) (r : ℤ)
    (k : ℤ × ℤ × ℤ) (h : IsZero ((SynAdamsSS Syn X).Page 2 k)) :
    IsZero ((SynAdamsSS Syn X).Page r k) := by
  apply page_isZero_of_le ((SynAdamsSS Syn X).ssData k)
    (i := (↑(0 : ℕ) : WithTop ℕ)) (by simp)
  simpa only [SpectralSequence.Page, synAdamsSS_r0, sub_self, Int.toNat_zero]
    using h

/-- Second-page vanishing also forces the limiting subquotient to vanish. -/
theorem synAdams_eInfty_isZero_of_e2 (X : Syn) (k : ℤ × ℤ × ℤ)
    (h : IsZero ((SynAdamsSS Syn X).Page 2 k)) :
    IsZero (((SynAdamsSS Syn X).ssData k).eInfty) := by
  apply page_isZero_of_le ((SynAdamsSS Syn X).ssData k)
    (i := (↑(0 : ℕ) : WithTop ℕ)) le_top
  simpa only [SpectralSequence.Page, synAdamsSS_r0, sub_self, Int.toNat_zero]
    using h

/-- If the second page is supported in `0 ≤ t-w < n`, then differentials
with `n ≤ r-1` vanish: either their source or their target is outside
that same strip. This is a support condition, not boundedness of the
Adams filtration `s`. -/
theorem synAdams_d_eq_zero_of_e2_strip (X : Syn) (n : ℕ)
    (hstrip : ∀ s t w : ℤ, t - w < 0 ∨ (n : ℤ) ≤ t - w →
      IsZero ((SynAdamsSS Syn X).Page 2 (s, t, w)))
    (r : ℤ) (hr : (n : ℤ) ≤ r - 1) (k : ℤ × ℤ × ℤ) :
    (SynAdamsSS Syn X).d r k = 0 := by
  rcases k with ⟨s, t, w⟩
  by_cases h : t - w < 0 ∨ (n : ℤ) ≤ t - w
  · exact (synAdams_page_isZero_of_e2 X r (s, t, w)
      (hstrip s t w h)).eq_of_src _ _
  · have htarget : IsZero ((SynAdamsSS Syn X).Page r
        ((s, t, w) + (SynAdamsSS Syn X).diffDeg r)) := by
      rw [synAdamsSS_diffDeg]
      apply synAdams_page_isZero_of_e2
      apply hstrip
      right
      dsimp
      omega
    exact htarget.eq_of_tgt _ _

/-- A strip of width `n` on the second page forces degeneration by page
`max 2 (n+1)`. -/
theorem synAdams_degenerates_of_e2_strip (X : Syn) (n : ℕ)
    (hstrip : ∀ s t w : ℤ, t - w < 0 ∨ (n : ℤ) ≤ t - w →
      IsZero ((SynAdamsSS Syn X).Page 2 (s, t, w))) :
    (SynAdamsSS Syn X).DegeneratesAt (max 2 ((n : ℤ) + 1)) := by
  intro r hr k
  exact synAdams_d_eq_zero_of_e2_strip X n hstrip r (by omega) k

/-- In particular, support on the diagonal `t=w` forces degeneration
from the second page. -/
theorem synAdams_degenerates_of_e2_diagonal (X : Syn)
    (hdiag : ∀ s t w : ℤ, t ≠ w →
      IsZero ((SynAdamsSS Syn X).Page 2 (s, t, w))) :
    (SynAdamsSS Syn X).DegeneratesAt 2 := by
  have hstrip : ∀ s t w : ℤ, t - w < 0 ∨ (1 : ℤ) ≤ t - w →
      IsZero ((SynAdamsSS Syn X).Page 2 (s, t, w)) := by
    intro s t w h
    exact hdiag s t w (by omega)
  simpa using synAdams_degenerates_of_e2_strip X 1 hstrip

/-- A zero outgoing differential leaves the cycle subobject unchanged. -/
private theorem cycles_succ_of_zero
    {C : Type*} [Category C] [Abelian C]
    {ι : Type*} [AddCommGroup ι] [DecidableEq ι]
    (E : SpectralSequence C ι) (r : ℤ) (hr : E.r₀ ≤ r)
    (k : ι) (hd : E.d r k = 0) :
    (E.ssData k).Z ↑((r - E.r₀).toNat + 1) =
      (E.ssData k).Z ↑(r - E.r₀).toNat := by
  let n := (r - E.r₀).toNat
  let D := E.ssData k
  have hz := E.Z_succ r k hr
  rw [hd, kernelSubobject_zero] at hz
  let i := Subobject.ofLE (D.Z ↑(n + 1)) (D.Z ↑n)
    (D.Z_anti (by exact_mod_cast Nat.le_succ n))
  let p := i ≫ D.pageπ ↑n
  have hp : imageSubobject p = ⊤ := hz.symm
  haveI : IsIso (imageSubobject p).arrow :=
    (Subobject.isIso_arrow_iff_eq_top _).mpr hp
  haveI : Epi p := by
    rw [← imageSubobject_arrow_comp p]
    infer_instance
  exact subobject_eq_of_quotient_epi (D.B ↑n) (D.Z ↑(n + 1)) (D.Z ↑n)
    ((D.B_mono (by exact_mod_cast Nat.le_succ n)).trans (D.B_le_Z _))
    (D.Z_anti (by exact_mod_cast Nat.le_succ n))

/-- A zero differential leaves its target boundary subobject unchanged. -/
private theorem boundaries_succ_of_zero
    {C : Type*} [Category C] [Abelian C]
    {ι : Type*} [AddCommGroup ι] [DecidableEq ι]
    (E : SpectralSequence C ι) (r : ℤ) (hr : E.r₀ ≤ r)
    (k : ι) (hd : E.d r k = 0) :
    (E.ssData (k + E.diffDeg r)).B ↑((r - E.r₀).toNat + 1) =
      (E.ssData (k + E.diffDeg r)).B ↑(r - E.r₀).toNat := by
  let n := (r - E.r₀).toNat
  let D := E.ssData (k + E.diffDeg r)
  have hb := E.B_succ r k hr
  rw [hd, imageSubobject_zero] at hb
  let b := Subobject.ofLE (D.B ↑n) (D.Z ↑n) (D.B_le_Z _)
  let j := Subobject.ofLE (D.B ↑(n + 1)) (D.Z ↑n)
    ((D.B_le_Z _).trans (D.Z_anti (by exact_mod_cast Nat.le_succ n)))
  have hj : j ≫ cokernel.π b = 0 := by
    have hp : imageSubobject (j ≫ cokernel.π b) = ⊥ := hb.symm
    have ha : (imageSubobject (j ≫ cokernel.π b)).arrow = 0 := by
      rw [hp]
      exact Subobject.bot_arrow
    rw [← imageSubobject_arrow_comp (j ≫ cokernel.π b), ha, comp_zero]
  apply le_antisymm _ (D.B_mono (by exact_mod_cast Nat.le_succ n))
  apply Subobject.le_of_comm (Abelian.monoLift b j hj)
  have hcomp := congrArg (fun f => f ≫ (D.Z ↑n).arrow)
    (Abelian.monoLift_comp b j hj)
  simpa only [Category.assoc, b, j, Subobject.ofLE_arrow] using hcomp

/-- Zero outgoing synthetic Adams differential gives equality of successive
cycle subobjects, in the natural-number indexing of `SSData`. -/
theorem synAdams_cycles_succ_of_zero (X : Syn) (n : ℕ)
    (k : ℤ × ℤ × ℤ) (hd : (SynAdamsSS Syn X).d (2 + n) k = 0) :
    ((SynAdamsSS Syn X).ssData k).Z ↑(n + 1) =
      ((SynAdamsSS Syn X).ssData k).Z ↑n := by
  simpa only [synAdamsSS_r0, add_sub_cancel_left, Int.toNat_natCast] using
    cycles_succ_of_zero (SynAdamsSS Syn X) (2 + n)
      (by simp [synAdamsSS_r0]) k hd

/-- Zero incoming synthetic Adams differential gives equality of successive
boundary subobjects. -/
theorem synAdams_boundaries_succ_of_zero (X : Syn) (n : ℕ)
    (k : ℤ × ℤ × ℤ)
    (hd : (SynAdamsSS Syn X).d (2 + n)
      (k - (SynAdamsSS Syn X).diffDeg (2 + n)) = 0) :
    ((SynAdamsSS Syn X).ssData k).B ↑(n + 1) =
      ((SynAdamsSS Syn X).ssData k).B ↑n := by
  have h := boundaries_succ_of_zero (SynAdamsSS Syn X) (2 + n)
    (by simp [synAdamsSS_r0]) _ hd
  simp only [synAdamsSS_r0, add_sub_cancel_left, Int.toNat_natCast] at h
  exact (congrArg (fun j =>
    ((SynAdamsSS Syn X).ssData j).B ↑(n + 1) =
      ((SynAdamsSS Syn X).ssData j).B ↑n)
    (sub_add_cancel k ((SynAdamsSS Syn X).diffDeg (2 + n)))).mp h

/-- Degeneration from page two makes both limiting subobjects equal to
their initial values. Only the existing greatest/least bounds in `SSData`
are used in passing to the limit. -/
theorem synAdams_limit_subobjects_of_degenerates_e2 (X : Syn)
    (hd : (SynAdamsSS Syn X).DegeneratesAt 2) (k : ℤ × ℤ × ℤ) :
    ((SynAdamsSS Syn X).ssData k).Z ⊤ =
        ((SynAdamsSS Syn X).ssData k).Z ↑(0 : ℕ) ∧
      ((SynAdamsSS Syn X).ssData k).B ⊤ =
        ((SynAdamsSS Syn X).ssData k).B ↑(0 : ℕ) := by
  let D := (SynAdamsSS Syn X).ssData k
  have hZ : ∀ n : ℕ, D.Z ↑n = D.Z ↑(0 : ℕ) := by
    intro n
    induction n with
    | zero => rfl
    | succ n ih =>
      exact (synAdams_cycles_succ_of_zero X n k
        (hd (2 + n) (by omega) k)).trans ih
  have hB : ∀ n : ℕ, D.B ↑n = D.B ↑(0 : ℕ) := by
    intro n
    induction n with
    | zero => rfl
    | succ n ih =>
      exact (synAdams_boundaries_succ_of_zero X n k
        (hd (2 + n) (by omega) _)).trans ih
  constructor
  · exact le_antisymm (D.Z_anti le_top)
      (D.Z_top_greatest _ (fun n => (hZ n).ge))
  · exact le_antisymm (D.B_top_least _ (fun n => (hB n).le))
      (D.B_mono le_top)

/-- The second page and the limiting page agree when synthetic Adams
degenerates from page two; no bounded filtration is required. -/
noncomputable def synAdams_eInftyIso_e2_of_degenerates (X : Syn)
    (hd : (SynAdamsSS Syn X).DegeneratesAt 2) (k : ℤ × ℤ × ℤ) :
    ((SynAdamsSS Syn X).ssData k).eInfty ≅ (SynAdamsSS Syn X).Page 2 k := by
  obtain ⟨hZ, hB⟩ := synAdams_limit_subobjects_of_degenerates_e2 X hd k
  let D := (SynAdamsSS Syn X).ssData k
  have hpage : D.page ⊤ = D.page ↑(0 : ℕ) :=
    subquotient_eq_of_eq (D.B_le_Z ⊤) (D.B_le_Z _) hB hZ
  have hindex : (2 - (SynAdamsSS Syn X).r₀).toNat = 0 := by
    rw [synAdamsSS_r0]
    rfl
  exact eqToIso hpage ≪≫
    (eqToIso (congrArg (fun n : ℕ => D.page ↑n) hindex)).symm

/-- Diagonal support on the second page identifies the limiting page with
that second page, using the proved degeneration and subobject stability. -/
noncomputable def synAdams_eInftyIso_e2_of_diagonal (X : Syn)
    (hdiag : ∀ s t w : ℤ, t ≠ w →
      IsZero ((SynAdamsSS Syn X).Page 2 (s, t, w)))
    (k : ℤ × ℤ × ℤ) :
    ((SynAdamsSS Syn X).ssData k).eInfty ≅ (SynAdamsSS Syn X).Page 2 k :=
  synAdams_eInftyIso_e2_of_degenerates X
    (synAdams_degenerates_of_e2_diagonal X hdiag) k

/-- The associated-graded input of an extension spectral sequence can be
identified with the second Adams page whenever its source has diagonal
second-page support. This uses the given convergence structure and requires
no boundedness or separately postulated limiting-page comparison. -/
noncomputable def synAdams_associatedGradedIso_e2_of_diagonal (X : Syn)
    (hdiag : ∀ s t w : ℤ, t ≠ w →
      IsZero ((SynAdamsSS Syn X).Page 2 (s, t, w)))
    {A : ℤ × ℤ → AddCommGrpCat.{0}} {F : Filtration A}
    (conv : Convergence (SynAdamsSS Syn X) A F) (k : ℤ × ℤ × ℤ) :
    F.associatedGraded (conv.reindex k).1 (conv.reindex k).2 ≅
      (SynAdamsSS Syn X).Page 2 k :=
  (conv.iso k).symm ≪≫ synAdams_eInftyIso_e2_of_diagonal X hdiag k

/-- When the page differentials are zero, the successor-page homology
isomorphism identifies that next page with the current page. -/
noncomputable def synAdams_pageSuccIso_of_zero (X : Syn) (r : ℤ)
    (hr : 2 ≤ r) (hd : ∀ k, (SynAdamsSS Syn X).d r k = 0)
    (k : ℤ × ℤ × ℤ) :
    (SynAdamsSS Syn X).Page (r + 1) k ≅ (SynAdamsSS Syn X).Page r k := by
  let E := SynAdamsSS Syn X
  let S := E.pageShortComplex r (k - E.diffDeg r)
  let h := ShortComplex.LeftHomologyData.ofZeros S
    (hd (k - E.diffDeg r)) (hd (k - E.diffDeg r + E.diffDeg r))
  have hmiddle : h.H = E.Page r k := by
    change E.Page r (k - E.diffDeg r + E.diffDeg r) = E.Page r k
    rw [sub_add_cancel]
  exact E.pageHomologyIso r k (by simpa [E, synAdamsSS_r0] using hr) ≪≫
    h.homologyIso ≪≫ eqToIso hmiddle

/-- Iterating the zero-differential homology isomorphisms gives an actual
isomorphism from every later page to the page of degeneration. -/
noncomputable def synAdams_pageIso_of_degenerates (X : Syn) (N : ℤ)
    (hN : 2 ≤ N) (hd : (SynAdamsSS Syn X).DegeneratesAt N)
    (n : ℕ) (k : ℤ × ℤ × ℤ) :
    (SynAdamsSS Syn X).Page (N + n) k ≅ (SynAdamsSS Syn X).Page N k := by
  induction n with
  | zero => exact eqToIso (by simp)
  | succ n ih =>
    have hstep := synAdams_pageSuccIso_of_zero X (N + n) (by omega)
      (hd (N + n) (by omega)) k
    exact eqToIso (by simp only [Nat.cast_succ, add_assoc]) ≪≫ hstep ≪≫ ih

/-- Diagonal second-page support gives explicit isomorphisms of every
meaningful finite page with the second page. -/
noncomputable def synAdams_pageIso_e2_of_diagonal (X : Syn)
    (hdiag : ∀ s t w : ℤ, t ≠ w →
      IsZero ((SynAdamsSS Syn X).Page 2 (s, t, w)))
    (r : ℤ) (hr : 2 ≤ r) (k : ℤ × ℤ × ℤ) :
    (SynAdamsSS Syn X).Page r k ≅ (SynAdamsSS Syn X).Page 2 k := by
  have heq : r = 2 + ((r - 2).toNat : ℤ) := by omega
  exact eqToIso (congrArg (fun j => (SynAdamsSS Syn X).Page j k) heq) ≪≫
    synAdams_pageIso_of_degenerates X 2 (le_refl _)
      (synAdams_degenerates_of_e2_diagonal X hdiag) (r - 2).toNat k

end KIPBase.Synthetic
