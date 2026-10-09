import MilnorCertificates.FinitePolynomialAlgebra
import ResolutionCertificates.Basic
import Mathlib.LinearAlgebra.Finsupp.LinearCombination

namespace ExtComplexCertificates.GenericFreeComplex
open MilnorCertificates
open scoped BigOperators

/-- Explicit finite free generators, graded by homological and internal degree.
Edges are polynomial coefficients of a left-module differential. -/
structure Data (rank n : Nat) where
  homological : Fin n → Nat
  internal : Fin n → Nat
  edge : Fin n → Fin n → Polynomial

abbrev FreeModule (rank n : Nat) := Fin n →₀ FiniteGradedDual rank

noncomputable def boundaryVector (d : Data rank n) (i : Fin n) : FreeModule rank n :=
  ∑ j, Finsupp.single j (finitePolynomial rank (d.edge i j))

noncomputable def differential (d : Data rank n) :
    FreeModule rank n →ₗ[FiniteGradedDual rank] FreeModule rank n :=
  Finsupp.linearCombination _ (boundaryVector d)

theorem boundaryVector_apply (d : Data rank n) (i j : Fin n) :
    boundaryVector d i j = finitePolynomial rank (d.edge i j) := by
  classical
  simp [boundaryVector,Finset.sum_apply',Finsupp.single_apply]

def checkGrading (d : Data rank n) : Bool := decide (∀ i j, ∀ m ∈ d.edge i j,
  m.length = rank ∧ d.homological j + 1 = d.homological i ∧
    weight m + d.internal j = d.internal i)

structure Certificate (n : Nat) where
  products : Fin n → Fin n → Fin n → Polynomial
  witnesses : Fin n → Fin n → Fin n → AllCertificate

def productSupport (c : Certificate n) (i k : Fin n) : Polynomial :=
  (List.finRange n).flatMap fun j => c.products i j k

def checkCancellation (c : Certificate n) (i k : Fin n) : Bool :=
  (productSupport c i k).all fun m => decide
    ((∑ j : Fin n, boolScalar (coefficient (c.products i j k) m)) = 0)

def check (d : Data rank n) (c : Certificate n) : Bool :=
  checkGrading d && decide (∀ i j k,
    checkAll rank (d.edge i j) (d.edge j k) (c.products i j k) (c.witnesses i j k) = true) &&
  decide (∀ i k, checkCancellation c i k = true)

theorem cancellation_sound (c : Certificate n) (i k : Fin n)
    (h : checkCancellation c i k = true) (m : Monomial) :
    (∑ j : Fin n, boolScalar (coefficient (c.products i j k) m)) = 0 := by
  by_cases hm : m ∈ productSupport c i k
  · exact of_decide_eq_true (List.all_eq_true.mp h m hm)
  · apply Finset.sum_eq_zero
    intro j _
    have hn : m ∉ c.products i j k := by
      intro hj
      apply hm
      exact List.mem_flatMap.mpr ⟨j,List.mem_finRange j,hj⟩
    have hc : coefficient (c.products i j k) m = false := by
      cases he : coefficient (c.products i j k) m with
      | false => rfl
      | true => exact False.elim (hn (coefficient_true_mem _ _ he))
    rw [hc]
    rfl

theorem checked_matrix_square_zero (d : Data rank n) (c : Certificate n)
    (h : check d c = true) (i k : Fin n) :
    (∑ j : Fin n, finitePolynomial rank (d.edge i j) * finitePolynomial rank (d.edge j k)) = 0 := by
  simp only [check,Bool.and_eq_true,decide_eq_true_eq] at h
  have hp : ∀ j, finitePolynomial rank (d.edge i j) * finitePolynomial rank (d.edge j k) =
      finitePolynomial rank (c.products i j k) := fun j =>
    finitePolynomial_mul _ _ _ _ (checkAll_sound _ _ _ _ _ (h.1.2 i j k))
  simp_rw [hp]
  apply Subtype.ext
  funext m
  change (∑ j : Fin n, finitePolynomial rank (c.products i j k)).val m = 0
  have he : (∑ j : Fin n, finitePolynomial rank (c.products i j k)).val m =
      ∑ j : Fin n, boolScalar (coefficient (c.products i j k) m.val) := by
    exact map_sum ((Pi.evalAddMonoidHom (fun _ : RankMonomial rank => ZMod 2) m).comp
      (finiteGradedSubring rank).subtype.toAddMonoidHom) _ _
  rw [he]
  exact cancellation_sound c i k (h.2 i k) m.val

theorem differential_single (d : Data rank n) (i : Fin n) (a : FiniteGradedDual rank) :
    differential d (Finsupp.single i a) = a • boundaryVector d i := by
  simp [differential]

theorem check_square_zero (d : Data rank n) (c : Certificate n) (h : check d c = true) :
    (differential d).comp (differential d) = 0 := by
  have hb : ∀ i, differential d (boundaryVector d i) = 0 := by
    intro i
    apply Finsupp.ext
    intro k
    unfold boundaryVector
    rw [map_sum]
    simp only [differential_single,Finset.sum_apply',Finsupp.smul_apply,smul_eq_mul]
    simp_rw [boundaryVector_apply]
    exact checked_matrix_square_zero d c h i k
  apply Finsupp.lhom_ext
  intro i a
  simp only [LinearMap.comp_apply,differential_single,map_smul,hb,smul_zero,LinearMap.zero_apply]

/-- Both the actual convolution-ring differential and its declared grading
are verified. This says nothing about the origin of the input module. -/
def Valid (d : Data rank n) : Prop :=
  (∀ i j, ∀ m ∈ d.edge i j, m.length = rank ∧
    d.homological j + 1 = d.homological i ∧ weight m + d.internal j = d.internal i) ∧
  (differential d).comp (differential d) = 0

theorem check_sound (d : Data rank n) (c : Certificate n) (h : check d c = true) : Valid d := by
  refine ⟨?_,check_square_zero d c h⟩
  simp only [check,Bool.and_eq_true] at h
  exact of_decide_eq_true h.1.1

instance (d : Data rank n) : LinProgramCertificates.CertificateVerifier (Valid d) where
  Cert := Certificate n
  check := check d
  sound := check_sound d

/-- Coordinate links are mathematical input proofs, not trusted matrix tags.
This interface permits arbitrary homogeneous components of arbitrary data. -/
structure Coordinates (X Y Z : Type*) [Zero X] [Zero Y] [Zero Z]
    (out : Y → X) (inc : Z → Y) (k m n : Nat) where
  outgoing : LinearCertificates.Matrix k m
  incoming : LinearCertificates.Matrix m n
  lower : X ≃ LinearCertificates.Vec k
  middle : Y ≃ LinearCertificates.Vec m
  upper : Z ≃ LinearCertificates.Vec n
  lower_zero : lower 0 = LinearCertificates.zero
  outgoing_link : ∀ x, lower (out x) = LinearCertificates.eval outgoing (middle x)
  incoming_link : ∀ x, middle (inc x) = LinearCertificates.eval incoming (upper x)

/-- A finite contraction yields a genuine boundary witness in the original
homogeneous component, through verified coordinate equivalences. -/
theorem coordinates_exact {X Y Z : Type*} [Zero X] [Zero Y] [Zero Z]
    {out : Y → X} {inc : Z → Y} (links : Coordinates X Y Z out inc k m n)
    (c : ResolutionCertificates.Contraction k m n)
    (h : ResolutionCertificates.checkContraction links.outgoing links.incoming c = true)
    (x : Y) (hx : out x = 0) : ∃ y : Z, inc y = x := by
  have he := ResolutionCertificates.checkContraction_sound _ _ c h
  have hc : LinearCertificates.InKernel links.outgoing (links.middle x) := by
    unfold LinearCertificates.InKernel
    rw [← links.outgoing_link,hx,links.lower_zero]
  obtain ⟨v,hv⟩ := he.2 _ hc
  refine ⟨links.upper.symm v,links.middle.injective ?_⟩
  rw [links.incoming_link,Equiv.apply_symm_apply,hv]

/-- Combined reusable certificate: polynomial ring-complex verification and
exactness of a component whose mathematical coordinate links are supplied. -/
structure LinkedCertificate (generators k m n : Nat) where
  complex : Certificate generators
  contraction : ResolutionCertificates.Contraction k m n

def checkLinked (d : Data rank generators)
    {X Y Z : Type*} [Zero X] [Zero Y] [Zero Z] {out : Y → X} {inc : Z → Y}
    (links : Coordinates X Y Z out inc k m n) (c : LinkedCertificate generators k m n) : Bool :=
  check d c.complex &&
    ResolutionCertificates.checkContraction links.outgoing links.incoming c.contraction

theorem checkLinked_sound (d : Data rank generators)
    {X Y Z : Type*} [Zero X] [Zero Y] [Zero Z] {out : Y → X} {inc : Z → Y}
    (links : Coordinates X Y Z out inc k m n) (c : LinkedCertificate generators k m n)
    (h : checkLinked d links c = true) :
    Valid d ∧ ∀ x, out x = 0 → ∃ y, inc y = x := by
  simp only [checkLinked,Bool.and_eq_true] at h
  exact ⟨check_sound d c.complex h.1,coordinates_exact links c.contraction h.2⟩

-- A nonempty free module with zero boundary exercises the generic checker
-- without importing any actualRows or fixing the Milnor rank to three.
def zeroData : Data 1 1 := ⟨fun _ => 0,fun _ => 0,fun _ _ => []⟩
def zeroCertificate : Certificate 1 :=
  ⟨fun _ _ _ => [], fun _ _ _ => ⟨generate ⟨1,0⟩,0,0⟩⟩

example : Valid zeroData := by lin_cert using zeroCertificate

#print axioms check_sound
#print axioms coordinates_exact
#print axioms checkLinked_sound
end ExtComplexCertificates.GenericFreeComplex
