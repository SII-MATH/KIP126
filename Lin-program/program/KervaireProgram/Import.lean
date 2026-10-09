import KervaireProgram.Checker

namespace KervaireProgram
open Lean

/-- A semantic record is separate from archive/inventory JSONL. -/
structure WireBundle where
  schema : String
  status : String
  bundle : Bundle
deriving ToJson, FromJson

structure ImportError where
  line : Nat
  field : String
  message : String
deriving Repr

/-- Strict canonical decoding rejects unknown/duplicate fields and noncanonical data. -/
def decodeBundle (text : String) : Except String Bundle := do
  let json ← Json.parse text
  let wire : WireBundle ← fromJson? json
  if (toJson wire).compress != text then
    throw "noncanonical JSON, duplicate or unknown field (use canonical serializer)"
  if wire.schema != "lin-finite-bundle/v1" then throw "unsupported schema"
  if wire.status != "finite_input" then
    throw "unknown/external_input/inventory_only is not a finite certificate"
  return wire.bundle

def encodeBundle (b : Bundle) : String :=
  (toJson (WireBundle.mk "lin-finite-bundle/v1" "finite_input" b)).compress

/-- A decoded value is never treated as a theorem without rechecking. -/
def diagnoseBundle (b : Bundle) : Option (String × String) := Id.run do
  if b.formatVersion != 1 then return some ("formatVersion", "expected 1")
  if !dataWellFormed b.data then
    return some ("data", "duplicate class, invalid degree/page, or invalid differential endpoints/degrees")
  for i in [:b.certificates.length] do
    let some c := b.certificates[i]? | return some ("index", "invalid certificate index")
    if c.version != 1 then return some (s!"certificates[{i}].version", "expected 1")
    if c.object != b.data.object then
      return some (s!"certificates[{i}].object", "object does not match data")
    if !admissible b.data c.claim then
      return some (s!"certificates[{i}].claim", "missing class, invalid page, outgoing differential, or incorrect elimination count")
    if !checkFiniteResult b.data c.claim c.evidence then
      return some (s!"certificates[{i}].evidence", "wrong evidence kind, incomplete incoming list, absent differential, or invalid survivor witness")
  return none

/-- Streaming callers may invoke this per line and retain exact failure location. -/
def importLine (line : Nat) (text : String) : Except ImportError Bundle :=
  match decodeBundle text with
  | .error e => .error ⟨line, "json", e⟩
  | .ok b =>
      if checkBundle b then .ok b
      else match diagnoseBundle b with
        | some (field, message) => .error ⟨line, field, message⟩
        | none => .error ⟨line, "bundle", "checker rejected bundle"⟩

/-- Import success entails the same kernel theorem as direct certificate checking. -/
theorem importLine_sound (line : Nat) (text : String) (b : Bundle)
    (h : importLine line text = .ok b) : checkBundle b = true := by
  unfold importLine at h
  split at h
  · contradiction
  · rename_i value hd
    split at h
    · rename_i hc
      cases h
      exact hc
    · split at h <;> contradiction

/-- Imported data is well formed even when the bundle has no certificates. -/
theorem importLine_dataWellFormed (line : Nat) (text : String) (b : Bundle)
    (h : importLine line text = .ok b) : DataWellFormed b.data :=
  dataWellFormed_sound b.data
    (checkBundle_dataWellFormed b (importLine_sound line text b h))

/-- Elaborate only typed data; every theorem still invokes the kernel checker. -/
elab "kervaire_bundle% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  let b ← match decodeBundle text.trimAscii.toString with
    | .ok b => pure b
    | .error e => throwError "{path.getString}: {e}"
  return toExpr b

end KervaireProgram
