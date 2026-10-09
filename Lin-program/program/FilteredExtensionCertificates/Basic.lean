import RepresentativeSquareCertificates.Basic
import FilteredMapExtension.Basic

namespace FilteredExtensionCertificates
open LinearCertificates RepresentativeSquareCertificates FilteredRepresentativeCrossing
open FilteredMapExtension

/-- All filtration levels are specified; after `depth` the subgroup is zero. -/
structure Data where
  a : Nat
  b : Nat
  ha : Nat
  hb : Nat
  depth : Nat
  s : Nat
  n : Nat
  f : Matrix b a
  source : Fin depth → Matrix a ha
  target : Fin depth → Matrix b hb
  x : Vec a
  y : Vec b

def level (M : Fin depth → Matrix a h) (i : Nat) : Matrix a h :=
  if bound : i < depth then M ⟨i,bound⟩ else fun _ _ => false

def Data.sourceAt (D : Data) := level D.source
def Data.targetAt (D : Data) := level D.target

def checkFactor (H : Matrix a h) (K : Matrix a k) (factor : Matrix k h) : Bool :=
  decide (∀ i j, dot (K i) (fun r => factor r j) = H i j)

theorem factor_eval (H : Matrix a h) (K : Matrix a k) (factor : Matrix k h)
    (equations : ∀ i j, dot (K i) (fun r => factor r j) = H i j) (v : Vec h) :
    eval K (eval factor v) = eval H v := by
  funext i
  induction h with
  | zero => exact dot_zero (K i)
  | succ h ih =>
    have ht := ih (fun i j => H i j.succ) (fun r j => factor r j.succ)
      (fun i j => equations i j.succ) (fun j => v j.succ)
    change dot (K i) (eval (fun r j => factor r j.succ) (fun j => v j.succ)) =
      dot (fun j => H i j.succ) (fun j => v j.succ) at ht
    change dot (K i) (add (fun r => factor r 0 && v 0)
      (eval (fun r j => factor r j.succ) (fun j => v j.succ))) = _
    rw [dot_add]
    change _ = xor (H i 0 && v 0) (dot (fun j => H i j.succ) (fun j => v j.succ))
    rw [ht]
    cases hv : v 0 with
    | false => simp only [Bool.and_false]; rw [show (fun _ : Fin k => false) = zero from rfl,
        dot_zero, Bool.false_xor]
    | true => simp only [Bool.and_true, equations]

theorem checkFactor_sound (H : Matrix a h) (K : Matrix a k) (factor : Matrix k h)
    (accepted : checkFactor H K factor = true) : higher H ≤ higher K := by
  rintro x ⟨v,rfl⟩
  exact ⟨⟨eval factor v.bits⟩,
    congrArg RepresentativeSquareCertificates.Vector.mk (factor_eval H K factor (of_decide_eq_true accepted) v.bits)⟩

structure Certificate (D : Data) where
  sourceFactors : Fin D.depth → Matrix D.ha D.ha
  targetFactors : Fin D.depth → Matrix D.hb D.hb
  mapFactors : Fin D.depth → Matrix D.hb D.ha
  sourceMember : Vec D.ha
  imageMember : Vec D.hb
  targetMember : Vec D.hb
  representative : Vec D.a
  sourceCorrection : Vec D.ha
  targetCorrection : Vec D.hb

def checkDecreasing (M : Fin depth → Matrix a h)
    (factors : Fin depth → Matrix h h) : Bool :=
  decide (∀ i : Fin depth, checkFactor (level M (i.val+1)) (level M i.val) (factors i) = true)

theorem checkDecreasing_sound (M : Fin depth → Matrix a h)
    (factors : Fin depth → Matrix h h) (accepted : checkDecreasing M factors = true) :
    Antitone (fun i => higher (level M i)) := by
  apply antitone_nat_of_succ_le
  intro i
  by_cases bound : i < depth
  · exact checkFactor_sound _ _ _ ((of_decide_eq_true accepted) ⟨i,bound⟩)
  · have next : ¬ i+1 < depth := by omega
    simp only [level, dif_neg bound, dif_neg next]
    exact le_rfl

def checkMap (D : Data) (cert : Certificate D) : Bool :=
  decide (∀ i : Fin D.depth,
    checkPreserves D.f (D.sourceAt i.val) (D.targetAt i.val) (cert.mapFactors i) = true)

theorem checkMap_sound (D : Data) (cert : Certificate D)
    (accepted : checkMap D cert = true) :
    ∀ i, higher (D.sourceAt i) ≤ (higher (D.targetAt i)).comap (hom D.f) := by
  intro i x hx
  by_cases bound : i < D.depth
  · exact checkPreserves_sound _ _ _ _ ((of_decide_eq_true accepted) ⟨i,bound⟩) x hx
  · obtain ⟨v,hv⟩ := hx
    have hz : x = 0 := by
      rw [← hv]
      apply RepresentativeSquareCertificates.Vector.ext
      funext j
      change dot (D.sourceAt i j) v.bits = false
      simp only [Data.sourceAt, level, dif_neg bound]
      exact zero_dot v.bits
    change hom D.f x ∈ higher (D.targetAt i)
    rw [hz,map_zero]
    exact (higher (D.targetAt i)).zero_mem

/-- Semantic conditions on the complete range subgroups, independent of certificates. -/
structure WellFormed (D : Data) : Prop where
  sourceDecreasing : Antitone (fun i => higher (D.sourceAt i))
  targetDecreasing : Antitone (fun i => higher (D.targetAt i))
  preserves : ∀ i, higher (D.sourceAt i) ≤ (higher (D.targetAt i)).comap (hom D.f)

def sourceFiltration (D : Data) (h : WellFormed D) : Filtration (RepresentativeSquareCertificates.Vector D.a) :=
  ⟨fun i => higher (D.sourceAt i),h.sourceDecreasing⟩

def targetFiltration (D : Data) (h : WellFormed D) : Filtration (RepresentativeSquareCertificates.Vector D.b) :=
  ⟨fun i => higher (D.targetAt i),h.targetDecreasing⟩

def filteredMap (D : Data) (h : WellFormed D) :
    FilteredMap (sourceFiltration D h) (targetFiltration D h) := ⟨hom D.f,h.preserves⟩

/-- Equality for the actual induced quotient differential of the exact input map. -/
def ResultValid (D : Data) : Prop :=
  ∃ h : WellFormed D,
  ∃ hx : (⟨D.x⟩ : RepresentativeSquareCertificates.Vector D.a) ∈ cycles (sourceFiltration D h) (targetFiltration D h)
      (filteredMap D h) D.s D.n,
  ∃ hy : (⟨D.y⟩ : RepresentativeSquareCertificates.Vector D.b) ∈ (targetFiltration D h).group (D.s+D.n),
    differential (sourceFiltration D h) (targetFiltration D h) (filteredMap D h) D.s D.n
      (sourceClass (sourceFiltration D h) (targetFiltration D h) (filteredMap D h) D.s D.n
        ⟨⟨D.x⟩,hx⟩) =
      targetClass (sourceFiltration D h) (targetFiltration D h) (filteredMap D h) D.s D.n
        ⟨⟨D.y⟩,hy⟩

def check (D : Data) (cert : Certificate D) : Bool :=
  checkDecreasing D.source cert.sourceFactors &&
  checkDecreasing D.target cert.targetFactors && checkMap D cert &&
  checkImage (D.sourceAt D.s) D.x cert.sourceMember &&
  checkImage (D.targetAt (D.s+D.n)) (eval D.f D.x) cert.imageMember &&
  checkImage (D.targetAt (D.s+D.n)) D.y cert.targetMember &&
  checkExtension D.f (D.sourceAt (D.s+1)) (D.targetAt (D.s+D.n+1)) D.x D.y
    cert.representative cert.sourceCorrection cert.targetCorrection

theorem image_member (M : Matrix a h) (x : Vec a) (v : Vec h)
    (accepted : checkImage M x v = true) : (⟨x⟩ : RepresentativeSquareCertificates.Vector a) ∈ higher M := by
  obtain ⟨w,hw⟩ := checkImage_sound M x v accepted
  exact ⟨⟨w⟩,congrArg RepresentativeSquareCertificates.Vector.mk hw⟩

theorem check_sound (D : Data) (cert : Certificate D) (accepted : check D cert = true) :
    ResultValid D := by
  simp only [check,Bool.and_eq_true] at accepted
  obtain ⟨⟨⟨⟨⟨⟨hs,ht⟩,hm⟩,hx⟩,hfx⟩,hy⟩,he⟩ := accepted
  let h : WellFormed D := ⟨checkDecreasing_sound _ _ hs,
    checkDecreasing_sound _ _ ht,checkMap_sound _ _ hm⟩
  refine ⟨h,⟨image_member _ _ _ hx,image_member _ _ _ hfx⟩,image_member _ _ _ hy,?_⟩
  apply (differential_eq_iff_leading_extension _ _ _ _ _ _ _).mpr
  exact checkExtension_sound _ _ _ _ _ _ _ _ he

instance (D : Data) : LinProgramCertificates.CertificateVerifier (ResultValid D) where
  Cert := Certificate D
  check := check D
  sound := check_sound D

macro "filtered_extension_cert" " using " c:term : tactic => `(tactic| lin_cert using $c)

#print axioms factor_eval
#print axioms checkFactor_sound
#print axioms checkDecreasing_sound
#print axioms checkMap_sound
#print axioms check_sound
end FilteredExtensionCertificates
