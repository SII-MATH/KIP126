import MilnorCertificates.GeneralTactic

/-- Batch execution reports acceptance; theorem production still uses the tactic. -/
def main (args : List String) : IO UInt32 := do
  let [path] := args | IO.eprintln "usage: CheckAllFile FILE.jsonl"; return 2
  let text ← IO.FS.readFile path
  let lines := text.splitOn "\n"
  let mut rejected := false
  for i in List.range lines.length do
    let line := lines[i]!
    if line.isEmpty && i + 1 == lines.length then continue
    match MilnorCertificates.parse line with
    | .error e =>
      rejected := true
      IO.eprintln s!"line {i + 1}: {e}"
    | .ok b =>
      let c := b.inferAllCertificate
      if MilnorCertificates.checkAll b.certificate.window.rank b.left b.right b.output c then
        IO.println s!"line {i + 1}: accepted for all degrees at rank {b.certificate.window.rank}"
      else
        rejected := true
        let errors := MilnorCertificates.diagnoseAll b.certificate.window.rank b.left b.right b.output c
        IO.eprintln s!"line {i + 1}: {String.intercalate "; " errors}"
  return if rejected then 1 else 0
