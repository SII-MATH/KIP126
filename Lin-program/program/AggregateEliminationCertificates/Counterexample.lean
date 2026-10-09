import AggregateEliminationCertificates.Basic

namespace AggregateEliminationCertificates.Counterexample
open LinearCertificates PageTransitionCertificates

def outgoing : Matrix 1 2 := fun _ _ => true
def e0 : Vec 2 := fun i => i.val == 0
def e1 : Vec 2 := fun i => i.val == 1

theorem both_generators_not_cycles :
    ¬ InKernel outgoing e0 ∧ ¬ InKernel outgoing e1 := by
  constructor <;> intro h
  · have bit := congrFun h ⟨0,by decide⟩
    change true = false at bit
    contradiction
  · have bit := congrFun h ⟨0,by decide⟩
    change true = false at bit
    contradiction

theorem sum_is_nonzero_cycle :
    add e0 e1 ≠ zero ∧ InKernel outgoing (add e0 e1) := by
  constructor
  · intro h
    have bit := congrFun h ⟨0,by decide⟩
    change true = false at bit
    contradiction
  · funext i
    exact (show ∀ i : Fin 1, eval outgoing (add e0 e1) i = false from by decide) i

def comparison : WireComparison :=
  ⟨1,1,2,0,1,[true,true],[],[true,true],[false,true],[],[true,false]⟩

theorem comparison_valid : comparison.Valid := by lin_cert using ()

theorem sum_is_not_boundary :
    ¬ InImage (matrixOf 2 0 comparison.incoming) (add e0 e1) := by
  rintro ⟨x,h⟩
  have bit := congrFun h ⟨0,by decide⟩
  change false = true at bit
  contradiction

#print axioms sum_is_not_boundary
end AggregateEliminationCertificates.Counterexample
