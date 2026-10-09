import Prop79IncomingSearch.Naturality
import Prop79IncomingSearch.Finite

namespace Prop79IncomingSearch.CoordinateBridge
open LinearCertificates PageTransitionCertificates ResolutionCertificates

def sourceCoordinates := homologyEquivalence _ _ Finite.Cnu_11_137_d2.comparison
  Finite.Cnu_11_137_d2_complete.2
def targetCoordinates := homologyEquivalence _ _ Finite.Cnu_14_139_d2.comparison
  Finite.Cnu_14_139_d2_complete.2

theorem named_source_coordinates : sourceCoordinates.toCoordinates Naturality.named =
    (fun i : Fin 3 => i.val == 1) := by
  funext i
  exact (show ∀ i, sourceCoordinates.toCoordinates Naturality.named i =
    (i.val == 1) from by decide) i

theorem named_target_coordinates : targetCoordinates.toCoordinates CnuPageCertificates.targetClass =
    (fun i : Fin 2 => i.val == 0) := by
  funext i
  exact (show ∀ i, targetCoordinates.toCoordinates CnuPageCertificates.targetClass i =
    (i.val == 0) from by decide) i

theorem all_source_coordinates (x : Naturality.T) :
    sourceCoordinates.toCoordinates x =
      eval (coordinateMap Comparison.target.comparison Finite.Cnu_11_137_d2.comparison
        (fun i j => i.val == j.val)) (Naturality.coordinates.toCoordinates x) := by
  have calculate : ∀ v : Vec 3,
      sourceCoordinates.toCoordinates (Naturality.coordinates.fromCoordinates v) =
      eval (coordinateMap Comparison.target.comparison Finite.Cnu_11_137_d2.comparison
        (fun i j => i.val == j.val)) v := by decide
  have result := calculate (Naturality.coordinates.toCoordinates x)
  rw [Naturality.coordinates.leftInverse] at result
  exact result

theorem d4_source_zero : Finite.Cnu_10_136_d3.h = 0 := rfl
theorem d5_source_dimension : Finite.Cnu_9_135_d4.h = 1 := rfl

#print axioms named_source_coordinates
#print axioms named_target_coordinates
#print axioms all_source_coordinates
#print axioms d4_source_zero
#print axioms d5_source_dimension
end Prop79IncomingSearch.CoordinateBridge
