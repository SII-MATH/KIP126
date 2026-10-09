import Row3151FullNeighborhood.Checks
import Mathlib.Data.Fintype.Pi

namespace Row3151FullNeighborhood.Semantics
open LinearCertificates PageTransitionCertificates

def incomingDimension (a : Bool) : Nat := if a then 1 else 2
def outgoing3 (a : Bool) : Matrix 1 2 := fun _ j => j.val == 1 && a
def outgoing4 (b : Bool) : Matrix 2 2 := Row3151BranchCertificates.Semantics.outgoing b false
def incoming4 (a b q : Bool) : Matrix 2 (incomingDimension a) :=
  fun i j => !a && j.val == 1 && q && (i.val == 0 || b)
def prefixVector (a : Bool) : Vec (incomingDimension a) := fun i => i.val == 0

theorem d3_exhaustive (d : Matrix 1 2) (prefixCycle : eval d (fun i => i.val == 0) = zero) :
    ∃ a : Bool, d = outgoing3 a := by
  exact (show ∀ d : Matrix 1 2, eval d (fun i => i.val == 0) = zero →
    ∃ a : Bool, d = outgoing3 a from by decide) d prefixCycle

theorem d4_exhaustive (d : Matrix 2 2)
    (known : eval d (fun i => i.val == 1) = fun i => i.val == 0)
    (eta : eval d (fun i => i.val == 0) (1 : Fin 2) = false) :
    ∃ b : Bool, d = outgoing4 b := by
  exact (show ∀ d : Matrix 2 2,
    eval d (fun i => i.val == 1) = (fun i => i.val == 0) →
    eval d (fun i => i.val == 0) (1 : Fin 2) = false →
    ∃ b : Bool, d = outgoing4 b from by decide) d known eta

/-- Covers both possible incoming source dimensions. In the two-dimensional
case a second incoming column may be the nonzero outgoing-kernel vector. -/
theorem incoming_exhaustive (a b : Bool) (inc : Matrix 2 (incomingDimension a))
    (prefixCycle : eval inc (prefixVector a) = zero) (complex : IsComplex (outgoing4 b) inc) :
    ∃ q : Bool, (a = true → q = false) ∧ inc = incoming4 a b q := by
  have allCases : ∀ (a b : Bool) (inc : Matrix 2 (incomingDimension a)),
      eval inc (prefixVector a) = zero → (∀ x, eval (outgoing4 b) (eval inc x) = zero) →
      ∃ q : Bool, (a = true → q = false) ∧ inc = incoming4 a b q := by
    intro a b
    cases a <;> cases b <;> decide
  exact allCases a b inc prefixCycle complex

theorem incoming_dimension_exact (a b q : Bool) : (Data.event a b q).n = incomingDimension a := by
  cases a <;> cases b <;> cases q <;> rfl
theorem incoming_matrix_exact (a b q : Bool) :
    matrixOf 2 (incomingDimension a) (Data.event a b q).incoming = incoming4 a b q := by
  cases a <;> cases b <;> cases q <;> decide
theorem outgoing_matrix_exact (a b q : Bool) :
    matrixOf 2 2 (Data.event a b q).outgoing = outgoing4 b := by
  cases a <;> cases b <;> cases q <;> decide

/-- Every supplied full pair meeting precisely the prefix, eta and known
event premises has a checked complete comparison in this six-case family. -/
theorem all_admissible_matrices (a : Bool) (d : Matrix 2 2)
    (inc : Matrix 2 (incomingDimension a))
    (known : eval d (fun i => i.val == 1) = fun i => i.val == 0)
    (eta : eval d (fun i => i.val == 0) (1 : Fin 2) = false)
    (prefixCycle : eval inc (prefixVector a) = zero) (complex : IsComplex d inc) :
    ∃ b q : Bool, (a = true → q = false) ∧
      d = matrixOf 2 2 (Data.event a b q).outgoing ∧
      inc = matrixOf 2 (incomingDimension a) (Data.event a b q).incoming ∧
      (Data.event a b q).n = incomingDimension a ∧ (Data.event a b q).Valid := by
  obtain ⟨b,hd⟩ := d4_exhaustive d known eta
  subst d
  obtain ⟨q,hq,hi⟩ := incoming_exhaustive a b inc prefixCycle complex
  refine ⟨b,q,hq,(outgoing_matrix_exact a b q).symm,?_,incoming_dimension_exact a b q,
    Checks.event_valid a b q⟩
  exact hi.trans (incoming_matrix_exact a b q).symm

theorem row2708_not_selected : incomingDimension false = 2 ∧ incomingDimension true = 1 := ⟨rfl,rfl⟩
theorem nonzero_incoming_is_retained :
    eval (incoming4 false false true) (fun i => i.val == 1) ≠ zero := by decide

#print axioms d3_exhaustive
#print axioms incoming_exhaustive
#print axioms all_admissible_matrices
#print axioms nonzero_incoming_is_retained
end Row3151FullNeighborhood.Semantics
