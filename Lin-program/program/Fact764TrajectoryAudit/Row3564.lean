import PageTransitionCertificates.Import
namespace Fact764TrajectoryAudit.Row3564
open LinearCertificates PageTransitionCertificates
-- Full incoming columns: zero,e2,e3,zero. The complete outgoing d2 is zero.
def out : Matrix 2 5 := fun _ _ => false
def incoming : Matrix 5 4 := fun i j => (i.val == 2 && j.val == 1) || (i.val == 3 && j.val == 2)
def comparison : Comparison 2 5 4 3 where
  inclusion := fun i j => if j.val < 2 then i.val == j.val else i.val == 4
  projection := fun i j => if i.val < 2 then j.val == i.val else j.val == 4
  up := fun i j => (i.val == 1 && j.val == 2) || (i.val == 2 && j.val == 3)
  down := fun _ _ => false
theorem complete : HomologyComparison out incoming comparison := by lin_cert using ()
def requested : Vec 5 := fun i => i.val == 1
def logged : Vec 5 := fun i => i.val == 4

theorem not_same_modulo_d2 : ¬ InImage incoming (add requested logged) := by
  rintro ⟨v,hv⟩
  have h := congrFun hv ⟨1,by decide⟩
  change false = true at h
  contradiction

def requestedClass : Homology out incoming := Quot.mk _ (⟨requested, by lin_cert using ()⟩ : Cycle out)
def loggedClass : Homology out incoming := Quot.mk _ (⟨logged, by lin_cert using ()⟩ : Cycle out)

theorem requested_ne_logged : requestedClass ≠ loggedClass := by
  intro h
  have hh := congrArg (homologyEquivalence out incoming comparison complete).toCoordinates h
  have bit := congrFun hh ⟨1,by decide⟩
  change true = false at bit
  contradiction
end Fact764TrajectoryAudit.Row3564
