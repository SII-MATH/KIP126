import Lean
open Lean Elab Term
elab "certificate_nat" : term => do
  let contents ← IO.FS.readFile "certificate.txt"
  match contents.trimAscii.toString.toNat? with
  | some n => return toExpr n
  | none => throwError "invalid certificate natural"
def imported : Nat := certificate_nat
theorem checked : imported = 7 := by decide
#print axioms checked
