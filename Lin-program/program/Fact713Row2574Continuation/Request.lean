import Fact713Row2574Continuation.Closure
import Fact713Row2574Continuation.Actual
import Fact713Row3005Continuation.Request

namespace Fact713Row2574Continuation
open IndexedFamilyCertificates ManualInputObligations ManualInputObligations.Reference
open Fact713Row3005Continuation.Constructed
variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

def RequestedValid (b c : Bool) (P : Prefix11 S pages) (request : ActualTraceRequests.Request) : Prop :=
  IndexedPredecessorClosure.Valid (family b c) ∧
  StageBinding (family b c) "S0" ⟨9,132⟩ Fact713Row3005Continuation.stages ∧
  Fact713Row3005Continuation.RequestedValid b P request

theorem request_sound (b c : Bool) (P : Prefix11 S pages) (request : ActualTraceRequests.Request)
    (accepted : ActualTraceRequests.check Fact713Row3005Continuation.spec request = true) :
    RequestedValid b c P request :=
  ⟨all_valid b c,trajectory_bound b c,Fact713Row3005Continuation.request_sound b P request accepted⟩
theorem batch_sound (b c : Bool) (P : Prefix11 S pages) (requests : List ActualTraceRequests.Request)
    (accepted : ActualTraceRequests.checkBatch Fact713Row3005Continuation.spec requests = true) :
    ∀ request ∈ requests, RequestedValid b c P request := by
  intro request member
  exact request_sound b c P request ((List.all_eq_true.mp accepted) request member)

syntax "fact713_row2574_cert" " using " term : tactic
macro_rules
  | `(tactic| fact713_row2574_cert using $meaning:term) =>
    `(tactic| first
      | exact request_sound _ _ $meaning _ (by decide)
      | exact batch_sound _ _ $meaning _ (by decide))
example (b c : Bool) (P : Prefix11 S pages) :
    RequestedValid b c P Fact713Row3005Continuation.e11 := by fact713_row2574_cert using P
example (b c : Bool) (P : Prefix11 S pages) :
    ∀ request ∈ Fact713Row3005Continuation.e11Batch, RequestedValid b c P request := by
  fact713_row2574_cert using P

variable {product : CertifiedAdamsProduct S}
def BranchResultValid (old : Bool) (D : Row2574D3Search.Actual.Input S pages product)
    (input : (S.element 2 Row2574D3Search.Product.degree).carrier) : Prop :=
  IndexedPredecessorClosure.Valid (family old D.branch) ∧
  lookup (family old D.branch) ⟨"S0",3,9,134⟩ = some (Row2574D3Search.Data.current3 D.branch) ∧
  Row2574D3Search.ResultValid D input

theorem branch_result_sound (old : Bool) (D : Row2574D3Search.Actual.Input S pages product)
    (input : (S.element 2 Row2574D3Search.Product.degree).carrier)
    (binding : D.product.coordinates.equivalence input = Row2574D3Search.Data.raw) :
    BranchResultValid old D input :=
  ⟨all_valid old D.branch,target_present old D.branch,Row2574D3Search.result_sound D input binding⟩

syntax "fact713_row2574_branch_cert" " using " term " named " term : tactic
macro_rules
  | `(tactic| fact713_row2574_branch_cert using $meaning:term named $binding:term) =>
    `(tactic| exact branch_result_sound _ $meaning _ $binding)
example (old : Bool) (D : Row2574D3Search.Actual.Input S pages product)
    (input : (S.element 2 Row2574D3Search.Product.degree).carrier)
    (binding : D.product.coordinates.equivalence input = Row2574D3Search.Data.raw) :
    BranchResultValid old D input := by fact713_row2574_branch_cert using D named binding
example (_old : Bool) (D : Row2574D3Search.Actual.Input S pages product)
    (_wrong : D.product.coordinates.equivalence 0 = LinearCertificates.zero) : True := by
  fail_if_success
    have : BranchResultValid _old D 0 := by fact713_row2574_branch_cert using D named _wrong
  trivial

#print axioms request_sound
#print axioms batch_sound
#print axioms branch_result_sound
end Fact713Row2574Continuation
