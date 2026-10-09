import BranchReplayCertificates.CandidateReduction
import BranchReplayCertificates.QuotientConclusion

namespace BranchReplayCertificates.D154545
open LinearCertificates

/-- The seven actually tried values before D154545; e3 is not in this list. -/
def excluded : List (Vec 4) :=
  [vector false false false false, vector false false true false,
   vector false false true true, vector true true false false,
   vector true true false true, vector true true true false,
   vector true true true true]

theorem exhaustive_reduction (value : Vec 4) (cycle : value 0 = value 1)
    (refutations : value ∉ excluded) : value = vector false false false true := by
  have ext : value = vector (value 0) (value 1) (value 2) (value 3) := by
    funext i
    obtain ⟨i, hi⟩ := i
    have cases : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 := by omega
    rcases cases with h | h | h | h <;> subst i <;> rfl
  rw [ext] at cycle refutations ⊢
  generalize value 0 = a, value 1 = b, value 2 = c, value 3 = d at *
  cases a <;> cases b <;> cases c <;> cases d <;> simp_all [excluded, vector]

/-- Two separating functionals abstract the actual residual obstructions:
S0(139,29) detects bit0; CW_2_eta(131,26) detects bit2.
Their identification with product maps must be established separately. -/
def obstruction : Matrix 2 4 := fun i j => j.val == 2 * i.val

theorem obstruction_reduction (value : Vec 4)
    (cycle : value 0 = value 1) (vanish : InKernel obstruction value)
    (nonzero : value ≠ zero) : value = vector false false false true := by
  apply exhaustive_reduction value cycle
  intro member
  simp only [excluded, List.mem_cons, List.not_mem_nil, or_false] at member
  rcases member with h | h | h | h | h | h | h
  · subst value
    apply nonzero
    funext i
    simp [vector, zero]
  all_goals
    subst value
    first
    | have hh := congrFun vanish ⟨0, by decide⟩; change true = false at hh; cases hh
    | have hh := congrFun vanish ⟨1, by decide⟩; change true = false at hh; cases hh

/-- A real matrix equation implies the first boundary needed by the quotient.
This bridge does not infer its hypotheses from a D log tag. -/
theorem supplies_boundary (d4 : Matrix 4 n) (source : Vec n)
    (cycle : eval d4 source 0 = eval d4 source 1)
    (refutations : eval d4 source ∉ excluded) :
    InImage d4 (vector false false false true) :=
  ⟨source, exhaustive_reduction (eval d4 source) cycle refutations⟩

example : InKernel obstruction (vector false false false true) := by lin_cert using ()
example : checkKernel obstruction (vector false false true true) = false := by decide
example : checkKernel obstruction (vector true true false true) = false := by decide

end BranchReplayCertificates.D154545
