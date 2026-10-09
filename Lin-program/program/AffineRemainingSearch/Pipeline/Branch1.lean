import AffineRemainingSearch.CurrentImports
import IndexedFamilyCertificates.Results
import IndexedFamilyCertificates.Coherence
namespace AffineRemainingSearch.Pipeline.Branch1
open LinearCertificates PageTransitionCertificates IndexedFamilyCertificates
open AggregateTargetInventory.EventAudit
def finite : Executable.Wire := finite_event% "AffineRemainingSearch/Pipeline/finite-branch1.json"
def indexed : Indexed.Wire := indexed_event% "AffineRemainingSearch/Pipeline/indexed-branch1.json"
def family : Family := family_input% "AffineRemainingSearch/Pipeline/family1.json"
def certificate : BoundWire := bound_event% "AffineRemainingSearch/Pipeline/bound1.json"
theorem finite_valid : finite.Valid := by lin_cert using ()
theorem indexed_valid : indexed.Valid := by lin_cert using ()
theorem bound_valid : certificate.Valid family := by lin_cert using ()
theorem family_coherent : Coherent family := by lin_cert using ()
def keys : List Key := [⟨"S0",2,9,134⟩,⟨"S0",2,12,136⟩,⟨"S0",3,9,134⟩]
theorem window_complete : Coherent family ∧ CoversKeys family keys := checkWindow_sound family keys (by decide)
theorem finite_exact : finite = AffineRemainingSearch.Data.event1 := rfl
theorem indexed_finite : indexed.finite = finite := rfl
theorem bound_indexed : certificate.event = indexed := rfl
theorem source_comparison : (family[0]).wire = AffineRemainingSearch.Data.d2source2697 := rfl
theorem target_comparison : (family[1]).wire = AffineRemainingSearch.Data.d2target2697 := rfl
theorem event_comparison : (family[2]).wire = AffineRemainingSearch.Data.branch1 := rfl
theorem raw_source : finite.rawSource = [false,true,false,false,false] := rfl
theorem raw_target : finite.rawTarget = [true,false,false,false,false] := rfl
theorem result : DifferentialAt family ⟨"S0",3,9,134⟩ [false,false,true] [true] := by indexed_family_cert using certificate
def requests : List Request := [⟨⟨"S0",3,9,134⟩,[false,false,true],[true],certificate⟩]
theorem batch_valid : ∀ r ∈ requests, DifferentialAt family r.key r.source r.target := checkBatch_sound family requests (by decide)
example : checkCoverage family [⟨"S0",3,12,136⟩] = false := by decide
example : checkWindow family (keys ++ [⟨"S0",4,9,134⟩]) = false := by decide
example : checkResult family ⟨"S0",3,9,134⟩ [false,true,false] [true] certificate = false := by decide
example : checkResult family ⟨"S0",3,9,134⟩ [false,false,true] [false] certificate = false := by decide
#print axioms result
#print axioms family_coherent
end AffineRemainingSearch.Pipeline.Branch1
