import KervaireProgram.Import

open KervaireProgram

/-- Streaming CLI diagnostics; theorem production uses `kervaire_bundle%` plus the tactic. -/
def main (args : List String) : IO UInt32 := do
  let [path] := args | IO.eprintln "usage: lake env lean --run CheckFile.lean FILE.jsonl"; return 2
  let file ← IO.FS.Handle.mk path .read
  let mut line := 0
  let mut failed := false
  repeat
    let raw ← file.getLine
    if raw.isEmpty then break
    let text := raw.trimAscii.toString
    line := line + 1
    if text.isEmpty then
      IO.eprintln s!"{path}:{line}:json: empty record"
      failed := true
    else
      match importLine line text with
      | .ok b => IO.println s!"{path}:{line}: accepted {b.certificates.length} finite certificates"
      | .error e =>
          IO.eprintln s!"{path}:{e.line}:{e.field}: {e.message}"
          failed := true
  if line == 0 then
    IO.eprintln s!"{path}:1:json: empty file"
    return 1
  return if failed then 1 else 0
