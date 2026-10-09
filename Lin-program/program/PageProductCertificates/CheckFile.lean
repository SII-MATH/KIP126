import PageProductCertificates.Import

def main (args : List String) : IO UInt32 := do
  let [path] := args | IO.eprintln "usage: lean --run PageProductCertificates/CheckFile.lean input.jsonl"; return 2
  let stream ← IO.FS.Handle.mk path .read
  let mut count := 0
  repeat
    let raw ← stream.getLine
    if raw.isEmpty then break
    count := count + 1
    let line := raw.trimAsciiEnd.toString
    if line.isEmpty then
      IO.eprintln s!"{path}:{count}: blank certificate line"
      return 1
    let wire ← match PageProductCertificates.parse line with
      | .ok wire => pure wire
      | .error e => IO.eprintln s!"{path}:{count}: {e}"; return 1
    if !PageProductCertificates.wireCheck wire then
      IO.eprintln s!"{path}:{count}: comparison identity rejected: {(PageProductCertificates.diagnose wire).getD "unknown"}"
      return 1
  if count = 0 then
    IO.eprintln s!"{path}: empty certificate file"
    return 1
  IO.println s!"checked {count} bilinear products (executable check; theorem requires lin_cert)"
  return 0
