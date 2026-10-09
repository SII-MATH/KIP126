import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareCertificates.Examples
open LinearCertificates RepresentativeSquareCertificates
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def examples : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareCertificates/examples.jsonl"

theorem example_count : examples.length = 4 := by decide
theorem examples_valid : ∀ w ∈ examples, WireValid w := checkBatch_sound examples (by decide)

/-- Fixed mathematical input, written independently of certificate decoding. -/
def nonzeroInput : Data where
  a := 2
  b := 1
  c := 1
  d := 1
  ha := 2
  hb := 1
  hc := 1
  hd := 1
  depth := 2
  s := 0
  n := 1
  m := 1
  l := 0
  f := fun _ i => decide (i.val = 0)
  p := fun _ i => decide (i.val = 0)
  q := fun _ _ => true
  g := fun _ _ => true
  sourceA := fun level i j => if level.val = 0 then decide (i = j)
    else decide (i.val = 1 ∧ j.val = 1)
  sourceB := fun _ _ _ => true
  sourceC := fun _ _ _ => true
  sourceD := fun _ _ _ => true
  x := fun i => decide (i.val = 0)
  y := fun _ => true
  z := fun _ => true
  w := fun _ => true

def emptyCertificate (D : Data) : Certificate D where
  descentA := fun _ _ _ => false
  descentB := fun _ _ _ => false
  descentC := fun _ _ _ => false
  descentD := fun _ _ _ => false
  filteredF := fun _ _ _ => false
  filteredP := fun _ _ _ => false
  filteredQ := fun _ _ _ => false
  filteredG := fun _ _ _ => false
  memberX := zero
  memberY := zero
  memberZ := zero
  memberW := zero
  square := ⟨zero,zero,zero,zero,zero,zero,zero,zero,zero,.alongF (fun _ _ => false),
    fun _ _ => false⟩

def nonzeroWire : WireCertificate :=
  finite_filtered_square_certificate% "FiniteFilteredSquareCertificates/case_nonzero_f.json"
def nonzeroCertificate : Certificate nonzeroInput :=
  match decodeCertificate nonzeroInput nonzeroWire with
  | .ok cert => cert
  | .error _ => emptyCertificate nonzeroInput

theorem nonzero_requested : ResultValid nonzeroInput := by
  finite_filtered_square_cert using nonzeroCertificate

/-- The fourth input's raw image is not a cycle, but a higher correction
does give the requested actual quotient extension. -/
def correctedInput : Data where
  a := 1
  b := 2
  c := 0
  d := 1
  ha := 1
  hb := 2
  hc := 0
  hd := 1
  depth := 2
  s := 0
  n := 0
  m := 1
  l := 1
  f := fun _ _ => true
  p := fun i => Fin.elim0 i
  q := fun _ _ => true
  g := fun _ i => Fin.elim0 i
  sourceA := fun level _ _ => decide (level.val = 0)
  sourceB := fun level i j => if level.val = 0 then decide (i = j)
    else decide (i.val = 1 ∧ j.val = 1)
  sourceC := fun _ i => Fin.elim0 i
  sourceD := fun _ _ _ => true
  x := fun _ => true
  y := fun i => decide (i.val = 0)
  z := fun i => Fin.elim0 i
  w := fun _ => false

def correctedWire : WireCertificate :=
  finite_filtered_square_certificate% "FiniteFilteredSquareCertificates/case_corrected.json"
def correctedCertificate : Certificate correctedInput :=
  match decodeCertificate correctedInput correctedWire with
  | .ok cert => cert
  | .error _ => emptyCertificate correctedInput

theorem corrected_requested : ResultValid correctedInput := by
  finite_filtered_square_cert using correctedCertificate

theorem original_fourth_input_not_cycle :
    hom correctedInput.q (⟨correctedInput.y⟩ : Vector correctedInput.b) ∉
      higher (correctedInput.E (correctedInput.s+correctedInput.m+correctedInput.l)) := by
  rintro ⟨v,hv⟩
  have bits := congrArg (fun x : Vector 1 => x.bits 0) hv
  change false = true at bits
  exact Bool.noConfusion bits

def tamperedOutput : Data := {nonzeroInput with w := fun _ => false}
def tamperedCertificate : Certificate tamperedOutput :=
  match decodeCertificate tamperedOutput nonzeroWire with
  | .ok cert => cert
  | .error _ => emptyCertificate tamperedOutput
#guard check tamperedOutput tamperedCertificate = false

def badDescent : Certificate nonzeroInput :=
  {nonzeroCertificate with descentA := fun _ _ _ => false}
#guard check nonzeroInput badDescent = false

def badLength : Data := {nonzeroInput with n := 2}
def badLengthCertificate : Certificate badLength :=
  match decodeCertificate badLength nonzeroWire with
  | .ok cert => cert
  | .error _ => emptyCertificate badLength
#guard check badLength badLengthCertificate = false

def failed {A : Type} : Except String A → Bool
  | .error _ => true
  | .ok _ => false
#guard failed (parseBatch "")
#guard failed (parseBatch "\n")
#guard failed (parseBatch ((Lean.toJson nonzeroWire).compress ++ "\n\n"))
#guard failed (parse ((Lean.toJson nonzeroWire).compress ++ "\u0000"))
#guard failed (parse (((Lean.toJson nonzeroWire).compress.dropEnd 1).toString ++ ",\"version\":1}"))
#guard failed (decode {nonzeroWire with firstBranch := "unknown"})
#guard failed (decode {nonzeroWire with memberX := []})

#print axioms examples_valid
#print axioms nonzero_requested
#print axioms corrected_requested
#print axioms original_fourth_input_not_cycle
end FiniteFilteredSquareCertificates.Examples
