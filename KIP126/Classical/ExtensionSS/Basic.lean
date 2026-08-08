import KIP126.Classical.Adams.Basic
import KIP126.External.Claims
import Mathlib.Algebra.Category.ModuleCat.Abelian
import Mathlib.Algebra.Homology.SpectralSequence.Basic

/-!
# The concrete classical eta extension spectral sequence

This is deliberately a paper-specific construction.  It returns Mathlib's
`CategoryTheory.SpectralSequence` and keeps the finite eta regression and its
set-valued detection relation in the concrete input, rather than extending the
shared spectral-sequence kernel with `Z`, `B`, or `E∞` fields.
-/

namespace KIP126.Classical.ExtensionSS

open CategoryTheory CategoryTheory.Limits
open KIP126.Classical.Adams
open KIP126.External

abbrev Index := Bidegree
abbrev Coeff := ModuleCat (ZMod 2)

/-- The `(n,n)` differential shape of a classical eta-ESS page. -/
def etaESSShape (n : ℤ) : ComplexShape Index := ComplexShape.up' (n, n)

@[simp] theorem etaESSShape_rel (n : ℤ) (b : Index) :
    (etaESSShape n).Rel b (b + (n, n)) := by
  simp [etaESSShape]

/-- One named finite eta-ESS differential, retaining its source locator. -/
structure EtaDifferential where
  source : String
  target : String
  length : ℕ
  sourceDegree : Index
  targetDegree : Index
  sourceFiltration : ℤ
  targetFiltration : ℤ
  locator : Locator
  essential : Bool
  deriving DecidableEq, Repr, Inhabited

private def etaLocator (description : String) : Locator :=
  { description := description
    artifact := some "aimpaper/main.tex" }

def etaD₁ : EtaDifferential :=
  { source := "h₅d₀", target := "h₁h₅d₀", length := 1
    sourceDegree := (5, 21), targetDegree := (6, 22)
    sourceFiltration := 6, targetFiltration := 7
    locator := etaLocator "AIM Example 2.11, d₁ eta extension"
    essential := true }

def etaD₂ : EtaDifferential :=
  { source := "Δh₁g", target := "d₀l", length := 2
    sourceDegree := (7, 27), targetDegree := (9, 29)
    sourceFiltration := 11, targetFiltration := 13
    locator := etaLocator "AIM Example 2.11, d₂ eta extension"
    essential := true }

def etaD₃ : EtaDifferential :=
  { source := "h₁g₂", target := "Δh₂c₁", length := 3
    sourceDegree := (4, 24), targetDegree := (7, 27)
    sourceFiltration := 8, targetFiltration := 11
    locator := etaLocator "AIM Example 2.11, d₃ eta extension"
    essential := true }

def etaD₄ : EtaDifferential :=
  { source := "h₃²h₅", target := "Mh₁", length := 4
    sourceDegree := (3, 20), targetDegree := (7, 24)
    sourceFiltration := 7, targetFiltration := 11
    locator := etaLocator "AIM Example 2.11, d₄ eta extension"
    essential := true }

def etaD₂Inessential : EtaDifferential :=
  { source := "h₀h₃²h₅", target := "h₁h₅d₀", length := 2
    sourceDegree := (4, 21), targetDegree := (6, 22)
    sourceFiltration := 5, targetFiltration := 7
    locator := etaLocator "AIM Example 2.11, inessential d₂ eta extension"
    essential := false }

/-- The finite set of eta-extension rows used by the tracer bullet. -/
def etaESSDifferentials : Set EtaDifferential :=
  {etaD₁, etaD₂, etaD₃, etaD₄, etaD₂Inessential}

namespace KIP126.Classical.Regression

/-- The source-backed eta regression claim consumed by the concrete ESS. -/
def etaEss (rows : Set EtaDifferential) : Prop :=
  rows = etaESSDifferentials

end KIP126.Classical.Regression

/-- Concrete data for the eta extension sequence.  `detected` is a set, so a
class may have many detected representatives. -/
structure EtaESSInput where
  X∞ : GradedObject Index Coeff
  Y∞ : GradedObject Index Coeff
  etaMap : ∀ b, X∞ b ⟶ Y∞ b
  differentials : Set EtaDifferential
  detected : Set EtaDifferential
  detected_eq_differentials : detected = differentials
  ledgerEvidence : CataloguedExternalEvidence
    (KIP126.Classical.Regression.etaEss differentials)

/-- The page-zero object is the direct categorical sum of the two `E∞` terms. -/
def E₀ (D : EtaESSInput) : GradedObject Index Coeff :=
  fun b => D.X∞ b ⊞ D.Y∞ b

/-- The abutment is displayed componentwise as kernel plus cokernel. -/
noncomputable def abutment (D : EtaESSInput) : GradedObject Index Coeff :=
  fun b => kernel (D.etaMap b) ⊞ cokernel (D.etaMap b)

theorem abutment_component (D : EtaESSInput) (b : Index) :
    abutment D b = kernel (D.etaMap b) ⊞ cokernel (D.etaMap b) := rfl

noncomputable def etaPage (D : EtaESSInput)
    (_claim : KIP126.Classical.Regression.etaEss D.differentials) (n : ℤ) :
    HomologicalComplex Coeff (etaESSShape n) where
  X := fun b => E₀ D b
  d := fun _ _ => 0
  shape := by intro i j hij; simp
  d_comp_d' := by intro i j k hij hjk; simp

noncomputable def etaPageIso (D : EtaESSInput)
    (claim : KIP126.Classical.Regression.etaEss D.differentials)
    (n : ℤ) (b : Index) :
    (etaPage D claim n).homology b ≅ (etaPage D claim (n + 1)).X b := by
  let S := (etaPage D claim n).sc b
  exact (HomologyData.ofZeros S rfl rfl).left.homologyIso

/-- The concrete classical eta-ESS returned by this module. -/
noncomputable def etaESS (D : EtaESSInput) :
    SpectralSequence Coeff etaESSShape 0 where
  page n _ := etaPage D D.ledgerEvidence.value.evidence n
  iso n _ b _ _ := etaPageIso D D.ledgerEvidence.value.evidence n b

abbrev ClassicalEtaESS := SpectralSequence Coeff etaESSShape 0

def differentialDegree (n : ℕ) : Index := (n, n)

/-- A paper-specific extension relation on the concrete finite rows. -/
def FExtension (D : EtaESSInput) (row : EtaDifferential) : Prop :=
  row ∈ D.differentials

/-- Set-valued detection predicate for the concrete construction. -/
def DetectedBy (D : EtaESSInput) (row : EtaDifferential) : Prop :=
  row ∈ D.detected

/-- Essentiality is only defined for rows of this concrete eta construction. -/
def Essential (D : EtaESSInput) (row : EtaDifferential) : Prop :=
  FExtension D row ∧ row.essential = true

/-- A crossing is a pair of concrete rows with the prescribed filtration order. -/
def Crossing (D : EtaESSInput) (row : EtaDifferential) : Prop :=
  ∃ other, other ∈ D.differentials ∧ other.sourceFiltration > row.sourceFiltration ∧
    other.targetFiltration ≤ row.targetFiltration

theorem extension_iff_detected (D : EtaESSInput) (row : EtaDifferential) :
    FExtension D row ↔ DetectedBy D row := by
  simpa [FExtension, DetectedBy, D.detected_eq_differentials]

theorem differential_claim (D : EtaESSInput) :
    KIP126.Classical.Regression.etaEss D.differentials :=
  D.ledgerEvidence.value.evidence

theorem etaD₄_has_degree (D : EtaESSInput) :
    etaD₄ ∈ D.differentials :=
  by
    have h := differential_claim D
    change D.differentials = etaESSDifferentials at h
    rw [h]
    simp [etaESSDifferentials]

theorem etaD₁_has_locator :
    etaD₁.locator.artifact = some "aimpaper/main.tex" := rfl

theorem etaD₄_has_crossing (D : EtaESSInput) :
    Crossing D etaD₄ ↔ ∃ other, other ∈ D.differentials ∧
      other.sourceFiltration > etaD₄.sourceFiltration ∧
      other.targetFiltration ≤ etaD₄.targetFiltration := Iff.rfl

end KIP126.Classical.ExtensionSS
