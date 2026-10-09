import Fact762CsigmasqD5.Actual
import Fact762CsigmasqD5.D2Data

namespace Fact762CsigmasqD5.Tests
open LinearCertificates Comparison

theorem wrong_named_rejected : eval f14_154_5 (fun i => i.val == 0) ≠ sphere := by decide
theorem source_zero_rejected : eval f14_154_5 zero ≠ sphere := by decide
theorem d2_top_expansion_checked : D2.check
    { D2Data.b7441 with reduction := { D2Data.b7441.reduction with input := [[],[]] } } = false := by decide
theorem d2_bad_output_rejected : D2.check
    { D2Data.b7441 with reduction := { D2Data.b7441.reduction with output := [[[]],[]] } } = false := by decide
theorem d2_bad_relation_rejected : D2.check
    { D2Data.b7441 with reduction := { D2Data.b7441.reduction with
      terms := [{relation := 99,multiplier := [[]]}] } } = false := by decide
theorem d2_bad_rank_rejected : D2.check
    { D2Data.b7441 with reduction := { D2Data.b7441.reduction with rank := 1 } } = false := by decide

theorem absent_naturality_counterexample :
    ∃ f : Bool → Bool, ∃ g : Bool → Bool, ∃ dc : Bool → Bool, ∃ ds : Bool → Bool,
      dc true = false ∧ g false = false ∧ f true = true ∧ ds (f true) ≠ false := by
  exact ⟨id,id,fun _ => false,id,rfl,rfl,rfl,by decide⟩

theorem absent_quotient_compatibility_counterexample :
    ∃ f2 f3 advance : Bool → Bool,
      f2 true = true ∧ advance true = true ∧ f3 (advance true) ≠ advance (f2 true) := by
  exact ⟨id,fun _ => false,id,rfl,rfl,by decide⟩

#print axioms wrong_named_rejected
#print axioms source_zero_rejected
#print axioms d2_top_expansion_checked
#print axioms d2_bad_output_rejected
#print axioms d2_bad_relation_rejected
#print axioms d2_bad_rank_rejected
#print axioms absent_naturality_counterexample
#print axioms absent_quotient_compatibility_counterexample
end Fact762CsigmasqD5.Tests
