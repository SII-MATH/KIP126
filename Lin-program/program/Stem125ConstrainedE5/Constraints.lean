import Stem125ConstrainedE5.Whole
import Fact764CycleFromProduct.Basic

namespace Stem125ConstrainedE5
open LinearCertificates PageTransitionCertificates Stem125E5Search
open BranchReplayCertificates Fact764ConstrainedE5

def outgoing25 (c : Product.Choice) : Matrix 1 3 :=
  matrixOf 1 3 (Data.twentyfive c.twentyfive).outgoing

def incoming25 (c : Product.Choice) : Matrix 3 2 :=
  matrixOf 3 2 (Data.twentyfive c.twentyfive).incoming

/-- Complete source columns, both obstructions and an actual named-cycle
interpretation select precisely the two retained finite comparisons. -/
theorem select_from_constraints (c : Product.Choice) (candidate : Vec 4)
    (cycle : candidate 0 = candidate 1)
    (productLaw : ProductRefutation.Compatible candidate)
    (mapLaw : MapRefutation.Compatible candidate)
    (known : eval (incoming25 c) Coordinates.knownSource = Coordinates.knownBoundary)
    (unknown : eval (incoming25 c) Coordinates.unknownSource = Coordinates.targetToE4 candidate)
    (complex : IsComplex (outgoing25 c) (incoming25 c))
    (namedCycle : InKernel (outgoing25 c) Coordinates.named) :
    ∃ b : Bool, embed ⟨c.nine,c.fourteen,c.fifteen,b⟩ = c := by
  have target := Conclusion.compatible_target candidate cycle productLaw mapLaw
  have columns : ∀ (B : Matrix 3 2) (b : Bool),
      eval B Coordinates.knownSource = Coordinates.knownBoundary →
      eval B Coordinates.unknownSource = ![b,true,true] → B = Conclusion.incoming b := by decide
  have incomingEq := columns (incoming25 c) (candidate 3) known (unknown.trans target)
  have outgoingEq : outgoing25 c = Conclusion.outgoing :=
    Conclusion.named_cycle_forces_full_zero _ _ (incomingEq ▸ complex) namedCycle
  have second : eval (incoming25 c) Coordinates.unknownSource =
      ![(incoming25 c) 0 1,true,true] := by
    rw [incomingEq]
    exact (show ∀ b : Bool, eval (Conclusion.incoming b) Coordinates.unknownSource =
      ![(Conclusion.incoming b) 0 1,true,true] from by decide) (candidate 3)
  rcases Conclusion.selected_branches c.twentyfive second outgoingEq with h | h
  · refine ⟨false,?_⟩
    cases c
    simp only [embed,Conclusion.branchIndex,Bool.false_eq_true,ite_false]
    congr
    exact h.symm
  · refine ⟨true,?_⟩
    cases c
    simp only [embed,Conclusion.branchIndex,ite_true]
    congr
    exact h.symm

theorem aggregate_from_constraints (c : Product.Choice) (candidate : Vec 4)
    (cycle : candidate 0 = candidate 1)
    (productLaw : ProductRefutation.Compatible candidate)
    (mapLaw : MapRefutation.Compatible candidate)
    (known : eval (incoming25 c) Coordinates.knownSource = Coordinates.knownBoundary)
    (unknown : eval (incoming25 c) Coordinates.unknownSource = Coordinates.targetToE4 candidate)
    (complex : IsComplex (outgoing25 c) (incoming25 c))
    (namedCycle : InKernel (outgoing25 c) Coordinates.named)
    (zeroCenters : Fin 28 → Stem125E4Search.ZeroCenter) :
    3 ≤ Product.dimension c ∧ Product.dimension c ≤ 6 ∧
      Nat.card (WholeE5 c zeroCenters) = 2 ^ Product.dimension c := by
  obtain ⟨b,hb⟩ := select_from_constraints c candidate cycle productLaw mapLaw known unknown complex namedCycle
  have bounds := dimension_bounds (⟨c.nine,c.fourteen,c.fifteen,b⟩ : Choice)
  change 3 ≤ Product.dimension (embed _) ∧ Product.dimension (embed _) ≤ 6 at bounds
  rw [hb] at bounds
  exact ⟨bounds.1,bounds.2,whole_cardinality c zeroCenters⟩

variable {R : Type*} [CommRing R] [CharP R 2]

/-- The common actual product-differential meaning discharges namedCycle;
the two independent obstruction meanings and complete source columns remain inputs. -/
theorem aggregate_from_product (c : Product.Choice) (candidate : Vec 4)
    (meaning : Fact764CycleFromProduct.Meaning (R:=R) (outgoing25 c))
    (cycle : candidate 0 = candidate 1)
    (productLaw : ProductRefutation.Compatible candidate)
    (mapLaw : MapRefutation.Compatible candidate)
    (known : eval (incoming25 c) Coordinates.knownSource = Coordinates.knownBoundary)
    (unknown : eval (incoming25 c) Coordinates.unknownSource = Coordinates.targetToE4 candidate)
    (complex : IsComplex (outgoing25 c) (incoming25 c))
    (zeroCenters : Fin 28 → Stem125E4Search.ZeroCenter) :
    3 ≤ Product.dimension c ∧ Product.dimension c ≤ 6 ∧
      Nat.card (WholeE5 c zeroCenters) = 2 ^ Product.dimension c :=
  aggregate_from_constraints c candidate cycle productLaw mapLaw known unknown complex
    meaning.named_cycle zeroCenters

#print axioms select_from_constraints
#print axioms aggregate_from_constraints
#print axioms aggregate_from_product
end Stem125ConstrainedE5
