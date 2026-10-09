import FilteredExtensionCertificates.Direct

namespace FilteredExtensionReview.Nonzero
open FilteredExtensionCertificates FilteredMapExtension
open RepresentativeSquareCertificates (Vector)

def input : Data where
  a := 2
  b := 1
  ha := 2
  hb := 1
  depth := 2
  s := 0
  n := 1
  f := fun _ j => decide (j.val = 0)
  source := fun level i j => if level.val = 0 then decide (i = j)
    else decide (i.val = 1 ∧ j.val = 1)
  target := fun _ _ _ => true
  x := fun i => decide (i.val = 0)
  y := fun _ => true

def wire : WireCertificate :=
  filtered_extension_certificate% "FilteredExtensionProducer/case_nonzero.json"

def certificate : Certificate input :=
  match decodeCertificate input wire with
  | .ok c => c
  | .error _ => Direct.zeroCertificate input

theorem result : ResultValid input := by filtered_extension_cert using certificate

theorem wellFormed : WellFormed input := by
  obtain ⟨h,_,_,_⟩ := result
  exact h

theorem source_member : (⟨input.x⟩ : Vector input.a) ∈
    cycles (sourceFiltration input wellFormed) (targetFiltration input wellFormed)
      (filteredMap input wellFormed) input.s input.n := by
  obtain ⟨_,hx,_,_⟩ := result
  exact hx

theorem target_member : (⟨input.y⟩ : Vector input.b) ∈
    (targetFiltration input wellFormed).group (input.s+input.n) := by
  obtain ⟨_,_,hy,_⟩ := result
  exact hy

def xCycle : cycles (sourceFiltration input wellFormed) (targetFiltration input wellFormed)
    (filteredMap input wellFormed) input.s input.n := ⟨⟨input.x⟩,source_member⟩

def yTarget : (targetFiltration input wellFormed).group (input.s+input.n) :=
  ⟨⟨input.y⟩,target_member⟩

theorem differential_nonzero :
    differential (sourceFiltration input wellFormed) (targetFiltration input wellFormed)
      (filteredMap input wellFormed) input.s input.n
      (sourceClass (sourceFiltration input wellFormed) (targetFiltration input wellFormed)
        (filteredMap input wellFormed) input.s input.n xCycle) ≠ 0 := by
  intro hz
  obtain ⟨a,ha,higher⟩ := (differential_zero_iff _ _ _ _ _ xCycle).mp hz
  obtain ⟨v,hv⟩ := ha.1
  have h0 := congrArg (fun z : Vector input.a => z.bits (0 : Fin 2)) hv
  change false = a.bits (0 : Fin 2) at h0
  obtain ⟨w,hw⟩ := higher
  have bad := congrArg (fun z : Vector input.b => z.bits (0 : Fin 1)) hw
  change false = Bool.xor (Bool.xor true (a.bits (0 : Fin 2))) false at bad
  rw [← h0] at bad
  cases bad

theorem target_class_nonzero :
    targetClass (sourceFiltration input wellFormed) (targetFiltration input wellFormed)
      (filteredMap input wellFormed) input.s input.n yTarget ≠ 0 := by
  have equation := Direct.quotient_equation input result wellFormed source_member target_member
  intro hz
  apply differential_nonzero
  exact equation.trans hz

theorem source_class_nonzero :
    sourceClass (sourceFiltration input wellFormed) (targetFiltration input wellFormed)
      (filteredMap input wellFormed) input.s input.n xCycle ≠ 0 := by
  intro hz
  apply differential_nonzero
  rw [hz,map_zero]

#print axioms result
#print axioms differential_nonzero
#print axioms target_class_nonzero
#print axioms source_class_nonzero
end FilteredExtensionReview.Nonzero
