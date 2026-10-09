import LinearCertificates.Checker

namespace LinearCertificates
open LinProgramCertificates

/-- Matrix dimensions are part of the Lean type. Importers must reject malformed
row lengths before constructing a value of `Matrix m n`. -/
def diagnoseImage (A : Matrix m n) (y : Vec m) (preimage : Vec n) :
    Option VerificationFailure :=
  match (List.finRange m).find? (fun i => eval A preimage i != y i) with
  | none => none
  | some i => some ⟨"image", s!"row {i.val}", "computed preimage has the wrong output bit"⟩

def diagnoseNotImage (A : Matrix m n) (y separator : Vec m) :
    Option VerificationFailure :=
  if dot separator y != true then
    some ⟨"nonimage", "target", "separator must evaluate to one on the target"⟩
  else
    match (List.finRange n).find? (fun j => dot separator (fun i => A i j)) with
    | none => none
    | some j => some ⟨"nonimage", s!"column {j.val}", "separator does not annihilate this column"⟩

def diagnoseKernel (A : Matrix m n) (x : Vec n) : Option VerificationFailure :=
  match (List.finRange m).find? (fun i => eval A x i) with
  | none => none
  | some i => some ⟨"kernel", s!"row {i.val}", "differential is nonzero in this row"⟩

instance (A : Matrix m n) (y : Vec m) :
    DiagnosticCertificateVerifier (InImage A y) where
  Cert := Vec n
  check := checkImage A y
  sound := checkImage_sound A y
  diagnose := diagnoseImage A y

instance (A : Matrix m n) (y : Vec m) :
    DiagnosticCertificateVerifier (¬ InImage A y) where
  Cert := Vec m
  check := checkNotImage A y
  sound := checkNotImage_sound A y
  diagnose := diagnoseNotImage A y

end LinearCertificates
