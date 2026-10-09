import LinearCertificates.Basic

namespace Proposition78Certificates
open LinearCertificates

/-- Actual local E2 coordinates; these are not automatically E12 coordinates. -/
def h6Squared : Vec 1 := fun _ => true
def potentialTarget : Vec 3 := fun i => i.val == 1
def d6Source : Vec 6 := fun i => i.val == 0 || i.val == 3
def squareDetector : Vec 5 := fun i => i.val == 4

theorem target_nonzero : potentialTarget ≠ zero := by
  intro h
  have hh := congrFun h ⟨1, by decide⟩
  cases hh

/-- A page-dependent differential image in a fixed comparison space. Supplying
such comparisons from actual pages is a separate mathematical obligation. -/
def Survives (d : Nat → Vec n) : Prop := ∀ r, 2 ≤ r → d r = zero
def OnlyPossible (d : Nat → Vec n) (target : Vec n) : Prop :=
  (∀ r, 2 ≤ r → r ≠ 12 → d r = zero) ∧ (d 12 = zero ∨ d 12 = target)

/-- The computationally reduced alternative implies an exclusive dichotomy.
This does not use the desired dichotomy as an assumed rule. -/
theorem reduced_dichotomy (d : Nat → Vec n) (target : Vec n)
    (nonzero : target ≠ zero) (allowed : OnlyPossible d target) :
    (Survives d ∨ d 12 = target) ∧ ¬ (Survives d ∧ d 12 = target) := by
  constructor
  · rcases allowed.2 with hz | ht
    · left
      intro r hr
      by_cases he : r = 12
      · subst r; exact hz
      · exact allowed.1 r hr he
    · exact Or.inr ht
  · rintro ⟨hs, ht⟩
    exact nonzero (ht.symm.trans (hs 12 (by decide)))

/-- Once Proposition 7.9 excludes the joint conditions, the reduced alternative
forces survival. `detection` is the still external synthetic comparison result. -/
theorem survival_from_detection (d : Nat → Vec n) (target : Vec n)
    (allowed : OnlyPossible d target) (C3 C4 C5 : Prop)
    (detection : d 12 = target → C3 ∧ C4 ∧ C5)
    (extensionObstruction : C3 → ¬ C5) : Survives d := by
  have hn : d 12 ≠ target := by
    intro h
    obtain ⟨h3, _, h5⟩ := detection h
    exact extensionObstruction h3 h5
  have hz : d 12 = zero := allowed.2.resolve_right hn
  intro r hr
  by_cases he : r = 12
  · subst r; exact hz
  · exact allowed.1 r hr he

end Proposition78Certificates
