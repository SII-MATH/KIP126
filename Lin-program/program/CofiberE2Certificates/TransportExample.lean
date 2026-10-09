import CofiberE2Certificates.Transport

namespace CofiberE2Certificates.TransportExample
open LinearCertificates LinProgramCertificates

/-- The actual C2 middle degree (3,12): inclusion into the second coordinate
and projection onto the first, with one-dimensional adjacent spaces. -/
def actual : Wire := cofiber_e2% "CofiberE2Certificates/exact/00039.json"
theorem actual_valid : actual.Valid := by lin_cert using ()

local instance : Zero Bool := ⟨false⟩

def one : Vec 1 ≃ Bool where
  toFun x := x 0
  invFun b := fun _ => b
  left_inv x := by funext i; have : i = 0 := Subsingleton.elim _ _; subst i; rfl
  right_inv _ := rfl

def two : Vec 2 ≃ Bool × Bool where
  toFun x := (x 0, x 1)
  invFun p := fun i => if i.val = 0 then p.1 else p.2
  left_inv x := by
    funext i
    by_cases h : i.val = 0
    · have hi : i = 0 := Fin.ext h
      subst i
      rfl
    · have hi : i = 1 := Fin.ext (by omega)
      subst i
      rfl
  right_inv p := by cases p; rfl

def inclusion (x : Bool) : Bool × Bool := (false, x)
def projection (x : Bool × Bool) : Bool := x.1

theorem actual_sequence_exact :
    (∀ x, projection (inclusion x) = false) ∧
    (∀ y, projection y = false ↔ ∃ x, inclusion x = y) := by
  apply actual.transport_exact actual_valid one two one inclusion projection
  · rfl
  · intro x
    change Vec 1 at x
    change (false, xor (x 0) false) = (false, x 0)
    simp
  · intro x
    change Vec 2 at x
    change xor (x 0) (xor false false) = x 0
    simp

/-- A user supplies an arbitrary pair in the actual kernel, not a basis index. -/
theorem arbitrary_kernel_has_preimage (y : Bool × Bool) (hy : projection y = false) :
    ∃ x : Bool, inclusion x = y :=
  (actual_sequence_exact.2 y).mp hy

#print axioms Wire.transport_exact
#print axioms actual_sequence_exact
end CofiberE2Certificates.TransportExample
