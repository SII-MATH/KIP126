import PageTransitionCertificates.Import
import NamedElementCertificates.CnuBottomCell

namespace CnuPageCertificates
open LinearCertificates PageTransitionCertificates

def wire : WireComparison := page_comparison% "CnuPageCertificates/comparison.json"
def outgoing : Matrix 6 4 := matrixOf 6 4 wire.outgoing
def incoming : Matrix 4 4 := matrixOf 4 4 wire.incoming
def target : Vec 4 := fun i => i.val == 2
def coordinates : Vec 2 := fun i => i.val == 1

theorem comparison_valid : wire.Valid := by lin_cert using ()
theorem target_cycle : InKernel outgoing target := by lin_cert using ()
theorem target_not_boundary : ¬ InImage incoming target := by lin_cert using target

theorem target_E3_coordinates : eval wire.comparison.projection target = coordinates := by
  funext i
  have hi : ∀ i, eval wire.comparison.projection target i = coordinates i := by decide
  exact hi i

def equivalence : HomologyEquivalence outgoing incoming 2 :=
  homologyEquivalence outgoing incoming wire.comparison comparison_valid.2

def targetClass : Homology outgoing incoming := Quot.mk _ ⟨target, target_cycle⟩

theorem targetClass_coordinates : equivalence.toCoordinates targetClass = coordinates :=
  target_E3_coordinates

theorem targetClass_nonzero : targetClass ≠ equivalence.fromCoordinates zero := by
  intro h
  have hh := congrArg equivalence.toCoordinates h
  rw [targetClass_coordinates, equivalence.rightInverse] at hh
  have hi := congrFun hh ⟨1, by decide⟩
  cases hi

theorem named_global_id : NamedElementCertificates.CnuBottomCell.basisIds[2]! = 4412 := rfl

end CnuPageCertificates
