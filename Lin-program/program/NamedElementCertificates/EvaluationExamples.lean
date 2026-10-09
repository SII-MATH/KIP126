import NamedElementCertificates.Evaluation
import NamedElementCertificates.Generated

namespace NamedElementCertificates

/-- The actual Fact 7.13 target reduction is valid in every characteristic-two
commutative ring satisfying the imported relation h0*h1=0. -/
theorem fact713_target_evaluation {R : Type*} [CommRing R] [CharP R 2]
    (v : Nat → R) (h01 : v 0 * v 1 = 0) :
    evaluate v namedCase7.input = evaluate v namedCase7.output := by
  apply equalModulo_evaluate v _ _ _ namedCase7_sound
  intro r hr
  change r ∈ [[[0, 1]]] at hr
  simp only [List.mem_cons, List.not_mem_nil, or_false] at hr
  subst r
  simpa [evaluate, evaluateMonomial] using h01

#print axioms NamedElementCertificates.check_sound_evaluate

end NamedElementCertificates
