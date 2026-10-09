import FilteredExtensionCertificates.Basic

namespace FilteredExtensionCertificateCompleteness
open LinearCertificates RepresentativeSquareCertificates GeneralizedLeibnizAudit
open FilteredExtensionCertificates

def basis (j : Fin n) : Vec n := fun i => decide (i = j)

theorem dot_basis (v : Vec n) (j : Fin n) : dot v (basis j) = v j := by
  induction n with
  | zero => exact Fin.elim0 j
  | succ n ih =>
    induction j using Fin.cases with
    | zero =>
      have tail : (fun i : Fin n => basis (0 : Fin (n+1)) i.succ) = zero := by
        funext i
        simp [basis,zero]
      change xor (v 0 && true) (dot (fun i => v i.succ)
        (fun i : Fin n => basis (0 : Fin (n+1)) i.succ)) = v 0
      rw [tail,dot_zero]
      simp
    | succ j =>
      have tail : (fun i : Fin n => basis j.succ i.succ) = basis j := by
        funext i
        simp [basis]
      have head : basis j.succ 0 = false := by
        simp only [basis,decide_eq_false_iff_not]
        intro eq
        have values := congrArg Fin.val eq
        change 0 = j.val+1 at values
        omega
      change xor (v 0 && basis j.succ 0) (dot (fun i => v i.succ)
        (fun i : Fin n => basis j.succ i.succ)) = v j.succ
      rw [head,tail,ih]
      simp

theorem eval_basis (M : Matrix a h) (j : Fin h) :
    eval M (basis j) = fun i => M i j := by
  funext i
  exact dot_basis (M i) j

theorem column_mem (M : Matrix a h) (j : Fin h) :
    (⟨fun i => M i j⟩ : Vector a) ∈ higher M := by
  refine ⟨⟨basis j⟩,?_⟩
  apply RepresentativeSquareCertificates.Vector.ext
  exact eval_basis M j

/-- Range membership is exactly existence of an accepted preimage witness. -/
theorem checkImage_complete (M : Matrix a h) (x : Vec a)
    (member : (⟨x⟩ : Vector a) ∈ higher M) :
    ∃ witness, checkImage M x witness = true := by
  obtain ⟨w,hw⟩ := member
  refine ⟨w.bits,?_⟩
  apply decide_eq_true_eq.mpr
  intro i
  exact congrFun (congrArg Vector.bits hw) i

/-- A subgroup inclusion gives a preimage for every specified generator;
choosing those columns constructs the exact matrix factorization. -/
theorem checkFactor_complete (H : Matrix a h) (K : Matrix a k)
    (included : higher H ≤ higher K) :
    ∃ factor : Matrix k h, checkFactor H K factor = true := by
  classical
  have columns : ∀ j : Fin h, ∃ w : Vector k,
      hom K w = (⟨fun i => H i j⟩ : Vector a) := by
    intro j
    exact included (column_mem H j)
  choose witnesses equations using columns
  refine ⟨fun r j => (witnesses j).bits r,?_⟩
  apply decide_eq_true_eq.mpr
  intro i j
  exact congrFun (congrArg Vector.bits (equations j)) i

theorem checkFactor_exists_iff (H : Matrix a h) (K : Matrix a k) :
    (∃ factor : Matrix k h, checkFactor H K factor = true) ↔ higher H ≤ higher K := by
  constructor
  · rintro ⟨factor,hf⟩
    exact checkFactor_sound H K factor hf
  · exact checkFactor_complete H K

/-- Preservation on the whole source range supplies one factor column for
each original generator; no independent basis or rank assumption is needed. -/
theorem checkPreserves_complete (f : Matrix b a) (H : Matrix a h) (K : Matrix b k)
    (preserves : higher H ≤ (higher K).comap (hom f)) :
    ∃ factor : Matrix k h, checkPreserves f H K factor = true := by
  classical
  have columns : ∀ j : Fin h, ∃ w : Vector k,
      hom K w = hom f (⟨fun i => H i j⟩ : Vector a) := by
    intro j
    exact preserves (column_mem H j)
  choose witnesses equations using columns
  refine ⟨fun r j => (witnesses j).bits r,?_⟩
  apply decide_eq_true_eq.mpr
  intro i j
  exact (congrFun (congrArg Vector.bits (equations j)) i).symm

theorem checkPreserves_exists_iff (f : Matrix b a) (H : Matrix a h) (K : Matrix b k) :
    (∃ factor : Matrix k h, checkPreserves f H K factor = true) ↔
      higher H ≤ (higher K).comap (hom f) := by
  constructor
  · rintro ⟨factor,hf⟩
    exact checkPreserves_sound f H K factor hf
  · exact checkPreserves_complete f H K

theorem checkExtension_complete (f : Matrix b a) (H : Matrix a h) (K : Matrix b k)
    (x : Vec a) (y : Vec b)
    (extension : Extension (hom f) (higher H) (higher K) ⟨x⟩ ⟨y⟩) :
    ∃ rep source target, checkExtension f H K x y rep source target = true := by
  obtain ⟨rep,hs,ht⟩ := extension
  have hs' : (⟨add rep.bits x⟩ : Vector a) ∈ higher H := hs
  have ht' : (⟨add (eval f rep.bits) y⟩ : Vector b) ∈ higher K := ht
  obtain ⟨source,hsource⟩ := checkImage_complete H _ hs'
  obtain ⟨target,htarget⟩ := checkImage_complete K _ ht'
  exact ⟨rep.bits,source,target,by simp only [checkExtension,hsource,htarget,Bool.and_self]⟩

theorem checkExtension_exists_iff (f : Matrix b a) (H : Matrix a h) (K : Matrix b k)
    (x : Vec a) (y : Vec b) :
    (∃ rep source target, checkExtension f H K x y rep source target = true) ↔
      Extension (hom f) (higher H) (higher K) ⟨x⟩ ⟨y⟩ := by
  constructor
  · rintro ⟨rep,source,target,h⟩
    exact checkExtension_sound f H K x y rep source target h
  · exact checkExtension_complete f H K x y

#print axioms dot_basis
#print axioms checkImage_complete
#print axioms checkFactor_complete
#print axioms checkFactor_exists_iff
#print axioms checkPreserves_complete
#print axioms checkPreserves_exists_iff
#print axioms checkExtension_complete
#print axioms checkExtension_exists_iff
end FilteredExtensionCertificateCompleteness
