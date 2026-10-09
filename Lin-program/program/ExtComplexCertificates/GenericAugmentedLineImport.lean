import ExtComplexCertificates.GenericAugmentedImport

namespace ExtComplexCertificates.GenericFreeComplex.GenericHom
open Lean Elab Term

/-- Select one JSONL record; only constructor data is elaborated. The tactic
must separately establish checker acceptance in the kernel. -/
elab "generic_augmented_line% " path:str "," line:num : term => do
  let wanted := line.getNat
  if wanted = 0 then throwError "augmented line numbers start at 1"
  let file ← IO.FS.Handle.mk path.getString .read
  let mut current := 0
  repeat
    let raw ← file.getLine
    if raw.isEmpty then throwError "{path.getString}:{wanted}: line missing"
    current := current+1
    if raw.utf8ByteSize > 10000000 then throwError "{path.getString}:{current}: record byte limit 10000000"
    if current = wanted then
      let text := if raw.endsWith "\n" then raw.dropEnd 1 |>.toString else raw
      match parseAugmented text with
      | .error e => throwError "{path.getString}:{wanted}: {e}"
      | .ok c => return toExpr c

end ExtComplexCertificates.GenericFreeComplex.GenericHom
