import Row2907PDeltaDetection.Descent
import ActualAdamsProductTraceBridge.Basic
import Row3143D0Leibniz.Descent

namespace Row2907PDeltaDetection.Actual
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open ActualAdamsProductTraceBridge ActualAdamsHomologyCoordinates.Meaning
open Descent

/-- Full E3 product meaning and all-element coordinate bindings relate the
polynomial quotient to the actual named factors. The source chart is swapped
to the inherited d3 comparison, not identified by matching dimensions. -/
structure Meaning (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    {pages : CertifiedAdamsPages S} (C : Prefix S pages) where
  factor : (S.element 3 factorDegree).carrier → Q Data.c12_42_2
  source : (S.element 3 sourceDegree).carrier → Q Data.c16_137_2
  product : (S.element 3 productDegree).carrier → Q Data.c28_179_2
  productFaithful : Function.Injective product
  productEquation : ∀ a b, product (P.product.multiply 3 factorDegree sourceDegree a b) =
    sourceMul (factor a) (source b)
  factorBinding : ∀ x, C.factor.equivalence x = factorCoordinates.toCoordinates (factor x)
  sourceBinding : ∀ x, C.source.equivalence x = eval swap (sourceCoordinates.toCoordinates (source x))
  productBinding : ∀ x, C.product.equivalence x = productCoordinates.toCoordinates (product x)
  leftTarget : (S.element 3 leftD4Degree).carrier → Q Data.c16_45_2
  leftTargetFaithful : Function.Injective leftTarget
  leftTargetZero : leftTarget 0 = zeroQ Data.c16_45_2

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {P : CertifiedAdamsProduct S} {C : Prefix S pages}

theorem factor_d4_zero (M : Meaning S P C)
    (zeroMeaning : LocalZeroMeaning pages 3 leftD4Degree)
    (a : (S.element 4 factorDegree).carrier) : S.differential 4 factorDegree a = 0 :=
  Row3143D0Leibniz.Descent.next_zero S pages leftD4Degree zeroMeaning
    (fun x => M.leftTargetFaithful ((left_d4_target_zero _).trans M.leftTargetZero.symm)) _

theorem named_factorization (M : Meaning S P C)
    (a : (S.element 3 factorDegree).carrier) (b : (S.element 3 sourceDegree).carrier)
    (x : (S.element 3 productDegree).carrier)
    (namedA : M.factor a = namedFactor) (namedB : M.source b = namedSource)
    (namedX : M.product x = namedProduct) :
    x = P.product.multiply 3 factorDegree sourceDegree a b := by
  apply M.productFaithful
  rw [M.productEquation,namedA,namedB,named_product,namedX]

def factorCycle (C : Prefix S pages) (a : (S.element 3 factorDegree).carrier) :
    PageCycle S 3 factorDegree := ⟨a,C.factor_cycle a⟩
def sourceCycle (C : Prefix S pages) (b : (S.element 3 sourceDegree).carrier) :
    PageCycle S 3 sourceDegree := ⟨b,C.source_cycle b⟩
def productCycle (C : Prefix S pages) (x : (S.element 3 productDegree).carrier) :
    PageCycle S 3 productDegree := ⟨x,C.product_cycle x⟩

noncomputable def factorNext (C : Prefix S pages) (a : (S.element 3 factorDegree).carrier) :=
  (pages.nextPage 3 factorDegree).toNext (Quotient.mk _ (factorCycle C a))
noncomputable def sourceNext (C : Prefix S pages) (b : (S.element 3 sourceDegree).carrier) :=
  (pages.nextPage 3 sourceDegree).toNext (Quotient.mk _ (sourceCycle C b))
noncomputable def productNext (C : Prefix S pages) (x : (S.element 3 productDegree).carrier) :=
  (pages.nextPage 3 productDegree).toNext (Quotient.mk _ (productCycle C x))

theorem factor_next_name (M : Meaning S P C) (a : (S.element 3 factorDegree).carrier)
    (namedA : M.factor a = namedFactor) : C.factor4.equivalence (factorNext C a) = fun _ => true := by
  have current := (M.factorBinding a).trans ((congrArg factorCoordinates.toCoordinates namedA).trans
    named_factor_coordinates)
  exact (C.factorMeaning.nextCoordinates_quotient pages Data.c12_42_3_valid C.factorZero
    (factorCycle C a)).trans ((congrArg (eval Data.c12_42_3.comparison.projection) current).trans
      (factor_projection_named))
theorem source_next_name (M : Meaning S P C) (b : (S.element 3 sourceDegree).carrier)
    (namedB : M.source b = namedSource) : C.source4.equivalence (sourceNext C b) = fun _ => true := by
  have current := (M.sourceBinding b).trans
    ((congrArg (fun q => eval swap (sourceCoordinates.toCoordinates q)) namedB).trans
      ((congrArg (eval swap) named_source_coordinates).trans source_swap_named))
  exact (C.sourceMeaning.nextCoordinates_quotient pages sourceD3_valid C.sourceZero
    (sourceCycle C b)).trans ((congrArg (eval sourceD3.comparison.projection) current).trans
      source_projection_named)
theorem product_next_name (M : Meaning S P C) (x : (S.element 3 productDegree).carrier)
    (namedX : M.product x = namedProduct) : C.product4.equivalence (productNext C x) = fun _ => true := by
  have current := (M.productBinding x).trans
    ((congrArg productCoordinates.toCoordinates namedX).trans named_product_coordinates)
  exact (C.productMeaning.nextCoordinates_quotient pages Data.c28_179_3_valid C.productZero
    (productCycle C x)).trans ((congrArg (eval Data.c28_179_3.comparison.projection) current).trans
      product_projection_named)

theorem next_factorization (M : Meaning S P C)
    (transition : Transition S pages P 3 factorDegree sourceDegree)
    (a : (S.element 3 factorDegree).carrier) (b : (S.element 3 sourceDegree).carrier)
    (x : (S.element 3 productDegree).carrier)
    (namedA : M.factor a = namedFactor) (namedB : M.source b = namedSource)
    (namedX : M.product x = namedProduct) :
    productNext C x = P.product.multiply 4 factorDegree sourceDegree (factorNext C a) (sourceNext C b) := by
  have same : productCycle C x = multiplyCycle S P 3 factorDegree sourceDegree
      (factorCycle C a) (sourceCycle C b) :=
    Subtype.ext (named_factorization M a b x namedA namedB namedX)
  have h := transition.formula (factorCycle C a) (sourceCycle C b)
  rw [← same] at h
  exact h

/-- A vanishing source differential would force the known nonzero product
differential to vanish by the actual Leibniz law. -/
theorem row2907_d4_nonzero (M : Meaning S P C) (K : KnownDifferential C)
    (transition : Transition S pages P 3 factorDegree sourceDegree)
    (zeroMeaning : LocalZeroMeaning pages 3 leftD4Degree)
    (a : (S.element 3 factorDegree).carrier) (b : (S.element 3 sourceDegree).carrier)
    (x : (S.element 3 productDegree).carrier)
    (namedA : M.factor a = namedFactor) (namedB : M.source b = namedSource)
    (namedX : M.product x = namedProduct) :
    S.differential 4 sourceDegree (sourceNext C b) ≠ 0 := by
  intro assumedZero
  apply known_nonzero C K (productNext C x) (product_next_name M x namedX)
  rw [next_factorization M transition a b x namedA namedB namedX]
  exact ActualAdamsProductCycleBridge.product_cycle S P 4 factorDegree sourceDegree
    (factorNext C a) (sourceNext C b) (factor_d4_zero M zeroMeaning _) assumedZero

theorem row2907_d4_nonzero_in_coordinates (M : Meaning S P C) (K : KnownDifferential C)
    (transition : Transition S pages P 3 factorDegree sourceDegree)
    (zeroMeaning : LocalZeroMeaning pages 3 leftD4Degree)
    (a : (S.element 3 factorDegree).carrier) (b : (S.element 3 sourceDegree).carrier)
    (x : (S.element 3 productDegree).carrier)
    (namedA : M.factor a = namedFactor) (namedB : M.source b = namedSource)
    (namedX : M.product x = namedProduct)
    (y : (S.element 4 sourceDegree).carrier) (namedY : C.source4.equivalence y = fun _ => true) :
    S.differential 4 sourceDegree y ≠ 0 := by
  have same : y = sourceNext C b := C.source4.equivalence.injective
    (namedY.trans (source_next_name M b namedB).symm)
  rw [same]
  exact row2907_d4_nonzero M K transition zeroMeaning a b x namedA namedB namedX

#print axioms factor_d4_zero
#print axioms named_factorization
#print axioms factor_next_name
#print axioms source_next_name
#print axioms product_next_name
#print axioms next_factorization
#print axioms row2907_d4_nonzero
#print axioms row2907_d4_nonzero_in_coordinates
end Row2907PDeltaDetection.Actual
