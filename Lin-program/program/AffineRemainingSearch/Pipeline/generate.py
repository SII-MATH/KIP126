"""Fresh strict C++ imports and fixed-goal tactic proofs for each branch."""
from pathlib import Path
P=Path(__file__).resolve().parent
for b in [0,1]:
 ns=f'AffineRemainingSearch.Pipeline.Branch{b}'
 lines=['import AffineRemainingSearch.CurrentImports','import IndexedFamilyCertificates.Results','import IndexedFamilyCertificates.Coherence',f'namespace {ns}',
 'open LinearCertificates PageTransitionCertificates IndexedFamilyCertificates','open AggregateTargetInventory.EventAudit',
 f'def finite : Executable.Wire := finite_event% "AffineRemainingSearch/Pipeline/finite-branch{b}.json"',
 f'def indexed : Indexed.Wire := indexed_event% "AffineRemainingSearch/Pipeline/indexed-branch{b}.json"',
 f'def family : Family := family_input% "AffineRemainingSearch/Pipeline/family{b}.json"',
 f'def certificate : BoundWire := bound_event% "AffineRemainingSearch/Pipeline/bound{b}.json"',
 'theorem finite_valid : finite.Valid := by lin_cert using ()',
 'theorem indexed_valid : indexed.Valid := by lin_cert using ()',
 'theorem bound_valid : certificate.Valid family := by lin_cert using ()',
 'theorem family_coherent : Coherent family := by lin_cert using ()',
 'def keys : List Key := [⟨"S0",2,9,134⟩,⟨"S0",2,12,136⟩,⟨"S0",3,9,134⟩]',
 'theorem window_complete : Coherent family ∧ CoversKeys family keys := checkWindow_sound family keys (by decide)',
 f'theorem finite_exact : finite = AffineRemainingSearch.Data.event{b} := rfl',
 'theorem indexed_finite : indexed.finite = finite := rfl',
 'theorem bound_indexed : certificate.event = indexed := rfl',
 f'theorem source_comparison : (family[0]).wire = AffineRemainingSearch.Data.d2source2697 := rfl',
 f'theorem target_comparison : (family[1]).wire = AffineRemainingSearch.Data.d2target2697 := rfl',
 f'theorem event_comparison : (family[2]).wire = AffineRemainingSearch.Data.branch{b} := rfl',
 'theorem raw_source : finite.rawSource = [false,true,false,false,false] := rfl',
 'theorem raw_target : finite.rawTarget = [true,false,false,false,false] := rfl',
 'theorem result : DifferentialAt family ⟨"S0",3,9,134⟩ [false,false,true] [true] := by indexed_family_cert using certificate',
 'def requests : List Request := [⟨⟨"S0",3,9,134⟩,[false,false,true],[true],certificate⟩]',
 'theorem batch_valid : ∀ r ∈ requests, DifferentialAt family r.key r.source r.target := checkBatch_sound family requests (by decide)',
 'example : checkCoverage family [⟨"S0",3,12,136⟩] = false := by decide',
 'example : checkWindow family (keys ++ [⟨"S0",4,9,134⟩]) = false := by decide',
 'example : checkResult family ⟨"S0",3,9,134⟩ [false,true,false] [true] certificate = false := by decide',
 'example : checkResult family ⟨"S0",3,9,134⟩ [false,false,true] [false] certificate = false := by decide',
 '#print axioms result','#print axioms family_coherent',f'end {ns}']
 (P/f'Branch{b}.lean').write_text('\n'.join(lines)+'\n')
lines=['import AffineRemainingSearch.Pipeline.Branch0','import AffineRemainingSearch.Pipeline.Branch1','namespace AffineRemainingSearch.Pipeline.Both','open IndexedFamilyCertificates',
 'def family (b : Bool) : Family := if b then Branch1.family else Branch0.family',
 'def certificate (b : Bool) : BoundWire := if b then Branch1.certificate else Branch0.certificate',
 'theorem each_branch (b : Bool) : DifferentialAt (family b) ⟨"S0",3,9,134⟩ [false,false,true] [true] := by',
 '  cases b','  · exact Branch0.result','  · exact Branch1.result',
 'theorem each_coherent (b : Bool) : Coherent (family b) := by','  cases b','  · exact Branch0.family_coherent','  · exact Branch1.family_coherent',
 'example : checkBound Branch0.family Branch1.certificate = false := by decide',
 'example : checkBound Branch1.family Branch0.certificate = false := by decide',
 '#print axioms each_branch','#print axioms each_coherent','end AffineRemainingSearch.Pipeline.Both']
(P/'Both.lean').write_text('\n'.join(lines)+'\n')
print('Three Lean modules generated:fixed-goal tactic,full supplied-family coherence,requested coverage,branch separation')
