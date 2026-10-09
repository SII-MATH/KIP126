import NamedPageComparison.Row2858.Products_h0
import PageTransitionCertificates.Import
import BranchReplayCertificates.BasisSemantics
namespace NamedPageComparison.Row2858.H1Zero
open LinearCertificates PageTransitionCertificates NamedElementCertificates
open BranchReplayCertificates.BasisSemantics
def h0Target : WireComparison := ⟨1,0,0,1,0,[],[],[],[],[],[]⟩
theorem h0Target_complete : h0Target.Valid := by lin_cert using ()
def h1Source : WireComparison := ⟨1,1,1,0,1,[false],[],[true],[true],[],[false]⟩
theorem h1Source_complete : h1Source.Valid := by lin_cert using ()
def h1Target : WireComparison := ⟨1,0,1,0,1,[],[],[true],[true],[],[]⟩
theorem h1Target_complete : h1Target.Valid := by lin_cert using ()
def productSource : WireComparison := ⟨1,1,0,0,0,[],[],[],[],[],[]⟩
theorem productSource_complete : productSource.Valid := by lin_cert using ()
def productTarget : WireComparison := ⟨1,0,1,0,1,[],[],[true],[true],[],[]⟩
theorem productTarget_complete : productTarget.Valid := by lin_cert using ()

-- The actual source of h0 is (1,1), so its d3 target is (4,3).
theorem every_h0_d3_zero (d : Matrix 0 1) : d = (fun _ _ => false) := by
  funext i
  exact Fin.elim0 i

def unitClass : Vec 1 := fun _ => true

theorem h0_fifth_nonboundary :
    ¬ InImage (matrixOf 1 productTarget.n productTarget.incoming) unitClass := by
  rintro ⟨v,hv⟩
  have h := congrFun hv ⟨0,by decide⟩
  change false = true at h
  contradiction

-- Equality modulo the entire imported d2 boundary image is the Leibniz premise.
def LeibnizCompatible (candidate : Vec 1) : Prop :=
  InImage (matrixOf 1 productTarget.n productTarget.incoming)
    (eval h0.matrix4_4 candidate)

theorem compatible_h1_d3_zero (candidate : Vec 1) (hc : LeibnizCompatible candidate) :
    candidate = zero := by
  obtain ⟨v,hv⟩ := hc
  have h := congrFun hv ⟨0,by decide⟩
  change false = xor (candidate 0) false at h
  have hc0 : candidate 0 = false := by simpa using h.symm
  funext i
  have hi : i = 0 := by omega
  subst i
  exact hc0

-- Relation certificates identify both products under arbitrary admissible valuations.
variable {R : Type*} [CommRing R] [CharP R 2]
theorem h0_times_h1_zero (v : Nat → R)
    (hr : ∀ r ∈ h0.column3.relations, evaluate v r = 0) :
    evaluate v h0.factor * evaluate v [[1]] = 0 := by
  have hh := equalModulo_evaluate v _ _ _ h0.column3_product hr
  rw [evaluate_multiply] at hh
  exact hh

theorem h0_times_h0_fourth (v : Nat → R)
    (hr : ∀ r ∈ h0.column5.relations, evaluate v r = 0) :
    evaluate v h0.factor * evaluate v [[0,0,0,0]] = evaluate v [[0,0,0,0,0]] := by
  have hh := equalModulo_evaluate v _ _ _ h0.column5_product hr
  rw [evaluate_multiply] at hh
  exact hh

-- The coordinate multiplication agrees for every coefficient, not just the generator.
theorem multiplication_coordinates (v : Nat → R)
    (hr : ∀ r ∈ h0.column5.relations, evaluate v r = 0) (x : Vec 1) :
    interpret (fun _ : Fin 1 => evaluate v [[0,0,0,0,0]]) (eval h0.matrix4_4 x) =
      evaluate v h0.factor * interpret (fun _ : Fin 1 => evaluate v [[0,0,0,0]]) x := by
  apply all_products v (fun _ : Fin 1 => [[0,0,0,0]])
    (fun _ : Fin 1 => [[0,0,0,0,0]]) h0.matrix4_4 h0.factor _ x
  intro j
  have hj : j = 0 := by omega
  subst j
  change evaluate v [[0,0,0,0,0]] + 0 = _
  rw [add_zero]
  exact (h0_times_h0_fourth v hr).symm
end NamedPageComparison.Row2858.H1Zero

