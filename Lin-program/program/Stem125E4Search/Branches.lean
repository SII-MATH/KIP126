import Stem125E4Search.Zero
import Row2574Detector.Additional.Combined
import IndexedFamilyCertificates.Coherence

namespace Stem125E4Search.Branches
open LinearCertificates PageTransitionCertificates Stem125HomologyCertificates
open Row2574Detector.Quotient Row2574Detector.Additional

abbrev sphere9 := AggregateD5Conditional.Data.b_S0_9_134_d2

def detectorCoordinates (v : Vec 3) : Vec 3 :=
  eval sphere9.comparison.projection (eval detect.right.comparison.inclusion v)

theorem coordinate_permutation (v : Vec 3) :
    detectorCoordinates v = ![v 1, v 2, v 0] := by
  exact (show ∀ v : Vec 3, detectorCoordinates v = ![v 1,v 2,v 0] from by decide) v

theorem projection_matches_on_all_cycles (x : Cycle (out detect.right)) :
    eval sphere9.comparison.projection x.val =
      detectorCoordinates (candidateCoordinates.toCoordinates (Quot.mk _ x)) := by
  have h : ∀ v : Vec 5, eval sphere9.comparison.projection v =
      detectorCoordinates (eval detect.right.comparison.projection v) := by decide
  exact h x.val

theorem constrained_column
    (d : Q ann.right → Q detect.right)
    (dp : Q ann.target → Q detect.target) (df : Q annF.target → Q detectF.target)
    (known : dp productNamed = knownValue)
    (h2Leibniz : ∀ x, dp (annMap x) = detectMap (d x))
    (f0Zero : df (z annF.target) = z detectF.target)
    (f0Leibniz : ∀ x, df (annMapF x) = detectMapF (d x)) :
    ∃ b : Bool, detectorCoordinates (candidateCoordinates.toCoordinates (d named)) = ![b,true,false] := by
  have h := two_candidate_restriction d dp df known h2Leibniz f0Zero f0Leibniz
  let v : Vec 3 := candidateCoordinates.toCoordinates (d named)
  have hv : v 0 = false ∧ v 2 = true := h
  refine ⟨v 1, ?_⟩
  change detectorCoordinates v = ![v 1,true,false]
  rw [coordinate_permutation, hv.1, hv.2]

def incomingColumn (b : Bool) : Matrix 3 1 := fun i _ => (![b,true,false] : Vec 3) i
def outgoing : Matrix 1 3 := matrixOf 1 3 [false,false,true]

theorem branch_incoming (b : Bool) :
    matrixOf 3 1 (Data.branch b).incoming = incomingColumn b := by
  cases b <;> decide

theorem branch_outgoing (b : Bool) :
    matrixOf 1 3 (Data.branch b).outgoing = outgoing := by
  cases b <;> rfl

/-- The other columns must also be supplied: one named value is not a whole map. -/
theorem outgoing_from_basis_values (A : Matrix 1 3)
    (first : eval A (![true,false,false] : Vec 3) = zero)
    (second : eval A (![false,true,false] : Vec 3) = zero)
    (third : eval A (![false,false,true] : Vec 3) = fun _ => true) : A = outgoing := by
  exact (show ∀ A : Matrix 1 3,
    eval A (![true,false,false] : Vec 3) = zero →
    eval A (![false,true,false] : Vec 3) = zero →
    eval A (![false,false,true] : Vec 3) = (fun _ => true) → A = outgoing from by decide) A first second third

theorem incoming_from_value (B : Matrix 3 1) (b : Bool)
    (value : eval B (fun _ => true) = ![b,true,false]) : B = incomingColumn b := by
  exact (show ∀ B : Matrix 3 1, ∀ b : Bool,
    eval B (fun _ => true) = ![b,true,false] → B = incomingColumn b from by decide) B b value

theorem local_dimension_without_choosing_branch (A : Matrix 1 3) (B : Matrix 3 1)
    (outgoing_values : A = outgoing)
    (incoming_values : ∃ b : Bool, B = incomingColumn b) :
    Nonempty (Homology A B ≃ Vec 1) := by
  obtain ⟨b,rfl⟩ := incoming_values
  subst A
  cases b
  · rw [← branch_outgoing false, ← branch_incoming false]
    exact ⟨localEquiv Data.branch0 Data.branch0_complete⟩
  · rw [← branch_outgoing true, ← branch_incoming true]
    exact ⟨localEquiv Data.branch1 Data.branch1_complete⟩

def family (b : Bool) : IndexedFamilyCertificates.Family :=
  [⟨⟨"S0",2,6,132⟩, AggregateD5Conditional.Data.b_S0_6_132_d2⟩,
   ⟨⟨"S0",2,9,134⟩, sphere9⟩,
   ⟨⟨"S0",2,12,136⟩, AggregateD5Conditional.Data.b_S0_12_136_d2⟩,
   ⟨⟨"S0",3,9,134⟩, Data.branch b⟩,
   ⟨⟨"S0",3,12,136⟩, AggregateD5Conditional.Data.b_S0_12_136_d3⟩]

theorem coherent (b : Bool) : IndexedFamilyCertificates.Coherent (family b) := by
  cases b <;> lin_cert using ()

#print axioms constrained_column
#print axioms local_dimension_without_choosing_branch
#print axioms coherent
end Stem125E4Search.Branches
