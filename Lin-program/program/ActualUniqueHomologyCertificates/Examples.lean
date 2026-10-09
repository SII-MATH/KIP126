import ActualUniqueHomologyCertificates.Basic
import UniqueHomologyCertificates.Examples
import Stem125HomologyCertificates.MeaningExamples

namespace ActualUniqueHomologyCertificates.Examples
open LinearCertificates PageTransitionCertificates SemanticTrajectoryCertificates
open Stem125HomologyCertificates

def wire := UniqueHomologyCertificates.Examples.imported
def page := coordinatePage wire.comparison
def named : page.Current := (Stage.mk wire.comparison wire.named).vector
def certificate : Certificate wire.comparison page add named where
  representative := wire.named
  meaning := MeaningExamples.coordinate_whole_meaning wire.comparison
  named := rfl

theorem coordinate_unique : IsUnique wire.comparison page add named := by
  actual_unique_homology_cert using certificate

theorem actual_unique (p : PageData wire.comparison)
    (plus : p.Current → p.Current → p.Current) (x : p.Current)
    (meaning : WholeMeaning p plus)
    (named : p.currentCoordinates x = (Stage.mk wire.comparison wire.named).vector) :
    IsUnique wire.comparison p plus x := by
  actual_unique_homology_cert using
    (⟨wire.named, meaning, named⟩ : Certificate wire.comparison p plus x)

#print axioms coordinate_unique
#print axioms actual_unique
end ActualUniqueHomologyCertificates.Examples
