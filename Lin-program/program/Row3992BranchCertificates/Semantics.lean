import Row3992BranchCertificates.Checks
namespace Row3992BranchCertificates.Semantics
open LinearCertificates PageTransitionCertificates IndexedFamilyCertificates Imports
def outgoing (b c d : Bool) : Matrix 3 2 := fun i j => if j.val == 0 then i.val == 0 else if i.val == 0 then b else if i.val == 1 then c else d
def incoming : Matrix 2 1 := fun _ _ => false
def named : Vec 2 := fun i => i.val == 0
def target : Vec 3 := fun i => i.val == 0
def witness (b c d : Bool) : Comparison 3 2 1 (if c || d then 0 else 1) :=
  match b,c,d with
  | false,false,false => comparison000.comparison
  | false,false,true => comparison001.comparison
  | false,true,false => comparison010.comparison
  | false,true,true => comparison011.comparison
  | true,false,false => comparison100.comparison
  | true,false,true => comparison101.comparison
  | true,true,false => comparison110.comparison
  | true,true,true => comparison111.comparison
theorem outgoing_exact (b c d : Bool) : outgoing b c d = matrixOf 3 2 (comparison b c d).outgoing := by cases b <;> cases c <;> cases d <;> decide
theorem incoming_exact (b c d : Bool) : incoming = matrixOf 2 1 (comparison b c d).incoming := by cases b <;> cases c <;> cases d <;> decide
theorem complete (b c d : Bool) : HomologyComparison (outgoing b c d) incoming (witness b c d) := by
  cases b <;> cases c <;> cases d
  · rw [outgoing_exact false false false,incoming_exact false false false]
    exact (Checks.comparison_valid false false false).2
  · rw [outgoing_exact false false true,incoming_exact false false true]
    exact (Checks.comparison_valid false false true).2
  · rw [outgoing_exact false true false,incoming_exact false true false]
    exact (Checks.comparison_valid false true false).2
  · rw [outgoing_exact false true true,incoming_exact false true true]
    exact (Checks.comparison_valid false true true).2
  · rw [outgoing_exact true false false,incoming_exact true false false]
    exact (Checks.comparison_valid true false false).2
  · rw [outgoing_exact true false true,incoming_exact true false true]
    exact (Checks.comparison_valid true false true).2
  · rw [outgoing_exact true true false,incoming_exact true true false]
    exact (Checks.comparison_valid true true false).2
  · rw [outgoing_exact true true true,incoming_exact true true true]
    exact (Checks.comparison_valid true true true).2
theorem exhaustive (m : Matrix 3 2) (known : eval m named = target) : ∃ b c d : Bool, m = outgoing b c d := by
  exact (show ∀ m : Matrix 3 2, eval m named = target → ∃ b c d : Bool, m = outgoing b c d from by decide) m known
theorem incoming_from_prefix (m : Matrix 2 1) (prefixValue : eval m (fun _ => true) = zero) : m = incoming := by
  exact (show ∀ m : Matrix 2 1, eval m (fun _ => true) = zero → m = incoming from by decide) m prefixValue
/-- The stored3992 value is a supplied semantic premise. This theorem validates every possible other column; it does not derive that stored differential independently. -/
theorem actual_comparison_exists (m : Matrix 3 2) (inc : Matrix 2 1)
    (known : eval m named = target) (prefixValue : eval inc (fun _ => true) = zero) :
    ∃ b c d : Bool, HomologyComparison m inc (witness b c d) := by
  obtain ⟨b,c,d,hm⟩ := exhaustive m known
  have hi := incoming_from_prefix inc prefixValue
  subst m
  subst inc
  exact ⟨b,c,d,complete b c d⟩
theorem source_projection : eval AggregateLeibniz3564Conditional.Source.comparison.comparison.projection (eval AggregateD5Conditional.Data.b_S0_21_147_d2.comparison.projection (fun i => i.val == 1)) = named := by decide
theorem target_projection : eval AggregateD5Conditional.Data.b_S0_25_150_d3.comparison.projection (eval AggregateD5Conditional.Data.b_S0_25_150_d2.comparison.projection (fun i => i.val == 3)) = target := by decide
#print axioms actual_comparison_exists
#print axioms complete
end Row3992BranchCertificates.Semantics
