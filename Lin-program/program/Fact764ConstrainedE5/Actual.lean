import Fact764ConstrainedE5.Imported
import ActualUniqueHomologyCertificates.Basic

namespace Fact764ConstrainedE5.Actual
open LinearCertificates PageTransitionCertificates SemanticTrajectoryCertificates
open Stem125HomologyCertificates

def wire (b : Bool) : UniqueHomologyCertificates.Wire :=
  if b then Imported.wire1 else Imported.wire0

theorem checked (b : Bool) :
    UniqueHomologyCertificates.check (wire b).comparison [false,true,false] = true := by
  cases b <;> decide

def certificate (b : Bool) (p : PageData (wire b).comparison)
    (plus : p.Current → p.Current → p.Current) (x : p.Current)
    (meaning : WholeMeaning p plus)
    (named : p.currentCoordinates x =
      (Stage.mk (wire b).comparison [false,true,false]).vector) :
    ActualUniqueHomologyCertificates.Certificate (wire b).comparison p plus x :=
  ⟨[false,true,false],meaning,named⟩

/-- All actual incoming elements and all actual cycles are quantified by the conclusion.
The whole-page meaning and the name interpretation must be proved for the application. -/
theorem unique (b : Bool) (p : PageData (wire b).comparison)
    (plus : p.Current → p.Current → p.Current) (x : p.Current)
    (meaning : WholeMeaning p plus)
    (named : p.currentCoordinates x =
      (Stage.mk (wire b).comparison [false,true,false]).vector) :
    ActualUniqueHomologyCertificates.IsUnique (wire b).comparison p plus x := by
  apply ActualUniqueHomologyCertificates.transport (wire b).comparison p plus meaning x
  rw [named]
  exact UniqueHomologyCertificates.sound (wire b).comparison [false,true,false] (checked b)

theorem unique_by_tactic (p : PageData (wire false).comparison)
    (plus : p.Current → p.Current → p.Current) (x : p.Current)
    (meaning : WholeMeaning p plus)
    (named : p.currentCoordinates x =
      (Stage.mk (wire false).comparison [false,true,false]).vector) :
    ActualUniqueHomologyCertificates.IsUnique (wire false).comparison p plus x := by
  actual_unique_homology_cert using certificate false p plus x meaning named

/-- The actual theorem uses precisely the imported matrices already linked to E4.
There is no second choice of unnamed source or target basis. -/
theorem finite_binding (b : Bool) :
    (wire b).comparison = (Stem125E5Search.Data.twentyfive (Conclusion.branchIndex b)) ∧
    (wire b).named = [false,true,false] := by
  cases b <;> constructor <;> rfl

#print axioms unique
#print axioms unique_by_tactic
#print axioms finite_binding
end Fact764ConstrainedE5.Actual
