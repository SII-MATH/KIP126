import PropagationCertificates.Import

open PropagationCertificates

def main (args : List String) : IO UInt32 := do
  if args == ["--example"] then
    let f : Fact := ⟨.atom 0, .atom 1⟩
    let steps := [.external f, .zero, .linearity f f, .leibniz f f, .naturality 0 f]
    IO.println (encode ⟨"lin-propagation/v1", [f], steps, conclusion (.naturality 0 f)⟩)
    return 0
  let [path] := args | IO.eprintln "usage: propagation-check FILE.jsonl"; return 2
  let h ← IO.FS.Handle.mk path .read
  let mut line := 0
  let mut rejected := false
  repeat
    let raw ← h.getLine
    if raw.isEmpty then break
    let text := raw.trimAsciiEnd.toString
    line := line + 1
    match importLine line text with
    | .ok _ => IO.println s!"line {line}: checked (conditional on Model and external premise proofs)"
    | .error e => IO.eprintln e; rejected := true
  return if rejected then 1 else 0
