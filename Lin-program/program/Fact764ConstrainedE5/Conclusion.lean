import Fact764ConstrainedE5.Coordinates
import Stem125E5Search.Branches
import UniqueHomologyCertificates.Basic

namespace Fact764ConstrainedE5.Conclusion
open LinearCertificates PageTransitionCertificates BranchReplayCertificates
open Coordinates UniqueHomologyCertificates
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def outgoing : Matrix 1 3 := fun _ _ => false
def incoming (b : Bool) : Matrix 3 2 := matrixOf 3 2 [true,b,false,true,false,true]

/-- These are the two existing E5 branches, with the unchosen boundary ambiguity retained. -/
def branchIndex (b : Bool) : Fin 20 := if b then 18 else 8

theorem existing_branch (b : Bool) :
    (Stem125E5Search.Data.twentyfive (branchIndex b)).h = 1 ∧
    matrixOf 1 3 (Stem125E5Search.Data.twentyfive (branchIndex b)).outgoing = outgoing ∧
    matrixOf 3 2 (Stem125E5Search.Data.twentyfive (branchIndex b)).incoming = incoming b := by
  cases b <;> decide

def certificate (b : Bool) : Certificate outgoing (incoming b) named where
  comparison :=
    { inclusion := fun i _ => i.val == 1
      projection := fun _ j => j.val != 0
      up := matrixOf 2 3 [true,false,b,false,false,true]
      down := fun _ _ => false }

theorem checked (b : Bool) : checkCertificate outgoing (incoming b) named (certificate b) = true := by
  cases b <;> decide

theorem unique (b : Bool) : IsUniqueNonzeroClass outgoing (incoming b) named :=
  certificate_sound outgoing (incoming b) named (certificate b) (checked b)

example : IsUniqueNonzeroClass outgoing (incoming false) named := by
  unique_homology_cert using certificate false

theorem compatible_target (candidate : Vec 4)
    (cycle : candidate 0 = candidate 1)
    (productLaw : ProductRefutation.Compatible candidate)
    (mapLaw : MapRefutation.Compatible candidate) :
    targetToE4 candidate = ![candidate 3,true,true] := by
  have affine := MapRefutation.combined_affine candidate cycle productLaw mapLaw
  have classify : ∀ v : Vec 4,
      AdvancedRuleCertificates.Affine.Member uncertainty base v →
      targetToE4 v = ![v 3,true,true] := by unfold AdvancedRuleCertificates.Affine.Member; decide
  exact classify candidate affine

/-- Both source columns, the exact quotient coordinates, and full outgoing zero are inputs. -/
theorem unique_from_constraints (A : Matrix 1 3) (B : Matrix 3 2) (candidate : Vec 4)
    (cycle : candidate 0 = candidate 1)
    (productLaw : ProductRefutation.Compatible candidate)
    (mapLaw : MapRefutation.Compatible candidate)
    (known : eval B knownSource = knownBoundary)
    (unknown : eval B unknownSource = targetToE4 candidate)
    (fullOutgoingZero : A = outgoing) :
    IsUniqueNonzeroClass A B named := by
  have hc := compatible_target candidate cycle productLaw mapLaw
  have columns : ∀ (B : Matrix 3 2) (b : Bool),
      eval B knownSource = knownBoundary → eval B unknownSource = ![b,true,true] →
      B = incoming b := by decide
  have hb := columns B (candidate 3) known (unknown.trans hc)
  rw [fullOutgoingZero, hb]
  exact unique (candidate 3)

theorem selected_branches (i : Fin 20)
    (second : eval (matrixOf 3 2 (Stem125E5Search.Data.twentyfive i).incoming)
      unknownSource = ![(matrixOf 3 2 (Stem125E5Search.Data.twentyfive i).incoming) 0 1,true,true])
    (fullOutgoingZero : matrixOf 1 3 (Stem125E5Search.Data.twentyfive i).outgoing = outgoing) :
    i = 8 ∨ i = 18 := by
  exact (show ∀ i : Fin 20,
    eval (matrixOf 3 2 (Stem125E5Search.Data.twentyfive i).incoming) unknownSource =
      ![(matrixOf 3 2 (Stem125E5Search.Data.twentyfive i).incoming) 0 1,true,true] →
    matrixOf 1 3 (Stem125E5Search.Data.twentyfive i).outgoing = outgoing →
    i = 8 ∨ i = 18 from by decide) i second fullOutgoingZero

/-- A genuine d4 cycle for the named element suffices in this constrained complex. -/
theorem named_cycle_forces_full_zero (A : Matrix 1 3) (b : Bool)
    (complex : IsComplex A (incoming b)) (cycle : InKernel A named) : A = outgoing := by
  exact (show ∀ (A : Matrix 1 3) (b : Bool),
    IsComplex A (incoming b) → InKernel A named → A = outgoing from by
      unfold IsComplex InKernel; decide) A b complex cycle

theorem unique_from_named_cycle (A : Matrix 1 3) (B : Matrix 3 2) (candidate : Vec 4)
    (cycle : candidate 0 = candidate 1)
    (productLaw : ProductRefutation.Compatible candidate)
    (mapLaw : MapRefutation.Compatible candidate)
    (known : eval B knownSource = knownBoundary)
    (unknown : eval B unknownSource = targetToE4 candidate)
    (complex : IsComplex A B) (namedCycle : InKernel A named) :
    IsUniqueNonzeroClass A B named := by
  have hc := compatible_target candidate cycle productLaw mapLaw
  have hb : B = incoming (candidate 3) :=
    (show ∀ (B : Matrix 3 2) (b : Bool),
      eval B knownSource = knownBoundary → eval B unknownSource = ![b,true,true] →
      B = incoming b from by decide) B (candidate 3) known (unknown.trans hc)
  exact unique_from_constraints A B candidate cycle productLaw mapLaw known unknown
    (named_cycle_forces_full_zero A (candidate 3) (hb ▸ complex) namedCycle)

theorem constrained_branches (i : Fin 20)
    (second : eval (matrixOf 3 2 (Stem125E5Search.Data.twentyfive i).incoming)
      unknownSource = ![(matrixOf 3 2 (Stem125E5Search.Data.twentyfive i).incoming) 0 1,true,true]) :
    i = 8 ∨ i = 9 ∨ i = 18 ∨ i = 19 := by
  exact (show ∀ i : Fin 20,
    eval (matrixOf 3 2 (Stem125E5Search.Data.twentyfive i).incoming) unknownSource =
      ![(matrixOf 3 2 (Stem125E5Search.Data.twentyfive i).incoming) 0 1,true,true] →
    i = 8 ∨ i = 9 ∨ i = 18 ∨ i = 19 from by decide) i second

def nonzeroOutgoing : Matrix 1 3 := matrixOf 1 3 [false,true,true]

/-- Complex law and both obstruction constraints alone still allow this differential. -/
theorem counterexample (b : Bool) :
    IsComplex nonzeroOutgoing (incoming b) ∧
    ¬ InKernel nonzeroOutgoing named ∧
    ¬ IsUniqueNonzeroClass nonzeroOutgoing (incoming b) named := by
  cases b <;> unfold IsUniqueNonzeroClass IsComplex InKernel InImage <;> decide

theorem counterexample_existing (b : Bool) :
    let i : Fin 20 := if b then 19 else 9
    matrixOf 1 3 (Stem125E5Search.Data.twentyfive i).outgoing = nonzeroOutgoing ∧
    matrixOf 3 2 (Stem125E5Search.Data.twentyfive i).incoming = incoming b ∧
    (Stem125E5Search.Data.twentyfive i).h = 0 := by
  cases b <;> decide

#print axioms unique
#print axioms unique_from_constraints
#print axioms selected_branches
#print axioms named_cycle_forces_full_zero
#print axioms unique_from_named_cycle
#print axioms constrained_branches
#print axioms counterexample
end Fact764ConstrainedE5.Conclusion
