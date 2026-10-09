import RealMapCertificates.MatrixImport

def main (args : List String) : IO UInt32 := do
  let [path] := args | IO.eprintln "usage: SemanticCheck manifest.txt"; return 2
  let input ← IO.FS.Handle.mk path .read
  let mut count := 0
  repeat
    let raw ← input.getLine
    if raw.isEmpty then break
    count := count + 1
    let file := raw.trimAscii.toString
    if file.isEmpty then IO.eprintln s!"{path}:{count}: blank path"; return 1
    let text ← IO.FS.readFile file
    match RealMapCertificates.parseSemanticWire text.trimAscii.toString with
    | .error e => IO.eprintln s!"{file}: {e}"; return 1
    | .ok w =>
      if !RealMapCertificates.checkSemanticWire w then
        IO.eprintln s!"{file}: semantic matrix check failed"; return 1
  if count = 0 then IO.eprintln "empty manifest"; return 1
  IO.println s!"checked {count} semantic matrices (runtime check only)"
  return 0
