import LinProgramCertificates.KervaireTactic
import KervaireProgram.KervaireClaims

namespace Step4ContractAudit.ImportTests
open KervaireProgram

def sample : Bundle := kervaire_bundle% "examples/finite_sample.json"

theorem valid_sample : checkBundle sample = true := by decide

def badData : AdamsData :=
  { object := "S0", classes := [⟨1, "negative stem", ⟨2, 0⟩⟩], differentials := [] }
def emptyBad : Bundle := ⟨1, badData, []⟩
def emptyGood : Bundle := ⟨1, ⟨"S0", [], []⟩, []⟩

example : dataWellFormed badData = false := by decide
example : checkBundle emptyBad = false := by decide
example : checkBundle emptyGood = true := by decide

def wrongEvidence : Bundle :=
  { sample with certificates :=
    [⟨1, sample.data.object, .notHit 7 2 5, .permanent []⟩] }
def missingIncoming : Bundle :=
  { sample with certificates :=
    [⟨1, sample.data.object, .notHit 7 2 5, .incoming []⟩] }
def wrongObject : Bundle :=
  { sample with certificates :=
    [⟨1, "different object", .permanent 9, .permanent []⟩] }

example : checkBundle wrongEvidence = false := by decide
example : checkBundle missingIncoming = false := by decide
example : checkBundle wrongObject = false := by decide
example : True := by
  fail_if_success have : ResultValid sample.data (.notHit 7 2 5) := by kervaire_cert using Evidence.incoming []
  trivial
example : True := by
  fail_if_success have : ResultValid sample.data (.permanent 999) := by kervaire_cert using Evidence.permanent []
  trivial

example : (claimCatalog.filter (·.externalInput)).map (·.id) =
    ["manual-1", "manual-2", "manual-3"] := by decide

/-- A finite table deliberately has no all-pages or database-completeness
claim: changing the supplied records can change finite permanence. -/
def sparse : AdamsData := { sample.data with differentials := [] }
theorem sparse_finite_permanence : ResultValid sparse (.permanent 7) := by
  kervaire_cert using Evidence.permanent []
example : checkResult sample.data (.permanent 7) (.permanent []) = false := by decide

private def rejectedAt (bundle : Bundle) (field : String) : IO Unit := do
  match importLine 37 (encodeBundle bundle) with
  | .ok _ => throw (IO.userError "invalid bundle accepted")
  | .error e =>
    unless e.line == 37 && e.field == field do
      throw (IO.userError s!"wrong failure location: {repr e}")

#eval do
  match importLine 11 (encodeBundle sample) with
  | .ok _ => pure ()
  | .error e => throw (IO.userError s!"valid sample rejected: {repr e}")
  rejectedAt emptyBad "data"
  rejectedAt wrongEvidence "certificates[0].evidence"
  rejectedAt missingIncoming "certificates[0].evidence"
  rejectedAt wrongObject "certificates[0].object"
  for status in ["unknown", "external_input", "inventory_only"] do
    let text := (Lean.toJson (WireBundle.mk "lin-finite-bundle/v1" status sample)).compress
    match importLine 29 text with
    | .ok _ => throw (IO.userError s!"forbidden status accepted: {status}")
    | .error e =>
      unless e.line == 29 && e.field == "json" do
        throw (IO.userError s!"status error location lost: {repr e}")
  for text in ["{}", "{\"status\":null}", "{\"status\":\"finite_input\",\"status\":\"external_input\"}"] do
    match importLine 41 text with
    | .ok _ => throw (IO.userError "malformed finite bundle accepted")
    | .error e => unless e.line == 41 do throw (IO.userError "line number lost")
  IO.println "Finite import: positive sample, empty-invalid dataset, wrong evidence/object, unknown/manual/inventory and malformed records checked"

#print axioms valid_sample
#print axioms sparse_finite_permanence
end Step4ContractAudit.ImportTests
