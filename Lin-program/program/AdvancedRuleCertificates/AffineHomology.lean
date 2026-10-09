import AdvancedRuleCertificates.Affine

namespace AdvancedRuleCertificates.AffineHomology
open LinearCertificates

def AllNonzeroHomology (outgoing : Matrix k m) (incoming : Matrix m n)
    (uncertainty : Matrix m u) (base : Vec m) : Prop :=
  IsComplex outgoing incoming ∧ ∀ coefficients,
    InKernel outgoing (add base (eval uncertainty coefficients)) ∧
    ¬ InImage incoming (add base (eval uncertainty coefficients))

def check (outgoing : Matrix k m) (incoming : Matrix m n)
    (uncertainty : Matrix m u) (base separator : Vec m) : Bool :=
  checkComplex outgoing incoming && checkKernel outgoing base &&
  checkComplex outgoing uncertainty && checkNotImage incoming base separator &&
  decide (∀ j, dot separator (fun i => uncertainty i j) = false)

theorem check_sound (outgoing : Matrix k m) (incoming : Matrix m n)
    (uncertainty : Matrix m u) (base separator : Vec m)
    (h : check outgoing incoming uncertainty base separator = true) :
    AllNonzeroHomology outgoing incoming uncertainty base := by
  simp only [check, Bool.and_eq_true] at h
  obtain ⟨⟨⟨⟨hc, hb⟩, hu⟩, hs⟩, hsu⟩ := h
  have hbase := checkKernel_sound outgoing base hb
  have hunc := checkComplex_sound outgoing uncertainty hu
  have hsep : dot separator base = true ∧
      ∀ j, dot separator (fun i => incoming i j) = false := of_decide_eq_true hs
  have hsepU : ∀ j, dot separator (fun i => uncertainty i j) = false :=
    of_decide_eq_true hsu
  refine ⟨checkComplex_sound outgoing incoming hc, ?_⟩
  intro coefficients
  constructor
  · change eval outgoing (add base (eval uncertainty coefficients)) = zero
    rw [eval_add, hbase, hunc coefficients]
    rfl
  · rintro ⟨preimage, he⟩
    have hz := annihilates_image incoming separator hsep.2 preimage
    rw [he, dot_add, hsep.1, annihilates_image uncertainty separator hsepU coefficients] at hz
    cases hz

instance (outgoing : Matrix k m) (incoming : Matrix m n)
    (uncertainty : Matrix m u) (base : Vec m) :
    LinProgramCertificates.CertificateVerifier (AllNonzeroHomology outgoing incoming uncertainty base) where
  Cert := Vec m
  check := check outgoing incoming uncertainty base
  sound := check_sound outgoing incoming uncertainty base

-- Boundaries span e2; uncertainty spans e1; e0 separates all affine values.
def outgoing : Matrix 1 3 := fun _ _ => false
def incoming : Matrix 3 1 := fun i _ => i.val == 2
def uncertainty : Matrix 3 1 := fun i _ => i.val == 1
def base : Vec 3 := fun i => i.val == 0

example : AllNonzeroHomology outgoing incoming uncertainty base := by
  lin_cert using base

-- A nonzero vector may still be a boundary: numerical nonzero is insufficient.
example : check outgoing incoming uncertainty (fun i => i.val == 2)
    (fun i => i.val == 2) = false := by decide

-- A separator that sees the uncertainty cannot prove the universal claim.
example : check outgoing incoming uncertainty base (fun i => i.val < 2) = false := by decide

-- Every uncertain term must be a cycle, even when the base is a cycle.
example : check (fun (_ : Fin 1) (i : Fin 3) => i.val == 1)
    incoming uncertainty base base = false := by decide

end AdvancedRuleCertificates.AffineHomology
