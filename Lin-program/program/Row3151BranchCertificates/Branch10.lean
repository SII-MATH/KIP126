import AggregateD5Conditional.Data
import IndexedFamilyCertificates.Results
import IndexedFamilyCertificates.Coherence
namespace Row3151BranchCertificates.Branch10
open LinearCertificates PageTransitionCertificates IndexedFamilyCertificates
open AggregateTargetInventory.EventAudit
def comparison : WireComparison := page_comparison% "Row3151BranchCertificates/comparison10.json"
def finite : Executable.Wire := finite_event% "Row3151BranchCertificates/finite10.json"
def indexed : Indexed.Wire := indexed_event% "Row3151BranchCertificates/indexed10.json"
def family : Family := family_input% "Row3151BranchCertificates/family10.json"
def certificate : BoundWire := bound_event% "Row3151BranchCertificates/bound10.json"
theorem comparison_valid : comparison.Valid := by lin_cert using ()
theorem finite_valid : finite.Valid := by lin_cert using ()
theorem indexed_valid : indexed.Valid := by lin_cert using ()
theorem bound_valid : certificate.Valid family := by lin_cert using ()
theorem family_coherent : Coherent family := by lin_cert using ()
theorem event_exact : finite.event = comparison := rfl
theorem indexed_exact : indexed.finite = finite := rfl
theorem bound_exact : certificate.event = indexed := rfl
theorem raw_source : finite.rawSource = [false,false,true,false,false,false] := rfl
theorem raw_target : finite.rawTarget = [false,true,false,false,false] := rfl
theorem result : DifferentialAt family ⟨"S0",4,11,137⟩ [false,true] [true,false] := by indexed_family_cert using certificate
def keys : List Key := [⟨"S0",2,11,137⟩,⟨"S0",2,15,140⟩,⟨"S0",3,11,137⟩,⟨"S0",3,15,140⟩,⟨"S0",4,11,137⟩]
theorem window_complete : Coherent family ∧ CoversKeys family keys := checkWindow_sound family keys (by decide)
example : checkWindow family (keys ++ [⟨"S0",4,15,140⟩]) = false := by decide
example : checkResult family ⟨"S0",4,11,137⟩ [false,true] [false,false] certificate = false := by decide
theorem source_d2_exact : (finite.sourceStages[0]).wire = AggregateD5Conditional.Data.b_S0_11_137_d2 := rfl
theorem source_d3_exact : (finite.sourceStages[1]).wire = AggregateD5Conditional.Data.b_S0_11_137_d3 := rfl
theorem target_d2_exact : (finite.targetStages[0]).wire = AggregateD5Conditional.Data.b_S0_15_140_d2 := rfl
theorem target_d3_exact : (finite.targetStages[1]).wire = AggregateD5Conditional.Data.b_S0_15_140_d3 := rfl
#print axioms result
#print axioms family_coherent
end Row3151BranchCertificates.Branch10
