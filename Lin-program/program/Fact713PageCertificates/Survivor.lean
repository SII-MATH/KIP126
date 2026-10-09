import PageTransitionCertificates.Import
import NamedElementCertificates.Generated
import NamedElementCertificates.Evaluation

namespace Fact713PageCertificates
open LinearCertificates PageTransitionCertificates NamedElementCertificates

def wire : WireComparison := page_comparison% "Fact713PageCertificates/comparison.json"
def outgoing : Matrix 2 2 := matrixOf 2 2 wire.outgoing
def incoming : Matrix 2 3 := matrixOf 2 3 wire.incoming
def target : Vec 2 := fun _ => true
def basis : Fin 2 → Polynomial := fun i => if i.val = 0 then [[366]] else [[0,352]]
def decoded : Polynomial := (List.finRange 2).flatMap fun i => if target i then basis i else []

theorem expression_decode : EqualModuloRelations [] decoded namedCase5.output := by
  lin_cert using ([] : List Term)

theorem named_expression_evaluation {R : Type*} [CommRing R] [CharP R 2]
    (v : Nat → R) (hr : ∀ r ∈ namedCase5.relations, evaluate v r = 0) :
    evaluate v decoded = evaluate v namedCase5.input := by
  rw [equalModulo_evaluate v [] _ _ expression_decode (by simp)]
  exact (equalModulo_evaluate v _ _ _ namedCase5_sound hr).symm

theorem comparison_valid : wire.Valid := by lin_cert using ()
theorem target_cycle : InKernel outgoing target := by lin_cert using ()
theorem target_not_boundary : ¬ InImage incoming target := by
  lin_cert using (fun i : Fin 2 => i.val == 0)

def equivalence : HomologyEquivalence outgoing incoming 2 :=
  homologyEquivalence outgoing incoming wire.comparison comparison_valid.2
def targetClass : Homology outgoing incoming := Quot.mk _ ⟨target, target_cycle⟩
theorem targetClass_coordinates : equivalence.toCoordinates targetClass = target := by
  change eval wire.comparison.projection target = target
  funext i
  have h : ∀ i, eval wire.comparison.projection target i = target i := by decide
  exact h i
theorem targetClass_nonzero : targetClass ≠ equivalence.fromCoordinates zero := by
  intro h
  have hh := congrArg equivalence.toCoordinates h
  rw [targetClass_coordinates, equivalence.rightInverse] at hh
  have h0 := congrFun hh ⟨0, by decide⟩
  cases h0

end Fact713PageCertificates
