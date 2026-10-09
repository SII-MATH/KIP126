import IndexedFamilyCertificates.Import
import IndexedFamilyCertificates.Coherence

open IndexedFamilyCertificates

private def run (familyPath eventPath : String) : IO UInt32 := do
  let familyText ← IO.FS.readFile familyPath
  let family ← match parseFamily familyText.trimAscii.toString with
    | .ok family => pure family
    | .error error =>
      IO.eprintln s!"{familyPath}: {error}"
      return 1
  if !checkFamily family then
    IO.eprintln s!"{familyPath}: {(diagnoseFamily family).getD "family checker rejected input"}"
    return 1
  let stream ← IO.FS.Handle.mk eventPath .read
  let mut lineNumber := 0
  let mut accepted := 0
  let mut failed := false
  repeat
    let line ← stream.getLine
    if line.isEmpty then break
    lineNumber := lineNumber + 1
    match parseBound line.trimAscii.toString with
    | .error error =>
      failed := true
      IO.eprintln s!"{eventPath}:{lineNumber}: {error}"
    | .ok certificate =>
      match diagnose family certificate with
      | none => accepted := accepted + 1
      | some error =>
        failed := true
        IO.eprintln s!"{eventPath}:{lineNumber}: {error.location}: {error.message}"
  if lineNumber == 0 then
    IO.eprintln s!"{eventPath}: empty certificate batch"
    return 1
  IO.println s!"{family.length} coherent finite blocks; {accepted}/{lineNumber} bound events accepted"
  return if failed then 1 else 0

/-- Runtime checking reports acceptance; reusable theorem proofs are still
constructed with the sound checker and kernel tactic. -/
def main (args : List String) : IO UInt32 := do
  match args with
  | [familyPath, eventPath] =>
    try run familyPath eventPath
    catch error =>
      IO.eprintln s!"indexed family input/output failure: {error}"
      return 1
  | _ =>
    IO.eprintln "usage: lean --run IndexedFamilyCertificates/CheckFile.lean FAMILY.json EVENTS.jsonl"
    return 2
