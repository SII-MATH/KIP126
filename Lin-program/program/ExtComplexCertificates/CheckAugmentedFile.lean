import ExtComplexCertificates.GenericAugmentedImport

open ExtComplexCertificates.GenericFreeComplex
open ExtComplexCertificates.GenericFreeComplex.GenericHom

private def boundedFile (path : String) (limit : Nat) : IO String := do
  let file ← IO.FS.Handle.mk path .read
  let bytes ← file.read (limit+1).toUSize
  if bytes.size > limit then throw (IO.userError s!"{path}: byte limit {limit}")
  let some text := String.fromUTF8? bytes | throw (IO.userError s!"{path}: invalid UTF-8")
  return text

/-- Runtime acceptance is diagnostic only. No theorem is created by this CLI. -/
def main (args : List String) : IO UInt32 := do
  let [dataPath,augmentationPath,certPath] := args |
    IO.eprintln "usage: CheckAugmentedFile DATA.json AUGMENTATION.json CERTIFICATES.jsonl"
    return 2
  try
    let dataText ← boundedFile dataPath 10000000
    let .ok w := decodeWire dataText.trimAscii.toString |
      IO.eprintln s!"{dataPath}:1:data: {match decodeWire dataText.trimAscii.toString with | .error e => e | _ => "invalid"}"
      return 1
    let augText ← boundedFile augmentationPath 1000000
    let .ok a := decodeAugmentation w.data augText.trimAscii.toString |
      IO.eprintln s!"{augmentationPath}:1:augmentation: {match decodeAugmentation w.data augText.trimAscii.toString with | .error e => e | _ => "invalid"}"
      return 1
    let file ← IO.FS.Handle.mk certPath .read
    let mut pending := ""
    let mut line := 0
    let mut failed := false
    let mut oversized := false
    let mut invalidAscii := false
    repeat
      let bytes ← file.read 65536
      let eof := bytes.isEmpty
      for byte in bytes do
        if byte == 10 then
          line := line+1
          if invalidAscii then
            IO.eprintln s!"{certPath}:{line}:json: non-ASCII byte in canonical numeric schema"
            failed := true
          else if oversized then
            IO.eprintln s!"{certPath}:{line}:json: record byte limit 10000000"
            failed := true
          else
            match decodeAugmented w.data a pending with
            | .ok c => IO.println s!"{certPath}:{line}: accepted augmented component (0,{c.t}); runtime check only"
            | .error e => IO.eprintln s!"{certPath}:{line}: {e}"; failed := true
          pending := ""
          oversized := false
          invalidAscii := false
        else if byte.toNat > 127 then
          invalidAscii := true
        else if !oversized && !invalidAscii then
          pending := pending.push (Char.ofNat byte.toNat)
          if pending.utf8ByteSize > 10000000 then
            oversized := true
            pending := ""
      if eof then break
    if !pending.isEmpty || oversized || invalidAscii then
      line := line+1
      if invalidAscii then
        IO.eprintln s!"{certPath}:{line}:json: non-ASCII byte in canonical numeric schema"
        failed := true
      else if oversized then
        IO.eprintln s!"{certPath}:{line}:json: record byte limit 10000000"
        failed := true
      else
        match decodeAugmented w.data a pending with
        | .ok c => IO.println s!"{certPath}:{line}: accepted augmented component (0,{c.t}); runtime check only"
        | .error e => IO.eprintln s!"{certPath}:{line}: {e}"; failed := true
    if line == 0 then IO.eprintln s!"{certPath}:1:json: empty file"; failed := true
    return if failed then 1 else 0
  catch e =>
    IO.eprintln s!"I/O or decoding failure: {e}"
    return 1
