import PermanentCycleCertificates.Finite

namespace PermanentCycleCertificates.Counterexamples
open LinearCertificates PageTransitionCertificates SemanticTrajectoryCertificates

/-- Every finite prefix before `late` looks stable. A genuine later outgoing
differential kills the class; the next page records its zero image. -/
def hidden (late : Nat) : System where
  Page := fun _ => Bool
  Incoming := fun _ => Unit
  Outgoing := fun _ => Bool
  zero := fun _ => false
  zeroIncoming := fun _ => ()
  zeroOutgoing := fun _ => false
  incoming := fun _ _ => false
  outgoing := fun n x => if n = late then x else false
  advance := fun n x => if n = late then false else x
  incoming_zero := fun _ => rfl
  homology_zero := by
    intro n x hx
    by_cases hn : n = late
    · simp only [hn, if_pos] at hx ⊢
      cases x <;> simp_all
    · simp only [hn, if_neg] at hx ⊢
      simp

theorem before_late (late : Nat) : ∀ n, n ≤ late → (hidden late).at true n = true := by
  intro n hn
  induction n with
  | zero => rfl
  | succ n ih =>
    have hnl : n ≠ late := by omega
    change (if n = late then false else (hidden late).at true n) = true
    rw [if_neg hnl, ih (by omega)]

theorem every_finite_prefix (late : Nat) :
    ∀ n, n < late → (hidden late).Good n ((hidden late).at true n) := by
  intro n hn
  rw [before_late late n (by omega)]
  constructor
  · change (if n = late then true else false) = false
    exact if_neg (by omega)
  · rintro ⟨y, hy⟩
    change false = true at hy
    contradiction

theorem hidden_not_permanent (late : Nat) : ¬ (hidden late).Permanent true := by
  intro h
  have hc := (h late).1
  rw [before_late late late (by omega)] at hc
  change (if late = late then true else false) = false at hc
  simp at hc

theorem vanishing_cannot_be_fabricated (late cutoff : Nat) :
    ¬ TailVanishing (hidden late) cutoff := by
  intro tail
  have h : (true : Bool) = false := (tail.outgoing cutoff (by omega)).allEq true false
  contradiction

def hiddenWire : WireComparison := ⟨1, 1, 1, 0, 1, [false], [], [true], [true], [], [false]⟩
def hiddenStage : Stage := ⟨hiddenWire, [true]⟩
def hiddenCoordinates : PrefixCoordinates (hidden 3) [hiddenStage] where
  incoming := fun _ _ => zero
  current := fun _ x _ => x
  outgoing := fun _ x _ => x
  next := fun _ x _ => x

def hiddenMeaning : PrefixMeaning (hidden 3) true [hiddenStage] where
  coordinates := hiddenCoordinates
  equations := by
    intro i
    have hi : i = ⟨0, by decide⟩ := by
      apply Fin.ext
      change i.val = 0
      have h := i.isLt
      change i.val < 1 at h
      omega
    subst i
    refine ⟨?_, ?_, ?_, rfl, rfl, rfl, ?_, ?_, ?_⟩
    · intro x y h; exact congrFun h ⟨0, by decide⟩
    · intro x y h; exact congrFun h ⟨0, by decide⟩
    · intro x y h; exact congrFun h ⟨0, by decide⟩
    · intro x
      funext j
      exact (show ∀ x : Bool, ∀ j : Fin 1, false = eval (matrixOf 1 1 hiddenWire.outgoing) (fun _ => x) j from by decide) x j
    · intro y; rfl
    · intro x _
      funext j
      exact (show ∀ x : Bool, ∀ j : Fin 1, x = eval hiddenWire.comparison.projection (fun _ => x) j from by decide) x j
  named := by
    intro i
    have hi : i = ⟨0, by decide⟩ := by
      apply Fin.ext
      change i.val = 0
      have h := i.isLt
      change i.val < 1 at h
      omega
    subst i
    funext j
    exact (show ∀ j : Fin 1, true = ([true] : List Bool)[j.val]?.getD false from by decide) j

theorem accepted_finite_but_not_permanent :
    checkPrefix [hiddenStage] = true ∧ ¬ (hidden 3).Permanent true :=
  ⟨by decide, hidden_not_permanent 3⟩

#print axioms hidden_not_permanent
#print axioms every_finite_prefix
#print axioms accepted_finite_but_not_permanent
end PermanentCycleCertificates.Counterexamples
