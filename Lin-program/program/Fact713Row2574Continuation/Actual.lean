import Fact713Row2574Continuation.Branches

namespace Fact713Row2574Continuation.Actual
open IndexedFamilyCertificates ManualInputObligations ManualInputObligations.Reference
open Row2574D3Search

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}

theorem actual_branch_bound (old : Bool) (D : Row2574D3Search.Actual.Input S pages P) :
    lookup (family old D.branch) ⟨"S0",3,9,134⟩ = some (Data.current3 D.branch) ∧
    lookup (family old D.branch) ⟨"S0",3,6,132⟩ = some (Data.source3 D.branch) :=
  ⟨target_present old D.branch,source_present old D.branch⟩

theorem exhaustive_binding (old : Bool) (D : Row2574D3Search.Actual.Input S pages P) :
    ∃ c : Bool, c = D.branch ∧
      lookup (family old c) ⟨"S0",3,9,134⟩ = some (Data.current3 c) ∧
      lookup (family old c) ⟨"S0",3,6,132⟩ = some (Data.source3 c) :=
  ⟨D.branch,rfl,actual_branch_bound old D⟩

noncomputable def whole_target (D : Row2574D3Search.Actual.Input S pages P) := D.whole

noncomputable def whole_source (D : Row2574D3Search.Actual.Input S pages P)
    (sourceAdd : ActualAdamsHomologyCoordinates.LocalAddMeaning pages 2 Row2574D3Search.Product.sourceDegree)
    (incoming : Row2574D3Search.Actual.IncomingInput S pages) := D.sourceWhole sourceAdd incoming

theorem same_input_nonzero_E4 (D : Row2574D3Search.Actual.Input S pages P)
    (input : (S.element 2 Product.degree).carrier)
    (binding : D.product.coordinates.equivalence input = Data.raw) :
    Nonempty (Trace S pages Product.degree 4 input D.value4) ∧ D.value4 ≠ 0 :=
  D.same_input input binding

#print axioms actual_branch_bound
#print axioms exhaustive_binding
#print axioms whole_target
#print axioms whole_source
#print axioms same_input_nonzero_E4
end Fact713Row2574Continuation.Actual
