import Fact713ConstructedE8.Trace
import Fact713Row3247ConditionalBranches.Branches

namespace Fact713ConstructedE9
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Fact713ConstructedNamed Fact713ConstructedE8

abbrev wire8 := Fact713Row3247ConditionalBranches.Data.b_S0_9_132_d8

theorem accepted8 : checkWire wire8 = true := by decide

/-- The tracked E8 coordinates come from the preceding actual quotients.
The neighboring d8 spaces and full differential meanings remain inputs. -/
structure Prefix9 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  previous : Prefix8 S pages
  step8 : StepInput S pages 8 degree wire8 previous.page8

noncomputable def Prefix9.page9 {S : AdamsSpectralSequence}
    {pages : CertifiedAdamsPages S} (P : Prefix9 S pages) :
    AdditiveCoordinates S 9 degree 1 := P.step8.next accepted8

def vector9 : Vec 1 := fun _ => true

theorem finite8 :
    eval (matrixOf wire8.k wire8.m wire8.outgoing) vector8 = zero ∧
    eval wire8.comparison.projection vector8 = vector9 ∧
    ¬ InImage (matrixOf wire8.m wire8.n wire8.incoming) vector8 := by
  unfold InImage
  decide

theorem finite_trajectory (residual : Bool) :
    TrajectoryValid (Fact713Row3247ConditionalBranches.stages residual) :=
  Fact713Row3247ConditionalBranches.both_finite_E9 residual

#print axioms accepted8
#print axioms Prefix9.page9
#print axioms finite8
#print axioms finite_trajectory
end Fact713ConstructedE9
