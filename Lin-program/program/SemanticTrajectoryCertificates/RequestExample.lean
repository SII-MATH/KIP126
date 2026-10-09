import SemanticTrajectoryCertificates.Request
import SemanticTrajectoryCertificates.IndexedExample

set_option maxRecDepth 8192
set_option maxHeartbeats 8000000

namespace SemanticTrajectoryCertificates.RequestExample
open IndexedFamilyCertificates IndexedHighD2Certificates IndexedExample

theorem caller6651 : RequestedHolds family ⟨"S0", 4, 52, 177⟩ [true] [true]
    interpreted6651 := by lin_cert using ()

def requests : List SemanticRequest :=
  [⟨⟨"S0", 4, 52, 177⟩, [true], [true], event6651, interpreted6651⟩]

theorem caller_batch : ∀ r ∈ requests,
    RequestedHolds family r.key r.source r.target r.interpretation := by lin_cert using ()

example : checkResult family ⟨"C2", 4, 52, 177⟩ [true] [true] event6651 = false := by decide
example : checkResult family ⟨"S0", 5, 52, 177⟩ [true] [true] event6651 = false := by decide
example : checkResult family ⟨"S0", 4, 52, 178⟩ [true] [true] event6651 = false := by decide
example : checkResult family ⟨"S0", 4, 52, 177⟩ [false] [true] event6651 = false := by decide
example : checkResult family ⟨"S0", 4, 52, 177⟩ [true] [false] event6651 = false := by decide

theorem caller_source_coordinate : ∀ i : Fin event6651.event.finite.event.m,
    endpointCoordinates interpreted6651.semantics.sourceEndpoint event6651.event.finite.event.m
      interpreted6651.semantics.sourceEndpoint.point i = ([true] : List Bool)[i.val]?.getD false :=
  caller6651.source_coordinates

theorem caller_target_coordinate : ∀ i : Fin event6651.event.finite.event.k,
    endpointCoordinates interpreted6651.semantics.targetEndpoint event6651.event.finite.event.k
      interpreted6651.semantics.targetEndpoint.point i = ([true] : List Bool)[i.val]?.getD false :=
  caller6651.target_coordinates

#print axioms caller6651
#print axioms caller_batch
end SemanticTrajectoryCertificates.RequestExample
