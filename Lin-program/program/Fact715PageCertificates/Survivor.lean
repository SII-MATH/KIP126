import PageTransitionCertificates.Import
import NamedElementCertificates.Generated
import NamedElementCertificates.Evaluation

namespace Fact715PageCertificates
open LinearCertificates PageTransitionCertificates NamedElementCertificates

def wire : WireComparison := page_comparison% "Fact715PageCertificates/comparison.json"
def outgoing : Matrix 4 5 := matrixOf 4 5 wire.outgoing
def incoming : Matrix 5 6 := matrixOf 5 6 wire.incoming
def target : Vec 5 := fun i => i.val == 3
def coordinates : Vec 4 := fun i => ([false,false,false,true] : List Bool)[i.val]!
def basis : Fin 5 → Polynomial := fun i => ([[[ 69,89 ]],[[ 1,389 ]],[[ 1,388 ]],[[ 0,0,391 ]],[[ 0,0,0,375 ]]] : List Polynomial)[i.val]!
def decoded : Polynomial := (List.finRange 5).flatMap fun i => if target i then basis i else []

theorem expression_decode : EqualModuloRelations [] decoded namedCase10.output := by
  lin_cert using ([] : List Term)

theorem named_expression_evaluation {R : Type*} [CommRing R] [CharP R 2]
    (v : Nat → R) (hr : ∀ r ∈ namedCase10.relations, evaluate v r = 0) :
    evaluate v decoded = evaluate v namedCase10.input := by
  rw [equalModulo_evaluate v [] _ _ expression_decode (by simp)]
  exact (equalModulo_evaluate v _ _ _ namedCase10_sound hr).symm

theorem comparison_valid : wire.Valid := by lin_cert using ()
theorem target_cycle : InKernel outgoing target := by lin_cert using ()
theorem target_not_boundary : ¬ InImage incoming target := by
  lin_cert using (fun i : Fin 5 => i.val == 3)

def equivalence : HomologyEquivalence outgoing incoming 4 :=
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
  have h0 := congrFun hh ⟨3, by decide⟩
  cases h0

end Fact715PageCertificates
