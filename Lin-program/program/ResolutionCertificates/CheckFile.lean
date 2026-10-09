import ResolutionCertificates.Import

def main (args : List String) : IO UInt32 := do
  let [path] := args | IO.eprintln "usage: CheckFile FILE.jsonl"; return 2
  let text ← IO.FS.readFile path
  let mut failed := false
  for (line, i) in (text.splitOn "\n").zipIdx do
    if !line.isEmpty then
      match ResolutionCertificates.parse line with
      | .error e => failed := true; IO.eprintln s!"line {i + 1}: {e}"
      | .ok w =>
        if ResolutionCertificates.checkWire w then IO.println s!"line {i + 1}: accepted"
        else
          failed := true
          IO.eprintln s!"line {i + 1}: {ResolutionCertificates.diagnose w}"
  return if failed then 1 else 0
