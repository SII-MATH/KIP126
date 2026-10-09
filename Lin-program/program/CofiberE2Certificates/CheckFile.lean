import CofiberE2Certificates.Basic

def main (args : List String) : IO UInt32 := do
  match args with
  | [path] =>
    let text := (← IO.FS.readFile path).trimAscii.toString
    match CofiberE2Certificates.parse text with
    | .error e => IO.eprintln s!"{path}: {e}"; return 1
    | .ok w =>
      if CofiberE2Certificates.check w then return 0
      IO.eprintln s!"{path}: {(CofiberE2Certificates.diagnose w).getD "check rejected"}"
      return 1
  | _ => IO.eprintln "usage: CheckFile PATH"; return 1
