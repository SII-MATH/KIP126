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

def paddingInputs : List String := ["padding00.json","padding01.json","padding02.json","padding03.json","padding04.json","padding05.json","padding06.json","padding07.json","padding08.json","padding09.json","padding10.json","padding11.json","padding12.json","padding13.json","padding14.json","padding15.json","padding16.json","padding17.json","padding18.json","padding19.json","padding20.json","padding21.json","padding22.json","padding23.json","padding24.json","padding25.json","padding26.json","padding27.json","padding28.json","padding29.json","padding30.json","padding31.json","padding32.json","padding33.json","padding34.json","padding35.json","padding36.json","padding37.json","padding38.json","padding39.json","padding40.json","padding41.json","padding42.json","padding43.json","padding44.json","padding45.json","padding46.json","padding47.json","padding48.json","padding49.json","padding50.json","padding51.json","padding52.json","padding53.json","padding54.json","padding55.json","padding56.json","padding57.json","padding58.json","padding59.json","padding60.json","padding61.json","padding62.json","padding63.json","padding64.json","padding65.json","padding66.json","padding67.json","padding68.json","padding69.json","padding70.json","padding71.json","padding72.json","padding73.json","padding74.json","padding75.json","padding76.json","padding77.json","padding78.json","padding79.json"]
