import AggregateD5Conditional.Data
import Row3564LeibnizDetector.Matches
set_option maxRecDepth 4096
set_option maxHeartbeats 2000000
namespace AggregateLeibniz3564Conditional.Source
open LinearCertificates PageTransitionCertificates
def comparison : WireComparison := ⟨1,0,3,3,2,[],[false,false,true,false,false,false,false,false,false],[false,false,true,false,false,true],[false,true,false,false,false,true],[false,false,false,false,false,false,true,false,false],[]⟩
theorem complete : comparison.Valid := by lin_cert using ()
theorem source_representative : ∀ i : Fin 3, comparison.comparison.inclusion i ⟨0,by decide⟩ = eval AggregateD5Conditional.Data.b_S0_21_147_d2.comparison.projection (fun i => i.val == 1) i := by decide
theorem source_projection : eval comparison.comparison.projection (eval AggregateD5Conditional.Data.b_S0_21_147_d2.comparison.projection (fun i => i.val == 1)) = (fun i => i.val == 0) := by decide
theorem row3564_incoming_zero : ∀ i : Fin 3, matrixOf 3 3 comparison.incoming i ⟨1,by decide⟩ = zero i := by decide
theorem source_d3_cycle : InKernel (matrixOf 0 3 comparison.outgoing) (fun i => i.val == 1) := by funext i; exact Fin.elim0 i
theorem incoming_from_basis_values (actual : Matrix 3 3)
    (boundary : eval actual (fun i => i.val == 0) = zero)
    (namedZero : eval actual (fun i => i.val == 1) = zero)
    (storedValue : eval actual (fun i => i.val == 2) = (fun i => i.val == 0)) :
    actual = matrixOf 3 3 comparison.incoming := by
  exact (show ∀ actual : Matrix 3 3, eval actual (fun i => i.val == 0) = zero → eval actual (fun i => i.val == 1) = zero → eval actual (fun i => i.val == 2) = (fun i => i.val == 0) → actual = matrixOf 3 3 comparison.incoming from by decide) actual boundary namedZero storedValue
#print axioms complete
#print axioms incoming_from_basis_values
end AggregateLeibniz3564Conditional.Source
