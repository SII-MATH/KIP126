import PageTransitionCertificates.Import
import NamedElementCertificates.Generated
import NamedElementCertificates.Evaluation

namespace Fact762PageCertificates
open LinearCertificates PageTransitionCertificates NamedElementCertificates

def wire : WireComparison := page_comparison% "Fact762PageCertificates/comparison.json"
def outgoing : Matrix 5 3 := matrixOf 5 3 wire.outgoing
def incoming : Matrix 3 5 := matrixOf 3 5 wire.incoming
def target : Vec 3 := fun i => i.val == 1
def coordinates : Vec 1 := fun i => ([true] : List Bool)[i.val]!
def basis : Fin 3 → Polynomial := fun i => ([[[ 449 ]],[[ 1,7,275 ]],[[ 0,0,425 ]]] : List Polynomial)[i.val]!
def decoded : Polynomial := (List.finRange 3).flatMap fun i => if target i then basis i else []

theorem expression_decode : EqualModuloRelations [] decoded namedCase1.output := by
  lin_cert using ([] : List Term)

theorem named_expression_evaluation {R : Type*} [CommRing R] [CharP R 2]
    (v : Nat → R) (hr : ∀ r ∈ namedCase1.relations, evaluate v r = 0) :
    evaluate v decoded = evaluate v namedCase1.input := by
  rw [equalModulo_evaluate v [] _ _ expression_decode (by simp)]
  exact (equalModulo_evaluate v _ _ _ namedCase1_sound hr).symm

theorem comparison_valid : wire.Valid := by lin_cert using ()
theorem target_cycle : InKernel outgoing target := by lin_cert using ()
theorem target_not_boundary : ¬ InImage incoming target := by
  lin_cert using (fun i : Fin 3 => i.val == 1)

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

end Fact762PageCertificates
