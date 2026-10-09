import NamedPageComparison.Row2858.H1Zero
import NamedPageComparison.Row2858.Semantics_g
import NamedPageComparison.Row2858.Semantics_h1
import NamedPageComparison.Row2858.Semantics_h3
import NamedPageComparison.Row2858.Boundaries

namespace NamedPageComparison.Row2858.Derivation
open LinearCertificates NamedElementCertificates PageTransitionCertificates
open BranchReplayCertificates.BasisSemantics

abbrev Degree := Int × Int

def shift (r : Nat) (a : Degree) : Degree := (a.1 + r, a.2 + r - 1)
def plus (a b : Degree) : Degree := (a.1 + b.1, a.2 + b.2)

/-- An explicit mathematical comparison condition, not a fact extracted from logs.
The characteristic-two setting removes signs from the graded Leibniz rule. -/
structure GradedDerivation (R : Type*) [CommRing R] [CharP R 2] where
  page : Nat
  degree : Degree → R → Prop
  zero_mem : ∀ a, degree a 0
  add_mem : ∀ a x y, degree a x → degree a y → degree a (x + y)
  mul_mem : ∀ a b x y, degree a x → degree b y → degree (plus a b) (x * y)
  d : R → R
  d_zero : d 0 = 0
  d_add : ∀ x y, d (x + y) = d x + d y
  d_degree : ∀ a x, degree a x → degree (shift page a) (d x)
  leibniz : ∀ a b x y, degree a x → degree b y →
    d (x * y) = d x * y + x * d y

variable {R : Type*} [CommRing R] [CharP R 2]

theorem zero_target_forces_zero (D : GradedDerivation R) (a : Degree) (x : R)
    (hx : D.degree a x) (empty : ∀ z, D.degree (shift D.page a) z → z = 0) :
    D.d x = 0 := empty _ (D.d_degree a x hx)

/-- A rule proved for every graded derivation: an annihilator which is a cycle
annihilates the differential as well. Neither the output nor its vanishing is
an axiom of this rule. -/
theorem annihilator_rule (D : GradedDerivation R) (a b : Degree) (x y : R)
    (hx : D.degree a x) (hy : D.degree b y)
    (hxy : x * y = 0) (hdx : D.d x = 0) : x * D.d y = 0 := by
  have hh := D.leibniz a b x y hx hy
  rw [hxy, D.d_zero, hdx, zero_mul, zero_add] at hh
  exact hh.symm

/-- An interpretation reflects exactly the full finite boundary image.
This is a separate page-realization hypothesis; relation-vanishing alone does
not imply that the imported basis has no extra relations in R. -/
def BoundaryFaithful (basis : Fin m → R) (boundary : Matrix m n) : Prop :=
  ∀ x, interpret basis x = 0 ↔ InImage boundary x

/-- h1 compatibility is derived from general graded Leibniz plus independent
product and page-realization data. No compatibility/zero-output premise occurs. -/
theorem h1_compatible_from_derivation (D : GradedDerivation R) (v : Nat → R)
    (page3 : D.page = 3)
    (h0degree : D.degree (1,1) (evaluate v h0.factor))
    (h1degree : D.degree (1,2) (evaluate v [[1]]))
    (h0target : ∀ z, D.degree (4,3) z → z = 0)
    (hr3 : ∀ r ∈ h0.column3.relations, evaluate v r = 0)
    (hr5 : ∀ r ∈ h0.column5.relations, evaluate v r = 0)
    (faithful : BoundaryFaithful (fun _ : Fin 1 => evaluate v [[0,0,0,0,0]])
      (matrixOf 1 H1Zero.productTarget.n H1Zero.productTarget.incoming))
    (candidate : Vec 1)
    (represents : D.d (evaluate v [[1]]) =
      interpret (fun _ : Fin 1 => evaluate v [[0,0,0,0]]) candidate) :
    H1Zero.LeibnizCompatible candidate := by
  have hz : D.d (evaluate v h0.factor) = 0 := by
    apply zero_target_forces_zero D (1,1) _ h0degree
    simpa [page3, shift] using h0target
  have hann := annihilator_rule D (1,1) (1,2) _ _ h0degree h1degree
    (H1Zero.h0_times_h1_zero v hr3) hz
  apply (faithful _).mp
  rw [H1Zero.multiplication_coordinates v hr5, ← represents]
  exact hann

theorem h1_zero_from_derivation (D : GradedDerivation R) (v : Nat → R)
    (page3 : D.page = 3)
    (h0degree : D.degree (1,1) (evaluate v h0.factor))
    (h1degree : D.degree (1,2) (evaluate v [[1]]))
    (h0target : ∀ z, D.degree (4,3) z → z = 0)
    (hr3 : ∀ r ∈ h0.column3.relations, evaluate v r = 0)
    (hr5 : ∀ r ∈ h0.column5.relations, evaluate v r = 0)
    (faithful : BoundaryFaithful (fun _ : Fin 1 => evaluate v [[0,0,0,0,0]])
      (matrixOf 1 H1Zero.productTarget.n H1Zero.productTarget.incoming))
    (candidate : Vec 1)
    (represents : D.d (evaluate v [[1]]) =
      interpret (fun _ : Fin 1 => evaluate v [[0,0,0,0]]) candidate) :
    D.d (evaluate v [[1]]) = 0 := by
  have hc := h1_compatible_from_derivation D v page3 h0degree h1degree h0target
    hr3 hr5 faithful candidate represents
  rw [represents, H1Zero.compatible_h1_d3_zero candidate hc, interpret_zero]

end NamedPageComparison.Row2858.Derivation
