import Fact713ConstructedNamed.Trace
import Fact713Row2994Branches.Data

namespace Fact713ConstructedE8
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Fact713ConstructedNamed

abbrev wire7 := Fact713Row2994Branches.Data.b_S0_9_132_d7

theorem accepted7 : checkWire wire7 = true := by decide

/-- The tracked E7 coordinates come from the preceding six actual quotients.
The neighboring d7 spaces and full differential meanings remain inputs. -/
structure Prefix8 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  previous : Prefix7 S pages
  step7 : StepInput S pages 7 degree wire7 previous.page7

noncomputable def Prefix8.page8 {S : AdamsSpectralSequence}
    {pages : CertifiedAdamsPages S} (P : Prefix8 S pages) :
    AdditiveCoordinates S 8 degree 1 := P.step7.next accepted7

def vector8 : Vec 1 := fun _ => true

theorem finite7 :
    eval (matrixOf wire7.k wire7.m wire7.outgoing) vector7 = zero ∧
    eval wire7.comparison.projection vector7 = vector8 ∧
    ¬ InImage (matrixOf wire7.m wire7.n wire7.incoming) vector7 := by
  unfold InImage
  decide

theorem finite_trajectory :
    TrajectoryValid (Fact713NextSourceSearch.Overlay.stages ++
      [Fact713Row2994Branches.Data.stage7]) :=
  Fact713Row2994Branches.Data.residual_finite_E8

#print axioms accepted7
#print axioms Prefix8.page8
#print axioms finite7
#print axioms finite_trajectory
end Fact713ConstructedE8
