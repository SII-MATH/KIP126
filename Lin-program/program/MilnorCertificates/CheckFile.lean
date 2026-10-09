import MilnorCertificates.Import

def main (args : List String) : IO UInt32 := do
  let [path] := args | IO.eprintln "usage: CheckFile FILE.jsonl"; return 2
  let text ← IO.FS.readFile path
  let lines := text.splitOn "\n"
  let mut rejected := false
  for i in List.range lines.length do
    let line := lines[i]!
    if !line.isEmpty then
      match MilnorCertificates.decode line with
      | .ok _ => IO.println s!"line {i + 1}: accepted"
      | .error e =>
        rejected := true
        IO.eprintln s!"line {i + 1}: {e}"
  return if rejected then 1 else 0
