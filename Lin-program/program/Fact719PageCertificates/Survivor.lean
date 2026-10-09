import PageTransitionCertificates.Import
import NamedElementCertificates.Generated
import NamedElementCertificates.Evaluation

namespace Fact719PageCertificates
open LinearCertificates PageTransitionCertificates NamedElementCertificates

def wire : WireComparison := page_comparison% "Fact719PageCertificates/comparison.json"
def outgoing : Matrix 1 1 := matrixOf 1 1 wire.outgoing
def incoming : Matrix 1 0 := matrixOf 1 0 wire.incoming
def target : Vec 1 := fun i => i.val == 0
def coordinates : Vec 1 := fun i => ([true] : List Bool)[i.val]!
def basis : Fin 1 → Polynomial := fun i => ([[[ 1,323 ]]] : List Polynomial)[i.val]!
def decoded : Polynomial := (List.finRange 1).flatMap fun i => if target i then basis i else []

theorem expression_decode : EqualModuloRelations [] decoded namedCase11.output := by
  lin_cert using ([] : List Term)

theorem named_expression_evaluation {R : Type*} [CommRing R] [CharP R 2]
    (v : Nat → R) (hr : ∀ r ∈ namedCase11.relations, evaluate v r = 0) :
    evaluate v decoded = evaluate v namedCase11.input := by
  rw [equalModulo_evaluate v [] _ _ expression_decode (by simp)]
  exact (equalModulo_evaluate v _ _ _ namedCase11_sound hr).symm

theorem comparison_valid : wire.Valid := by lin_cert using ()
theorem target_cycle : InKernel outgoing target := by lin_cert using ()
theorem target_not_boundary : ¬ InImage incoming target := by
  lin_cert using (fun i : Fin 1 => i.val == 0)

def equivalence : HomologyEquivalence outgoing incoming 1 :=
  homologyEquivalence outgoing incoming wire.comparison comparison_valid.2
def targetClass : Homology outgoing incoming := Quot.mk _ ⟨target, target_cycle⟩
theorem targetClass_coordinates : equivalence.toCoordinates targetClass = coordinates := by
  change eval wire.comparison.projection target = coordinates
  funext i
  have h : ∀ i, eval wire.comparison.projection target i = coordinates i := by decide
  exact h i
theorem targetClass_nonzero : targetClass ≠ equivalence.fromCoordinates zero := by
  intro h
  have hh := congrArg equivalence.toCoordinates h
  rw [targetClass_coordinates, equivalence.rightInverse] at hh
  have h0 := congrFun hh ⟨0, by decide⟩
  cases h0

end Fact719PageCertificates
