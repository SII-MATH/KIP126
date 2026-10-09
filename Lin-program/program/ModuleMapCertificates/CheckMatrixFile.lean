import ModuleMapCertificates.MatrixDiagnostics

def main (args : List String) : IO UInt32 := do
  let [path] := args | IO.eprintln "usage: CheckMatrixFile FILE.jsonl"; return 2
  let lines := (← IO.FS.readFile path).splitOn "\n"
  let mut rejected := false
  for i in List.range lines.length do
    let line := lines[i]!
    if line.isEmpty && i + 1 == lines.length then continue
    match ModuleMapCertificates.parseMatrix line with
    | .error e =>
      rejected := true
      IO.eprintln s!"line {i + 1}: {e}"
    | .ok w =>
      if ModuleMapCertificates.checkMatrixWire w then
        IO.println s!"line {i + 1}: accepted {w.rows}x{w.cols}"
      else
        rejected := true
        IO.eprintln s!"line {i + 1}: {String.intercalate "; " (ModuleMapCertificates.diagnoseMatrix w)}"
  return if rejected then 1 else 0
