import UniqueHomologyCertificates.Import

open UniqueHomologyCertificates

def main (args : List String) : IO UInt32 := do
  match args with
  | [path] =>
    try
      let handle ← IO.FS.Handle.mk path .read
      let mut count := 0
      let mut accepted := 0
      repeat
        let line ← handle.getLine
        if line.isEmpty then break
        count := count + 1
        match parse line.trimAscii.toString with
        | .error error => IO.eprintln s!"{path}:{count}: {error}"
        | .ok _ => accepted := accepted + 1
      IO.println s!"{accepted}/{count} unique nonzero finite homology classes accepted"
      if count == 0 then
        IO.eprintln s!"{path}: empty certificate batch"
        return 1
      return if accepted == count then 0 else 1
    catch error =>
      IO.eprintln s!"unique homology input/output failure: {error}"
      return 1
  | _ =>
    IO.eprintln "usage: lean --run UniqueHomologyCertificates/CheckFile.lean CERTIFICATES.jsonl"
    return 2
