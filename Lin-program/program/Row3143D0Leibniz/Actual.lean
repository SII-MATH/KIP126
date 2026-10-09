import Row3143D0Leibniz.Descent
import ActualAdamsProductTraceBridge.Basic

namespace Row3143D0Leibniz.Actual
open LinearCertificates ManualInputObligations.Reference ActualAdamsProductCycleBridge
open ActualAdamsProductTraceBridge ActualAdamsHomologyCoordinates.Meaning

abbrev d0Degree : Bidegree := ⟨4,18⟩
abbrev rightDegree : Bidegree := ⟨13,122⟩
abbrev sourceDegree : Bidegree := ⟨17,140⟩
abbrev leftD4Degree : Bidegree := ⟨8,21⟩

/-- Actual E3 interpretations identify the source product and complete empty
d3 targets. The later nonzero d4 is supplied separately with its exact meaning. -/
structure Meaning (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S) where
  d0 : (S.element 3 d0Degree).carrier → Q Data.d0
  right : (S.element 3 rightDegree).carrier → Q Data.right
  source : (S.element 3 sourceDegree).carrier → Q Data.source
  sourceFaithful : Function.Injective source
  sourceZero : source 0 = zeroQ Data.source
  sourceProduct : ∀ a b, source (P.product.multiply 3 d0Degree rightDegree a b) =
    sourceMul (d0 a) (right b)
  leftD3 : (S.element 3 (AdamsTarget 3 d0Degree)).carrier → Q Data.leftD3Target
  rightD3 : (S.element 3 (AdamsTarget 3 rightDegree)).carrier → Q Data.rightD3Target
  leftD4 : (S.element 3 leftD4Degree).carrier → Q Data.leftTarget
  leftD3Faithful : Function.Injective leftD3
  rightD3Faithful : Function.Injective rightD3
  leftD4Faithful : Function.Injective leftD4
  leftD3Zero : leftD3 0 = zeroQ Data.leftD3Target
  rightD3Zero : rightD3 0 = zeroQ Data.rightD3Target
  leftD4Zero : leftD4 0 = zeroQ Data.leftTarget

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}

theorem left_d3_zero (M : Meaning S P) (a : (S.element 3 d0Degree).carrier) :
    S.differential 3 d0Degree a = 0 :=
  M.leftD3Faithful ((left_d3_target_zero _).trans M.leftD3Zero.symm)
theorem right_d3_zero (M : Meaning S P) (b : (S.element 3 rightDegree).carrier) :
    S.differential 3 rightDegree b = 0 :=
  M.rightD3Faithful ((right_d3_target_zero _).trans M.rightD3Zero.symm)
theorem product_d3_zero (M : Meaning S P)
    (a : (S.element 3 d0Degree).carrier) (b : (S.element 3 rightDegree).carrier) :
    S.differential 3 sourceDegree (P.product.multiply 3 d0Degree rightDegree a b) = 0 :=
  product_cycle S P 3 d0Degree rightDegree a b (left_d3_zero M a) (right_d3_zero M b)

theorem named_factor (M : Meaning S P)
    (a : (S.element 3 d0Degree).carrier) (b : (S.element 3 rightDegree).carrier)
    (x : (S.element 3 sourceDegree).carrier)
    (namedA : M.d0 a = namedD0) (namedB : M.right b = namedRight)
    (namedX : M.source x = namedSource) : x = P.product.multiply 3 d0Degree rightDegree a b := by
  apply M.sourceFaithful
  rw [M.sourceProduct,namedA,namedB,named_product,namedX]

theorem named_d3_zero (M : Meaning S P)
    (a : (S.element 3 d0Degree).carrier) (b : (S.element 3 rightDegree).carrier)
    (x : (S.element 3 sourceDegree).carrier)
    (namedA : M.d0 a = namedD0) (namedB : M.right b = namedRight)
    (namedX : M.source x = namedSource) : S.differential 3 sourceDegree x = 0 := by
  rw [named_factor M a b x namedA namedB namedX]
  exact product_d3_zero M a b

theorem right_d4_zero (K : Descent.KnownDifferential S pages)
    (b : (S.element 4 rightDegree).carrier) : S.differential 4 rightDegree b = 0 :=
  Descent.known_reflects_zero K _ (S.differentialSq 4 rightDegree b)

theorem left_d4_zero (M : Meaning S P)
    (zeroMeaning : LocalZeroMeaning pages 3 leftD4Degree)
    (a : (S.element 4 d0Degree).carrier) : S.differential 4 d0Degree a = 0 :=
  Descent.next_zero S pages leftD4Degree zeroMeaning
    (fun x => M.leftD4Faithful ((left_d4_target_zero _).trans M.leftD4Zero.symm)) _

theorem product_d4_zero (M : Meaning S P) (K : Descent.KnownDifferential S pages)
    (zeroMeaning : LocalZeroMeaning pages 3 leftD4Degree)
    (a : (S.element 4 d0Degree).carrier) (b : (S.element 4 rightDegree).carrier) :
    S.differential 4 sourceDegree (P.product.multiply 4 d0Degree rightDegree a b) = 0 :=
  product_cycle S P 4 d0Degree rightDegree a b (left_d4_zero M zeroMeaning a) (right_d4_zero K b)

/-- The named E4 factorization is derived from the actual E3 product square.
Neither the named E4 factorization nor its d4 vanishing is supplied. -/
theorem actual_row3143_d4_zero (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) (M : Meaning S P) (K : Descent.KnownDifferential S pages)
    (sourceTransition : Transition S pages P 3 d0Degree rightDegree)
    (zeroMeaning : LocalZeroMeaning pages 3 leftD4Degree)
    (a : (S.element 3 d0Degree).carrier) (b : (S.element 3 rightDegree).carrier)
    (x : (S.element 3 sourceDegree).carrier)
    (namedA : M.d0 a = namedD0) (namedB : M.right b = namedRight)
    (namedX : M.source x = namedSource) :
    S.differential 4 sourceDegree ((pages.nextPage 3 sourceDegree).toNext
      (Quotient.mk _ (⟨x,(named_d3_zero M a b x namedA namedB namedX).trans
        (S.zero_is_zero _ _).symm⟩ : PageCycle S 3 sourceDegree))) = 0 := by
  let ac : PageCycle S 3 d0Degree := ⟨a,(left_d3_zero M a).trans (S.zero_is_zero _ _).symm⟩
  let bc : PageCycle S 3 rightDegree := ⟨b,(right_d3_zero M b).trans (S.zero_is_zero _ _).symm⟩
  let xc : PageCycle S 3 sourceDegree := ⟨x,(named_d3_zero M a b x namedA namedB namedX).trans
    (S.zero_is_zero _ _).symm⟩
  have same : xc = multiplyCycle S P 3 d0Degree rightDegree ac bc :=
    Subtype.ext (named_factor M a b x namedA namedB namedX)
  have nextName := sourceTransition.formula ac bc
  rw [← same] at nextName
  exact (congrArg (S.differential 4 sourceDegree) nextName).trans
    (product_d4_zero M K zeroMeaning _ _)

#print axioms left_d3_zero
#print axioms right_d3_zero
#print axioms product_d3_zero
#print axioms named_factor
#print axioms named_d3_zero
#print axioms right_d4_zero
#print axioms left_d4_zero
#print axioms product_d4_zero
#print axioms actual_row3143_d4_zero
end Row3143D0Leibniz.Actual
