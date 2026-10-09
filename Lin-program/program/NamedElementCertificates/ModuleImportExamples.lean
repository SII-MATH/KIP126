import NamedElementCertificates.ModuleImport

namespace NamedElementCertificates.ModuleExpressions

def imported : Wire := module_bundle% "NamedElementCertificates/module-example.json"

example : imported.Valid := by lin_cert using ()
example : ({imported with version := 2} : Wire).valid = false := by decide

theorem imported_evaluation {R M : Type*} [CommRing R] [CharP R 2]
    [AddCommGroup M] [Module R M] (v : Nat → R) (g : Fin imported.rank → M) :
    EvaluationsAgree v g (imported.relations.map (toExpression imported.rank))
      (toExpression imported.rank imported.input) (toExpression imported.rank imported.output) := by
  module_cert using imported.terms

example : ({imported with input := []} : Wire).valid = false := by decide
example : ({imported with terms := [⟨1,[[]]⟩]} : Wire).valid = false := by decide

def rejectedFields : Bool := match parseWire "{\"bogus\":0,\"input\":[],\"output\":[],\"rank\":0,\"relations\":[],\"terms\":[],\"version\":1}" with
  | .error _ => true
  | .ok _ => false
#eval rejectedFields

end NamedElementCertificates.ModuleExpressions
