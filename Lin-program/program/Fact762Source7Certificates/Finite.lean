import Fact762IncomingCertificates.Incoming

namespace Fact762Source7Certificates
open LinearCertificates ResolutionCertificates PageTransitionCertificates

def sourceE2 : WireComparison := AggregateD5Conditional.Data.b_S0_7_133_d2
theorem sourceE2_checked : sourceE2.Valid := AggregateD5Conditional.Data.b_S0_7_133_d2_complete

def sourceCoordinates := homologyEquivalence
  (matrixOf 5 2 sourceE2.outgoing) (matrixOf 2 1 sourceE2.incoming)
  sourceE2.comparison sourceE2_checked.2
def sourceZero : Homology (matrixOf 5 2 sourceE2.outgoing) (matrixOf 2 1 sourceE2.incoming) :=
  Quot.mk _ ⟨zero,eval_zero _⟩
def sourceNamed : Homology (matrixOf 5 2 sourceE2.outgoing) (matrixOf 2 1 sourceE2.incoming) :=
  Quot.mk _ ⟨fun i => i.val == 0,by unfold InKernel; decide⟩

theorem source_named_coordinates : sourceCoordinates.toCoordinates sourceNamed = (fun _ => true) := by decide
theorem source_zero_coordinates : sourceCoordinates.toCoordinates sourceZero = zero := by decide
theorem source_named_nonzero : sourceNamed ≠ sourceZero := by
  intro h
  have hh := congrArg sourceCoordinates.toCoordinates h
  rw [source_named_coordinates,source_zero_coordinates] at hh
  have hi := congrFun hh ⟨0,by decide⟩
  contradiction

theorem source_all_classes (x : Homology (matrixOf 5 2 sourceE2.outgoing)
    (matrixOf 2 1 sourceE2.incoming)) : x = sourceZero ∨ x = sourceNamed := by
  have cases : ∀ v : Vec 1, v = zero ∨ v = (fun _ => true) := by decide
  rcases cases (sourceCoordinates.toCoordinates x) with h | h
  · left
    have hh := congrArg sourceCoordinates.fromCoordinates (h.trans source_zero_coordinates.symm)
    simpa only [sourceCoordinates.leftInverse] using hh
  · right
    have hh := congrArg sourceCoordinates.fromCoordinates (h.trans source_named_coordinates.symm)
    simpa only [sourceCoordinates.leftInverse] using hh

def incoming5 : WireComparison := AggregateD5Conditional.Data.b_S0_2_129_d2
def incoming6 : WireComparison := AggregateD5Conditional.Data.b_S0_1_128_d2
theorem incoming5_zero (x : Homology (matrixOf 2 1 incoming5.outgoing)
    (matrixOf 1 0 incoming5.incoming)) : x = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  AllClaimZeroTargetCertificates.zero_quotient incoming5.comparison
    AggregateD5Conditional.Data.b_S0_2_129_d2_complete.2 x
theorem incoming6_zero (x : Homology (matrixOf 1 1 incoming6.outgoing)
    (matrixOf 1 0 incoming6.incoming)) : x = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  AllClaimZeroTargetCertificates.zero_quotient incoming6.comparison
    AggregateD5Conditional.Data.b_S0_1_128_d2_complete.2 x

def zeroMatrix (m n : Nat) : Matrix m n := fun _ _ => false
theorem eval_zeroMatrix (x : Vec n) : eval (zeroMatrix m n) x = zero := by
  funext i
  exact zero_dot x

/-- Complete comparison for one surviving coordinate and a zero incoming
space. The outgoing target dimension is arbitrary and is never guessed. -/
def identityComparison (k : Nat) : Comparison k 1 0 1 :=
  ⟨identityMatrix 1,identityMatrix 1,zeroMatrix 0 1,zeroMatrix 1 k⟩

theorem identityComparison_complete (k : Nat) :
    HomologyComparison (zeroMatrix k 1) (zeroMatrix 1 0) (identityComparison k) := by
  refine ⟨?_,?_,?_,?_,?_⟩
  · intro x; exact eval_zeroMatrix _
  · intro x; exact eval_zeroMatrix _
  · intro x; exact (eval_identity (eval (identityMatrix 1) x)).trans (eval_identity x)
  · intro x _
    refine ⟨zero,?_⟩
    simp only [identityComparison,eval_identity,eval_zero,add_self]
  · intro x y _ _
    simp only [identityComparison,eval_identity]
    constructor
    · intro h
      subst y
      exact ⟨zero,(eval_zero _).trans (add_self x).symm⟩
    · rintro ⟨z,hz⟩
      exact (add_eq_zero_iff x y).mp ((eval_zeroMatrix z).symm.trans hz).symm

theorem matrix_zero_from_named (outgoing : Matrix k 1)
    (hpref : eval outgoing (fun _ => true) = zero) : outgoing = zeroMatrix k 1 := by
  funext i j
  have h := congrFun hpref i
  have hj : j = 0 := Fin.eq_zero j
  subst j
  simpa only [eval,dot,Bool.and_true,Bool.xor_false,zero,zeroMatrix] using h

/-- One named prefix value determines every column because the full source
coordinate space is Vec1. A complete zero incoming source gives Vec0. -/
theorem comparison_from_named_prefix (outgoing : Matrix k 1) (incoming : Matrix 1 0)
    (hpref : eval outgoing (fun _ => true) = zero) :
    HomologyComparison outgoing incoming (identityComparison k) := by
  have out := matrix_zero_from_named outgoing hpref
  have inc : incoming = zeroMatrix 1 0 := by
    funext i j
    exact Fin.elim0 j
  rw [out,inc]
  exact identityComparison_complete k

def higherCoordinates (k : Nat) := homologyEquivalence
  (zeroMatrix k 1) (zeroMatrix 1 0) (identityComparison k) (identityComparison_complete k)

/-- These are full E6/E7 finite quotient models after their respective
prefix columns and zero incoming-source realizations have been supplied. -/
abbrev E6 (k5 : Nat) := Homology (zeroMatrix k5 1) (zeroMatrix 1 0)
abbrev E7 (k6 : Nat) := Homology (zeroMatrix k6 1) (zeroMatrix 1 0)

#print axioms source_all_classes
#print axioms incoming5_zero
#print axioms incoming6_zero
#print axioms identityComparison_complete
#print axioms comparison_from_named_prefix
end Fact762Source7Certificates
