import DerivedMapCertificates.Import
namespace DerivedMapCertificates.Tests
open LinProgramCertificates
def rejected : Except String α → Bool
  | .error _ => true
  | .ok _ => false

def identity : CompositionWire :=
  ⟨1,"identity","A","B","C",0,0,0,0,0,0,0,0,0,0,12,12,1,1,1,[true],[true],[true]⟩
example : identity.Valid := by lin_cert using ()
example : checkComposition {identity with output := [false]} = false := by decide
example : checkComposition {identity with first := []} = false := by decide
example : checkComposition {identity with firstShiftT := 13} = false := by decide
example : checkComposition {identity with sourceT := -1, firstShiftT := 2, middleT := 1, targetT := 1} = true := by decide
#eval (if rejected (parseComposition "{}") then pure () else throw (IO.userError "empty composition accepted") : IO Unit)
#eval (if rejected (parseComposition ((Lean.toJson identity).compress ++ " ")) then pure () else throw (IO.userError "noncanonical composition accepted") : IO Unit)
example : diagnoseComposition {identity with output := [false]} =
    some "identity: output row 0, column 0 disagrees with composition" := by decide

def unitAlgebra : ModuleToModuleCertificates.Wire :=
  ⟨1,0,0,0,0,1,1,1,1,[[[[]]]],[[[[]]]],[[[[]]]],[],[true],[[]]⟩
def unitFactor : FactorWire :=
  ⟨1,"unit","R","M",0,0,0,0,0,0,12,true,[[[]]],unitAlgebra⟩
example : unitFactor.Valid := by lin_cert using ()
example : checkFactor {unitFactor with factor := [[]]} = false := by decide
example : checkFactor {unitFactor with targetT := 1} = false := by decide
example : checkFactor {unitFactor with factor := [[[4294967295]]]} = false := by decide
#eval (if rejected (parseFactor "{}") then pure () else throw (IO.userError "empty factor accepted") : IO Unit)

#print axioms checkComposition_sound
#print axioms checkFactor_sound
#print axioms FactorWire.column_semantics
end DerivedMapCertificates.Tests
