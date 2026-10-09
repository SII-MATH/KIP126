import Fact764CycleFromProduct.Data

namespace Fact764CycleFromProduct
open LinearCertificates PageTransitionCertificates
open BranchReplayCertificates BasisSemantics Fact764ConstrainedE5

/-- Zero of the entire actual E2 target propagates even when intermediate
incoming matrices are unknown: every later class must come from an earlier cycle. -/
theorem delta_target_zero (target : Fact762IncomingCertificates.PageTower)
    (initial : target.ZeroAt 2) : target.ZeroAt 4 :=
  target.zero_later initial (by decide)

theorem delta_target_zero_from_empty_coordinates
    (target : Fact762IncomingCertificates.PageTower)
    (coordinates : target.Carrier 2 → Vec 0)
    (faithful : Function.Injective coordinates) : target.ZeroAt 4 := by
  apply delta_target_zero
  intro x
  apply faithful
  funext i
  exact Fin.elim0 i

variable {R : Type*} [CommRing R] [CharP R 2]

/-- This uses the actual characteristic-two Leibniz law, not a stored NULL. -/
theorem fourth_power_cycle (d : R → R)
    (leibniz : ∀ x y, d (x*y) = d x*y + x*d y) (g : R) : d (g^4) = 0 := by
  have square (x : R) : d (x*x) = 0 := by
    rw [leibniz, mul_comm x (d x), CharTwo.add_self_eq_zero]
  have power : g^4 = (g*g)*(g*g) := by simp [pow_succ, mul_assoc]
  rw [power]
  exact square (g*g)

theorem named_product_cycle (d : R → R)
    (leibniz : ∀ x y, d (x*y) = d x*y + x*d y) (g delta : R)
    (deltaCycle : d delta = 0) : d (g^4*delta) = 0 := by
  rw [leibniz, fourth_power_cycle d leibniz g, deltaCycle, zero_mul, mul_zero, add_zero]

theorem named_polynomial (v : Nat → R) :
    NamedElementCertificates.evaluate v (ProductBasisSemantics.source25 2) = v 13 ^ 4 * v 51 := by
  simp [ProductBasisSemantics.source25, NamedElementCertificates.evaluate,
    NamedElementCertificates.evaluateMonomial, pow_succ, mul_assoc]

/-- The source and target are interpreted on all finite coefficient vectors.
The differential is one actual algebraic differential on a common ring, and
the actual (13,57) target has a zero-propagating page tower. -/
structure Meaning (A : Matrix 1 3) where
  sourceBasis : Fin 3 → R
  targetBasis : Fin 1 → R
  targetFaithful : Function.Injective (interpret targetBasis)
  differential : R → R
  leibniz : ∀ x y, differential (x*y) = differential x*y + x*differential y
  allDifferentials : ∀ x : Vec 3,
    interpret targetBasis (eval A x) = differential (interpret sourceBasis x)
  g : R
  delta : R
  namedProduct : interpret sourceBasis Coordinates.named = g^4*delta
  deltaTarget : Fact762IncomingCertificates.PageTower
  deltaInitialCoordinates : deltaTarget.Carrier 2 → Vec 0
  deltaInitialFaithful : Function.Injective deltaInitialCoordinates
  deltaTargetInterpretation : deltaTarget.Carrier 4 → R
  deltaTargetZero : deltaTargetInterpretation (deltaTarget.zero 4) = 0
  deltaValue : deltaTarget.Carrier 4
  deltaDifferential : differential delta = deltaTargetInterpretation deltaValue

theorem Meaning.named_cycle {A : Matrix 1 3} (h : Meaning (R:=R) A) :
    InKernel A Coordinates.named := by
  have zeroTarget := delta_target_zero_from_empty_coordinates h.deltaTarget
    h.deltaInitialCoordinates h.deltaInitialFaithful
  have deltaCycle : h.differential h.delta = 0 := by
    rw [h.deltaDifferential, zeroTarget h.deltaValue, h.deltaTargetZero]
  apply h.targetFaithful
  rw [h.allDifferentials, h.namedProduct,
    named_product_cycle h.differential h.leibniz h.g h.delta deltaCycle, interpret_zero]

/-- The actual product route discharges the formerly separate named d4-cycle
premise. Incoming obstructions and the complex law remain explicit. -/
theorem unique_from_product (A : Matrix 1 3) (B : Matrix 3 2) (candidate : Vec 4)
    (meaning : Meaning (R:=R) A)
    (cycle : candidate 0 = candidate 1)
    (productLaw : ProductRefutation.Compatible candidate)
    (mapLaw : MapRefutation.Compatible candidate)
    (known : eval B Coordinates.knownSource = Coordinates.knownBoundary)
    (unknown : eval B Coordinates.unknownSource = Coordinates.targetToE4 candidate)
    (complex : IsComplex A B) :
    UniqueHomologyCertificates.IsUniqueNonzeroClass A B Coordinates.named :=
  Conclusion.unique_from_named_cycle A B candidate cycle productLaw mapLaw known unknown
    complex meaning.named_cycle

/-- A zero tmf target cannot detect the one-dimensional sphere target injectively. -/
theorem no_injective_zero_detector (f : Vec 1 → Vec 0) : ¬ Function.Injective f := by
  intro injective
  have equal : f zero = f (fun _ => true) := by funext i; exact Fin.elim0 i
  have h := congrFun (injective equal) 0
  contradiction

#print axioms delta_target_zero_from_empty_coordinates
#print axioms fourth_power_cycle
#print axioms Meaning.named_cycle
#print axioms unique_from_product
#print axioms no_injective_zero_detector
end Fact764CycleFromProduct
