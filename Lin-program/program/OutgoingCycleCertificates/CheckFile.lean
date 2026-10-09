import OutgoingCycleCertificates.Import

open OutgoingCycleCertificates

private def run (path : String) : IO UInt32 := do
  let stream ← IO.FS.Handle.mk path .read
  let mut count := 0
  let mut accepted := 0
  let mut failed := false
  repeat
    let raw ← stream.getLine
    if raw.isEmpty then break
    count := count + 1
    let line := raw.trimAsciiEnd.toString
    if line.isEmpty then
      failed := true
      IO.eprintln s!"{path}:{count}: blank prefix certificate line"
    else
      match parse line with
      | .error error =>
        failed := true
        IO.eprintln s!"{path}:{count}: {error}"
      | .ok _ => accepted := accepted + 1
  if count = 0 then
    IO.eprintln s!"{path}: empty prefix batch"
    return 1
  IO.println s!"{accepted}/{count} finite prefixes accepted; all-page outgoing cycle still requires proved meaning and outgoing tail; incoming hits remain allowed"
  return if failed then 1 else 0

def main (args : List String) : IO UInt32 := do
  match args with
  | [path] =>
    try run path
    catch error =>
      IO.eprintln s!"prefix input/output failure: {error}"
      return 1
  | _ =>
    IO.eprintln "usage: lean --run OutgoingCycleCertificates/CheckFile.lean PREFIXES.jsonl"
    return 2
