import Row3151BranchCertificates.Branch00
import Row3151BranchCertificates.Branch01
import Row3151BranchCertificates.Branch10
import Row3151BranchCertificates.Branch11
import Row2708KernelConditional.Conflict

namespace Row3151BranchCertificates.Semantics
open LinearCertificates PageTransitionCertificates IndexedFamilyCertificates

def family (b c : Bool) : Family :=
  if b then if c then Branch11.family else Branch10.family
  else if c then Branch01.family else Branch00.family

def comparison (b c : Bool) : WireComparison :=
  if b then if c then Branch11.comparison else Branch10.comparison
  else if c then Branch01.comparison else Branch00.comparison

def outgoing (b c : Bool) : Matrix 2 2 :=
  fun i j => if j.val == 0 then if i.val == 0 then b else c else i.val == 0

def incoming : Matrix 2 1 := fun _ _ => false
def named : Vec 2 := fun i => i.val == 1
def target : Vec 2 := fun i => i.val == 0

def witness (b c : Bool) : Comparison 2 2 1 (if c then 0 else 1) :=
  match b, c with
  | false, false => Branch00.comparison.comparison
  | false, true => Branch01.comparison.comparison
  | true, false => Branch10.comparison.comparison
  | true, true => Branch11.comparison.comparison

theorem each_branch (b c : Bool) :
    DifferentialAt (family b c) ⟨"S0",4,11,137⟩ [false,true] [true,false] := by
  cases b <;> cases c
  · exact Branch00.result
  · exact Branch01.result
  · exact Branch10.result
  · exact Branch11.result

theorem each_coherent (b c : Bool) : Coherent (family b c) := by
  cases b <;> cases c
  · exact Branch00.family_coherent
  · exact Branch01.family_coherent
  · exact Branch10.family_coherent
  · exact Branch11.family_coherent

theorem comparison_checked (b c : Bool) : (comparison b c).Valid := by
  cases b <;> cases c
  · exact Branch00.comparison_valid
  · exact Branch01.comparison_valid
  · exact Branch10.comparison_valid
  · exact Branch11.comparison_valid

theorem outgoing_exact (b c : Bool) :
    outgoing b c = matrixOf 2 2 (comparison b c).outgoing := by
  cases b <;> cases c <;> decide

theorem incoming_exact (b c : Bool) :
    incoming = matrixOf 2 1 (comparison b c).incoming := by
  cases b <;> cases c <;> decide

theorem witness_complete (b c : Bool) :
    HomologyComparison (outgoing b c) incoming (witness b c) := by
  cases b <;> cases c
  · rw [outgoing_exact false false, incoming_exact false false]
    exact Branch00.comparison_valid.2
  · rw [outgoing_exact false true, incoming_exact false true]
    exact Branch01.comparison_valid.2
  · rw [outgoing_exact true false, incoming_exact true false]
    exact Branch10.comparison_valid.2
  · rw [outgoing_exact true true, incoming_exact true true]
    exact Branch11.comparison_valid.2

/-- The unknown first column ranges over every possible vector, with no choice fixed. -/
theorem exhaustive (d : Matrix 2 2) (known : eval d named = target) :
    ∃ b c : Bool, d = outgoing b c := by
  exact (show ∀ d : Matrix 2 2, eval d named = target →
    ∃ b c : Bool, d = outgoing b c from by decide) d known

theorem incoming_from_prefix (inc : Matrix 2 1)
    (prefixValue : eval inc (fun _ => true) = zero) : inc = incoming := by
  exact (show ∀ inc : Matrix 2 1, eval inc (fun _ => true) = zero →
    inc = incoming from by decide) inc prefixValue

/-- Supplied mathematical matrix values yield a full certificate in some branch.
The kernel-completeness requirement for the incoming source page is separate;
no branch theorem asserts it or uses a future event to derive it. -/
theorem actual_comparison_exists (d : Matrix 2 2) (inc : Matrix 2 1)
    (known : eval d named = target)
    (prefixValue : eval inc (fun _ => true) = zero) :
    ∃ b c : Bool, HomologyComparison d inc (witness b c) := by
  obtain ⟨b,c,hd⟩ := exhaustive d known
  have hi := incoming_from_prefix inc prefixValue
  subst d
  subst inc
  exact ⟨b,c,witness_complete b c⟩

theorem source_projection :
    eval AggregateD5Conditional.Data.b_S0_11_137_d3.comparison.projection
      (eval AggregateD5Conditional.Data.b_S0_11_137_d2.comparison.projection
        (fun i => i.val == 2)) = named := by decide

theorem target_projection :
    eval AggregateD5Conditional.Data.b_S0_15_140_d3.comparison.projection
      (eval AggregateD5Conditional.Data.b_S0_15_140_d2.comparison.projection
        (fun i => i.val == 1)) = target := by decide

example : checkBound Branch00.family Branch01.certificate = false := by decide
example : checkBound Branch01.family Branch10.certificate = false := by decide
example : checkBound Branch10.family Branch11.certificate = false := by decide
example : checkBound Branch11.family Branch00.certificate = false := by decide

#print axioms each_branch
#print axioms actual_comparison_exists
end Row3151BranchCertificates.Semantics
