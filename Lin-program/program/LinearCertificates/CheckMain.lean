import LinearCertificates.Import

def main (args : List String) : IO UInt32 := do
  let [path] := args | IO.eprintln "usage: lean --run LinearCertificates/CheckMain.lean input.jsonl"; return 2
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
    let wire ← match LinearCertificates.parseCertificate line with
      | .ok wire => pure wire
      | .error e => IO.eprintln s!"{path}:{count}: {e}"; return 1
    match LinearCertificates.checkWire wire with
    | .ok true => pure ()
    | .ok false =>
      match LinearCertificates.diagnoseWire wire with
      | .ok (some e) => IO.eprintln s!"{path}:{count}: {e.kind}/{e.location}: {e.message}"
      | _ => IO.eprintln s!"{path}:{count}: mathematical checker rejected certificate"
      return 1
    | .error e => IO.eprintln s!"{path}:{count}: {e}"; return 1
  if count = 0 then
    IO.eprintln s!"{path}: empty certificate file"
    return 1
  IO.println s!"checked {count} linear certificates (executable check; theorem requires lin_cert)"
  return 0
