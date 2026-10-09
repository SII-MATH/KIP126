import StaircaseCertificates.Import

namespace StaircaseCertificates
open LinearCertificates

/-- A finite filtered model, not an assertion that software levels are Adams pages. -/
structure FilteredModel (n : Nat) where
  basis : BasisCertificate n
  cycleCoordinates : Nat → Fin n → Bool
  boundaryCoordinates : Nat → Fin n → Bool

def NonzeroAt (s : FilteredModel n) (page : Nat) (x : Vec n) : Prop :=
  InSelectedSpan s.basis.basis (s.cycleCoordinates page) x ∧
  ¬ InSelectedSpan s.basis.basis (s.boundaryCoordinates page) x

def checkNonzeroAt (s : FilteredModel n) (page : Nat) (x : Vec n) (index : Fin n) : Bool :=
  checkSelected s.basis (s.cycleCoordinates page) x &&
  checkNotSelected s.basis (s.boundaryCoordinates page) x index

theorem checkNonzeroAt_sound (s : FilteredModel n) (page : Nat) (x : Vec n) (index : Fin n)
    (h : checkNonzeroAt s page x index = true) : NonzeroAt s page x := by
  simp only [checkNonzeroAt, Bool.and_eq_true] at h
  exact ⟨checkSelected_sound _ _ _ h.1, checkNotSelected_sound _ _ _ _ h.2⟩

def SurvivesThrough (s : FilteredModel n) (first last : Nat) (x : Vec n) : Prop :=
  ∀ r, first ≤ r → r ≤ last → NonzeroAt s r x

def checkSurvives (s : FilteredModel n) (first last : Nat) (x : Vec n)
    (index : Fin n) : Bool :=
  decide (first ≤ last) && (List.range (last + 1)).all
    (fun r => if first ≤ r then checkNonzeroAt s r x index else true)

theorem checkSurvives_sound (s : FilteredModel n) (first last : Nat) (x : Vec n)
    (index : Fin n) (h : checkSurvives s first last x index = true) :
    SurvivesThrough s first last x := by
  simp only [checkSurvives, Bool.and_eq_true] at h
  intro r hfirst hlast
  have hh := List.all_eq_true.mp h.2 r (List.mem_range.mpr (by omega))
  simp only [hfirst, ↓reduceIte] at hh
  exact checkNonzeroAt_sound s r x index hh

instance (s : FilteredModel n) (first last : Nat) (x : Vec n) :
    LinProgramCertificates.CertificateVerifier (SurvivesThrough s first last x) where
  Cert := Fin n
  check := checkSurvives s first last x
  sound := checkSurvives_sound s first last x

end StaircaseCertificates
