import FilteredExtensionCertificates.Import

namespace FilteredExtensionCertificates.Direct
open LinearCertificates FilteredMapExtension

/-- A specified input map and complete filtrations, fixed before any certificate. -/
def input : Data where
  a := 2
  b := 1
  ha := 2
  hb := 1
  depth := 2
  s := 0
  n := 1
  f := fun _ _ => true
  source := fun level i j => if level.val = 0 then decide (i = j)
    else decide (i.val = 1 ∧ j.val = 1)
  target := fun _ _ _ => true
  x := fun i => decide (i.val = 0)
  y := fun _ => false

def wire : WireCertificate :=
  filtered_extension_certificate% "FilteredExtensionProducer/case_correction.json"

def zeroCertificate (D : Data) : Certificate D where
  sourceFactors := fun _ _ _ => false
  targetFactors := fun _ _ _ => false
  mapFactors := fun _ _ _ => false
  sourceMember := zero
  imageMember := zero
  targetMember := zero
  representative := zero
  sourceCorrection := zero
  targetCorrection := zero

/-- Decoding witnesses is separate from the fixed statement to be proved. -/
def certificate : Certificate input :=
  match decodeCertificate input wire with
  | .ok c => c
  | .error _ => zeroCertificate input

theorem requested_result : ResultValid input := by filtered_extension_cert using certificate

/-- Changing the requested source with the old evidence is rejected. -/
def wrongInput : Data := {input with x := fun _ => false}
def wrongInputCertificate : Certificate wrongInput :=
  match decodeCertificate wrongInput wire with
  | .ok c => c
  | .error _ => zeroCertificate wrongInput

def wrongOutput : Data := {input with y := fun _ => true}
def wrongOutputCertificate : Certificate wrongOutput :=
  match decodeCertificate wrongOutput wire with
  | .ok c => c
  | .error _ => zeroCertificate wrongOutput

#guard check wrongInput wrongInputCertificate = false
#guard check wrongOutput wrongOutputCertificate = false

/-- The result projects to the actual quotient equation with any existing
well-formedness and membership proofs for precisely this input. -/
theorem quotient_equation (D : Data) (valid : ResultValid D) (h : WellFormed D)
    (hx : (⟨D.x⟩ : RepresentativeSquareCertificates.Vector D.a) ∈
      cycles (sourceFiltration D h) (targetFiltration D h) (filteredMap D h) D.s D.n)
    (hy : (⟨D.y⟩ : RepresentativeSquareCertificates.Vector D.b) ∈
      (targetFiltration D h).group (D.s+D.n)) :
    differential (sourceFiltration D h) (targetFiltration D h) (filteredMap D h) D.s D.n
      (sourceClass (sourceFiltration D h) (targetFiltration D h) (filteredMap D h) D.s D.n
        ⟨⟨D.x⟩,hx⟩) =
    targetClass (sourceFiltration D h) (targetFiltration D h) (filteredMap D h) D.s D.n
      ⟨⟨D.y⟩,hy⟩ := by
  obtain ⟨h',hx',hy',equation⟩ := valid
  exact equation

#print axioms requested_result
#print axioms quotient_equation
end FilteredExtensionCertificates.Direct
