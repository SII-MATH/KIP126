import StaircaseCertificates.Import

def main (args : List String) : IO UInt32 := do
  let [path] := args | IO.eprintln "usage: lean --run StaircaseCertificates/CheckMain.lean FILE"; return 2
  let h ← IO.FS.Handle.mk path .read
  let mut line := 0
  repeat
    let text ← h.getLine
    if text.isEmpty then break
    line := line + 1
    match StaircaseCertificates.decode text.trimAscii.toString with
    | .error e => IO.eprintln s!"{path}:{line}: {e}"; return 1
    | .ok w =>
      if !StaircaseCertificates.checkWire w then
        IO.eprintln s!"{path}:{line}: {w.object} ({w.s},{w.t}): size or inverse check failed"
        return 1
  if line == 0 then IO.eprintln s!"{path}:1: empty input"; return 1
  IO.println s!"checked {line} invertible staircase bases; level/unknown labels are not topology proofs"
  return 0
