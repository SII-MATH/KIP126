import CofiberE2Certificates.Basic
namespace CofiberE2Certificates.Tests
open LinProgramCertificates

def identity : Wire :=
  ⟨1,"identity",0,0,0,0,0,0,0,0,0,0,0,1,1,0,[true],[],[true],[]⟩
example : identity.Valid := by lin_cert using ()
example : check {identity with up := [false]} = false := by decide
example : check {identity with middleT := 1} = false := by decide
example : check {identity with position := 3} = false := by decide
example : check {identity with incoming := []} = false := by decide
example : diagnose {identity with up := [false]} =
    some "identity, position 0: contraction mismatch at row 0, column 0" := by decide

def rejected : Except String α → Bool
  | .error _ => true
  | .ok _ => false
#eval (if rejected (parse "{}") then pure () else throw (IO.userError "empty wire accepted") : IO Unit)
def actualC2 : Wire := cofiber_e2% "CofiberE2Certificates/exact/00039.json"
theorem actualC2_exact : actualC2.Valid := by lin_cert using ()
#print axioms check_sound
end CofiberE2Certificates.Tests
