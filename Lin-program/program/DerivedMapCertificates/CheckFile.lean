import DerivedMapCertificates.Import
namespace DerivedMapCertificates
/-- Execute the same checks used by the proof-producing tactic, with diagnostics. -/
def main (args : List String) : IO UInt32 := do
  match args with
  | [kind, path] =>
    let text := (← IO.FS.readFile path).trimAscii.toString
    if kind == "factor" then
      match parseFactor text with
      | .error e => IO.eprintln s!"{path}: {e}"; return 1
      | .ok w =>
        if checkFactor w then return 0
        IO.eprintln s!"{path}: {(diagnoseFactor w).getD "factor checker rejected"}"
        return 1
    else if kind == "composition" then
      match parseComposition text with
      | .error e => IO.eprintln s!"{path}: {e}"; return 1
      | .ok w =>
        if checkComposition w then return 0
        IO.eprintln s!"{path}: {(diagnoseComposition w).getD "composition checker rejected"}"
        return 1
    else
      IO.eprintln "kind must be factor or composition"
      return 1
  | _ => IO.eprintln "usage: CheckFile factor|composition PATH"; return 1
end DerivedMapCertificates

def main := DerivedMapCertificates.main

