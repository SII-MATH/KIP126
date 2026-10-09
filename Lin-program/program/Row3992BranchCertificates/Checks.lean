import Row3992BranchCertificates.Imports
set_option maxRecDepth 4096
set_option maxHeartbeats 8000000
namespace Row3992BranchCertificates.Checks
open LinearCertificates PageTransitionCertificates IndexedFamilyCertificates Imports
open AggregateTargetInventory.EventAudit
theorem comparison_valid (b c d : Bool) : (comparison b c d).Valid := by cases b <;> cases c <;> cases d <;> lin_cert using ()
theorem finite_valid (b c d : Bool) : (finite b c d).Valid := by cases b <;> cases c <;> cases d <;> lin_cert using ()
theorem indexed_valid (b c d : Bool) : (indexed b c d).Valid := by cases b <;> cases c <;> cases d <;> lin_cert using ()
theorem bound_valid (b c d : Bool) : (bound b c d).Valid (family b c d) := by cases b <;> cases c <;> cases d <;> lin_cert using ()
theorem coherent (b c d : Bool) : Coherent (family b c d) := by cases b <;> cases c <;> cases d <;> lin_cert using ()
theorem result (b c d : Bool) : DifferentialAt (family b c d) ⟨"S0",4,21,147⟩ [true,false] [true,false,false] := by
  cases b <;> cases c <;> cases d
  · indexed_family_cert using bound000
  · indexed_family_cert using bound001
  · indexed_family_cert using bound010
  · indexed_family_cert using bound011
  · indexed_family_cert using bound100
  · indexed_family_cert using bound101
  · indexed_family_cert using bound110
  · indexed_family_cert using bound111
def keys : List Key := [⟨"S0",2,21,147⟩,⟨"S0",2,25,150⟩,⟨"S0",3,21,147⟩,⟨"S0",3,25,150⟩,⟨"S0",4,21,147⟩]
theorem coverage (b c d : Bool) : CoversKeys (family b c d) keys := by cases b <;> cases c <;> cases d <;> exact checkCoverage_sound _ _ (by decide)
theorem event_exact (b c d : Bool) : (finite b c d).event = comparison b c d := by cases b <;> cases c <;> cases d <;> rfl
theorem indexed_exact (b c d : Bool) : (indexed b c d).finite = finite b c d := by cases b <;> cases c <;> cases d <;> rfl
theorem bound_exact (b c d : Bool) : (bound b c d).event = indexed b c d := by cases b <;> cases c <;> cases d <;> rfl
theorem raw_source (b c d : Bool) : (finite b c d).rawSource = [false,true,false] := by cases b <;> cases c <;> cases d <;> rfl
theorem raw_target (b c d : Bool) : (finite b c d).rawTarget = [false,false,false,true] := by cases b <;> cases c <;> cases d <;> rfl
theorem source_d2_exact (b c d : Bool) : ((finite b c d).sourceStages[0]'(by cases b <;> cases c <;> cases d <;> decide)).wire = AggregateD5Conditional.Data.b_S0_21_147_d2 := by cases b <;> cases c <;> cases d <;> rfl
theorem source_d3_exact (b c d : Bool) : ((finite b c d).sourceStages[1]'(by cases b <;> cases c <;> cases d <;> decide)).wire = AggregateLeibniz3564Conditional.Source.comparison := by cases b <;> cases c <;> cases d <;> rfl
theorem target_d2_exact (b c d : Bool) : ((finite b c d).targetStages[0]'(by cases b <;> cases c <;> cases d <;> decide)).wire = AggregateD5Conditional.Data.b_S0_25_150_d2 := by cases b <;> cases c <;> cases d <;> rfl
theorem target_d3_exact (b c d : Bool) : ((finite b c d).targetStages[1]'(by cases b <;> cases c <;> cases d <;> decide)).wire = AggregateD5Conditional.Data.b_S0_25_150_d3 := by cases b <;> cases c <;> cases d <;> rfl
example : checkBound family000 bound001 = false := by decide
example : checkWindow family000 (keys ++ [⟨"S0",4,25,150⟩]) = false := by decide
#print axioms result
#print axioms coherent
end Row3992BranchCertificates.Checks
