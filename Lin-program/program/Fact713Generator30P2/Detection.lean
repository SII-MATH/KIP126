import Fact713Generator30P2.Comparison
import Fact713Row3247Source.ModuleLeibniz
import Fact713Row3247Source.JointDetection

namespace Fact713Generator30P2.Detection
open LinearCertificates PageTransitionCertificates Comparison
open Fact713Row3247Source.JointDetection (Q zeroQ coordinates)
open ManualInputObligations.Reference

def sourceMap : Q Cnu_10_55 → Q Cnu_18_85 := inducedMap factor_10_55_compatible
def targetMap : Q Cnu_13_57 → Q Cnu_21_87 := inducedMap factor_13_57_compatible
def namedGenerator : Q Cnu_10_55 := (coordinates _ Cnu_10_55_valid).fromCoordinates (fun _ => true)
theorem source_coordinate : (coordinates _ Cnu_18_85_valid).toCoordinates (sourceMap namedGenerator) =
    (fun i => i.val == 0) := by decide
theorem target_reflects_zero (x : Q Cnu_13_57) (hx : targetMap x = zeroQ Cnu_21_87) :
    x = zeroQ Cnu_13_57 := by
  have formula := induced_coordinates_all factor_13_57_compatible Cnu_13_57.comparison
    Cnu_21_87.comparison Cnu_13_57_valid.2 Cnu_21_87_valid.2 x
  have h : eval factor_13_57_E3 ((coordinates _ Cnu_13_57_valid).toCoordinates x) = zero :=
    formula.symm.trans ((congrArg (coordinates _ Cnu_21_87_valid).toCoordinates hx).trans (eval_zero _))
  have finite : ∀ y : Vec 1, eval factor_13_57_E3 y = zero → y = zero := by decide
  have eq := (finite _ h).trans (show zero = (coordinates _ Cnu_13_57_valid).toCoordinates (zeroQ Cnu_13_57) from (eval_zero _).symm)
  exact ((coordinates _ Cnu_13_57_valid).leftInverse _).symm.trans
    ((congrArg (coordinates _ Cnu_13_57_valid).fromCoordinates eq).trans
      ((coordinates _ Cnu_13_57_valid).leftInverse _))

abbrev pDegree : Bidegree := ⟨8,30⟩
abbrev sourceDegree : Bidegree := ⟨10,55⟩
abbrev targetDegree : Bidegree := ⟨13,57⟩
abbrev productDegree : Bidegree := ⟨18,85⟩
abbrev boundaryDegree : Bidegree := ⟨14,82⟩

theorem p_d3_zero (S : AdamsSpectralSequence)
    (empty : (S.element 3 (AdamsTarget 3 pDegree)).carrier ≃ Q S0_11_32)
    (p : (S.element 3 pDegree).carrier) : S.differential 3 pDegree p = 0 := by
  apply empty.injective
  let E := coordinates _ S0_11_32_valid
  have h : E.toCoordinates (empty (S.differential 3 pDegree p)) = E.toCoordinates (empty 0) :=
    funext (fun i => Fin.elim0 i)
  exact (E.leftInverse _).symm.trans ((congrArg E.fromCoordinates h).trans (E.leftInverse _))

/-- A concrete representative of the actual E4 boundary in the actual E3
homology quotient. The representative relation is an explicit mathematical
meaning; a raw staircase level is not accepted by this structure. -/
structure BoundaryRepresentative (T : AdamsSpectralSequence)
    (pages : CertifiedAdamsPages T) where
  source : (T.element 4 boundaryDegree).carrier
  representative : PageCycle T 3 productDegree
  next_is_boundary : (pages.nextPage 3 productDegree).toNext (Quotient.mk _ representative) =
    T.differential 4 boundaryDegree source

structure Meaning (S T : AdamsSpectralSequence) (A : Fact713Row3247Source.ModuleLeibniz.Action S T)
    (p : (S.element 3 pDegree).carrier) where
  source : (T.element 3 sourceDegree).carrier ≃ Q Cnu_10_55
  target : (T.element 3 targetDegree).carrier ≃ Q Cnu_13_57
  product : (T.element 3 productDegree).carrier ≃ Q Cnu_18_85
  targetProduct : (T.element 3 (Bidegree.add pDegree targetDegree)).carrier → Q Cnu_21_87
  targetZero : target 0 = zeroQ Cnu_13_57
  targetProductZero : targetProduct 0 = zeroQ Cnu_21_87
  sourceMeaning : ∀ x, product (A.multiply 3 pDegree sourceDegree p x) = sourceMap (source x)
  targetMeaning : ∀ x, targetProduct (A.multiply 3 pDegree targetDegree p x) = targetMap (target x)
  pTarget : (S.element 3 (AdamsTarget 3 pDegree)).carrier ≃ Q S0_11_32

theorem generator_cycle (S T : AdamsSpectralSequence)
    (A : Fact713Row3247Source.ModuleLeibniz.Action S T) (p : (S.element 3 pDegree).carrier)
    (M : Meaning S T A p) (pages : CertifiedAdamsPages T)
    (B : BoundaryRepresentative T pages)
    (namedBoundary : M.product B.representative.val = sourceMap namedGenerator)
    (x : (T.element 3 sourceDegree).carrier) (namedX : M.source x = namedGenerator) :
    T.differential 3 sourceDegree x = 0 := by
  have productIsRepresentative : A.multiply 3 pDegree sourceDegree p x = B.representative.val :=
    M.product.injective ((M.sourceMeaning x).trans ((congrArg sourceMap namedX).trans namedBoundary.symm))
  have productCycle : T.differential 3 (Bidegree.add pDegree sourceDegree)
      (A.multiply 3 pDegree sourceDegree p x) = 0 :=
    (congrArg (T.differential 3 productDegree) productIsRepresentative).trans
      (B.representative.property.trans (T.zero_is_zero _ _))
  have detected := Fact713Row3247Source.ModuleLeibniz.action_differential_zero S T A 3
    pDegree sourceDegree p x (p_d3_zero S M.pTarget p) productCycle
  apply M.target.injective
  exact (target_reflects_zero _ ((M.targetMeaning _).symm.trans
    ((congrArg M.targetProduct detected).trans M.targetProductZero))).trans M.targetZero.symm

#print axioms source_coordinate
#print axioms target_reflects_zero
#print axioms p_d3_zero
#print axioms generator_cycle
end Fact713Generator30P2.Detection
