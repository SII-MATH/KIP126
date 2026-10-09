import ModuleToModuleCertificates.WireSemantics

def main (args : List String) : IO UInt32 := do
  let [path] := args | IO.eprintln "usage: CheckFile certificates.jsonl"; return 2
  let input ← IO.FS.Handle.mk path .read
  let mut count := 0
  repeat
    let raw ← input.getLine
    if raw.isEmpty then break
    count := count + 1
    let line := raw.trimAscii.toString
    if line.isEmpty then IO.eprintln s!"{path}:{count}: blank line"; return 1
    match ModuleToModuleCertificates.parse line with
    | .error e => IO.eprintln s!"{path}:{count}: {e}"; return 1
    | .ok w =>
      if !ModuleToModuleCertificates.checkWire w then
        IO.eprintln s!"{path}:{count}: {(ModuleToModuleCertificates.diagnose w).getD "checker rejected"}"
        return 1
  if count=0 then IO.eprintln s!"{path}: empty file"; return 1
  IO.println s!"checked {count} module-to-module matrices (runtime check only)"
  return 0
