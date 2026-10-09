import PageTransitionCertificates.Import
import NamedElementCertificates.Generated
import NamedElementCertificates.Evaluation

namespace Fact721PageCertificates.First
open LinearCertificates PageTransitionCertificates NamedElementCertificates

def wire : WireComparison := page_comparison% "Fact721PageCertificates/first-comparison.json"
def outgoing : Matrix 1 2 := matrixOf 1 2 wire.outgoing
def incoming : Matrix 2 2 := matrixOf 2 2 wire.incoming
def target : Vec 2 := fun i => i.val == 1
def coordinates : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
def basis : Fin 2 → Polynomial := fun i => ([[[ 371 ]],[[ 69,79 ]]] : List Polynomial)[i.val]!
def decoded : Polynomial := (List.finRange 2).flatMap fun i => if target i then basis i else []

theorem expression_decode : EqualModuloRelations [] decoded namedCase12.output := by
  lin_cert using ([] : List Term)

theorem named_expression_evaluation {R : Type*} [CommRing R] [CharP R 2]
    (v : Nat → R) (hr : ∀ r ∈ namedCase12.relations, evaluate v r = 0) :
    evaluate v decoded = evaluate v namedCase12.input := by
  rw [equalModulo_evaluate v [] _ _ expression_decode (by simp)]
  exact (equalModulo_evaluate v _ _ _ namedCase12_sound hr).symm

theorem comparison_valid : wire.Valid := by lin_cert using ()
theorem target_cycle : InKernel outgoing target := by lin_cert using ()
theorem target_not_boundary : ¬ InImage incoming target := by
  lin_cert using (fun i : Fin 2 => i.val == 1)

def equivalence : HomologyEquivalence outgoing incoming 2 :=
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
  have h0 := congrFun hh ⟨1, by decide⟩
  cases h0

end Fact721PageCertificates.First
