import PageTransitionCertificates.Import
import NamedElementCertificates.Generated
import NamedElementCertificates.Evaluation

namespace Fact763PageCertificates
open LinearCertificates PageTransitionCertificates NamedElementCertificates

def wire : WireComparison := page_comparison% "Fact763PageCertificates/comparison.json"
def outgoing : Matrix 3 5 := matrixOf 3 5 wire.outgoing
def incoming : Matrix 5 2 := matrixOf 5 2 wire.incoming
def target : Vec 5 := fun i => i.val == 4
def coordinates : Vec 4 := fun i => ([false,false,true,false] : List Bool)[i.val]!
def basis : Fin 5 → Polynomial := fun i => ([[[ 389 ]],[[ 388 ]],[[ 1,366 ]],[[ 0,373 ]],[[ 0,0,367 ]]] : List Polynomial)[i.val]!
def decoded : Polynomial := (List.finRange 5).flatMap fun i => if target i then basis i else []

theorem expression_decode : EqualModuloRelations [] decoded namedCase2.output := by
  lin_cert using ([] : List Term)

theorem named_expression_evaluation {R : Type*} [CommRing R] [CharP R 2]
    (v : Nat → R) (hr : ∀ r ∈ namedCase2.relations, evaluate v r = 0) :
    evaluate v decoded = evaluate v namedCase2.input := by
  rw [equalModulo_evaluate v [] _ _ expression_decode (by simp)]
  exact (equalModulo_evaluate v _ _ _ namedCase2_sound hr).symm

theorem comparison_valid : wire.Valid := by lin_cert using ()
theorem target_cycle : InKernel outgoing target := by lin_cert using ()
theorem target_not_boundary : ¬ InImage incoming target := by
  lin_cert using (fun i : Fin 5 => i.val == 2 || i.val == 4)

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
  have h0 := congrFun hh ⟨2, by decide⟩
  cases h0

end Fact763PageCertificates
