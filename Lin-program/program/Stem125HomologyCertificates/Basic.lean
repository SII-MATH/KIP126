import PageTransitionCertificates.Import
import PageTransitionCertificates.AdditiveQuotient
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Sigma
import Mathlib.SetTheory.Cardinal.Finite

namespace Stem125HomologyCertificates
open LinearCertificates PageTransitionCertificates

abbrev LocalHomology (w : WireComparison) :=
  Homology (matrixOf w.k w.m w.outgoing) (matrixOf w.m w.n w.incoming)

abbrev TotalHomology {N : Nat} (w : Fin N → WireComparison) :=
  (i : Fin N) → LocalHomology (w i)

abbrev TotalCoordinates {N : Nat} (w : Fin N → WireComparison) :=
  (i : Fin N) → Vec (w i).h

def localEquiv (w : WireComparison) (valid : w.Valid) : LocalHomology w ≃ Vec w.h where
  toFun := (homologyEquivalence _ _ w.comparison valid.2).toCoordinates
  invFun := (homologyEquivalence _ _ w.comparison valid.2).fromCoordinates
  left_inv := (homologyEquivalence _ _ w.comparison valid.2).leftInverse
  right_inv := (homologyEquivalence _ _ w.comparison valid.2).rightInverse

def totalEquiv {N : Nat} (w : Fin N → WireComparison) (valid : ∀ i, (w i).Valid) :
    TotalHomology w ≃ TotalCoordinates w := Equiv.piCongrRight (fun i => localEquiv (w i) (valid i))

def totalAdd {N : Nat} (w : Fin N → WireComparison) (x y : TotalHomology w) : TotalHomology w :=
  fun i => homologyAdd _ _ (x i) (y i)

theorem totalEquiv_add {N : Nat} (w : Fin N → WireComparison) (valid : ∀ i, (w i).Valid)
    (x y : TotalHomology w) :
    totalEquiv w valid (totalAdd w x y) = fun i => add (totalEquiv w valid x i) (totalEquiv w valid y i) := by
  funext i
  exact homologyCoordinates_add _ _ (w i).comparison (valid i).2 (x i) (y i)

abbrev CoordinateIndex {N : Nat} (dims : Fin N → Nat) := (i : Fin N) × Fin (dims i)

noncomputable def flatten {N D : Nat} (dims : Fin N → Nat)
    (count : Fintype.card (CoordinateIndex dims) = D) : ((i : Fin N) → Vec (dims i)) ≃ Vec D :=
  (Equiv.piCurry (fun (_ : Fin N) (_ : Fin (dims _)) => Bool)).symm.trans
    (Equiv.arrowCongr (Fintype.equivFinOfCardEq count) (Equiv.refl Bool))

theorem flatten_add {N D : Nat} (dims : Fin N → Nat)
    (count : Fintype.card (CoordinateIndex dims) = D)
    (x y : (i : Fin N) → Vec (dims i)) :
    flatten dims count (fun i => add (x i) (y i)) = add (flatten dims count x) (flatten dims count y) := by
  rfl

noncomputable def totalFlatEquiv {N D : Nat} (w : Fin N → WireComparison)
    (valid : ∀ i, (w i).Valid) (count : Fintype.card (CoordinateIndex (fun i => (w i).h)) = D) :
    TotalHomology w ≃ Vec D := (totalEquiv w valid).trans (flatten _ count)

theorem totalFlatEquiv_add {N D : Nat} (w : Fin N → WireComparison)
    (valid : ∀ i, (w i).Valid) (count : Fintype.card (CoordinateIndex (fun i => (w i).h)) = D)
    (x y : TotalHomology w) :
    totalFlatEquiv w valid count (totalAdd w x y) =
      add (totalFlatEquiv w valid count x) (totalFlatEquiv w valid count y) := by
  change flatten _ count (totalEquiv w valid (totalAdd w x y)) = _
  rw [totalEquiv_add]
  exact flatten_add _ count _ _

theorem total_card {N D : Nat} (w : Fin N → WireComparison)
    (valid : ∀ i, (w i).Valid) (count : Fintype.card (CoordinateIndex (fun i => (w i).h)) = D) :
    Nat.card (TotalHomology w) = 2 ^ D := by
  rw [Nat.card_congr (totalFlatEquiv w valid count)]
  simp [Vec, Nat.card_eq_fintype_card]

/-- The quotient is by boundaries on all cycles, not by named inventory rows. -/
theorem all_classes_represented {N D : Nat} (w : Fin N → WireComparison)
    (valid : ∀ i, (w i).Valid) (count : Fintype.card (CoordinateIndex (fun i => (w i).h)) = D)
    (x : TotalHomology w) : ∃ z : Vec D, (totalFlatEquiv w valid count).symm z = x :=
  ⟨totalFlatEquiv w valid count x, (totalFlatEquiv w valid count).symm_apply_apply x⟩

theorem all_coordinates_distinct {N D : Nat} (w : Fin N → WireComparison)
    (valid : ∀ i, (w i).Valid) (count : Fintype.card (CoordinateIndex (fun i => (w i).h)) = D)
    (x y : TotalHomology w) : totalFlatEquiv w valid count x = totalFlatEquiv w valid count y ↔ x = y :=
  (totalFlatEquiv w valid count).injective.eq_iff

def checkTotal {N : Nat} (w : Fin N → WireComparison) (D : Nat) : Bool :=
  (List.finRange N).all (fun i => checkWire (w i)) &&
    decide (Fintype.card (CoordinateIndex (fun i => (w i).h)) = D)

theorem checkTotal_sound {N : Nat} (w : Fin N → WireComparison) (D : Nat)
    (checked : checkTotal w D = true) : Nat.card (TotalHomology w) = 2 ^ D := by
  simp only [checkTotal, Bool.and_eq_true, decide_eq_true_eq] at checked
  apply total_card w (fun i => checkWire_sound (w i) ?_) checked.2
  exact List.all_eq_true.mp checked.1 i (List.mem_finRange i)

instance {N : Nat} (w : Fin N → WireComparison) (D : Nat) :
    LinProgramCertificates.CertificateVerifier (Nat.card (TotalHomology w) = 2 ^ D) where
  Cert := Unit
  check := fun _ => checkTotal w D
  sound := fun _ => checkTotal_sound w D

syntax "stem_homology_cert" " using " term : tactic
macro_rules
  | `(tactic| stem_homology_cert using $c:term) => `(tactic| lin_cert using $c)

def diagnoseTotal {N : Nat} (w : Fin N → WireComparison) (D : Nat) : Option String := Id.run do
  for i in List.finRange N do
    if let some err := diagnose (w i) then return some s!"center[{i.val}]: {err}"
  if Fintype.card (CoordinateIndex (fun i => (w i).h)) != D then
    return some "homology coordinate count does not match the requested result"
  return none

#print axioms totalFlatEquiv_add
#print axioms total_card
#print axioms all_classes_represented
#print axioms all_coordinates_distinct
#print axioms checkTotal_sound
end Stem125HomologyCertificates
