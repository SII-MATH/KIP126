import AdvancedRuleCertificates.Affine
import Init.Omega

namespace BranchReplayCertificates
open LinearCertificates

/-- Bit order is the actual (s,t)=(25,150) local E2 basis 0,1,2,3. -/
def vector (a b c d : Bool) : Vec 4 := fun i => if i.val = 0 then a else if i.val = 1 then b else if i.val = 2 then c else d

def excluded : List (Vec 4) :=
  [vector false false false false, vector false false false true,
   vector false false true false, vector false false true true,
   vector true true false false, vector true true false true]

def base : Vec 4 := vector true true true false
def uncertainty : Matrix 4 1 := fun i _ => i.val == 3

/-- The six T rows are hypotheses here, not trusted proof records. -/
theorem reduction (value : Vec 4)
    (cycleConstraint : value 0 = value 1)
    (refutations : value ∉ excluded) :
    value = vector true true true false ∨ value = vector true true true true := by
  have ext : value = vector (value 0) (value 1) (value 2) (value 3) := by
    funext i
    obtain ⟨i, hi⟩ := i
    have cases : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 := by omega
    rcases cases with h | h | h | h <;> subst i <;> rfl
  rw [ext] at cycleConstraint refutations ⊢
  generalize value 0 = a, value 1 = b, value 2 = c, value 3 = d at *
  cases a <;> cases b <;> cases c <;> cases d <;>
    simp_all [excluded, vector]

theorem affine_reduction (value : Vec 4)
    (cycleConstraint : value 0 = value 1) (refutations : value ∉ excluded) :
    AdvancedRuleCertificates.Affine.Member uncertainty base value := by
  rcases reduction value cycleConstraint refutations with h | h
  · subst value
    lin_cert using (zero : Vec 1)
  · subst value
    lin_cert using (fun _ : Fin 1 => true)

example : AdvancedRuleCertificates.Affine.Excludes uncertainty base zero := by
  lin_cert using (vector true false false false)

end BranchReplayCertificates
