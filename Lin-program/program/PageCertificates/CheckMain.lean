import PageCertificates.Import

def main (args : List String) : IO UInt32 := do
  let [path] := args | IO.eprintln "usage: lean --run PageCertificates/CheckMain.lean FILE"; return 2
  let file ← IO.FS.Handle.mk path .read
  let mut line := 0
  repeat
    let raw ← file.getLine
    if raw.isEmpty then break
    line := line + 1
    match PageCertificates.parse raw.trimAscii.toString >>= PageCertificates.checkWire with
    | .ok true => pure ()
    | .ok false => IO.eprintln s!"{path}:{line}: complex/cycle/separator check failed"; return 1
    | .error e => IO.eprintln s!"{path}:{line}: {e}"; return 1
  if line == 0 then IO.eprintln s!"{path}:1: empty input"; return 1
  IO.println s!"checked {line} page homology certificates"
  return 0
