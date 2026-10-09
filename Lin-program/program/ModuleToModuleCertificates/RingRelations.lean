import ModuleToModuleCertificates.Basic
namespace ModuleToModuleCertificates
open NamedElementCertificates

/-- A coefficient-ring relation lifted to one module-generator coordinate. -/
def liftRingRelation (n : Nat) (r : Polynomial) (j : Fin n) : ModuleExpressions.Expression n :=
  fun i => if i=j then r else []

theorem liftRingRelation_vanishes {R N : Type*} [CommRing R]
    [AddCommGroup N] [Module R N] (v : Nat → R) (g : Fin n → N)
    (r : Polynomial) (j : Fin n) (hr : evaluate v r = 0) :
    ModuleExpressions.evaluate v g (liftRingRelation n r j) = 0 := by
  apply Finset.sum_eq_zero
  intro i _
  change evaluate v (if i=j then r else []) • g i = 0
  split
  · rw [hr, zero_smul]
  · simp [evaluate]
end ModuleToModuleCertificates
