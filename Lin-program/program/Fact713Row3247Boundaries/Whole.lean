import Fact713Row3247Boundaries.Actual

namespace Fact713Row3247Boundaries.Whole
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Fact713Row3247Source.JointDetection Fact713Row3247Source.Comparison

theorem source_dichotomy (q : Q S0_18_141) : q = zeroQ S0_18_141 ∨ q = namedSphere := by
  let E := coordinates _ S0_18_141_valid
  have finite : ∀ v : Vec 1, v = zero ∨ v = (fun _ => true) := by decide
  have injective : Function.Injective E.toCoordinates := by
    intro a b h
    exact (E.leftInverse a).symm.trans ((congrArg E.fromCoordinates h).trans (E.leftInverse b))
  rcases finite (E.toCoordinates q) with hz | hn
  · left
    apply injective
    exact hz.trans (eval_zero _).symm
  · right
    apply injective
    exact hn.trans (E.rightInverse _).symm

/-- A complete one-dimensional source has only zero and the named class.
The named-cycle proof must come from the explicit actual interpretation. -/
theorem whole_of_named (S : AdamsSpectralSequence)
    (source : (S.element 3 Fact713Row3247Source.Actual.sphereDegree).carrier ≃ Q S0_18_141)
    (sourceZero : source 0 = zeroQ S0_18_141)
    (namedCycle : ∀ x, source x = namedSphere →
      S.differential 3 Fact713Row3247Source.Actual.sphereDegree x = 0)
    (x : (S.element 3 Fact713Row3247Source.Actual.sphereDegree).carrier) :
    S.differential 3 Fact713Row3247Source.Actual.sphereDegree x = 0 := by
  rcases source_dichotomy (source x) with hz | hn
  · have hx : x = 0 := source.injective (hz.trans sourceZero.symm)
    exact (congrArg (S.differential 3 Fact713Row3247Source.Actual.sphereDegree) hx).trans
      (S.differential 3 Fact713Row3247Source.Actual.sphereDegree).map_zero'
  · exact namedCycle x hn

theorem row3247_whole_d3_zero (S T : AdamsSpectralSequence)
    (A : Fact713Row3247Source.ModuleLeibniz.Action S T)
    (h0 : (S.element 3 Fact713Row3247Source.Actual.h0Degree).carrier) (d0 : (S.element 3 Fact713Row3247Source.Actual.d0Degree).carrier)
    (rowMeaning : Fact713Row3247Source.Actual.Meaning S T A h0 d0)
    (x : (T.element 3 Fact713Row3247Source.Actual.sourceDegree).carrier)
    (namedX : rowMeaning.source x = Fact713Row3247Source.JointDetection.namedSource)
    (sourceZero : rowMeaning.sphereSource 0 = zeroQ S0_18_141)
    (p : (S.element 3 Fact713Generator30P2.Detection.pDegree).carrier) (pMeaning : Fact713Generator30P2.Detection.Meaning S T A p)
    (pages : CertifiedAdamsPages T)
    (p2 : LaterBoundary T pages 4 ⟨14,82⟩ ⟨18,85⟩)
    (h0Boundary : LaterBoundary T pages 7 ⟨12,140⟩ ⟨19,146⟩)
    (namedBoundary : pMeaning.product p2.first.val =
      Fact713Generator30P2.Detection.sourceMap Fact713Generator30P2.Detection.namedGenerator)
    (g : (T.element 3 Fact713Generator30P2.Detection.sourceDegree).carrier)
    (namedG : pMeaning.source g = Fact713Generator30P2.Detection.namedGenerator)
    (coefficient : (S.element 3 Fact713Row3247ProductSearch.Factor.coefficientDegree).carrier)
    (coefficientTarget : (S.element 3 (AdamsTarget 3 Fact713Row3247ProductSearch.Factor.coefficientDegree)).carrier ≃
      Fact713Row3247Source.JointDetection.Q Fact713Row3247ProductSearch.Comparison.S0_15_110)
    (factorMeaning : ∀ z, rowMeaning.d0ProductCoordinates
      (A.multiply 3 Fact713Row3247ProductSearch.Factor.coefficientDegree
        Fact713Row3247ProductSearch.Factor.generatorDegree coefficient z) =
      Fact713Row3247ProductSearch.Factor.sourceMap (pMeaning.source z))
    (namedH0Boundary : rowMeaning.h0ProductCoordinates h0Boundary.first.val =
      Fact713Row3247Source.JointDetection.h0Source Fact713Row3247Source.JointDetection.namedSource) :
    ∀ y, S.differential 3 Fact713Row3247Source.Actual.sphereDegree y = 0 := by
  intro y
  apply whole_of_named S rowMeaning.sphereSource sourceZero _ y
  intro z namedZ
  exact Actual.row3247_d3_zero S T A h0 d0 rowMeaning x namedX z namedZ p pMeaning pages p2
    h0Boundary namedBoundary g namedG coefficient coefficientTarget factorMeaning namedH0Boundary

#print axioms row3247_whole_d3_zero

#print axioms source_dichotomy
#print axioms whole_of_named
end Fact713Row3247Boundaries.Whole
