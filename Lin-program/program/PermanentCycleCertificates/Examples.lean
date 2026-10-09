import PermanentCycleCertificates.Finite
import PermanentCycleCertificates.AdamsBounds

namespace PermanentCycleCertificates.Examples
open LinearCertificates PageTransitionCertificates SemanticTrajectoryCertificates

def stable : System where
  Page := fun _ => Bool
  Incoming := fun _ => Unit
  Outgoing := fun _ => Unit
  zero := fun _ => false
  zeroIncoming := fun _ => ()
  zeroOutgoing := fun _ => ()
  incoming := fun _ _ => false
  outgoing := fun _ _ => ()
  advance := fun _ x => x
  incoming_zero := fun _ => rfl
  homology_zero := by intro n x _; simp

def wire : WireComparison := ⟨1, 0, 1, 0, 1, [], [], [true], [true], [], []⟩
def stage : Stage := ⟨wire, [true]⟩

def coordinates : PrefixCoordinates stable [stage] where
  incoming := fun _ _ => zero
  current := fun _ x _ => x
  outgoing := fun _ _ => zero
  next := fun _ x _ => x

def meaning : PrefixMeaning stable true [stage] where
  coordinates := coordinates
  equations := by
    intro i
    have hi : i = ⟨0, by decide⟩ := by apply Fin.ext; change i.val = 0; have h := i.isLt; change i.val < 1 at h; omega
    subst i
    refine ⟨?_, ?_, ?_, rfl, rfl, rfl, ?_, ?_, ?_⟩
    · intro x y h
      exact congrFun h ⟨0, by decide⟩
    · intro x y _
      cases x; cases y; rfl
    · intro x y h
      exact congrFun h ⟨0, by decide⟩
    · intro x
      funext j
      exact Fin.elim0 j
    · intro y
      rfl
    · intro x _
      funext j
      exact (show ∀ x : Bool, ∀ j : Fin 1, x = eval wire.comparison.projection (fun _ => x) j from by decide) x j
  named := by
    intro i
    have hi : i = ⟨0, by decide⟩ := by apply Fin.ext; change i.val = 0; have h := i.isLt; change i.val < 1 at h; omega
    subst i
    funext j
    exact (show ∀ j : Fin 1, true = ([true] : List Bool)[j.val]?.getD false from by decide) j

def certificate : Certificate stable true where
  stages := [stage]
  meaning := meaning
  tail := ⟨fun _ _ => inferInstanceAs (Subsingleton Unit), fun _ _ => inferInstanceAs (Subsingleton Unit)⟩

theorem stable_permanent : stable.Permanent true := by permanent_cert using certificate

def batch : List Request := [⟨stable, true, certificate⟩]
example : ∀ r ∈ batch, r.system.Permanent r.element := by lin_cert using ()

example : checkPrefix [] = false := by decide
example : checkPrefix [{ stage with representative := [false] }] = false := by decide
example : diagnosePrefix [{ stage with representative := [false] }] =
    some "prefix[0] (page 2): comparison, cycle, nonboundary or dimensions failed" := by decide

#print axioms stable_permanent
end PermanentCycleCertificates.Examples
