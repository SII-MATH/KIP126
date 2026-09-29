/-
  KIPBase.Synthetic.Adams
  §3.3 Synthetic Adams spectral sequence — functor from Syn to 3-graded
  converging SS (grading rule per §3.6), Adams filtration on π_{*,*}X,
  convergence, Z[λ]-module spectral sequence

  Blueprint references:
  - `prerequisites.tex` §0.3.3 (Axiom `prereq:ax:syn-adams-ss`)
  - `synthetic-spectra.tex` §3 (synthetic Adams SS definition, Z[λ]-module structure)
  - `synthetic-extensions.tex` §4 (applications to extension spectral sequences)
  - KIP Appendix A, Corollary A.9, A.11 (convergence of synthetic Adams SS)
-/
import KIPBase.Mathlib
import KIPBase.Synthetic.Sphere
import KIPBase.SpectralSequence.Convergence

namespace KIPBase.Synthetic

open CategoryTheory CategoryTheory.Limits KIPBase.SpectralSequence

universe u v

variable {Syn : Type u} [Category.{v} Syn] [Preadditive Syn]
    [HasZeroObject Syn] [HasShift Syn ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
    [MonoidalCategory Syn]
    [Pretriangulated Syn] [SyntheticCategory Syn]

/-! ### Synthetic Adams spectral sequence (3-graded)

The synthetic Adams SS is a trigraded spectral sequence with indices (s, t, w):
- s = Adams filtration degree
- t = stem + filtration degree
- w = weight (synthetic grading)
Differentials: d_r : E_r^{s,t,w} → E_r^{s+r, t+r-1, w}. -/

/-- KIP Appendix A (Axiom `prereq:ax:syn-adams-ss`), cf. `synthetic-spectra.tex` §3:
    The synthetic Adams spectral sequence for an object X in Syn.
    This is a spectral sequence with trigrading (s, t, w) ∈ ℤ³,
    converging to π_{*,*}(X) with Adams filtration. -/
axiom SynAdamsSS (Syn : Type u) [Category.{v} Syn] [Preadditive Syn]
    [HasZeroObject Syn] [HasShift Syn ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
    [MonoidalCategory Syn]
    [Pretriangulated Syn] [SyntheticCategory Syn] (X : Syn) :
    SpectralSequence (AddCommGrpCat.{0}) (ℤ × ℤ × ℤ)

/-- KIP Appendix A (Axiom `prereq:ax:syn-adams-ss`), cf. `synthetic-spectra.tex` §3:
    The differential degree for the synthetic Adams SS:
    d_r has degree (r, r-1, 0) in the trigrading (s, t, w).
    The weight component is zero, reflecting that differentials preserve weight. -/
axiom synAdamsSS_diffDeg (Syn : Type u) [Category.{v} Syn] [Preadditive Syn]
    [HasZeroObject Syn] [HasShift Syn ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
    [MonoidalCategory Syn]
    [Pretriangulated Syn] [SyntheticCategory Syn] (X : Syn) (r : ℤ) :
    (SynAdamsSS Syn X).diffDeg r = (r, r - 1, 0)

/-- KIP Appendix A (Axiom `prereq:ax:syn-adams-ss`), cf. `synthetic-spectra.tex` §3:
    The starting page for the synthetic Adams SS is r₀ = 2,
    matching the classical Adams spectral sequence. -/
axiom synAdamsSS_r0 (Syn : Type u) [Category.{v} Syn] [Preadditive Syn]
    [HasZeroObject Syn] [HasShift Syn ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
    [MonoidalCategory Syn]
    [Pretriangulated Syn] [SyntheticCategory Syn] (X : Syn) :
    (SynAdamsSS Syn X).r₀ = 2

/-! ### Adams filtration on π_{*,*} -/

/-- KIP §3 (`prereq:def:adams-filtration` in synthetic setting), cf. `synthetic-spectra.tex`:
    The Adams filtration on bigraded homotopy groups π_{m,n}(X).
    This is a decreasing filtration F^s π_{m,n}(X) ⊇ F^{s+1} π_{m,n}(X) ⊇ ⋯
    arising from the synthetic Adams SS. Elements in F^s detect classes
    on the E_∞-page with filtration ≥ s. -/
axiom synAdamsFiltration (Syn : Type u) [Category.{v} Syn] [Preadditive Syn]
    [HasZeroObject Syn] [HasShift Syn ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
    [MonoidalCategory Syn]
    [Pretriangulated Syn] [SyntheticCategory Syn] (X : Syn) (m n : ℤ) (s : ℤ) :
    AddSubgroup (Smn (Syn := Syn) m n ⟶ X)

/-- KIP §3 (`prereq:def:adams-filtration`): The filtration is decreasing: F^{s+1} ⊆ F^s.
    This is a standard property of Adams filtrations (cf. `prereq:rem:decreasing-filtration`). -/
axiom synAdamsFiltration_mono (Syn : Type u) [Category.{v} Syn] [Preadditive Syn]
    [HasZeroObject Syn] [HasShift Syn ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
    [MonoidalCategory Syn]
    [Pretriangulated Syn] [SyntheticCategory Syn] (X : Syn) (m n : ℤ) (s : ℤ) :
    synAdamsFiltration Syn X m n (s + 1) ≤ synAdamsFiltration Syn X m n s

/-! ### Convergence -/

/-- KIP Corollary A.9/A.11 (Axiom `prereq:ax:syn-adams-ss`),
    cf. `synthetic-spectra.tex` §3 (Propositions `prereq:prop:syn-einfty-nuX`,
    `prereq:prop:syn-einfty-mod-lambda`):
    Convergence of the synthetic Adams SS:
    SynAdamsSS(X) converges to π_{t-s, w}(X) with filtration
    synAdamsFiltration.

    That is, E_∞^{s,t,w}(X) ≅ F^s π_{t-s,w}(X) / F^{s+1} π_{t-s,w}(X).
    The convergence data consists of an `EInftyData` wrapping the SS, a graded
    target object `A : ℤ × ℤ → AddCommGrpCat`, a filtration `F` on `A`, and a
    `Convergence` structure with reindexing `(s, t, w) ↦ (s, (t-s, w))`. -/
axiom synAdamsConvergence (Syn : Type u) [Category.{v} Syn] [Preadditive Syn]
    [HasZeroObject Syn] [HasShift Syn ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
    [MonoidalCategory Syn]
    [Pretriangulated Syn] [SyntheticCategory Syn] (X : Syn) :
  ∃ (eData : EInftyData (AddCommGrpCat.{0}) (ℤ × ℤ × ℤ))
    (_ : eData.ss = SynAdamsSS Syn X)
    (A : ℤ × ℤ → AddCommGrpCat.{0})
    (F : Filtration A)
    (conv : Convergence eData.ss A F),
    conv.reindex = fun ⟨s, t, w⟩ => (s, (t - s, w))

/-! ### Functoriality -/

/-- KIP Appendix A (Axiom `prereq:ax:syn-adams-ss`, `prereq:def:ss-morphism`):
    The synthetic Adams SS is functorial in X:
    a map f : X → Y induces a morphism of spectral sequences,
    compatible with differentials and convergence data. -/
axiom synAdamsSS_functorial (Syn : Type u) [Category.{v} Syn] [Preadditive Syn]
    [HasZeroObject Syn] [HasShift Syn ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
    [MonoidalCategory Syn]
    [Pretriangulated Syn] [SyntheticCategory Syn] {X Y : Syn} (f : X ⟶ Y) :
    SpectralSequenceMorphism (SynAdamsSS Syn X) (SynAdamsSS Syn Y)

/-- The map on the `r`-page induced by a map of synthetic spectra.  The
page index is written using the common starting page `2`, so the source and
target are compared without exposing the transports stored in
`SpectralSequenceMorphism.comm_d`. -/
noncomputable def synAdamsPageMap {X Y : Syn} (f : X ⟶ Y) (r : ℤ)
    (k : ℤ × ℤ × ℤ) :
    (SynAdamsSS Syn X).Page r k ⟶ (SynAdamsSS Syn Y).Page r k := by
  let F := synAdamsSS_functorial Syn f
  let n : WithTop ℕ := ↑(r - 2).toNat
  change ((SynAdamsSS Syn X).ssData k).page n ⟶
    ((SynAdamsSS Syn Y).ssData k).page n
  exact F.toSSDataMorphism.pageMap k n

/-- The synthetic Adams differential with its degree normalized to the
standard triple `(r,r-1,0)`. -/
noncomputable def synAdamsDifferential (X : Syn) (r : ℤ)
    (k : ℤ × ℤ × ℤ) :
    (SynAdamsSS Syn X).Page r k ⟶
      (SynAdamsSS Syn X).Page r (k + (r, r - 1, 0)) :=
  (SynAdamsSS Syn X).d r k ≫
    eqToHom (congrArg (fun j => (SynAdamsSS Syn X).Page r j)
      (congrArg (fun d => k + d) (synAdamsSS_diffDeg Syn X r)))

/-- Adams functoriality in element-level form: applying a map of synthetic
spectra before or after the normalized page differential gives the same
result. -/
theorem synAdamsDifferential_naturality {X Y : Syn} (f : X ⟶ Y)
    (r : ℤ) (k : ℤ × ℤ × ℤ) :
    synAdamsPageMap Syn f r k ≫ synAdamsDifferential Syn Y r k =
      synAdamsDifferential Syn X r k ≫
        synAdamsPageMap Syn f r (k + (r, r - 1, 0)) := by
  let F := synAdamsSS_functorial Syn f
  have h := F.comm_d r k
  dsimp only at h
  simp only [synAdamsPageMap, synAdamsDifferential]
  sorry

/-! ### Graded λ-module structure -/

/-- A λ-action on a trigraded spectral sequence.  Unlike an ordinary module
structure on one fixed component, λ moves the grading by `(0,0,-1)`.
Compatibility says that applying λ commutes with the page differential; the
final `eqToHom` only exchanges the order of the two degree shifts. -/
structure SynAdamsLambdaModule
    (E : SpectralSequence (AddCommGrpCat.{0}) (ℤ × ℤ × ℤ)) where
  lambda : ∀ (r : ℤ) (k : ℤ × ℤ × ℤ),
    E.Page r k ⟶ E.Page r (k + (0, 0, -1))
  comm_d : ∀ (r : ℤ) (k : ℤ × ℤ × ℤ),
    lambda r k ≫ E.d r (k + (0, 0, -1)) ≫
        eqToHom (congrArg (fun j => E.Page r j) (by
          abel)) =
      E.d r k ≫ lambda r (k + E.diffDeg r)

/-- A free λ-step between two adjacent weight components of one page.
The chosen isomorphism is required to be the actual λ action. -/
structure FreeLambdaPageStep
    {E : SpectralSequence (AddCommGrpCat.{0}) (ℤ × ℤ × ℤ)}
    (L : SynAdamsLambdaModule E) (r : ℤ) (k : ℤ × ℤ × ℤ) where
  iso : E.Page r k ≅ E.Page r (k + (0, 0, -1))
  lambda_eq : L.lambda r k = iso.hom

namespace FreeLambdaPageStep

variable {E : SpectralSequence (AddCommGrpCat.{0}) (ℤ × ℤ × ℤ)}
  {L : SynAdamsLambdaModule E} {r : ℤ} {k : ℤ × ℤ × ℤ}

/-- Multiplication by λ is injective on a free λ-step. -/
theorem lambda_injective (F : FreeLambdaPageStep L r k) :
    Function.Injective (L.lambda r k).hom := by
  rw [F.lambda_eq]
  intro x y hxy
  have h := congrArg (fun z => F.iso.inv.hom z) hxy
  simpa using h

end FreeLambdaPageStep

/-- An element-level page differential `d(x)=y` is essential when its
target class is nonzero on that page. -/
def PageDifferentialEssential
    (E : SpectralSequence (AddCommGrpCat.{0}) (ℤ × ℤ × ℤ))
    (r : ℤ) (k : ℤ × ℤ × ℤ) (x : E.Page r k)
    (y : E.Page r (k + E.diffDeg r)) : Prop :=
  E.d r k x = y ∧ y ≠ 0

namespace SynAdamsLambdaModule

variable {E : SpectralSequence (AddCommGrpCat.{0}) (ℤ × ℤ × ℤ)}

/-- The differential after lowering source weight by one, transported to
the same target grading as λ applied after the original differential. -/
noncomputable def lambdaShiftedDifferential (L : SynAdamsLambdaModule E)
    (r : ℤ) (k : ℤ × ℤ × ℤ) :
    E.Page r (k + (0, 0, -1)) ⟶
      E.Page r ((k + E.diffDeg r) + (0, 0, -1)) :=
  E.d r (k + (0, 0, -1)) ≫
    eqToHom (congrArg (fun j => E.Page r j) (by abel))

/-- Naturality of the Adams differential under λ. -/
theorem lambdaShiftedDifferential_naturality (L : SynAdamsLambdaModule E)
    (r : ℤ) (k : ℤ × ℤ × ℤ) :
    L.lambda r k ≫ L.lambdaShiftedDifferential r k =
      E.d r k ≫ L.lambda r (k + E.diffDeg r) :=
  L.comm_d r k

/-- On a free λ-step at the target, Adams naturality gives
`d(x)=y` essential iff `d(λx)=λy` essential. -/
theorem pageDifferentialEssential_lambda_iff
    (L : SynAdamsLambdaModule E) (r : ℤ) (k : ℤ × ℤ × ℤ)
    (x : E.Page r k) (y : E.Page r (k + E.diffDeg r))
    (F : FreeLambdaPageStep L r (k + E.diffDeg r)) :
    PageDifferentialEssential E r k x y ↔
      ((L.lambdaShiftedDifferential r k).hom
          ((L.lambda r k).hom x) =
        (L.lambda r (k + E.diffDeg r)).hom y ∧
      (L.lambda r (k + E.diffDeg r)).hom y ≠ 0) := by
  have hinj := F.lambda_injective
  have hcomm := congrArg (fun f => f.hom x)
    (L.lambdaShiftedDifferential_naturality r k)
  change (L.lambdaShiftedDifferential r k).hom
      ((L.lambda r k).hom x) =
    (L.lambda r (k + E.diffDeg r)).hom ((E.d r k).hom x) at hcomm
  constructor
  · rintro ⟨hxy, hy⟩
    constructor
    · rw [hcomm, hxy]
    · intro hzero
      apply hy
      apply hinj
      simpa using hzero
  · rintro ⟨hxy, hly⟩
    constructor
    · apply hinj
      rw [← hcomm, hxy]
    · intro hy
      apply hly
      simp [hy]

end SynAdamsLambdaModule

/-- KIP §3: every page of the synthetic Adams spectral sequence has its
graded λ-action, and that action commutes with the differential.  This
replaces the former componentwise `Module (Polynomial ℤ)` statement, which
could not express the change in weight. -/
axiom synAdamsSS_zlambda_module (Syn : Type u) [Category.{v} Syn] [Preadditive Syn]
    [HasZeroObject Syn] [HasShift Syn ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
    [MonoidalCategory Syn]
    [Pretriangulated Syn] [SyntheticCategory Syn] (X : Syn) :
    SynAdamsLambdaModule (SynAdamsSS Syn X)

end KIPBase.Synthetic
