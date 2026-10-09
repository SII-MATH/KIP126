import AdvancedRuleCertificates.Connecting
import Mathlib.Algebra.Group.Prod
import Mathlib.Algebra.Group.Int.Defs

namespace AdvancedRuleCertificates

def zeroDifferential : Differential Int := ⟨0, by intro a; rfl⟩

def pairDifferential : Differential (Int × Int) where
  d :=
    { toFun := fun p => (0, p.1)
      map_zero' := rfl
      map_add' := by intros; rfl }
  square_zero := by intro p; rfl

def testSequence : ExactSequence Int (Int × Int) Int
    zeroDifferential pairDifferential zeroDifferential where
  inclusion :=
    { toFun := fun a => (0, a)
      map_zero' := rfl
      map_add' := by intros; rfl }
  projection :=
    { toFun := fun p => p.1
      map_zero' := rfl
      map_add' := by intros; rfl }
  inclusion_injective := by intro a b h; exact congrArg Prod.snd h
  projection_surjective := by intro c; exact ⟨(c, 0), rfl⟩
  composite_zero := by intro a; rfl
  exact_middle := by
    intro b hb
    refine ⟨b.2, ?_⟩
    change (0, b.2) = b
    change b.1 = 0 at hb
    exact Prod.ext hb.symm rfl
  inclusion_chain := by intro a; rfl
  projection_chain := by intro b; rfl

-- The nonzero connecting value is forced, not merely a copied zero example.
example : checkConnecting testSequence 7 ⟨(7, 0), 7⟩ = true := by decide
example : checkConnecting testSequence 7 ⟨(7, 0), 8⟩ = false := by decide

example : Cycle zeroDifferential 7 :=
  (checkConnecting_sound testSequence 7 ⟨(7, 0), 7⟩ (by decide)).2

example : BoundaryEquivalent zeroDifferential 7 7 :=
  connecting_independent testSequence 7 ⟨(7, 0), 7⟩ ⟨(7, 42), 7⟩
    (by exact ⟨rfl, rfl, rfl⟩) (by exact ⟨rfl, rfl, rfl⟩)

end AdvancedRuleCertificates
