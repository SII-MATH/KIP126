import Fact713Row2916Continuation.ZeroA0
import Fact713Row2916Continuation.ZeroA1
import Fact713Row2916Continuation.ResidualA0
import Fact713Row2916Continuation.ResidualA1
import Row2907TargetProduct.Branches

namespace Fact713Row2916Continuation
open IndexedFamilyCertificates PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def family (r a : Bool) : Family :=
  match r,a with
  | false,false => ZeroA0.family
  | false,true => ZeroA1.family
  | true,false => ResidualA0.family
  | true,true => ResidualA1.family

theorem family_coherent (r a : Bool) : Coherent (family r a) := by
  cases r <;> cases a
  · exact ZeroA0.family_coherent
  · exact ZeroA1.family_coherent
  · exact ResidualA0.family_coherent
  · exact ResidualA1.family_coherent

theorem previous_preserved (r a : Bool) (entry : Entry)
    (h : entry ∈ Fact713FourBranchContinuation.family r a) : entry ∈ family r a := by
  cases r <;> cases a
  · exact ZeroA0.previous_preserved entry h
  · exact ZeroA1.previous_preserved entry h
  · exact ResidualA0.previous_preserved entry h
  · exact ResidualA1.previous_preserved entry h

theorem named_prefix_covered (r a : Bool) :
    CoversKeys (family r a) Fact713Row3143Continuation.namedPrefix := by
  intro key member
  obtain ⟨entry,present,equal⟩ := Fact713FourBranchContinuation.named_prefix_covered r a key member
  exact ⟨entry,previous_preserved r a entry present,equal⟩

theorem four_finite_E10 (r a : Bool) :
    TrajectoryValid (Fact713Row3143Continuation.stages r) :=
  Fact713FourBranchContinuation.four_finite_E10 r a

theorem trajectory_bound (r a : Bool) :
    StageBinding (family r a) "S0" ⟨9,132⟩ (Fact713Row3143Continuation.stages r) := by
  cases r <;> cases a <;> decide

theorem source_d4_present (r a : Bool) : lookup (family r a) ⟨"S0",4,17,140⟩ =
    some Data.b_S0_17_140_d4 := by cases r <;> cases a <;> decide

theorem source_d5_present (r a : Bool) : lookup (family r a) ⟨"S0",5,17,140⟩ =
    some Data.b_S0_17_140_d5 := by cases r <;> cases a <;> decide

theorem target_d5_present (r a : Bool) : lookup (family r a) ⟨"S0",5,22,144⟩ =
    some Data.b_S0_22_144_d5 := by cases r <;> cases a <;> decide

theorem named_d10_missing (r a : Bool) : lookup (family r a) ⟨"S0",10,9,132⟩ = none := by
  cases r <;> cases a <;> decide

theorem family_counts : (family false false).length = 1358 ∧ (family false true).length = 1358 ∧
    (family true false).length = 1367 ∧ (family true true).length = 1370 :=
  ⟨ZeroA0.family_count,ZeroA1.family_count,ResidualA0.family_count,ResidualA1.family_count⟩

/-- The historical four finite branches remain available. Actual product
meanings exclude a=true, by the proved whole target action and Leibniz rule. -/
theorem actual_selects_a0
    {W : Row2907PDeltaDetection.Branches.Witness S pages P} {r a : Bool}
    (meaning : Row2907TargetProduct.Actual.TargetMeaning W r a) :
    a = false ∧ Coherent (family r false) :=
  ⟨Row2907TargetProduct.Actual.parameter_zero meaning,family_coherent r false⟩

#print axioms family_coherent
#print axioms previous_preserved
#print axioms named_prefix_covered
#print axioms four_finite_E10
#print axioms trajectory_bound
#print axioms source_d4_present
#print axioms source_d5_present
#print axioms target_d5_present
#print axioms named_d10_missing
#print axioms family_counts
#print axioms actual_selects_a0
end Fact713Row2916Continuation
