import Fact762SphereGDetection.BySigmaData
import NamedElementCertificates.ModuleImport
import Mathlib.Algebra.BigOperators.Fin

namespace Fact762SphereGDetection.D2Reduction
open NamedElementCertificates ModuleExpressions

def wire : Wire := module_bundle% "Fact762SphereGDetection/by-sigma-incoming4337.json"
theorem valid : wire.Valid := by lin_cert using ()

variable {R M : Type} [CommRing R] [CharP R 2] [AddCommGroup M] [Module R M]

/-- The missing incoming d2 column is derived using the actual coefficient
value and generator d2=0; five checked module reductions make it zero. -/
theorem incoming4337 (v : Nat → R) (generators : Fin 3 → M)
    (dR : R →+ R) (dM : M →+ M)
    (leibniz : ∀ a x, dM (a • x) = dR a • x + a • dM x)
    (coefficient : dR (NamedElementCertificates.evaluate v [[2,287]]) =
      NamedElementCertificates.evaluate v [[0,0,306],[0,2,286]])
    (generator : dM (generators 2) = 0)
    (relations : ∀ rel ∈ wire.relations,
      ModuleExpressions.evaluate v generators (toExpression 3 rel) = 0) :
    dM (NamedElementCertificates.evaluate v [[2,287]] • generators 2) = 0 := by
  have checked : ModuleExpressions.check (wire.relations.map (toExpression 3))
      (toExpression 3 wire.input) (toExpression 3 wire.output) wire.terms = true := by decide
  have equality := ModuleExpressions.check_sound_evaluate v generators _ _ _ _ checked (by
    intro rel hr
    obtain ⟨raw,hm,he⟩ := List.mem_map.mp hr
    rw [← he]
    exact relations raw hm)
  have expansion : ModuleExpressions.evaluate v generators (toExpression 3 wire.input) =
      NamedElementCertificates.evaluate v [[0,0,306],[0,2,286]] • generators 2 := by
    simp [ModuleExpressions.evaluate,toExpression,wire,Fin.sum_univ_succ,NamedElementCertificates.evaluate]
  have output : ModuleExpressions.evaluate v generators (toExpression 3 wire.output) = 0 := by
    simp [ModuleExpressions.evaluate,toExpression,wire,Fin.sum_univ_succ,NamedElementCertificates.evaluate]
  rw [expansion,output] at equality
  rw [leibniz,coefficient,generator,smul_zero,add_zero]
  exact equality

#print axioms valid
#print axioms incoming4337
end Fact762SphereGDetection.D2Reduction
