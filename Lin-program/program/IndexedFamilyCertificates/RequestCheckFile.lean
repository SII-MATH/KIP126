import IndexedFamilyCertificates.RequestImport
import IndexedFamilyCertificates.Coherence

open IndexedFamilyCertificates

private def runRequests (familyPath requestPath : String) : IO UInt32 := do
  let text ← IO.FS.readFile familyPath
  let family ← match parseFamily text.trimAscii.toString with
    | .error error =>
      IO.eprintln s!"{familyPath}: {error}"
      return 1
    | .ok family => pure family
  if !checkFamily family then
    IO.eprintln s!"{familyPath}: {(diagnoseFamily family).getD "family rejected"}"
    return 1
  let stream ← IO.FS.Handle.mk requestPath .read
  let mut total := 0
  let mut accepted := 0
  repeat
    let line ← stream.getLine
    if line.isEmpty then break
    total := total + 1
    match parseRequest line.trimAscii.toString with
    | .error error => IO.eprintln s!"{requestPath}:{total}: {error}"
    | .ok request =>
      match diagnoseResult family request.key request.source request.target request.certificate with
      | none => accepted := accepted + 1
      | some error =>
        IO.eprintln s!"{requestPath}:{total}: {error.location}: {error.message}"
  if total == 0 then
    IO.eprintln s!"{requestPath}: empty request batch"
    return 1
  IO.println s!"{family.length} coherent finite blocks; {accepted}/{total} requested results accepted"
  return if accepted == total then 0 else 1

/-- Runtime acceptance is diagnostic. Theorems still use checkResult_sound
or indexed_family_cert, with kernel-reduced checks. -/
def main (args : List String) : IO UInt32 := do
  match args with
  | [familyPath, requestPath] =>
    try runRequests familyPath requestPath
    catch error =>
      IO.eprintln s!"request input/output failure: {error}"
      return 1
  | _ =>
    IO.eprintln "usage: lean --run IndexedFamilyCertificates/RequestCheckFile.lean FAMILY.json REQUESTS.jsonl"
    return 2
