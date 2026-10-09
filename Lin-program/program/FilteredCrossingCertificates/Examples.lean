import FilteredCrossingCertificates.Import

namespace FilteredCrossingCertificates.Examples
open LinearCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def batch : List WireCertificate := filtered_stable_batch% "FilteredCrossingCertificates/valid.jsonl"

theorem batch_count : batch.length = 596 := by decide
theorem batch_valid : ∀ w ∈ batch, WireValid w := checkBatch_sound batch (by decide)

/-- Fixed map (x0,x1) maps to x0; the higher source consists of (0,x1). -/
def input : FilteredExtensionCertificates.Data where
  a := 2
  b := 1
  ha := 2
  hb := 1
  depth := 2
  s := 0
  n := 1
  f := fun _ i => decide (i.val = 0)
  source := fun level i j => if level.val = 0 then decide (i = j)
    else decide (i.val = 1 ∧ j.val = 1)
  target := fun _ _ _ => true
  x := fun i => decide (i.val = 0)
  y := fun _ => true

def wire : WireCertificate := filtered_stable_certificate% "FilteredCrossingCertificates/nonzero.json"

def emptyExtension (D : FilteredExtensionCertificates.Data) : FilteredExtensionCertificates.Certificate D where
  sourceFactors := fun _ _ _ => false
  targetFactors := fun _ _ _ => false
  mapFactors := fun _ _ _ => false
  sourceMember := zero
  imageMember := zero
  targetMember := zero
  representative := zero
  sourceCorrection := zero
  targetCorrection := zero

def certificate : Certificate input where
  extension := match FilteredExtensionCertificates.decodeCertificate input wire.extension with
    | .ok c => c
    | .error _ => emptyExtension input
  stability := match RepresentativeSquareCertificates.matrix "stability" input.hb input.ha wire.stability with
    | .ok m => m
    | .error _ => fun _ _ => false

theorem requested_result : ResultValid input := by filtered_stable_cert using certificate

theorem requested_no_crossing (h : FilteredExtensionCertificates.WellFormed input) :
    FilteredMapExtension.NoPageCrossing
      (FilteredExtensionCertificates.sourceFiltration input h)
      (FilteredExtensionCertificates.targetFiltration input h)
      (FilteredExtensionCertificates.filteredMap input h) 0 1 2 := requested_result.2 h

def tampered : Certificate input := {certificate with stability := fun _ _ => true}
-- The higher target is zero, so either factor is a valid witness here.
#guard check input tampered = true

-- Changing the original map to the sum preserves the quotient extension,
-- but introduces the higher-source crossing which the extra check detects.
def crossingInput : FilteredExtensionCertificates.Data := {input with f := fun _ _ => true}
def crossingCert : Certificate crossingInput where
  extension := {certificate.extension with mapFactors := fun level _ j => decide (level.val = 0 ∨ j.val = 1)}
  stability := fun _ _ => false
#guard FilteredExtensionCertificates.check crossingInput crossingCert.extension = true
#guard check crossingInput crossingCert = false

def failed {A : Type} : Except String A → Bool
  | .error _ => true
  | .ok _ => false
#guard failed (parseBatch "")
#guard failed (parseBatch "\n")
#guard failed (parseBatch ((Lean.toJson wire).compress ++ "\n\n"))
#guard failed (parse ((Lean.toJson wire).compress ++ "\u0000"))
#guard failed (parse (((Lean.toJson wire).compress.dropEnd 1).toString ++ ",\"version\":1}"))

#print axioms batch_count
#print axioms batch_valid
#print axioms requested_result
#print axioms requested_no_crossing
end FilteredCrossingCertificates.Examples
