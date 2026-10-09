import Init.Data.List.Lemmas
import Lean.Elab.Tactic

/-!
Scoped propositional branch certificates. An assumption introduced in an
implication proof exists only in that subtree; finite alternatives are
represented by an explicit disjunction theorem. No ss log is interpreted here.
-/
namespace PropagationCertificates.Branches

inductive Formula where
  | atom : Nat → Formula
  | bottom : Formula
  | implies : Formula → Formula → Formula
  | either : Formula → Formula → Formula
  deriving DecidableEq, Repr

def Meaning (valuation : Nat → Prop) : Formula → Prop
  | .atom n => valuation n
  | .bottom => False
  | .implies p q => Meaning valuation p → Meaning valuation q
  | .either p q => Meaning valuation p ∨ Meaning valuation q

inductive Proof where
  | assumption : Proof
  | implicationIntro : Proof → Proof
  | implicationElim : Formula → Proof → Proof → Proof
  | cases : Formula → Formula → Proof → Proof → Proof → Proof
  deriving Repr

def check (context : List Formula) (goal : Formula) : Proof → Bool
  | .assumption => decide (goal ∈ context)
  | .implicationIntro sub =>
    match goal with
    | .implies p q => check (p :: context) q sub
    | _ => false
  | .implicationElim p hp himp =>
    check context p hp && check context (.implies p goal) himp
  | .cases p q hor left right =>
    check context (.either p q) hor &&
    check (p :: context) goal left && check (q :: context) goal right

theorem check_sound (valuation : Nat → Prop) (proof : Proof) :
    ∀ context goal, (∀ p ∈ context, Meaning valuation p) →
    check context goal proof = true → Meaning valuation goal := by
  induction proof with
  | assumption =>
    intro context goal hc h
    exact hc goal (of_decide_eq_true h)
  | implicationIntro sub ih =>
    intro context goal hc h
    cases goal with
    | atom n => simp [check] at h
    | bottom => simp [check] at h
    | either p q => simp [check] at h
    | implies p q =>
      intro hp
      apply ih (p :: context) q _ h
      intro f hf
      rcases List.mem_cons.mp hf with hf | hf
      · subst f; exact hp
      · exact hc f hf
  | implicationElim p hp himp ihp ihi =>
    intro context goal hc h
    have hh : check context p hp = true ∧ check context (.implies p goal) himp = true :=
      by simpa only [check, Bool.and_eq_true] using h
    exact ihi context (.implies p goal) hc hh.2 (ihp context p hc hh.1)
  | cases p q hor left right iho ihl ihr =>
    intro context goal hc h
    have hh : (check context (.either p q) hor = true ∧ check (p :: context) goal left = true) ∧
        check (q :: context) goal right = true := by
      simpa only [check, Bool.and_eq_true] using h
    have hhleft := hh.1
    have ho := iho context (.either p q) hc hhleft.1
    cases ho with
    | inl hp =>
      apply ihl (p :: context) goal _ hhleft.2
      intro f hf
      rcases List.mem_cons.mp hf with hf | hf
      · subst f; exact hp
      · exact hc f hf
    | inr hq =>
      apply ihr (q :: context) goal _ hh.2
      intro f hf
      rcases List.mem_cons.mp hf with hf | hf
      · subst f; exact hq
      · exact hc f hf

/-- Discharging a branch returns a conditional exclusion theorem. -/
theorem exclude_sound (valuation : Nat → Prop) (context : List Formula)
    (target : Formula) (proof : Proof)
    (hc : ∀ p ∈ context, Meaning valuation p)
    (h : check context (.implies target .bottom) proof = true) :
    ¬ Meaning valuation target :=
  check_sound valuation proof context (.implies target .bottom) hc h

def candidateA : Formula := .atom 0
def candidateB : Formula := .atom 1
def target : Formula := .atom 2

def eliminationContext : List Formula :=
  [.implies target (.either candidateA candidateB),
   .implies candidateA .bottom, .implies candidateB .bottom]

def eliminationProof : Proof :=
  .implicationIntro
    (.cases candidateA candidateB
      (.implicationElim target .assumption .assumption)
      (.implicationElim candidateA .assumption .assumption)
      (.implicationElim candidateB .assumption .assumption))

example : check eliminationContext (.implies target .bottom) eliminationProof = true := by
  decide

example (valuation : Nat → Prop)
    (exhaustive : valuation 2 → valuation 0 ∨ valuation 1)
    (refuteA : ¬ valuation 0) (refuteB : ¬ valuation 1) : ¬ valuation 2 := by
  apply exclude_sound valuation eliminationContext target eliminationProof
  · intro p hp
    simp only [eliminationContext, List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with h | h | h
    · subst p; exact exhaustive
    · subst p; exact refuteA
    · subst p; exact refuteB
  · decide

-- Discharged branch assumptions cannot leak into the outer context.
example : check [] candidateA .assumption = false := by decide
example : check [] (.implies candidateA candidateA) (.implicationIntro .assumption) = true := by decide
example : check [] (.implies candidateA .bottom) (.implicationIntro .assumption) = false := by decide

end PropagationCertificates.Branches

namespace PropagationCertificates.Branches
open Lean Elab Tactic
syntax "branch_cert" " using " term " model " term " premises " term : tactic
macro_rules
  | `(tactic| branch_cert using $p:term model $v:term premises $h:term) =>
      `(tactic| exact PropagationCertificates.Branches.check_sound $v $p _ _ $h (by decide))
end PropagationCertificates.Branches

namespace PropagationCertificates.Branches
example (valuation : Nat → Prop) : Meaning valuation (.implies candidateA candidateA) := by
  branch_cert using Proof.implicationIntro Proof.assumption model valuation premises
    (show ∀ p ∈ ([] : List Formula), Meaning valuation p from by simp)
#print axioms check_sound
#print axioms exclude_sound
end PropagationCertificates.Branches
