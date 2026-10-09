import MilnorCertificates.StableProduct

namespace MilnorCertificates

def IsStableMilnorProduct (rank : Nat) (left right output : Polynomial) : Prop :=
  ∀ extra, IsMilnorProductAll (rank + extra) (left.map (padMany extra))
    (right.map (padMany extra)) (output.map (padMany extra))

def checkStable (rank : Nat) (left right output : Polynomial) (c : AllCertificate) : Bool :=
  checkAll rank left right output c &&
  decide (c.finite.window.degree < 2^(rank+1)-1)

theorem checkStable_sound (rank : Nat) (left right output : Polynomial) (c : AllCertificate)
    (h : checkStable rank left right output c = true) :
    IsStableMilnorProduct rank left right output := by
  simp only [checkStable, Bool.and_eq_true, decide_eq_true_eq] at h
  have ha := checkAll_sound rank left right output c h.1
  have hc := h.1
  simp only [checkAll, Bool.and_eq_true, decide_eq_true_eq] at hc
  rcases hc with ⟨⟨⟨⟨_, hl⟩, hr⟩, hb⟩, hf⟩
  have ho := (check_sound _ _ _ _ _ hf).2.2.1
  intro extra
  apply isMilnorProductAll_padMany rank extra c.leftDegree c.rightDegree
    c.finite.window.degree left right output ha
  · intro m hm
    exact of_decide_eq_true (List.all_eq_true.mp hl m hm)
  · intro m hm
    exact of_decide_eq_true (List.all_eq_true.mp hr m hm)
  · intro m hm
    have hh := List.all_eq_true.mp ho m hm
    simp only [Bool.and_eq_true, beq_iff_eq, decide_eq_true_eq] at hh
    exact hh.2
  · exact hb
  · exact h.2

instance (rank : Nat) (left right output : Polynomial) :
    LinProgramCertificates.CertificateVerifier (IsStableMilnorProduct rank left right output) where
  Cert := AllCertificate
  check := checkStable rank left right output
  sound := checkStable_sound rank left right output

open Lean Elab Tactic
syntax "milnor_cert_stable" " using " term : tactic
elab_rules : tactic
  | `(tactic| milnor_cert_stable using $c:term) => do
      evalTactic (← `(tactic| exact checkStable_sound _ _ _ _ $c (by decide)))

theorem stable_sqTwoOne : IsStableMilnorProduct 2 [[2,0]] [[1,0]] [[3,0],[0,1]] := by
  milnor_cert_stable using (⟨generate ⟨2,3⟩,2,1⟩ : AllCertificate)

-- Rank one misses xi_2 in degree three, so this finite-rank identity cannot lift.
example : checkAll 1 [[2]] [[1]] [[3]] ⟨generate ⟨1,3⟩,2,1⟩ = true := by decide
example : checkStable 1 [[2]] [[1]] [[3]] ⟨generate ⟨1,3⟩,2,1⟩ = false := by decide

#print axioms checkStable_sound
end MilnorCertificates
