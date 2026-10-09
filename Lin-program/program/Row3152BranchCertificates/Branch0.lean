import Row3152BranchCertificates.Import

namespace Row3152BranchCertificates.Branch0
open LinearCertificates PageTransitionCertificates AggregateTargetInventory.EventAudit

def path : PathEvent := row3152_path% "Row3152BranchCertificates/path0.json"
def sourceD4 : WireComparison := page_comparison% "Row3152BranchCertificates/sourceD40.json"

theorem path_valid : path.Valid := by lin_cert using ()
theorem source_d4_complete : sourceD4.Valid := by lin_cert using ()
theorem checked_result : ResultValid path.input [true] [true] := by row3152_cert using path
theorem source_d4_exact : (path.sourceStages[2]).wire = sourceD4 := rfl
theorem source_d2_exact : (path.sourceStages[0]).wire = AggregateD5Conditional.Data.b_S0_15_140_d2 := rfl
theorem source_d3_exact : (path.sourceStages[1]).wire = AggregateD5Conditional.Data.b_S0_15_140_d3 := rfl
theorem target_d2_exact : (path.targetStages[0]).wire = AggregateD5Conditional.Data.b_S0_20_144_d2 := rfl
theorem target_d3_exact : (path.targetStages[1]).wire = AggregateD5Conditional.Data.b_S0_20_144_d3 := rfl
theorem target_d4_exact : (path.targetStages[2]).wire = AggregateD5Conditional.Data.b_S0_20_144_d4 := rfl
theorem raw_source : path.rawSource = [false,false,true,false,false] := rfl
theorem raw_target : path.rawTarget = [true,false] := rfl
theorem endpoint_values : path.source = [true] ∧ path.target = [true] := ⟨rfl,rfl⟩
theorem source_d4_incoming : matrixOf 2 2 sourceD4.incoming =
    Row3151BranchCertificates.Semantics.outgoing false false := by decide

example : check {path with target := [false]} = false := by decide
example : check {path with source := [false]} = false := by decide
example : check {path with rawSource := [false,false,false,false,false]} = false := by decide
example : check {path with branch := true} = false := by decide
example : checkResult path.input [true] [false] path = false := by decide
example : diagnoseResult path.input [true] [false] path =
    some ⟨"row3152","result.target","output vector differs from goal"⟩ := by decide

#print axioms path_valid
#print axioms source_d4_complete
#print axioms source_d4_incoming
#print axioms checked_result
end Row3152BranchCertificates.Branch0
